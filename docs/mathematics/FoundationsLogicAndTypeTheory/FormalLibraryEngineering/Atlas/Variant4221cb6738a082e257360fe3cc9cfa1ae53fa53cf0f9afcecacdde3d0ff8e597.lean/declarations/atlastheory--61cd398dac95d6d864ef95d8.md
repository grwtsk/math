# AtlasTheory

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0ca35ad89fea318d3b3abd022576f9514a9ec0854706418a16fc5846d83fb50f",
  "kind": "structure",
  "lexical_name": "AtlasTheory",
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
  "slug": "atlastheory--61cd398dac95d6d864ef95d8",
  "source": {
    "blob": "04d5e83598109c7a7f874a54d4a786788b47384b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 36,
    "line": 24,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Atlas/Variant4221cb6738a082e257360fe3cc9cfa1ae53fa53cf0f9afcecacdde3d0ff8e597.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:61cd398dac95d6d864ef95d833053f21c5025cf22313beb71264e251bc6de6b1",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Atlas/Variant4221cb6738a082e257360fe3cc9cfa1ae53fa53cf0f9afcecacdde3d0ff8e597.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0ca35ad89fea318d3b3abd022576f9514a9ec0854706418a16fc5846d83fb50f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 24–36.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure AtlasTheory (Fact : Type z) [DecidableEq Fact] where
  /-- The fixed proposition represented by each finite fact identifier. -/
  meaning : Fact → Prop
  /-- The finite ground rules whose consequences may enter the atlas. -/
  rules : Finset (Rule Fact)
  rules_sound : ∀ rule ∈ rules,
    (∀ x ∈ rule.premises, meaning x) → meaning rule.conclusion

variable {V : Type v} {E : Type w} {Fact : Type z}
variable [Fintype V] [DecidableEq V] [Fintype E] [DecidableEq E]
variable [Fintype Fact] [DecidableEq Fact]

/-- A trusted atlas selects checked bridges and an inventory of proved facts. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Atlas/Variant4221cb6738a082e257360fe3cc9cfa1ae53fa53cf0f9afcecacdde3d0ff8e597.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Atlas/Variant4221cb6738a082e257360fe3cc9cfa1ae53fa53cf0f9afcecacdde3d0ff8e597.lean#L24).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `04d5e83598109c7a7f874a54d4a786788b47384b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
