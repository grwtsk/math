# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Refusal.Variant217a7842658d794deeb3350dc3c2de504348b3a3f1c1eff243d3f428923bd832

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a5673869588edd5f81f20b264ff048504fa4091a` · SHA-256 `65b8e551c0cff90238c71cb99a846976c8f6fef70990e042e1171292bb118cae`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BoundaryRefusal.Variant8ca03b4c3ac529a65012ea0f83ee530a7a6975430b78b75f5db95af4ecdb9b45","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8ca03b4c3ac529a65012ea0f83ee530a7a6975430b78b75f5db95af4ecdb9b45","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.BoundaryRefusal.Variant8ca03b4c3ac529a65012ea0f83ee530a7a6975430b78b75f5db95af4ecdb9b45","mathematical_subject":"Foundations.Unclassified","original_sha256":"8ca03b4c3ac529a65012ea0f83ee530a7a6975430b78b75f5db95af4ecdb9b45","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/formal/Quarantine/SourceOverlap/formal/Think/SourceTree/Legacy/RadoProjectedModularHeatflow/MemoryCore/Refusal.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Think.SourceTree.Legacy.RadoProjectedModularHeatflow.MemoryCore.Witness


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BoundaryRefusal.Variant8ca03b4c3ac529a65012ea0f83ee530a7a6975430b78b75f5db95af4ecdb9b45

set_option autoImplicit false

namespace Think.RadoProjectedModularHeatflow.MemoryCore

structure BoundaryRefusal where
  query : String
  activeResidue : BoundaryResidue
  supportingWitness? : Option BoundaryWitness
  noSupportedAnswer : Prop

def BoundaryRefusal.supported (r : BoundaryRefusal) : Bool :=
  r.supportingWitness?.isSome

theorem unsupported_refusal_has_no_witness
    (r : BoundaryRefusal)
    (h : r.supported = false) :
    r.supportingWitness? = none := by
  cases hw : r.supportingWitness? with
  | none =>
      rfl
  | some _ =>
      simp [BoundaryRefusal.supported, hw] at h

end Think.RadoProjectedModularHeatflow.MemoryCore
```
