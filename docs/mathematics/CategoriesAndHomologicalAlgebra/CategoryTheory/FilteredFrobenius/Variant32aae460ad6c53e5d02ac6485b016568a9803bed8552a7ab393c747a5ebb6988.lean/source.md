# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.FilteredFrobenius.Variant32aae460ad6c53e5d02ac6485b016568a9803bed8552a7ab393c747a5ebb6988

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `260d948ec27de3afc3630eed6fe3b9a5a417b63d` · SHA-256 `32aae460ad6c53e5d02ac6485b016568a9803bed8552a7ab393c747a5ebb6988`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import DAF.Prismatic.Interface

/-!
# Filtered Frobenius capabilities

Frobenius is modeled semilinearly through an explicit twist functor; it is not
an ordinary endomorphism unless the supplied twist is the identity.  Nygaard
levels form a decreasing filtration and are not runtime priorities.  A shifted
comparison contains actual natural maps between the shifted levels: the shift
integer alone has no theorem authority.
-/

namespace DAF.Prismatic

open CategoryTheory
open CategoryTheory.Functor

/-- Semilinear Frobenius data on the contravariant prismatic value. -/
structure FrobeniusDatum (P : Theory) where
  twist : P.Target ⥤ P.Target
  frobenius : P.value ⟶ P.value ⋙ twist

/-- An abstract decreasing Nygaard filtration of `P.value`. -/
structure NygaardDatum (P : Theory) where
  level : Int → (P.DerivedAlgᵒᵖ ⥤ P.Target)
  inclusion : ∀ r, level r ⟶ P.value
  transition : ∀ {r s : Int}, r ≤ s → (level s ⟶ level r)

  transition_refl :
    ∀ r,
      transition (le_refl r) = 𝟙 (level r)

  transition_trans :
    ∀ {r s t : Int} (hrs : r ≤ s) (hst : s ≤ t),
      transition hst ≫ transition hrs =
        transition (hrs.trans hst)

  inclusion_natural :
    ∀ {r s : Int} (hrs : r ≤ s),
      transition hrs ≫ inclusion r = inclusion s

namespace NygaardDatum

variable {P : Theory} (N : NygaardDatum P)

@[simp]
theorem transition_refl_apply
    (r : Int)
    (A : P.DerivedAlgᵒᵖ) :
    (N.transition (le_refl r)).app A =
      𝟙 ((N.level r).obj A) := by
  exact congrArg (fun α ↦ α.app A) (N.transition_refl r)

end NygaardDatum

/--
A source comparison with explicit Frobenius and shifted-Nygaard coherence.

For `algebraMap : A ⟶ B`, contravariance makes `valueMap` point from the
value of `B` to the value of `A`.  At level `r`, `nygaardMap` lands in level
`r + filtrationShift`; shift zero is the filtration-preserving case.
-/
structure FilteredFrobeniusComparison
    {F : DAF.Fabric.Fabric}
    {P : Theory}
    (A B : SourceRealization F P) where
  frobeniusDatum : FrobeniusDatum P
  nygaardDatum : NygaardDatum P

  algebraMap : A.algebra ⟶ B.algebra
  filtrationShift : Int

  frobenius_natural :
    ∀ q : SimplexCategory,
      P.value.map (algebraMap.app (Opposite.op q)).op ≫
          frobeniusDatum.frobenius.app
            (Opposite.op (A.algebra.obj (Opposite.op q))) =
        frobeniusDatum.frobenius.app
            (Opposite.op (B.algebra.obj (Opposite.op q))) ≫
          frobeniusDatum.twist.map
            (P.value.map (algebraMap.app (Opposite.op q)).op)

  nygaardMap :
    ∀ r : Int,
      B.algebra.rightOp ⋙ nygaardDatum.level r ⟶
        A.algebra.rightOp ⋙
          nygaardDatum.level (r + filtrationShift)

  nygaard_to_value :
    ∀ (r : Int) (q : SimplexCategory),
      (nygaardMap r).app q ≫
          (nygaardDatum.inclusion (r + filtrationShift)).app
            (Opposite.op (A.algebra.obj (Opposite.op q))) =
        (nygaardDatum.inclusion r).app
            (Opposite.op (B.algebra.obj (Opposite.op q))) ≫
          P.value.map (algebraMap.app (Opposite.op q)).op

namespace FilteredFrobeniusComparison

variable
    {F : DAF.Fabric.Fabric}
    {P : Theory}
    {A B : SourceRealization F P}

/-- The underlying contravariant map of cosimplicial prismatic values. -/
def valueMap (C : FilteredFrobeniusComparison A B) :
    B.algebra.rightOp ⋙ P.value ⟶
      A.algebra.rightOp ⋙ P.value :=
  whiskerRight C.algebraMap.rightOp P.value

/-- A comparison is filtration preserving precisely when its shift is zero. -/
def IsFiltrationPreserving
    (C : FilteredFrobeniusComparison A B) : Prop :=
  C.filtrationShift = 0

end FilteredFrobeniusComparison

end DAF.Prismatic
```
