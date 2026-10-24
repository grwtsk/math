# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Algorithm.Variant21c4598731f186ccf5813adf2bb40d1c903f50487b2b0f27b6ca81bc1a1c425c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `494cb1aff839079a6eeb067e7b3e355d104b06a2` · SHA-256 `d8a6759c4f635349e6afec0d01fb2eff30fc8e0efa52d920f22b127cbaa49d0e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.RegrowthAction.Variant1efc4dceef0e26f158f5da7bd718a9f8f2ed4bc1493ec49701444977163f5118","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1efc4dceef0e26f158f5da7bd718a9f8f2ed4bc1493ec49701444977163f5118","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.Algorithms.SourceCorpus.RegrowthAction.Variant1efc4dceef0e26f158f5da7bd718a9f8f2ed4bc1493ec49701444977163f5118","mathematical_subject":"Computation.Algorithms","original_sha256":"1efc4dceef0e26f158f5da7bd718a9f8f2ed4bc1493ec49701444977163f5118","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think/.quarentine/61026/.quarentine/formal/Formal/Algorithm.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Formal.Band

/-!
Algorithmic regrowth model for `src/formal`.

This module is the source-layout authority. The physical tree is accepted only
when it is the output of this model: source is scattered into authority bands,
classified by conceptual boundary, compressed through marker/root surfaces, and
regrown under the controlled `Formal.Root` import.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.RegrowthAction.Variant1efc4dceef0e26f158f5da7bd718a9f8f2ed4bc1493ec49701444977163f5118

namespace Formal.Algorithm

inductive RegrowthAction where
  | keep
  | move
  | merge
  | split
  | eliminate
  deriving DecidableEq, Repr

structure LayoutBand where
  authority : Formal.AuthorityBand
  root : String
  importsCorpus : Bool
  action : RegrowthAction
  deriving Repr

def checked : LayoutBand :=
  { authority := .checked
  , root := "Formal.Checked"
  , importsCorpus := false
  , action := .keep
  }

def surface : LayoutBand :=
  { authority := .surface
  , root := "Formal.Surface"
  , importsCorpus := false
  , action := .keep
  }

def blueprint : LayoutBand :=
  { authority := .blueprint
  , root := "Formal.Blueprint"
  , importsCorpus := true
  , action := .keep
  }

def patch : LayoutBand :=
  { authority := .patch
  , root := "Formal.Patches"
  , importsCorpus := true
  , action := .keep
  }

def external : LayoutBand :=
  { authority := .external
  , root := "Formal.External"
  , importsCorpus := false
  , action := .keep
  }

def archive : LayoutBand :=
  { authority := .archive
  , root := "Formal.Archive"
  , importsCorpus := true
  , action := .keep
  }

def optimalBands : List LayoutBand :=
  [ checked
  , surface
  , blueprint
  , patch
  , external
  , archive
  ]

theorem optimalBands_count : optimalBands.length = 6 := by
  rfl

def optimalCheckedRoots : List String :=
  [ "Formal.Checked.Geometry"
  , "Formal.Checked.BoundaryMatriciant"
  , "Formal.Checked.Projection.Balance"
  , "Formal.Checked.Projection.Flatten"
  ]

theorem optimalCheckedRoots_count : optimalCheckedRoots.length = 4 := by
  rfl

def optimalConceptualRoots : List Formal.ConceptualBoundary :=
  [ Formal.ConceptualBoundary.marker .checked "Formal.Checked.Geometry"
  , Formal.ConceptualBoundary.marker .checked "Formal.Checked.BoundaryMatriciant"
  , Formal.ConceptualBoundary.marker .checked "Formal.Checked.Projection"
  , Formal.ConceptualBoundary.marker .surface "Formal.Surface"
  , Formal.ConceptualBoundary.marker .surface "Formal.Band"
  , Formal.ConceptualBoundary.marker .surface "Formal.Algorithm"
  , Formal.ConceptualBoundary.marker .blueprint "Formal.Blueprint.Analytic"
  , Formal.ConceptualBoundary.marker .blueprint
      "Formal.Blueprint.PrimeNumberTheoremAnd"
  , Formal.ConceptualBoundary.marker .blueprint "Formal.Blueprint.Tactic"
  , Formal.ConceptualBoundary.marker .patch "Formal.Patches.Mathlib.Algebra"
  , Formal.ConceptualBoundary.marker .patch "Formal.Patches.Mathlib.Analysis"
  , Formal.ConceptualBoundary.marker .patch
      "Formal.Patches.Mathlib.MeasureTheory"
  , Formal.ConceptualBoundary.marker .patch
      "Formal.Patches.Mathlib.NumberTheory"
  , Formal.ConceptualBoundary.marker .patch "Formal.Patches.Mathlib.Topology"
  , Formal.ConceptualBoundary.marker .external
      "Formal.External.PrimeNumberTheoremAnd"
  , Formal.ConceptualBoundary.marker .external "Formal.External.LeanCert"
  , Formal.ConceptualBoundary.marker .archive "Formal.Archive"
  ]

theorem optimalConceptualRoots_count : optimalConceptualRoots.length = 17 := by
  rfl

def controlledRootImports : List String :=
  [ "Formal.Algorithm"
  , "Formal.Kernel"
  , "Formal.Surface"
  ]

theorem controlledRootImports_count : controlledRootImports.length = 3 := by
  rfl

def defaultRootImports : List String :=
  [ "Formal.Root" ]

theorem defaultRootImports_count : defaultRootImports.length = 1 := by
  rfl

def generatedCompressionRoot : String := "src.compressed/formal"

def generatedLayoutManifest : String := "formal_algorithmic_layout.json"

def algorithmAuthority : String :=
  "scatter -> classify -> band -> compress -> regrow"

theorem checked_can_close :
    checked.authority.mayCloseTheoremAuthority = true := by
  rfl

theorem blueprint_cannot_close :
    blueprint.authority.mayCloseTheoremAuthority = false := by
  rfl

theorem patch_cannot_close :
    patch.authority.mayCloseTheoremAuthority = false := by
  rfl

theorem archive_cannot_close :
    archive.authority.mayCloseTheoremAuthority = false := by
  rfl

end Formal.Algorithm
```
