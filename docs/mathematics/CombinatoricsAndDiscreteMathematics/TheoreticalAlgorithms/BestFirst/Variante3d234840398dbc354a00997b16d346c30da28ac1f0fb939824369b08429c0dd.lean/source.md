# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.BestFirst.Variante3d234840398dbc354a00997b16d346c30da28ac1f0fb939824369b08429c0dd

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2cec4c8f7bff05a458a40a8e8c4868d6a4446c58` · SHA-256 `20ed3610e9c29b5bd2dc838a58140465fae5df9f72296f807d74781d86362d8c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Wall.Varianted3bdbf76dca72515ecb1798f3914a6099e64866b6fa1bd7b07bf65ddca56880","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ed3bdbf76dca72515ecb1798f3914a6099e64866b6fa1bd7b07bf65ddca56880","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.Wall.Varianted3bdbf76dca72515ecb1798f3914a6099e64866b6fa1bd7b07bf65ddca56880","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"ed3bdbf76dca72515ecb1798f3914a6099e64866b6fa1bd7b07bf65ddca56880","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/test/search/BestFirst.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Data.MLList.BestFirst
import Mathlib.Data.Nat.Sqrt

/-!
# Testing best first search and beam search.

We check that `bestFirstSearch` can find its way around a wall.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Wall.Varianted3bdbf76dca72515ecb1798f3914a6099e64866b6fa1bd7b07bf65ddca56880

open Lean MLList

def wall : Int × Int → Bool :=
  fun ⟨x, y⟩ => x ≤ 3 || y ≤ 3 || x ≥ 20 || y ≥ 20 || (x ≥ 6 && y ≥ 6)

def nbhd : Int × Int → MLList MetaM (Int × Int) :=
  fun ⟨x, y⟩ => MLList.ofList
      ([(x+1,y), (x-1,y), (x,y+1), (x,y-1)].filter wall)

instance : Ord (Int × Int) where
  compare p q :=
    let rp := p.1^2 + p.2^2
    let rq := q.1^2 + q.2^2
    if rp < rq then .lt
    else if rq < rp then .gt
    else if p.1 < q.1 then .lt
    else if q.1 < p.1 then .gt
    else if p.2 < q.2 then .lt
    else if q.2 < p.2 then .gt
    else .eq

#eval bestFirstSearch nbhd (10, 10) (maxQueued := some 4) |>.takeUpToFirst (· = (0,0)) |>.force
```
