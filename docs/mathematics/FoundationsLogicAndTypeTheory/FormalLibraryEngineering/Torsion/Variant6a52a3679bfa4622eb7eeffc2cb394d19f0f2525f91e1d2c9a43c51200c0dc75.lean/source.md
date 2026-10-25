# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Torsion.Variant6a52a3679bfa4622eb7eeffc2cb394d19f0f2525f91e1d2c9a43c51200c0dc75

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4fbfc92286787be225cdb28b34c79bcf7117730e` · SHA-256 `2589cb68e679fc19052dde48e33df051ceb52626c4eb5066135ca0093fd3206a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TorsionClass.Variantb3539822ee62242434cdf38fd422c66decd9142d53762dfde6a8898c5d94abbe","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b3539822ee62242434cdf38fd422c66decd9142d53762dfde6a8898c5d94abbe","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.TorsionClass.Variantb3539822ee62242434cdf38fd422c66decd9142d53762dfde6a8898c5d94abbe","mathematical_subject":"Foundations.Unclassified","original_sha256":"b3539822ee62242434cdf38fd422c66decd9142d53762dfde6a8898c5d94abbe","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/formal/Quarantine/SourceOverlap/formal/Think/SourceTree/Legacy/RadoProjectedModularHeatflow/MemoryCore/Torsion.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["lake_or_runtime_control","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Think.SourceTree.Legacy.RadoProjectedModularHeatflow.MemoryCore.PoleCover


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TorsionClass.Variantb3539822ee62242434cdf38fd422c66decd9142d53762dfde6a8898c5d94abbe

set_option autoImplicit false

namespace Think.RadoProjectedModularHeatflow.MemoryCore

structure TorsionClass where
  modulus : Nat
  representative : Nat
  label : String
deriving Repr

structure CompactTorsion where
  compact : CompactPatch
  torsion : TorsionClass
  coboundaryResidue : Int
  poleResidue : Int

def CompactTorsion.residueValue (T : CompactTorsion) : Int :=
  T.coboundaryResidue + T.poleResidue

def CompactTorsion.resolved (T : CompactTorsion) : Prop :=
  T.residueValue = 0

structure TorsionRestriction where
  source : CompactPatch
  target : CompactPatch
  sourceTorsion : TorsionClass
  targetTorsion : TorsionClass
  naturalUnderRestriction : Prop

def TorsionRestriction.admitted (r : TorsionRestriction) : Prop :=
  r.naturalUnderRestriction

theorem torsion_resolved_iff_value_zero
    (T : CompactTorsion) :
    T.resolved ↔ T.residueValue = 0 := by
  rfl

theorem natural_torsion_restriction_admitted
    (r : TorsionRestriction)
    (h : r.naturalUnderRestriction) :
    r.admitted := by
  exact h

end Think.RadoProjectedModularHeatflow.MemoryCore
```
