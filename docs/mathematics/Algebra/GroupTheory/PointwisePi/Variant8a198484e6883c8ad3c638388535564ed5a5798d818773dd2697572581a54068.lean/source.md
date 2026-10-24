# Complete source: GRWTSK.Algebra.GroupTheory.PointwisePi.Variant8a198484e6883c8ad3c638388535564ed5a5798d818773dd2697572581a54068

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `98416eff9ba8d236e218525eb5530718b6db97c5` · SHA-256 `31f2ca28ca90748c4d69bdc30fa0839d395a48a5750e73f7cbf943f18ce5a790`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.GroupTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.GroupTheory.SmulPiSubset.Variant8d230838a518ab56c7d04f5a4fcf0a5cf51863189b6dc6f6f33654fa70e2ef6c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8d230838a518ab56c7d04f5a4fcf0a5cf51863189b6dc6f6f33654fa70e2ef6c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Groups.SourceCorpus.SmulPiSubset.Variant8d230838a518ab56c7d04f5a4fcf0a5cf51863189b6dc6f6f33654fa70e2ef6c","mathematical_subject":"Algebra.Groups","original_sha256":"8d230838a518ab56c7d04f5a4fcf0a5cf51863189b6dc6f6f33654fa70e2ef6c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Module/PointwisePi.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Alex J. Best. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Alex J. Best
-/
import Mathlib.Algebra.GroupWithZero.Units.Basic
import Mathlib.Algebra.Group.Action.Basic
import Mathlib.Algebra.Group.Pointwise.Set.Scalar

/-!
# Pointwise actions on sets in Pi types

This file contains lemmas about pointwise actions on sets in Pi types.

## Tags

set multiplication, set addition, pointwise addition, pointwise multiplication, pi

-/


namespace GRWTSK.Algebra.GroupTheory.SmulPiSubset.Variant8d230838a518ab56c7d04f5a4fcf0a5cf51863189b6dc6f6f33654fa70e2ef6c

open Pointwise

open Set

variable {K ι : Type*} {R : ι → Type*}

@[to_additive]
theorem smul_pi_subset [∀ i, SMul K (R i)] (r : K) (s : Set ι) (t : ∀ i, Set (R i)) :
    r • pi s t ⊆ pi s (r • t) :=
  piMap_image_pi_subset _

@[to_additive]
theorem smul_univ_pi [∀ i, SMul K (R i)] (r : K) (t : ∀ i, Set (R i)) :
    r • pi (univ : Set ι) t = pi (univ : Set ι) (r • t) :=
  piMap_image_univ_pi _ _

@[to_additive]
theorem smul_pi [Group K] [∀ i, MulAction K (R i)] (r : K) (S : Set ι) (t : ∀ i, Set (R i)) :
    r • S.pi t = S.pi (r • t) :=
  piMap_image_pi (fun _ _ => MulAction.surjective _) _

theorem smul_pi₀ [GroupWithZero K] [∀ i, MulAction K (R i)] {r : K} (S : Set ι) (t : ∀ i, Set (R i))
    (hr : r ≠ 0) : r • S.pi t = S.pi (r • t) :=
  smul_pi (Units.mk0 r hr) S t
```
