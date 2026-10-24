# Complete source: GRWTSK.Topology.GeneralTopology.Continuous.Variant6ee591d98bc9a80ca081a7b598c3d86942619728985b22b998fb6363df21ab9d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a628721e577abcbe972a235940d811fff0e5c35f` · SHA-256 `6ee591d98bc9a80ca081a7b598c3d86942619728985b22b998fb6363df21ab9d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FCRS.Topology.Foundations

universe u v w uI

namespace FCRS.Topology

/-- Continuity by inverse images of open sets. -/
def Continuous {X : Type u} {Y : Type v}
    (TX : TopologicalSpaceLike X) (TY : TopologicalSpaceLike Y)
    (f : X → Y) : Prop :=
  ∀ V, TY.IsOpen V → TX.IsOpen (Set.preimage f V)

/-- The identity function is continuous. -/
theorem continuous_id {X : Type u} (TX : TopologicalSpaceLike X) :
    Continuous TX TX (fun x => x) := by
  intro V hV
  exact hV

/-- A composite of continuous functions is continuous. -/
theorem continuous_comp
    {X : Type u} {Y : Type v} {Z : Type w}
    {TX : TopologicalSpaceLike X}
    {TY : TopologicalSpaceLike Y}
    {TZ : TopologicalSpaceLike Z}
    {f : X → Y} {g : Y → Z}
    (hf : Continuous TX TY f)
    (hg : Continuous TY TZ g) :
    Continuous TX TZ (fun x => g (f x)) := by
  intro V hV
  exact hf (Set.preimage g V) (hg V hV)

/-- Pointwise equal functions have the same continuity behavior. -/
theorem continuous_congr
    {X : Type u} {Y : Type v}
    {TX : TopologicalSpaceLike X}
    {TY : TopologicalSpaceLike Y}
    {f g : X → Y}
    (hf : Continuous TX TY f)
    (hfg : ∀ x, f x = g x) :
    Continuous TX TY g := by
  intro V hV
  have hopen := hf V hV
  have heq : Set.preimage f V = Set.preimage g V := by
    apply Set.ext
    intro x
    change V (f x) ↔ V (g x)
    rw [hfg x]
  rw [← heq]
  exact hopen

/-- Every map out of a discrete space is continuous only when its preimages are open;
for the discrete topology this holds automatically. -/
theorem continuous_from_discrete
    {X : Type u} {Y : Type v}
    (TY : TopologicalSpaceLike Y) (f : X → Y) :
    Continuous (discreteTopology X) TY f := by
  intro _ _
  exact True.intro

/-- The map defining an induced topology is continuous. -/
theorem continuous_induced
    {X : Type u} {Y : Type v}
    (TY : TopologicalSpaceLike Y) (f : X → Y) :
    Continuous (inducedTopology TY f) TY f := by
  intro V hV
  exact generatedTopology_isOpen ⟨V, hV, rfl⟩

/-- The subtype projection is continuous for the subspace topology. -/
theorem continuous_subtype_val
    {X : Type u} (TX : TopologicalSpaceLike X) (S : Set X) :
    Continuous (subspaceTopology TX S) TX Subtype.val :=
  continuous_induced TX Subtype.val

/-- First projection from the binary product topology. -/
theorem continuous_product_fst
    {X : Type u} {Y : Type v}
    (TX : TopologicalSpaceLike X) (TY : TopologicalSpaceLike Y) :
    Continuous (productTopology TX TY) TX Prod.fst := by
  intro V hV
  exact generatedTopology_isOpen (Or.inl ⟨V, hV, rfl⟩)

/-- Second projection from the binary product topology. -/
theorem continuous_product_snd
    {X : Type u} {Y : Type v}
    (TX : TopologicalSpaceLike X) (TY : TopologicalSpaceLike Y) :
    Continuous (productTopology TX TY) TY Prod.snd := by
  intro W hW
  exact generatedTopology_isOpen (Or.inr ⟨W, hW, rfl⟩)

/-- A coordinate projection from an arbitrary dependent product is continuous. -/
theorem continuous_pi_projection
    {ι : Type uI} {X : ι → Type u}
    (T : ∀ i, TopologicalSpaceLike (X i)) (i : ι) :
    Continuous (piTopology T) (T i) (fun x => x i) := by
  intro V hV
  exact generatedTopology_isOpen ⟨i, V, hV, rfl⟩

/-- Public descriptive alias for dependent-product coordinate continuity. -/
theorem continuous_product_projection
    {ι : Type uI} {X : ι → Type u}
    (T : ∀ i, TopologicalSpaceLike (X i)) (i : ι) :
    Continuous (piTopology T) (T i) (fun x => x i) :=
  continuous_pi_projection T i

/-- Evaluation remains continuous after restricting the product to any subtype. -/
theorem continuous_subspace_pi_projection
    {ι : Type uI} {X : ι → Type u}
    (T : ∀ i, TopologicalSpaceLike (X i))
    (S : Set ((i : ι) → X i)) (i : ι) :
    Continuous (subspaceTopology (piTopology T) S) (T i)
      (fun x : {x : ((i : ι) → X i) // x ∈ S} => x.val i) := by
  exact continuous_comp
    (f := fun x : {x : ((i : ι) → X i) // x ∈ S} => x.val)
    (g := fun x => x i)
    (continuous_subtype_val (piTopology T) S)
    (continuous_pi_projection T i)

/-- Both canonical injections into a coproduct are continuous. -/
theorem continuous_sum_inl
    {X : Type u} {Y : Type v}
    (TX : TopologicalSpaceLike X) (TY : TopologicalSpaceLike Y) :
    Continuous TX (sumTopology TX TY) Sum.inl := by
  intro U hU
  exact hU.1

theorem continuous_sum_inr
    {X : Type u} {Y : Type v}
    (TX : TopologicalSpaceLike X) (TY : TopologicalSpaceLike Y) :
    Continuous TY (sumTopology TX TY) Sum.inr := by
  intro U hU
  exact hU.2

/-- The map defining a final/quotient topology is continuous. -/
theorem continuous_quotientMap
    {X : Type u} {Y : Type v}
    (TX : TopologicalSpaceLike X) (q : X → Y) :
    Continuous TX (quotientTopology TX q) q := by
  intro V hV
  exact hV

/-- The defining final-topology universal property, stated as continuity. -/
theorem continuous_from_quotient_iff
    {X : Type u} {Y : Type v} {Z : Type w}
    (TX : TopologicalSpaceLike X) (q : X → Y)
    (TZ : TopologicalSpaceLike Z) (f : Y → Z) :
    Continuous (quotientTopology TX q) TZ f ↔
      Continuous TX TZ (fun x => f (q x)) := by
  constructor
  · intro hf V hV
    exact hf V hV
  · intro hf V hV
    exact hf V hV

end FCRS.Topology
```
