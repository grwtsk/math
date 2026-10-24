import GRWTSK.Analysis.Operator.HolomorphicLinePort
import GRWTSK.Analysis.ComplexAnalysis.HolomorphicLineGaugeTopology

/-!
# Gauge-covariant transport of the existing line-fiber operators

Conjugation is constructed from the forward and inverse holomorphic gauge units. It preserves
chart compatibility and separately transports the local holomorphy predicate. These are bounded
operators on individual rank-one fibers, not differential, heat, or unbounded operators.
-/

namespace GRWTSK.Analysis.Operator.HolomorphicLineGaugePort

open GRWTSK.Analysis.ComplexAnalysis.HolomorphicRestriction
open GRWTSK.Analysis.ComplexAnalysis.HolomorphicSectionRing (HolomorphicSection)
open GRWTSK.Analysis.ComplexAnalysis.HolomorphicLineCocycle
open GRWTSK.Analysis.ComplexAnalysis.HolomorphicLineGauge
open GRWTSK.Analysis.Operator.HolomorphicLinePort

universe u
noncomputable section
variable {ι : Type u} {D : IndexedDomainCover ι} {C E : Cocycle D}

/-- Actual conjugated local maps, with their target cocycle's overlap equations proved. -/
def transport (G : Gauge C E) (A : CompatibleOperators C) : CompatibleOperators E where
  localOp i z := (unitValue (G.frame i) z • ContinuousLinearMap.id ℂ ℂ).comp
    ((A.localOp i z).comp (unitValue (G.frame i)⁻¹ z • ContinuousLinearMap.id ℂ ℂ))
  intertwines := by
    intro i j x hi hj a
    let u := unitValue (G.frame i) ⟨x.1, hi⟩
    let u' := unitValue (G.frame i)⁻¹ ⟨x.1, hi⟩
    let v := unitValue (G.frame j) ⟨x.1, hj⟩
    let v' := unitValue (G.frame j)⁻¹ ⟨x.1, hj⟩
    have hg : v * C.scalar i j x = E.scalar i j x * u := G.compatible i j x hi hj
    have hg' : v' * E.scalar i j x = C.scalar i j x * u' :=
      G.symm.compatible i j x hi hj
    change v * A.localOp j ⟨x.1, hj⟩ (v' * (E.scalar i j x * a)) =
      E.scalar i j x * (u * A.localOp i ⟨x.1, hi⟩ (u' * a))
    rw [← mul_assoc v' (E.scalar i j x) a, hg', mul_assoc,
      A.intertwines i j x hi hj (u' * a), ← mul_assoc, hg, mul_assoc]

@[simp] theorem transport_apply (G : Gauge C E) (A : CompatibleOperators C)
    (i : ι) (z : (D.U i).carrier) (a : ℂ) :
    (transport G A).localOp i z a =
      unitValue (G.frame i) z * A.localOp i z (unitValue (G.frame i)⁻¹ z * a) := rfl

/-- The descended operators intertwine with the exact fiber map underlying the total homeomorphism. -/
theorem descend_intertwines (G : Gauge C E) (A : CompatibleOperators C)
    (hOpen : D.IsOpenCover) (x : D.X.carrier)
    (a : (C.vectorBundleCore hOpen).Fiber x) :
    (transport G A).descend hOpen x (G.fiberMap hOpen x a) =
      G.fiberMap hOpen x (A.descend hOpen x a) := by
  change unitValue (G.frame (D.select x)) ⟨x.1, D.select_mem x⟩ *
      A.localOp (D.select x) ⟨x.1, D.select_mem x⟩
        (unitValue (G.frame (D.select x))⁻¹ ⟨x.1, D.select_mem x⟩ *
          (unitValue (G.frame (D.select x)) ⟨x.1, D.select_mem x⟩ * a)) = _
  rw [← mul_assoc, unitValue_inv_mul, one_mul]
  rfl

/-- Conjugacy is an equation of the actual continuous-linear fiber maps. -/
theorem descend_conjugacy (G : Gauge C E) (A : CompatibleOperators C)
    (hOpen : D.IsOpenCover) (x : D.X.carrier) :
    (transport G A).descend hOpen x =
      (G.fiberEquiv hOpen x).toContinuousLinearMap.comp
        ((A.descend hOpen x).comp (G.fiberEquiv hOpen x).symm.toContinuousLinearMap) := by
  apply ContinuousLinearMap.ext
  intro a
  rfl

/-- Operator composition commutes with gauge transport, with the original order retained. -/
theorem transport_comp_descend (G : Gauge C E) (A B : CompatibleOperators C)
    (hOpen : D.IsOpenCover) (x : D.X.carrier) :
    (transport G (A.comp B)).descend hOpen x =
      ((transport G B).descend hOpen x).comp ((transport G A).descend hOpen x) := by
  apply ContinuousLinearMap.ext
  intro a
  change unitValue (G.frame (D.select x)) ⟨x.1, D.select_mem x⟩ *
      B.localOp (D.select x) ⟨x.1, D.select_mem x⟩
        (A.localOp (D.select x) ⟨x.1, D.select_mem x⟩
          (unitValue (G.frame (D.select x))⁻¹ ⟨x.1, D.select_mem x⟩ * a)) =
    unitValue (G.frame (D.select x)) ⟨x.1, D.select_mem x⟩ *
      B.localOp (D.select x) ⟨x.1, D.select_mem x⟩
        (unitValue (G.frame (D.select x))⁻¹ ⟨x.1, D.select_mem x⟩ *
          (unitValue (G.frame (D.select x)) ⟨x.1, D.select_mem x⟩ *
            A.localOp (D.select x) ⟨x.1, D.select_mem x⟩
              (unitValue (G.frame (D.select x))⁻¹ ⟨x.1, D.select_mem x⟩ * a)))
  rw [← mul_assoc (unitValue (G.frame (D.select x))⁻¹ _) (unitValue (G.frame (D.select x)) _),
    unitValue_inv_mul, one_mul]

/-- Inverse multiplication, the original analytic law, and forward multiplication transport holomorphy. -/
theorem transport_preservesHolomorphy (G : Gauge C E) (A : CompatibleOperators C)
    (hA : A.PreservesHolomorphy) : (transport G A).PreservesHolomorphy := by
  intro i f
  let inner : HolomorphicSection (D.U i) :=
    (↑((G.frame i)⁻¹) : HolomorphicSection (D.U i)) * f
  let middle : HolomorphicSection (D.U i) :=
    ⟨fun z => A.localOp i z ((inner : Section (D.U i)) z), hA i inner⟩
  exact ((G.frame i : HolomorphicSection (D.U i)) * middle).property

/-- The section equivalence and operator action use the same gauge, not unrelated representatives. -/
theorem mapSection_naturality (G : Gauge C E) (A : CompatibleOperators C)
    (hOpen : D.IsOpenCover) (hA : A.PreservesHolomorphy) (s : BundleSection C hOpen) :
    G.bundleSectionEquiv hOpen (A.mapSection hOpen hA s) =
      (transport G A).mapSection hOpen (transport_preservesHolomorphy G A hA)
        (G.bundleSectionEquiv hOpen s) := by
  apply BundleSection.ext_value
  funext x
  change (G.bundleSectionEquiv hOpen (A.mapSection hOpen hA s)).value x =
    (transport G A).descend hOpen x ((G.bundleSectionEquiv hOpen s).value x)
  rw [G.bundleSectionEquiv_value, G.bundleSectionEquiv_value]
  exact (descend_intertwines G A hOpen x (s.value x)).symm

end
end GRWTSK.Analysis.Operator.HolomorphicLineGaugePort
