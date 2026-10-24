# Complete source: GRWTSK.Algebra.Local.Varianteb7ab42eb64fc00127667392c4f706ea45fe6e3967ad46c4a5c7f39b3d06c601

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `99e1333f3ddc604f4c4c5f989b20e054c7631464` · SHA-256 `c031ffdcfe5545dd7e84a35591e852a165734986e272edf77069464979ef7ca3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.AlgebraFormallySmoothIffInjectiveLTensorResidueField.Variant11cae6c01a0f259cd342881a08bb0142c44ad4eda95a52afc07729d419a22fe1","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"11cae6c01a0f259cd342881a08bb0142c44ad4eda95a52afc07729d419a22fe1","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.RingsAndFields.SourceCorpus.AlgebraFormallySmoothIffInjectiveLTensorResidueField.Variant11cae6c01a0f259cd342881a08bb0142c44ad4eda95a52afc07729d419a22fe1","mathematical_subject":"Algebra.RingsAndFields","original_sha256":"11cae6c01a0f259cd342881a08bb0142c44ad4eda95a52afc07729d419a22fe1","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/RingTheory/Smooth/Local.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Andrew Yang. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Andrew Yang
-/
import Mathlib.RingTheory.LocalRing.Module
import Mathlib.RingTheory.Smooth.Kaehler
import Mathlib.RingTheory.TensorProduct.Free

/-!
# Formally smooth local algebras
-/


namespace GRWTSK.Algebra.AlgebraFormallySmoothIffInjectiveLTensorResidueField.Variant11cae6c01a0f259cd342881a08bb0142c44ad4eda95a52afc07729d419a22fe1

open TensorProduct IsLocalRing KaehlerDifferential

/--
The **Jacobian criterion** for smoothness of local algebras.
Suppose `S` is a local `R`-algebra, and `0 → I → P → S → 0` is a presentation such that
`P` is formally-smooth over `R`, `Ω[P⁄R]` is finite free over `P`,
(typically satisfied when `P` is the localization of a polynomial ring of finite type)
and `I` is finitely generated.
Then `S` is formally smooth iff `k ⊗ₛ I/I² → k ⊗ₚ Ω[P/R]` is injective,
where `k` is the residue field of `S`.
-/
theorem Algebra.FormallySmooth.iff_injective_lTensor_residueField {R S} [CommRing R]
    [CommRing S] [IsLocalRing S] [Algebra R S] (P : Algebra.Extension R S)
    [FormallySmooth R P.Ring]
    [Module.Free P.Ring (Ω[P.Ring⁄R])] [Module.Finite P.Ring (Ω[P.Ring⁄R])]
    (h' : P.ker.FG) :
    Algebra.FormallySmooth R S ↔
      Function.Injective (P.cotangentComplex.lTensor (ResidueField S)) := by
  have : Module.Finite P.Ring P.Cotangent :=
    have : Module.Finite P.Ring P.ker := ⟨(Submodule.fg_top _).mpr h'⟩
    .of_surjective _ Extension.Cotangent.mk_surjective
  have : Module.Finite S P.Cotangent := Module.Finite.of_restrictScalars_finite P.Ring _ _
  rw [← IsLocalRing.split_injective_iff_lTensor_residueField_injective,
    P.formallySmooth_iff_split_injection]
```
