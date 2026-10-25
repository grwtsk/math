# MsgEmbed

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:456c5eae5cd1dcfb81d7b9a1a595c220308272fb91c98ab59cbe841768d2e697",
  "kind": "inductive",
  "lexical_name": "MsgEmbed",
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
  "slug": "msgembed--e96e3f2d4eed5b3db98a79cb",
  "source": {
    "blob": "ebf9d6d73f7af9eb7b494c810e872de8016a4dbc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 157,
    "line": 150,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Runner/Variant83225ab84920337695388e6dd4a6a9d3030042559706db7a27f0537acd1fd1f5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e96e3f2d4eed5b3db98a79cb379efdfc017e8b21f72feef088d459c18dcac3fa",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Runner/Variant83225ab84920337695388e6dd4a6a9d3030042559706db7a27f0537acd1fd1f5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:456c5eae5cd1dcfb81d7b9a1a595c220308272fb91c98ab59cbe841768d2e697`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 150–157.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
inductive MsgEmbed where
  | expr : Widget.TaggedText SubexprInfo → MsgEmbed
  | goal : InteractiveGoal → MsgEmbed
  | widget (wi : WidgetInstance) (alt : Widget.TaggedText MsgEmbed)
  | trace (indent : Nat) (cls : Name) (msg : Widget.TaggedText MsgEmbed) (collapsed : Bool)
    (children : StrictOrLazy (Array (Widget.TaggedText MsgEmbed)) Lsp.RpcRef)
  deriving FromJson, ToJson

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Runner/Variant83225ab84920337695388e6dd4a6a9d3030042559706db7a27f0537acd1fd1f5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Runner/Variant83225ab84920337695388e6dd4a6a9d3030042559706db7a27f0537acd1fd1f5.lean#L150).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ebf9d6d73f7af9eb7b494c810e872de8016a4dbc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
