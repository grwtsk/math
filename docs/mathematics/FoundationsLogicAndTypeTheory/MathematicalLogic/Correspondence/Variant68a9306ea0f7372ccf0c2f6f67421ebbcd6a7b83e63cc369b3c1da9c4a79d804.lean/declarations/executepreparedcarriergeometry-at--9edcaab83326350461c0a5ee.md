# executePreparedCarrierGeometry_at

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9d0a6e38-a6d0-eebf-a2f8-9cc0eb66632d",
  "kind": "theorem",
  "lexical_name": "executePreparedCarrierGeometry_at",
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
  "slug": "executepreparedcarriergeometry-at--9edcaab83326350461c0a5ee",
  "source": {
    "blob": "a0c82228984955921cbe7e89cd097918bb78baba",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 982,
    "line": 975,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Correspondence/Variant68a9306ea0f7372ccf0c2f6f67421ebbcd6a7b83e63cc369b3c1da9c4a79d804.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9edcaab83326350461c0a5eeac8d5a27720e3c84a38fc63a84e311ea5804fb53",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Correspondence/Variant68a9306ea0f7372ccf0c2f6f67421ebbcd6a7b83e63cc369b3c1da9c4a79d804.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9d0a6e38-a6d0-eebf-a2f8-9cc0eb66632d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 975–982.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] theorem executePreparedCarrierGeometry_at {count : Nat}
    (invocation : PreparedCarrierGeometryInvocation count) (index : Fin count) :
    (executePreparedCarrierGeometry invocation).bitField index =
      rasterizeCell (invocation.request.cellRequest index) :=
  rfl

/-- Fully formal invocation for a supplied continuous region, finite grid, and
ownership decisions.  This does not claim to construct a stroked path. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Correspondence/Variant68a9306ea0f7372ccf0c2f6f67421ebbcd6a7b83e63cc369b3c1da9c4a79d804.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Correspondence/Variant68a9306ea0f7372ccf0c2f6f67421ebbcd6a7b83e63cc369b3c1da9c4a79d804.lean#L975).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a0c82228984955921cbe7e89cd097918bb78baba` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
