# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ListTools.Variant23538b27f580c8972545d715f5c91b0af25829a75a37e455019e022f0bbf42e3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7cc09435ec99fd965b0cae756967996d50cf80ab` · SHA-256 `23436a0f0b3ad4f6478bf93d3221199ec62601bc5a1a97b6bc0d7354d6587435`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ListToolsCountTrue.Variantbd2798b7b1e37c16286b94eafe2a84f939e5cd5ac3c369063fb98660e1a9ba9b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"bd2798b7b1e37c16286b94eafe2a84f939e5cd5ac3c369063fb98660e1a9ba9b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.ListToolsCountTrue.Variantbd2798b7b1e37c16286b94eafe2a84f939e5cd5ac3c369063fb98660e1a9ba9b","mathematical_subject":"Computation.DataStructures","original_sha256":"bd2798b7b1e37c16286b94eafe2a84f939e5cd5ac3c369063fb98660e1a9ba9b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/Surface/Boolean/Cube/ListTools.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ListToolsCountTrue.Variantbd2798b7b1e37c16286b94eafe2a84f939e5cd5ac3c369063fb98660e1a9ba9b

namespace Surface.Boolean.Cube

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

end Surface.Boolean.Cube
```
