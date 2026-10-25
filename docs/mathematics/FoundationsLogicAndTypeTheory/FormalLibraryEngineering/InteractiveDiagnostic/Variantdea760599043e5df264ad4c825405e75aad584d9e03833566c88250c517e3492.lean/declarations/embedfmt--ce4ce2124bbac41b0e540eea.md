# EmbedFmt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4b6313578c5a298bfbf0db895d47b9d7706e97cae8d62fef4cd5cdef7b7284c1",
  "kind": "inductive",
  "lexical_name": "EmbedFmt",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "embedfmt--ce4ce2124bbac41b0e540eea",
  "source": {
    "blob": "b416041049cc11a2238454238f74c81fd864a083",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 122,
    "line": 109,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InteractiveDiagnostic/Variantdea760599043e5df264ad4c825405e75aad584d9e03833566c88250c517e3492.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ce4ce2124bbac41b0e540eea6aa5cd98f995c95aa8c326853e33e88d9221e9d0",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InteractiveDiagnostic/Variantdea760599043e5df264ad4c825405e75aad584d9e03833566c88250c517e3492.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4b6313578c5a298bfbf0db895d47b9d7706e97cae8d62fef4cd5cdef7b7284c1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 109–122.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private inductive EmbedFmt
  /-- Nested tags denote `Info` objects in `infos`. -/
  | code (ctx : Elab.ContextInfo) (infos : Std.TreeMap Nat Elab.Info)
  /-- Nested text is ignored. -/
  | goal (ctx : Elab.ContextInfo) (lctx : LocalContext) (g : MVarId)
  /-- Nested text is ignored. -/
  | widget (wi : WidgetInstance) (alt : Format)
  /-- Nested text is ignored. -/
  | trace (cls : Name) (msg : Format) (collapsed : Bool)
    (children : StrictOrLazy (Array Format) (Array MessageData))
  /-- Nested tags are ignored, show nested text as-is. -/
  | ignoreTags
  deriving Inhabited

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InteractiveDiagnostic/Variantdea760599043e5df264ad4c825405e75aad584d9e03833566c88250c517e3492.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InteractiveDiagnostic/Variantdea760599043e5df264ad4c825405e75aad584d9e03833566c88250c517e3492.lean#L109).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b416041049cc11a2238454238f74c81fd864a083` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
