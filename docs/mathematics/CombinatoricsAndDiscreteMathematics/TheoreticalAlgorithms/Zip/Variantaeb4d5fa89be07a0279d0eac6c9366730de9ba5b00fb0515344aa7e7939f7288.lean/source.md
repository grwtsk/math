# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Zip.Variantaeb4d5fa89be07a0279d0eac6c9366730de9ba5b00fb0515344aa7e7939f7288

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e92b4318753236021165a34e063a0496f6d0606b` · SHA-256 `3bc5fbf0e115e77d56d49375d3d5d583d3f4e6dbcb02ee4f7e126844a35dc19a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ZipWith.Variant32728630e876b051317b92c6fc6606e99df4ab0b029130cb196829b9cd11a43b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"32728630e876b051317b92c6fc6606e99df4ab0b029130cb196829b9cd11a43b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.ZipWith.Variant32728630e876b051317b92c6fc6606e99df4ab0b029130cb196829b9cd11a43b","mathematical_subject":"Computation.DataStructures","original_sha256":"32728630e876b051317b92c6fc6606e99df4ab0b029130cb196829b9cd11a43b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Data/Vector/Zip.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Kim Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison
-/
import Mathlib.Data.Vector.Basic

/-!
# The `zipWith` operation on vectors.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ZipWith.Variant32728630e876b051317b92c6fc6606e99df4ab0b029130cb196829b9cd11a43b

namespace List

namespace Vector

section ZipWith

variable {α β γ : Type*} {n : ℕ} (f : α → β → γ)

/-- Apply the function `f : α → β → γ` to each corresponding pair of elements from two vectors. -/
def zipWith : Vector α n → Vector β n → Vector γ n := fun x y => ⟨List.zipWith f x.1 y.1, by simp⟩

@[simp]
theorem zipWith_toList (x : Vector α n) (y : Vector β n) :
    (Vector.zipWith f x y).toList = List.zipWith f x.toList y.toList :=
  rfl

@[simp]
theorem zipWith_get (x : Vector α n) (y : Vector β n) (i) :
    (Vector.zipWith f x y).get i = f (x.get i) (y.get i) := by
  dsimp only [Vector.zipWith, Vector.get]
  simp

@[simp]
theorem zipWith_tail (x : Vector α n) (y : Vector β n) :
    (Vector.zipWith f x y).tail = Vector.zipWith f x.tail y.tail := by
  ext
  simp [get_tail]

@[to_additive]
theorem prod_mul_prod_eq_prod_zipWith [CommMonoid α] (x y : Vector α n) :
    x.toList.prod * y.toList.prod = (Vector.zipWith (· * ·) x y).toList.prod :=
  List.prod_mul_prod_eq_prod_zipWith_of_length_eq x.toList y.toList
    ((toList_length x).trans (toList_length y).symm)

end ZipWith

end Vector

end List
```
