# down_rightMoves

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cdbfe530-5972-2ffd-845b-e7713bc4eca5",
  "kind": "theorem",
  "lexical_name": "down_rightMoves",
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
  "slug": "down-rightmoves--510ca6f7268971d1761bc608",
  "source": {
    "blob": "edb9bb408eb9f5c634bc17b91668ebaa0643d465",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 901,
    "line": 898,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Algebra/Variant128b26d747d75f9f00a3235b9d85ec4b9dba9c7296e1789b2d434ab2719d6e02.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:510ca6f7268971d1761bc608813b4f31e9e34a61b249639154ce659e1c8fe1ca",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Algebra/Variant128b26d747d75f9f00a3235b9d85ec4b9dba9c7296e1789b2d434ab2719d6e02.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cdbfe530-5972-2ffd-845b-e7713bc4eca5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 898–901.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem down_rightMoves : down.RightMoves = PUnit :=
  rfl

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Algebra/Variant128b26d747d75f9f00a3235b9d85ec4b9dba9c7296e1789b2d434ab2719d6e02.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Algebra/Variant128b26d747d75f9f00a3235b9d85ec4b9dba9c7296e1789b2d434ab2719d6e02.lean#L898).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `edb9bb408eb9f5c634bc17b91668ebaa0643d465` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
