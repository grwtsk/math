# Complete source: GRWTSK.Algebra.Defs.Variant17ae8cb9f1117aeb95af16045ca0566cbbb31d9a17bb14e526ff5de4310ff999

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `243d7c76a8758f90ad4fa1d2505a9696e39751fa` · SHA-256 `0bfe146f91c919645cb71e9c798abf80176fffcfd1239c03961a85bb72132c61`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.IsLocalRing.Variant25618832e74f3ed82384c8f9be59e3e98df11e85326d429ceed3a1b957311837","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"25618832e74f3ed82384c8f9be59e3e98df11e85326d429ceed3a1b957311837","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.RingsAndFields.SourceCorpus.IsLocalRing.Variant25618832e74f3ed82384c8f9be59e3e98df11e85326d429ceed3a1b957311837","mathematical_subject":"Algebra.RingsAndFields","original_sha256":"25618832e74f3ed82384c8f9be59e3e98df11e85326d429ceed3a1b957311837","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/RingTheory/LocalRing/Defs.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2018 Kenny Lau. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kenny Lau, Chris Hughes, Mario Carneiro
-/
import Mathlib.Algebra.Group.Units.Defs
import Mathlib.Algebra.Ring.Defs

/-!

# Local rings

Define local rings as commutative rings having a unique maximal ideal.

## Main definitions

* `IsLocalRing`: A predicate on semirings, stating that for any pair of elements that
  adds up to `1`, one of them is a unit. In the commutative case this is shown to be equivalent
  to the condition that there exists a unique maximal ideal, see
  `IsLocalRing.of_unique_max_ideal` and `IsLocalRing.maximal_ideal_unique`.

-/

namespace GRWTSK.Algebra.IsLocalRing.Variant25618832e74f3ed82384c8f9be59e3e98df11e85326d429ceed3a1b957311837

/-- A semiring is local if it is nontrivial and `a` or `b` is a unit whenever `a + b = 1`.
Note that `IsLocalRing` is a predicate. -/
class IsLocalRing (R : Type*) [Semiring R] : Prop extends Nontrivial R where
  of_is_unit_or_is_unit_of_add_one ::
  /-- in a local ring `R`, if `a + b = 1`, then either `a` is a unit or `b` is a unit. In another
    word, for every `a : R`, either `a` is a unit or `1 - a` is a unit. -/
  isUnit_or_isUnit_of_add_one {a b : R} (h : a + b = 1) : IsUnit a ∨ IsUnit b

@[deprecated (since := "2024-11-09")] alias LocalRing := IsLocalRing
```
