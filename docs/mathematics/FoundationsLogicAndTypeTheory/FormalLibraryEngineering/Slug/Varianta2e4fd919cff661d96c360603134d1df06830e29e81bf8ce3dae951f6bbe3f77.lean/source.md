# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Slug.Varianta2e4fd919cff661d96c360603134d1df06830e29e81bf8ce3dae951f6bbe3f77

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `19a6506c08a73d1e664e2fb4425b18d8b0bd8f22` · SHA-256 `0a431186d2430846133669cefb8e82a663e4ebad677715c8337d789076f01f1c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SlugKind.Varianta9f8bc169517d289bc6ead642cc1e010f2aa8f2ad55e0c26e677f3cd7f2effc6","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a9f8bc169517d289bc6ead642cc1e010f2aa8f2ad55e0c26e677f3cd7f2effc6","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.SlugKind.Varianta9f8bc169517d289bc6ead642cc1e010f2aa8f2ad55e0c26e677f3cd7f2effc6","mathematical_subject":"Foundations.Unclassified","original_sha256":"a9f8bc169517d289bc6ead642cc1e010f2aa8f2ad55e0c26e677f3cd7f2effc6","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/Surface/Meta/Slug.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Surface.Meta.AST


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SlugKind.Varianta9f8bc169517d289bc6ead642cc1e010f2aa8f2ad55e0c26e677f3cd7f2effc6

namespace Surface

namespace Meta

inductive SlugKind where
  | project
  | module
  | namespace
  | definition
  | theorem
  | structure
  | inductive
  | fixture
  | paperMap
  | claimBoundary
  | runtime
  | rendering
  | htmlPage
deriving DecidableEq, Repr

structure Slug where
  canonical : String
  kind : SlugKind
  sourceName? : Option String
  module? : Option String
  collisionHash? : Option String
deriving Repr

namespace Slug

def Nonempty (slug : Slug) : Prop :=
  slug.canonical ≠ ""

end Slug

structure ExportedAstNode where
  id : String
  slug : Slug
  trusted : Bool
  nonemptyId : id ≠ ""

def ExportedAstNodeValid (node : ExportedAstNode) : Prop :=
  node.trusted = true ∧ Slug.Nonempty node.slug

theorem exported_ast_node_slug_nonempty
    {node : ExportedAstNode} :
    ExportedAstNodeValid node ->
      Slug.Nonempty node.slug := by
  intro h
  exact h.2

end Meta

end Surface
```
