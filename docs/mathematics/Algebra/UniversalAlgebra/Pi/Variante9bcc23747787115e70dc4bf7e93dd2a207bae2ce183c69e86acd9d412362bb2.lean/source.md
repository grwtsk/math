# Complete source: GRWTSK.Algebra.UniversalAlgebra.Pi.Variante9bcc23747787115e70dc4bf7e93dd2a207bae2ce183c69e86acd9d412362bb2

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8ceba9a4265331ff531823635ee8517914859511` · SHA-256 `d940c47605bcd1efb310f98015a3dff3010d30dd254d65578d1c2b9a878a8438`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.UniversalAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.UniversalAlgebra.IsLeftRegularIff.Variant6737f4b341a6a7cdfa8704477958236a8b084bc0cb4e9b21684c8ed396e55808","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6737f4b341a6a7cdfa8704477958236a8b084bc0cb4e9b21684c8ed396e55808","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.GeneralAlgebra.SourceCorpus.IsLeftRegularIff.Variant6737f4b341a6a7cdfa8704477958236a8b084bc0cb4e9b21684c8ed396e55808","mathematical_subject":"Algebra.GeneralAlgebra","original_sha256":"6737f4b341a6a7cdfa8704477958236a8b084bc0cb4e9b21684c8ed396e55808","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Algebra/Regular/Pi.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["external_root_references_preserved","implicit_eof_scopes","root_references_require_identity_review","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Eric Wieser. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Eric Wieser
-/
module

public import Mathlib.Algebra.Regular.SMul
public import Mathlib.Algebra.Notation.Pi.Basic

/-!
# Results about `IsRegular` and pi types
-/


namespace GRWTSK.Algebra.UniversalAlgebra.IsLeftRegularIff.Variant6737f4b341a6a7cdfa8704477958236a8b084bc0cb4e9b21684c8ed396e55808

public section

variable {ι α : Type*} {R : ι → Type*}

namespace Pi

section
variable [∀ i, Mul (R i)]

@[to_additive (attr := simp)]
theorem isLeftRegular_iff {a : ∀ i, R i} : IsLeftRegular a ↔ ∀ i, IsLeftRegular (a i) :=
  have (i : _) : Nonempty (R i) := ⟨a i⟩; Pi.map_injective

@[to_additive (attr := simp)]
theorem isRightRegular_iff {a : ∀ i, R i} : IsRightRegular a ↔ ∀ i, IsRightRegular (a i) :=
  have (i : _) : Nonempty (R i) := ⟨a i⟩; .symm <| Pi.map_injective.symm

@[to_additive (attr := simp)]
theorem isRegular_iff {a : ∀ i, R i} : IsRegular a ↔ ∀ i, IsRegular (a i) := by
  simp [_root_.isRegular_iff, forall_and]

end

@[simp]
theorem isSMulRegular_iff [∀ i, SMul α (R i)] {r : α} [∀ i, Nonempty (R i)] :
    IsSMulRegular (∀ i, R i) r ↔ ∀ i, IsSMulRegular (R i) r :=
  Pi.map_injective

end Pi
```
