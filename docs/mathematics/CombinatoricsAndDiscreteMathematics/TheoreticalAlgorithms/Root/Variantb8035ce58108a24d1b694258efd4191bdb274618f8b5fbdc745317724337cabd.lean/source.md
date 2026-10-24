# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Root.Variantb8035ce58108a24d1b694258efd4191bdb274618f8b5fbdc745317724337cabd

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b822095705295cce30d8c4050774726ee9f9e135` · SHA-256 `9c60ab0362c4a5ac7a5dbce3baecd5a14c600da7d512540a38d111c558b95cbd`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ControlledRoot.Variant70c3a32a1497d3250a06c0d643faef19c75167ac3bad814cb9496249aaddfcb4","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"70c3a32a1497d3250a06c0d643faef19c75167ac3bad814cb9496249aaddfcb4","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.ControlledRoot.Variant70c3a32a1497d3250a06c0d643faef19c75167ac3bad814cb9496249aaddfcb4","mathematical_subject":"Computation.DataStructures","original_sha256":"70c3a32a1497d3250a06c0d643faef19c75167ac3bad814cb9496249aaddfcb4","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think/.quarentine/61026/.quarentine/formal/Formal/Root.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Formal.Algorithm
import Formal.Kernel
import Formal.Surface

/-!
Controlled root for the Formal program.

All banded source regrowth is routed through this module. It imports the layout
algorithm, the checked kernel, and the unified surface. It does not import
unresolved blueprint, patch, or archive corpus files.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ControlledRoot.Variant70c3a32a1497d3250a06c0d643faef19c75167ac3bad814cb9496249aaddfcb4

namespace Formal.Root

def controlledRoot : String := "Formal.Root"

def importsCorpus : Bool := false

def bandedRoots : List Formal.ConceptualBoundary :=
  [ Formal.ConceptualBoundary.marker .surface "Formal.Algorithm"
  , Formal.ConceptualBoundary.marker .checked "Formal.Checked"
  , Formal.ConceptualBoundary.marker .checked "Formal.Kernel"
  , Formal.ConceptualBoundary.marker .surface "Formal.Surface"
  , Formal.ConceptualBoundary.marker .surface "Formal.Conceptual"
  , Formal.ConceptualBoundary.marker .surface "Formal.Band"
  , Formal.ConceptualBoundary.marker .blueprint "Formal.Blueprint"
  , Formal.ConceptualBoundary.marker .patch "Formal.Patches.Mathlib"
  , Formal.ConceptualBoundary.marker .external "Formal.External"
  , Formal.ConceptualBoundary.marker .archive "Formal.Archive"
  ]

theorem importsCorpus_false : importsCorpus = false := by
  rfl

theorem bandedRoots_count : bandedRoots.length = 10 := by
  rfl

end Formal.Root
```
