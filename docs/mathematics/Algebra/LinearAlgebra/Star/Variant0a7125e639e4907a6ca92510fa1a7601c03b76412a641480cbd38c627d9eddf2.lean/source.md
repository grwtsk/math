# Complete source: GRWTSK.Algebra.LinearAlgebra.Star.Variant0a7125e639e4907a6ca92510fa1a7601c03b76412a641480cbd38c627d9eddf2

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7d56f2158e31869b1f85c1fdad9c3adb50e74cb2` · SHA-256 `e8dbe2aaf2074405b34911e82ed616f1f7eb76d0b0f1bd640894147496d2798b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.Equiv.Variant1ad4086c80d34be5337bab127b10fff9df13288141b1d5aaf301fab87ecf0a7f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1ad4086c80d34be5337bab127b10fff9df13288141b1d5aaf301fab87ecf0a7f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.Equiv.Variant1ad4086c80d34be5337bab127b10fff9df13288141b1d5aaf301fab87ecf0a7f","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"1ad4086c80d34be5337bab127b10fff9df13288141b1d5aaf301fab87ecf0a7f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Module/LinearMap/Star.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Frédéric Dupuis. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Frédéric Dupuis
-/
import Mathlib.Algebra.Module.Equiv.Defs
import Mathlib.Algebra.Star.Basic

/-!
# Notation for star-linear maps

This is in a separate file as a it is not needed until much later,
and avoids importing the theory of star operations unnecessarily early.
-/


namespace GRWTSK.Algebra.LinearAlgebra.Equiv.Variant1ad4086c80d34be5337bab127b10fff9df13288141b1d5aaf301fab87ecf0a7f

/-- `M →ₗ⋆[R] N` is the type of `R`-conjugate-linear maps from `M` to `N`. -/
notation:25 M " →ₗ⋆[" R:25 "] " M₂:0 => LinearMap (starRingEnd R) M M₂

/-- The notation `M ≃ₗ⋆[R] M₂` denotes the type of star-linear equivalences between `M` and `M₂`
over the `⋆` endomorphism of the underlying starred ring `R`. -/
notation:50 M " ≃ₗ⋆[" R "] " M₂ => LinearEquiv (starRingEnd R) M M₂
```
