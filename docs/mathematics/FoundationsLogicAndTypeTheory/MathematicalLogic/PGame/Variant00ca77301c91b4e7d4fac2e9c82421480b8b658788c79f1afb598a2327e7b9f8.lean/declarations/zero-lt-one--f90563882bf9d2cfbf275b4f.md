# zero_lt_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c586cfcc673384611c1256aa8fcc234322ca2517",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1914,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/00/00ca77301c91b4e7d4fac2e9c82421480b8b658788c79f1afb598a2327e7b9f8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ef05e18f-5f13-d2f5-fa38-e0f0c5cdfe9f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ef69c531-0a06-75d7-551f-2f69df6025bd",
  "kind": "theorem",
  "lexical_name": "zero_lt_one",
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
  "slug": "zero-lt-one--f90563882bf9d2cfbf275b4f",
  "source": {
    "blob": "c586cfcc673384611c1256aa8fcc234322ca2517",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1917,
    "line": 1914,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/PGame/Variant00ca77301c91b4e7d4fac2e9c82421480b8b658788c79f1afb598a2327e7b9f8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f90563882bf9d2cfbf275b4fc41f04d2d970488986ed1f2401082d30089afc8c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/PGame/Variant00ca77301c91b4e7d4fac2e9c82421480b8b658788c79f1afb598a2327e7b9f8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ef69c531-0a06-75d7-551f-2f69df6025bd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1914–1917.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem zero_lt_one : (0 : PGame) < 1 :=
  lt_of_le_of_lf (zero_le_of_isEmpty_rightMoves 1) (zero_lf_le.2 ⟨default, le_rfl⟩)
#align pgame.zero_lt_one SetTheory.PGame.zero_lt_one

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/PGame/Variant00ca77301c91b4e7d4fac2e9c82421480b8b658788c79f1afb598a2327e7b9f8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/PGame/Variant00ca77301c91b4e7d4fac2e9c82421480b8b658788c79f1afb598a2327e7b9f8.lean#L1914).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c586cfcc673384611c1256aa8fcc234322ca2517` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
