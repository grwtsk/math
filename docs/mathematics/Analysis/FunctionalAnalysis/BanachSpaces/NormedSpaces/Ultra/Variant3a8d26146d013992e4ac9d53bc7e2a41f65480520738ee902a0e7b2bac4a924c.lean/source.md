# Complete source: GRWTSK.Analysis.FunctionalAnalysis.BanachSpaces.NormedSpaces.Ultra.Variant3a8d26146d013992e4ac9d53bc7e2a41f65480520738ee902a0e7b2bac4a924c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `eff878747325a47c4089f18f9ec090316f546334` · SHA-256 `b6f7e48a0f96676de27e4c51851dc9ac16bf8528764d5f69b1c580c7b2e1b4ed`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.FunctionalAnalysis.BanachSpaces.NormedSpaces
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.FunctionalAnalysis.BanachSpaces.NormedSpaces.IsUltrametricDistOfNormedAlgebraPrime.Variant6af967f235361b0454659b2839273b0e321442f880ed50d6aee36ebd913626e9","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6af967f235361b0454659b2839273b0e321442f880ed50d6aee36ebd913626e9","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.NormedSpaces.SourceCorpus.IsUltrametricDistOfNormedAlgebraPrime.Variant6af967f235361b0454659b2839273b0e321442f880ed50d6aee36ebd913626e9","mathematical_subject":"Analysis.NormedSpaces","original_sha256":"6af967f235361b0454659b2839273b0e321442f880ed50d6aee36ebd913626e9","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Analysis/Normed/Algebra/Ultra.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Jiedong Jiang. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jiedong Jiang
-/

import Mathlib.Analysis.Normed.Field.Ultra
import Mathlib.Analysis.Normed.Module.Basic

/-!
# Normed algebra preserves ultrametricity

This file contains the proof that a normed division ring over an ultrametric field is ultrametric.
-/


namespace GRWTSK.Analysis.FunctionalAnalysis.BanachSpaces.NormedSpaces.IsUltrametricDistOfNormedAlgebraPrime.Variant6af967f235361b0454659b2839273b0e321442f880ed50d6aee36ebd913626e9

variable {K L : Type*} [NormedField K]

variable (L) in
/--
The other direction of `IsUltrametricDist.of_normedAlgebra`.
Let `K` be a normed field. If a seminormed ring `L` is a normed `K`-algebra, and `‖1‖ = 1` in `L`,
then `K` is ultrametric (i.e. the norm on `L` is nonarchimedean) if `F` is.
This can be further generalized to the case where `‖1‖ ≠ 0` in `L`.
-/
theorem IsUltrametricDist.of_normedAlgebra' [SeminormedRing L] [NormOneClass L] [NormedAlgebra K L]
    [h : IsUltrametricDist L] : IsUltrametricDist K :=
  ⟨fun x y z => by
    simpa using h.dist_triangle_max (algebraMap K L x) (algebraMap K L y) (algebraMap K L z)⟩

variable (K) in
/--
Let `K` be a normed field. If a normed division ring `L` is a normed `K`-algebra,
then `L` is ultrametric (i.e. the norm on `L` is nonarchimedean) if `K` is.
-/
theorem IsUltrametricDist.of_normedAlgebra [NormedDivisionRing L] [NormedAlgebra K L]
    [h : IsUltrametricDist K] : IsUltrametricDist L := by
  rw [isUltrametricDist_iff_forall_norm_natCast_le_one] at h ⊢
  exact fun n => (algebraMap.coe_natCast (R := K) (A := L) n) ▸ norm_algebraMap' L (n : K) ▸ h n

variable (K L) in
/--
Let `K` be a normed field. If a normed division ring `L` is a normed `K`-algebra,
then `L` is ultrametric (i.e. the norm on `L` is nonarchimedean) if and only if `K` is.
-/
theorem IsUltrametricDist.normedAlgebra_iff [NormedDivisionRing L] [NormedAlgebra K L] :
    IsUltrametricDist L ↔ IsUltrametricDist K :=
  ⟨fun _ => IsUltrametricDist.of_normedAlgebra' L, fun _ => IsUltrametricDist.of_normedAlgebra K⟩
```
