# Complete source: GRWTSK.Algebra.AdjoinRoot.Variant5186065bd411e0e05d0ca340e13c5fc040b35825a3a63e1c6035f11fea6b6bd7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4061c6c8231de12cbb8c3d561eeeee2ffd31dcae` · SHA-256 `5186065bd411e0e05d0ca340e13c5fc040b35825a3a63e1c6035f11fea6b6bd7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2018 Kenny Lau. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kenny Lau, Mario Carneiro, Johan Commelin, Amelia Livingston, Anne Baanen
-/
import Mathlib.RingTheory.AdjoinRoot
import Mathlib.RingTheory.Localization.Away.Basic

/-!
The `R`-`AlgEquiv` between the localization of `R` away from `r` and
`R` with an inverse of `r` adjoined.
-/

open Polynomial AdjoinRoot Localization

variable {R : Type*} [CommRing R]

-- Porting note: removed `IsLocalization.algHom_subsingleton` due to
-- `cannot find synthesization order for instance`
attribute [local instance] AdjoinRoot.algHom_subsingleton

/-- The `R`-`AlgEquiv` between the localization of `R` away from `r` and
    `R` with an inverse of `r` adjoined. -/
noncomputable def Localization.awayEquivAdjoin (r : R) : Away r ≃ₐ[R] AdjoinRoot (C r * X - 1) :=
  AlgEquiv.ofAlgHom
    { awayLift _ r
      -- Porting note: This argument used to be found automatically, i.e. `_`
      (isUnit_of_mul_eq_one ((algebraMap R (AdjoinRoot (C r * X - 1))) r) (root (C r * X - 1))
        (root_isInv r)) with
      commutes' :=
        IsLocalization.Away.lift_eq r (isUnit_of_mul_eq_one _ _ <| root_isInv r) }
    (liftHom _ (IsLocalization.Away.invSelf r) <| by
      simp only [map_sub, map_mul, aeval_C, aeval_X, IsLocalization.Away.mul_invSelf, aeval_one,
        sub_self])
    (Subsingleton.elim _ _)
    -- Porting note: fix since `IsLocalization.algHom_subsingleton` is no local instance anymore
    (Subsingleton.elim (h := IsLocalization.algHom_subsingleton (Submonoid.powers r)) _ _)

theorem IsLocalization.adjoin_inv (r : R) : IsLocalization.Away r (AdjoinRoot <| C r * X - 1) :=
  IsLocalization.isLocalization_of_algEquiv _ (Localization.awayEquivAdjoin r)

theorem IsLocalization.Away.finitePresentation (r : R) {S} [CommRing S] [Algebra R S]
    [IsLocalization.Away r S] : Algebra.FinitePresentation R S :=
  (AdjoinRoot.finitePresentation _).equiv <|
    (Localization.awayEquivAdjoin r).symm.trans <| IsLocalization.algEquiv (Submonoid.powers r) _ _
```
