# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Algorithm.Variant1efc4dceef0e26f158f5da7bd718a9f8f2ed4bc1493ec49701444977163f5118

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a0f446fb21d834cfb48c53bed7c3b5db8868a98c` · SHA-256 `1efc4dceef0e26f158f5da7bd718a9f8f2ed4bc1493ec49701444977163f5118`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Formal.Band

/-!
Algorithmic regrowth model for `src/formal`.

This module is the source-layout authority. The physical tree is accepted only
when it is the output of this model: source is scattered into authority bands,
classified by conceptual boundary, compressed through marker/root surfaces, and
regrown under the controlled `Formal.Root` import.
-/

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
