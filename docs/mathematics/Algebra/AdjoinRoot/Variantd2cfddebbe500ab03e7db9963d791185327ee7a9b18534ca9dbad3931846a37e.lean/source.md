# Complete source: GRWTSK.Algebra.AdjoinRoot.Variantd2cfddebbe500ab03e7db9963d791185327ee7a9b18534ca9dbad3931846a37e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `771bdcca40715e181fa529c046b1eb16d0b00ee3` · SHA-256 `cd267b02aa6c81b2ef2a95b9d3bec6330058904cb4c4cda42caa428e56e4ce13`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LocalizationAwayEquivAdjoin.Variant5186065bd411e0e05d0ca340e13c5fc040b35825a3a63e1c6035f11fea6b6bd7","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5186065bd411e0e05d0ca340e13c5fc040b35825a3a63e1c6035f11fea6b6bd7","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.RingsAndFields.SourceCorpus.LocalizationAwayEquivAdjoin.Variant5186065bd411e0e05d0ca340e13c5fc040b35825a3a63e1c6035f11fea6b6bd7","mathematical_subject":"Algebra.RingsAndFields","original_sha256":"5186065bd411e0e05d0ca340e13c5fc040b35825a3a63e1c6035f11fea6b6bd7","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/RingTheory/Localization/Away/AdjoinRoot.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
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


namespace GRWTSK.Algebra.LocalizationAwayEquivAdjoin.Variant5186065bd411e0e05d0ca340e13c5fc040b35825a3a63e1c6035f11fea6b6bd7

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
