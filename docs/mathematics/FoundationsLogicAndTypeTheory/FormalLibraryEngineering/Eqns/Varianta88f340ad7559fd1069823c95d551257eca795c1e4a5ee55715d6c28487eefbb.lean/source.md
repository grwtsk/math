# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Eqns.Varianta88f340ad7559fd1069823c95d551257eca795c1e4a5ee55715d6c28487eefbb

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `87bc1bb3c5e17f57ae6e0d5ba2fb59325dcc0d7c` · SHA-256 `2f1b7cf8fe9f0f99724406c7024cb648e753c08b4f27cefab6f8d3e5f77f73bc`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Transpose.Variantd9700d6703b92b7306dd0e0bbc78a651d18871888fac3f7a0273fa2d39bc000c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d9700d6703b92b7306dd0e0bbc78a651d18871888fac3f7a0273fa2d39bc000c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Transpose.Variantd9700d6703b92b7306dd0e0bbc78a651d18871888fac3f7a0273fa2d39bc000c","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"d9700d6703b92b7306dd0e0bbc78a651d18871888fac3f7a0273fa2d39bc000c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/test/eqns.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Tactic.Eqns


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Transpose.Variantd9700d6703b92b7306dd0e0bbc78a651d18871888fac3f7a0273fa2d39bc000c

def transpose {m n} (A : m → n → Nat) : n → m → Nat
  | i, j => A j i

theorem transpose_apply {m n} (A : m → n → Nat) (i j) :
  transpose A i j = A j i := rfl

attribute [eqns transpose_apply] transpose

theorem transpose_const {m n} (c : Nat) :
    transpose (fun (_i : m) (_j : n) => c) = fun _j _i => c := by
  fail_if_success {rw [transpose]}
  fail_if_success {simp [transpose]}
  funext i j -- the rw below does not work without this line
  rw [transpose]
```
