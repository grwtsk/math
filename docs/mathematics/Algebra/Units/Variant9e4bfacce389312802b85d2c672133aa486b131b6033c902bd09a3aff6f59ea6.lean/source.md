# Complete source: GRWTSK.Algebra.Units.Variant9e4bfacce389312802b85d2c672133aa486b131b6033c902bd09a3aff6f59ea6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6de9ce10eb079cdd21eb38828aa21dc3f15b1ae8` · SHA-256 `aea137b280148217109be0101ab0f9c3f31c479fe74dd13ddb9352d801104016`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.UnitsEqOneOr.Variante615f027504d0fd8011a52a0c127a5e5a1ffa900b6df4eef3316db82dca7af6b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e615f027504d0fd8011a52a0c127a5e5a1ffa900b6df4eef3316db82dca7af6b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.RingsAndFields.SourceCorpus.UnitsEqOneOr.Variante615f027504d0fd8011a52a0c127a5e5a1ffa900b6df4eef3316db82dca7af6b","mathematical_subject":"Algebra.RingsAndFields","original_sha256":"e615f027504d0fd8011a52a0c127a5e5a1ffa900b6df4eef3316db82dca7af6b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Ring/Int/Units.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2016 Jeremy Avigad. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jeremy Avigad
-/
import Mathlib.Algebra.Ring.Int.Defs
import Mathlib.Algebra.Ring.Units
import Mathlib.Algebra.Group.Int.Units

/-!
# Basic lemmas for `ℤˣ`.

This file contains lemmas on the units of `ℤ`.

## Main results

* `Int.units_eq_one_or`: the invertible integers are 1 and -1.

See note [foundational algebra order theory].
-/


namespace GRWTSK.Algebra.UnitsEqOneOr.Variante615f027504d0fd8011a52a0c127a5e5a1ffa900b6df4eef3316db82dca7af6b

assert_not_exists DenselyOrdered Set.Subsingleton

namespace Int

/-! #### Units -/

lemma units_eq_one_or (u : ℤˣ) : u = 1 ∨ u = -1 := by
  simpa only [Units.ext_iff] using isUnit_eq_one_or u.isUnit

lemma units_ne_iff_eq_neg {u v : ℤˣ} : u ≠ v ↔ u = -v := by
  simpa only [Ne, Units.ext_iff] using isUnit_ne_iff_eq_neg u.isUnit v.isUnit

end Int
```
