# EmbedFmt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c969cf344dacaab72641668ecff35e25796a7147f7933478de4bade56308f70a",
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
  "slug": "embedfmt--ac301468a288d6bff0b19d08",
  "source": {
    "blob": "6856437cf31cb3e2c1982ae83b8142b4cc4af33b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 114,
    "line": 101,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InteractiveDiagnostic/Variantb7dd92aea2bf08405b2014eece5b5fb466932cb4bb17161a1cb2fd4828211831.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ac301468a288d6bff0b19d087f119a75a13ca3633ce09d5e90dc1ee071a9bcc9",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InteractiveDiagnostic/Variantb7dd92aea2bf08405b2014eece5b5fb466932cb4bb17161a1cb2fd4828211831.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c969cf344dacaab72641668ecff35e25796a7147f7933478de4bade56308f70a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 101–114.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InteractiveDiagnostic/Variantb7dd92aea2bf08405b2014eece5b5fb466932cb4bb17161a1cb2fd4828211831.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InteractiveDiagnostic/Variantb7dd92aea2bf08405b2014eece5b5fb466932cb4bb17161a1cb2fd4828211831.lean#L101).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6856437cf31cb3e2c1982ae83b8142b4cc4af33b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
