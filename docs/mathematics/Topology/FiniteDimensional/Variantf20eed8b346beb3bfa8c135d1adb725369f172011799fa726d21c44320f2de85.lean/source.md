# Complete source: GRWTSK.Topology.FiniteDimensional.Variantf20eed8b346beb3bfa8c135d1adb725369f172011799fa726d21c44320f2de85

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `06c674f225a63d741b7edda8ad03dbfe2cfe2167` · SHA-256 `424bd2729f7c81833a7b4947119309effd7b16d987087fc69a77b4e3e0b4ba75`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.SeparationQuotient.Variant2faab6e41f116d5c83b1abb1f68217c5c6d801fb05b8c1369bd3454841bb8e8b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2faab6e41f116d5c83b1abb1f68217c5c6d801fb05b8c1369bd3454841bb8e8b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.SeparationQuotient.Variant2faab6e41f116d5c83b1abb1f68217c5c6d801fb05b8c1369bd3454841bb8e8b","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"2faab6e41f116d5c83b1abb1f68217c5c6d801fb05b8c1369bd3454841bb8e8b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Topology/Algebra/SeparationQuotient/FiniteDimensional.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Yury Kudryashov. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yury Kudryashov
-/
import Mathlib.Topology.Algebra.SeparationQuotient.Basic
import Mathlib.RingTheory.Finiteness.Basic

/-!
# Separation quotient is a finite module

In this file we show that the separation quotient of a finite module is a finite module.
-/


namespace GRWTSK.Topology.SeparationQuotient.Variant2faab6e41f116d5c83b1abb1f68217c5c6d801fb05b8c1369bd3454841bb8e8b

/-- The separation quotient of a finite module is a finite module. -/
instance SeparationQuotient.instModuleFinite
    {R M : Type*} [Semiring R] [AddCommMonoid M] [Module R M] [Module.Finite R M]
    [TopologicalSpace M] [ContinuousAdd M] [ContinuousConstSMul R M] :
    Module.Finite R (SeparationQuotient M) :=
  Module.Finite.of_surjective (mkCLM R M).toLinearMap Quotient.mk_surjective
```
