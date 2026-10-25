# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Init.Variant6c2c00e6c6a316034e2cab87f6c9ae6ccff9f5e8d2b2fd31c0af4f300825d928

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6b509928d76fcd8c9f3403c0cae9f6b4de3f8d9b` · SHA-256 `42c85153de91324b8faf206b8838b6bcc2787c8fbfebd8b38b4dbea673cf35aa`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Dyadic.Variantdf0e0ecfa8402c572837de83b969625e3a80e634e3a8c534f8cd8372450347fe","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"df0e0ecfa8402c572837de83b969625e3a80e634e3a8c534f8cd8372450347fe","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Dyadic.Variantdf0e0ecfa8402c572837de83b969625e3a80e634e3a8c534f8cd8372450347fe","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"df0e0ecfa8402c572837de83b969625e3a80e634e3a8c534f8cd8372450347fe","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Tactic/Inclusion/Extension/IntervalDyadicReal/Init.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 David Ledvinka. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: David Ledvinka
-/
module

public import Mathlib.Data.Dyadic
public meta import Mathlib.Tactic.Inclusion.Core.Extensions
public import Mathlib.Tactic.Inclusion.Extension.Interval

/-!
# Initialization for the dyadic real interval extension family

This file initializes the `interval_dyadic_real` inclusion family and defines the `ToSet`,
`Univ` and `Coarsen` instances it uses in the `inclusion` tactic.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Dyadic.Variantdf0e0ecfa8402c572837de83b969625e3a80e634e3a8c534f8cd8372450347fe

@[expose] public section

namespace Inclusion

namespace IntervalDyadicReal

/-- Initializes the `interval_dyadic_real` inclusion family. -/
meta initialize intervalDyadicRealFamily : InclusionFamily ←
  registerInclusionFamily `interval_dyadic_real

instance instToSetIntervalDyadicReal : ToSet (Interval Dyadic) ℝ where
  toSet I := (I.map Dyadic.toReal).toSet

instance : Univ (Interval Dyadic) ℝ where
  univ := Interval.univ Dyadic
  mem_univ := Interval.mem_map_univ Dyadic.toReal

instance : Refine (Interval Dyadic) ℝ where
  refine := Interval.inter
  mem_refine := Interval.inter_mem Dyadic.toRealOrderEmbedding

instance : Coarsen (Interval Dyadic) ℝ where
  coarsen := Interval.hull
  mem_coarsen_left := Interval.hull_mem_left Dyadic.toRealOrderEmbedding
  mem_coarsen_right := Interval.hull_mem_right Dyadic.toRealOrderEmbedding

end IntervalDyadicReal

end Inclusion
```
