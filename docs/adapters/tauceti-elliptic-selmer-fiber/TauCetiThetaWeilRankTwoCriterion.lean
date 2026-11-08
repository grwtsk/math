/- Copyright (c) 2026 grwtsk contributors. MIT.
ISOLATED_TAUCETI_SOURCE_PROOF_CANDIDATE / PARSING_NOT_RUN /
COMPILATION_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
Original Tau Ceti contributors, Apache-2.0,
TauCetiProject/TauCeti@2bdb755239d3bd84760e99bc83166bdf7cc75a6b.
Isolated Tau Ceti Lean v4.36.0-rc1, NOT grwtsk/math root v4.34.1.
-/
import TauCetiThetaCommutatorBilinear
import TauCetiThetaOriginalWeilSignReturn
import TauCeti.AlgebraicGeometry.EllipticCurve.Isogeny.MulByInt.Torsion.Structure

set_option autoImplicit false
noncomputable section

/-!
# Exact theta commutator/Weil comparison reduced to ONE oriented basis value

The earlier source now derives the REAL original theta commutator
as an alternating biadditive E[n]-pairing valued in the true
Additive (rootsOfUnity n F). The pinned Tau Ceti Isogeny.weilPairing
is an INDEPENDENT alternating biadditive map on that SAME torsion
carrier; the pinned source nonempty_basis_torsionBy /
torsion_addEquiv_prod proves the group is (ZMod n)^2.

Pure alternating biadditive algebra shows that equality of the
two pairings is equivalent to equality on ONE ORDERED
generating pair (P,Q). Reversing the order inverts the
multiplicative μ_n value and cannot be silently done at odd n.

This is a strictly stronger and more efficient geometric
PROOF TARGET than proving the original rational function
identity for every pair of n-torsion points. The remaining
arithmetic supplier is the specific single source
[n]-pullback/Weil function ratio at the oriented basis pair.
No arbitrary Gram matrix, perfectness assumption, or
external theta pairing is substituted for the ACTUAL ones.
-/

namespace GRWTSK.ArithmeticGeometry.EllipticCurves.ThetaWeilRankTwoCriterion

open TauCeti
open GRWTSK.ArithmeticGeometry.EllipticCurves.ThetaCommutatorBilinear
open GRWTSK.ArithmeticGeometry.EllipticCurves.OriginalGeometricTheta

variable {F : Type*} [Field F] [DecidableEq F] [IsSepClosed F]
  (W : WeierstrassCurve F) [W.IsElliptic]
  (n : ℕ) [NeZero n] (hN : (n : F) ≠ 0)

private abbrev M :=
  AddSubgroup.torsionBy W.toAffine.Point (n : ℤ)
private abbrev N := Additive (rootsOfUnity n F)

/-- The original torsion `E[n]` has TWO honest additive
generators from pinned source `torsion_addEquiv_prod`.
Their existence is a theorem of elliptic torsion geometry,
not a newly assumed basis. -/
noncomputable def originalTorsionCoordinates :
    M W n ≃+ ZMod n × ZMod n :=
  Classical.choice (W.torsion_addEquiv_prod n hN)

noncomputable def firstTorsionGenerator : M W n :=
  (originalTorsionCoordinates W n hN).symm (1, 0)

noncomputable def secondTorsionGenerator : M W n :=
  (originalTorsionCoordinates W n hN).symm (0, 1)

/-- Natural-number additive span of the two original
generators, derived from the faithful rank-two
ZMod n representation. Each ZMod n coordinate has
a representative in {0,...,n-1}. -/
theorem originalTorsion_two_generator_span (x : M W n) :
    ∃ i j : ℕ, x = i • firstTorsionGenerator W n hN +
      j • secondTorsionGenerator W n hN := by
  let e := originalTorsionCoordinates W n hN
  let z := e x
  refine ⟨z.1.val, z.2.val, ?_⟩
  apply e.injective
  have hz1 : ((z.1.val : ℕ) : ZMod n) = z.1 :=
    ZMod.natCast_zmod_val z.1
  have hz2 : ((z.2.val : ℕ) : ZMod n) = z.2 :=
    ZMod.natCast_zmod_val z.2
  change z = e (z.1.val • e.symm (1,0) +
    z.2.val • e.symm (0,1))
  simp only [map_add, map_nsmul, AddEquiv.apply_symm_apply]
  apply Prod.ext
  · simpa using hz1.symm
  · simpa using hz2.symm

/-! The generic rank-two comparison is repeated here ONLY
because Tau Ceti has Lean v4.36.0-rc1, whereas the
matching native GRWTSK RankTwoAlternatingPairingDetector
is authored under Lean v4.34.1. It is the SAME
mathematical lemma, not two independent accepted proofs. -/

private theorem alternating_skew
    {A B : Type*} [AddCommGroup A] [AddCommGroup B]
    (p : A →+ A →+ B)
    (hp : ∀ x : A, p x x = 0)
    (x y : A) : p x y + p y x = 0 := by
  have h := hp (x+y)
  simp only [map_add] at h
  simpa only [hp, zero_add, add_zero, add_assoc] using h

private theorem same_alternating_pairing_of_generators
    {A B : Type*} [AddCommGroup A] [AddCommGroup B]
    (u v : A)
    (hgen : ∀ x : A, ∃ i j : ℕ, x = i • u + j • v)
    (p q : A →+ A →+ B)
    (hp : ∀ x : A, p x x = 0)
    (hq : ∀ x : A, q x x = 0)
    (h01 : p u v = q u v) : p = q := by
  have hp10 := alternating_skew p hp u v
  have hq10 := alternating_skew q hq u v
  rw [h01] at hp10
  have h10 : p v u = q v u :=
    add_left_cancel (hp10.trans hq10.symm)
  have rowU (x : A) : p u x = q u x := by
    obtain ⟨i,j,rfl⟩ := hgen x
    simp only [map_add, map_nsmul]
    rw [hp u, hq u, h01]
  have rowV (x : A) : p v x = q v x := by
    obtain ⟨i,j,rfl⟩ := hgen x
    simp only [map_add, map_nsmul]
    rw [h10, hp v, hq v]
  apply AddMonoidHom.ext
  intro x
  obtain ⟨i,j,rfl⟩ := hgen x
  apply AddMonoidHom.ext
  intro y
  calc
    p (i • u + j • v) y =
      i • p u y + j • p v y := by
      simp only [map_add, map_nsmul,
        AddMonoidHom.add_apply, AddMonoidHom.nsmul_apply]
    _ = i • q u y + j • q v y := by rw [rowU, rowV]
    _ = q (i • u + j • v) y := by
      simp only [map_add, map_nsmul,
        AddMonoidHom.add_apply, AddMonoidHom.nsmul_apply]

/-- The strongest source-exact arithmetic reduction:
the REAL original theta rational-function commutator
equals the INDEPENDENT pinned Isogeny.weilPairing on
ALL of E[n] if and only if the two maps agree at
the ONE oriented source basis pair P,Q.

There is NO unproved perfectness premise in this theorem:
the alternating property and actual ZMod n rank-two
generation come from their original geometric sources.
The basis-evaluation condition remains the true missing
[n]-pullback/divisor-function theorem. -/
theorem thetaPairing_eq_originalWeil_iff_basis_value :
    thetaPairingAddHom W.toAffine n =
      Isogeny.weilPairing W n hN ↔
    thetaPairingAddHom W.toAffine n
      (firstTorsionGenerator W n hN)
      (secondTorsionGenerator W n hN) =
    Isogeny.weilPairing W n hN
      (firstTorsionGenerator W n hN)
      (secondTorsionGenerator W n hN) := by
  constructor
  · intro hh
    rw [hh]
  · intro hh
    apply same_alternating_pairing_of_generators
      (firstTorsionGenerator W n hN)
      (secondTorsionGenerator W n hN)
      (originalTorsion_two_generator_span W n hN)
      (thetaPairingAddHom W.toAffine n)
      (Isogeny.weilPairing W n hN)
    · exact thetaPairingAddHom_self W.toAffine n
    · exact Isogeny.weilPairing_self W n hN
    · exact hh

/-- The remaining ONE basis-pair geometric identity may
be supplied directly using the earlier exact signed
source function-ratio return. This theorem does not
assume the pairing equality globally or introduce
a second arithmetic pairing. -/
theorem thetaPairing_eq_originalWeil_of_basis_value
    (h:
      thetaPairingAddHom W.toAffine n
        (firstTorsionGenerator W n hN)
        (secondTorsionGenerator W n hN) =
      Isogeny.weilPairing W n hN
        (firstTorsionGenerator W n hN)
        (secondTorsionGenerator W n hN)) :
    thetaPairingAddHom W.toAffine n =
      Isogeny.weilPairing W n hN :=
  (thetaPairing_eq_originalWeil_iff_basis_value W n hN).2 h

/-! ## One ACTUAL [n]-pullback divisor/function ratio now suffices

The prior positive and inverse source sign consumers work pointwise
with the original `Isogeny.algebraMap_weilPairing`. These two
theorems combine them with the rank-two detector.

To finish geometric source acceptance it is sufficient to prove
just ONE source-divisor identity for the selected oriented
(P,Q) torsion basis. The conditions below are statements
about the actual original rational functions `f_P,f_Q,g_Q`,
not an assumed theta-vs-Weil pairing equality.

The inverse-ratio branch is RETAINED explicitly because
choosing it would yield the NEGATIVE original Weil pairing.
-/

/-- EXACT orientation-positive endpoint for the genuine
original theta and Weil pairings on ALL of E[n], under ONE
basis-pair rational-function identity. Nothing is assumed
about the pairing itself; the remaining premise is the
genuine source [n]-pullback function identity for P,Q. -/
theorem thetaPairing_eq_originalWeil_of_one_functionRatio
    (hψ : psiFunctionField W n ≠ 0)
    (g : W.toAffine.FunctionFieldˣ)
    (hg : Divisor.principal W.toAffine.isFunctionField g =
      Isogeny.weilPairingDivisor W hψ
        (ThetaOriginalWeilSignReturn.thetaTorsionPoint W n
          (originalTorsionLift W.toAffine n
            (secondTorsionGenerator W n hN))))
    (hratio :
      (commutatorFunction W.toAffine n
        (originalTorsionLift W.toAffine n
          (firstTorsionGenerator W n hN))
        (originalTorsionLift W.toAffine n
          (secondTorsionGenerator W n hN)) :
          W.toAffine.FunctionField) =
      W.toAffine.translation
        (Point.equivBaseChangeSelf W.toAffine
          (firstTorsionGenerator W n hN : W.toAffine.Point)) g / g) :
    thetaPairingAddHom W.toAffine n =
      Isogeny.weilPairing W n hN := by
  apply thetaPairing_eq_originalWeil_of_basis_value W n hN
  let P := firstTorsionGenerator W n hN
  let Q := secondTorsionGenerator W n hN
  have hP :
      ThetaOriginalWeilSignReturn.thetaTorsionPoint W n
        (originalTorsionLift W.toAffine n P) = P := by
    apply Subtype.ext
    rfl
  have hQ :
      ThetaOriginalWeilSignReturn.thetaTorsionPoint W n
        (originalTorsionLift W.toAffine n Q) = Q := by
    apply Subtype.ext
    rfl
  have hsource :=
    ThetaOriginalWeilSignReturn.thetaCommutator_eq_originalWeil_of_functionRatio
      W n hN
      (originalTorsionLift W.toAffine n P)
      (originalTorsionLift W.toAffine n Q)
      hψ g (by simpa only [Q] using hg)
      (by simpa only [P,Q] using hratio)
  change Additive.ofMul
      (thetaCommutatorInMuN W.toAffine n
        (originalTorsionLift W.toAffine n P)
        (originalTorsionLift W.toAffine n Q)) =
      Isogeny.weilPairing W n hN P Q
  simpa only [hP, hQ, Additive.ofMul_toMul] using
    congrArg Additive.ofMul hsource

/-- An inverse source function-ratio at the same oriented
basis pair would identify the ACTUAL theta commutator
with the NEGATIVE of the pinned Weil pairing globally,
not the positive pairing. This is an explicit sign test,
especially needed at odd n. -/
theorem thetaPairing_eq_negWeil_of_one_inverseRatio
    (hψ : psiFunctionField W n ≠ 0)
    (g : W.toAffine.FunctionFieldˣ)
    (hg : Divisor.principal W.toAffine.isFunctionField g =
      Isogeny.weilPairingDivisor W hψ
        (ThetaOriginalWeilSignReturn.thetaTorsionPoint W n
          (originalTorsionLift W.toAffine n
            (secondTorsionGenerator W n hN))))
    (hratioInv :
      (commutatorFunction W.toAffine n
        (originalTorsionLift W.toAffine n
          (firstTorsionGenerator W n hN))
        (originalTorsionLift W.toAffine n
          (secondTorsionGenerator W n hN)) :
          W.toAffine.FunctionField) =
      g / W.toAffine.translation
        (Point.equivBaseChangeSelf W.toAffine
          (firstTorsionGenerator W n hN : W.toAffine.Point)) g) :
    thetaPairingAddHom W.toAffine n =
      -(Isogeny.weilPairing W n hN) := by
  apply same_alternating_pairing_of_generators
    (firstTorsionGenerator W n hN)
    (secondTorsionGenerator W n hN)
    (originalTorsion_two_generator_span W n hN)
    (thetaPairingAddHom W.toAffine n)
    (-(Isogeny.weilPairing W n hN))
  · exact thetaPairingAddHom_self W.toAffine n
  · intro x
    simp [Isogeny.weilPairing_self W n hN x]
  · let P := firstTorsionGenerator W n hN
    let Q := secondTorsionGenerator W n hN
    have hP :
        ThetaOriginalWeilSignReturn.thetaTorsionPoint W n
          (originalTorsionLift W.toAffine n P) = P := by
      apply Subtype.ext
      rfl
    have hQ :
        ThetaOriginalWeilSignReturn.thetaTorsionPoint W n
          (originalTorsionLift W.toAffine n Q) = Q := by
      apply Subtype.ext
      rfl
    have hsource :=
      ThetaOriginalWeilSignReturn.thetaCommutator_eq_inverseWeil_of_inverseRatio
        W n hN
        (originalTorsionLift W.toAffine n P)
        (originalTorsionLift W.toAffine n Q)
        hψ g (by simpa only [Q] using hg)
        (by simpa only [P,Q] using hratioInv)
    have hval :
        thetaPairingAddHom W.toAffine n P Q =
          -(Isogeny.weilPairing W n hN P Q) := by
      change Additive.ofMul
          (thetaCommutatorInMuN W.toAffine n
            (originalTorsionLift W.toAffine n P)
            (originalTorsionLift W.toAffine n Q)) =
        -(Isogeny.weilPairing W n hN P Q)
      simpa only [hP,hQ] using
        congrArg Additive.ofMul hsource
    simpa only [AddMonoidHom.neg_apply] using hval

end GRWTSK.ArithmeticGeometry.EllipticCurves.ThetaWeilRankTwoCriterion
