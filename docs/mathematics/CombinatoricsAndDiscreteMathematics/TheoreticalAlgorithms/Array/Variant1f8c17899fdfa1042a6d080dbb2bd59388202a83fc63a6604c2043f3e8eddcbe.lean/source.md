# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Array.Variant1f8c17899fdfa1042a6d080dbb2bd59388202a83fc63a6604c2043f3e8eddcbe

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `71c6f499bdbd08c6764ef89a6bf4460d8444a641` · SHA-256 `8be4809aa993c676bfe418bcda2aeac0716c4cb02d17f2643219bcc47812cc5d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Array.Variant27a13dd15dad973c66d090cd71e7f677f4e7a9ff8a307f24b45ff0ef03ed719a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"27a13dd15dad973c66d090cd71e7f677f4e7a9ff8a307f24b45ff0ef03ed719a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.Array.Variant27a13dd15dad973c66d090cd71e7f677f4e7a9ff8a307f24b45ff0ef03ed719a","mathematical_subject":"Computation.DataStructures","original_sha256":"27a13dd15dad973c66d090cd71e7f677f4e7a9ff8a307f24b45ff0ef03ed719a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/batteries/BatteriesTest/array.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Batteries.Data.Array


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Array.Variant27a13dd15dad973c66d090cd71e7f677f4e7a9ff8a307f24b45ff0ef03ed719a

section
variable {α : Type _}
variable [Inhabited α]
variable (a : Array α)
variable (i j : Nat)
variable (v d : α)
variable (g : i < (a.set! i v).size)
variable (j_lt : j < (a.set! i v).size)

#check_simp (a.set! i v)[i] ~> v
#check_simp (a.set! i v)[i]! ~> (a.setIfInBounds i v)[i]!
#check_simp (a.set! i v).getD i d ~> if i < a.size then v else d
#check_simp (a.set! i v)[i] ~> v

-- Checks with different index values.
#check_simp (a.set! i v)[j]'j_lt  ~> (a.setIfInBounds i v)[j]'_
#check_simp (a.setIfInBounds i v)[j]'j_lt !~>

-- This doesn't work currently.
-- It will be address in the comprehensive overhaul of array lemmas.
-- #check_simp (a.set! i v)[i]? ~> .some v

end
```
