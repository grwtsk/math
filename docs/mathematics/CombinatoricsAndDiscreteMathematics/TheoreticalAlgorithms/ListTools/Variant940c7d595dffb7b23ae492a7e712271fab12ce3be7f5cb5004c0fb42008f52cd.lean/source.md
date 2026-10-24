# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ListTools.Variant940c7d595dffb7b23ae492a7e712271fab12ce3be7f5cb5004c0fb42008f52cd

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4f9f2d08ef3f796dd7b7861c981bd529dc76811d` · SHA-256 `300441fc0c22c97967beb21a484b02e2ccb3f1f4913e382c7b5a33ca0a684aca`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ListToolsCountTrue.Variant2c58e82517b62adb2f175841242916ed1cac678851af099bfb491ca5416dc366","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2c58e82517b62adb2f175841242916ed1cac678851af099bfb491ca5416dc366","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.ListToolsCountTrue.Variant2c58e82517b62adb2f175841242916ed1cac678851af099bfb491ca5416dc366","mathematical_subject":"Computation.DataStructures","original_sha256":"2c58e82517b62adb2f175841242916ed1cac678851af099bfb491ca5416dc366","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/lib/Boolean/Cube/ListTools.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ListToolsCountTrue.Variant2c58e82517b62adb2f175841242916ed1cac678851af099bfb491ca5416dc366

namespace Boolean.Cube

/-- Count the number of `true` entries in a Boolean list. -/
def ListTools.countTrue (xs : List Bool) : Nat :=
  xs.foldl (fun acc b => if b then acc + 1 else acc) 0

/-- Boolean disjunction across a list. -/
def ListTools.anyTrue (xs : List Bool) : Bool :=
  xs.foldl (fun acc b => acc || b) false

/-- Boolean conjunction across a list. -/
def ListTools.allTrue (xs : List Bool) : Bool :=
  xs.foldl (fun acc b => acc && b) true

/-- Sum a list of natural numbers. -/
def ListTools.sumNat (xs : List Nat) : Nat :=
  xs.foldl (fun acc x => acc + x) 0

/-- Sum a list of integers. -/
def ListTools.sumInt (xs : List Int) : Int :=
  xs.foldl (fun acc x => acc + x) 0

/-- Product of a list of integers. -/
def ListTools.prodInt (xs : List Int) : Int :=
  xs.foldl (fun acc x => acc * x) 1

end Boolean.Cube
```
