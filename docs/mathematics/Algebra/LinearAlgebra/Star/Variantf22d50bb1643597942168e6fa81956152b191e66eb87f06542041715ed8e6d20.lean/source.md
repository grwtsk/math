# Complete source: GRWTSK.Algebra.LinearAlgebra.Star.Variantf22d50bb1643597942168e6fa81956152b191e66eb87f06542041715ed8e6d20

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `602ca8c8d4eb7dafc6805cd014556eb919b70cbc` · SHA-256 `8d483dcaf07efb32dda1f8289907ccabeb562d6c13796bfd181a392cc1a6b693`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.NNReal.Variant57dab96b4adbf883a00422e3711c4876462517f72e865a5407d4fe0d821712f7","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"57dab96b4adbf883a00422e3711c4876462517f72e865a5407d4fe0d821712f7","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.NNReal.Variant57dab96b4adbf883a00422e3711c4876462517f72e865a5407d4fe0d821712f7","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"57dab96b4adbf883a00422e3711c4876462517f72e865a5407d4fe0d821712f7","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Basic/NNReal/Star.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Jireh Loreaux. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jireh Loreaux
-/
module

public import Mathlib.Basic.NNReal.Defs
public import Mathlib.Basic.Real.Star

/-!
# The non-negative real numbers are a \*-ring, with the trivial \*-structure
-/


namespace GRWTSK.Algebra.LinearAlgebra.NNReal.Variant57dab96b4adbf883a00422e3711c4876462517f72e865a5407d4fe0d821712f7

public section

assert_not_exists Finset

open scoped NNReal

instance : StarRing ℝ≥0 := starRingOfComm

instance : TrivialStar ℝ≥0 where
  star_trivial _ := rfl

instance : StarModule ℝ≥0 ℝ where
  star_smul := by simp only [star_trivial, forall_const]

instance {E : Type*} [AddCommMonoid E] [Star E] [Module ℝ E] [StarModule ℝ E] :
    StarModule ℝ≥0 E where
  star_smul _ := star_smul (_ : ℝ)
```
