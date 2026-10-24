# blockCumulantValue_pair23_four

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3c93be6a-cf14-acb1-8d0e-d36bd476ecdc",
  "kind": "theorem",
  "lexical_name": "blockCumulantValue_pair23_four",
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
  "slug": "blockcumulantvalue-pair23-four--b4d5ce154c9d4bb0c0603abd",
  "source": {
    "blob": "90531b20d83a6fc72f7590482437dcd34d6e90a4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 383,
    "line": 376,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Bdc4daf9e895848738ab26142b3a1ae917c66e36d0d77ce2203e90b87b605464OrderFourEnumera/Variantbdc4daf9e895848738ab26142b3a1ae917c66e36d0d77ce2203e90b87b605464.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b4d5ce154c9d4bb0c0603abdc4dd7017469f7754bf71991fbcfb982a66d6a913",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Bdc4daf9e895848738ab26142b3a1ae917c66e36d0d77ce2203e90b87b605464OrderFourEnumera/Variantbdc4daf9e895848738ab26142b3a1ae917c66e36d0d77ce2203e90b87b605464.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3c93be6a-cf14-acb1-8d0e-d36bd476ecdc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 376–383.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] theorem blockCumulantValue_pair23_four
    (κ : DirectionCumulantFamily E R) (directions : Fin 4 → E) :
    blockCumulantValue κ directions ({(2 : Fin 4), (3 : Fin 4)} : Finset (Fin 4)) =
      κ 2 ![directions 2, directions 3] := by
  apply congrArg (κ 2)
  exact blockDirections_pair23_four directions

omit [CommRing R] in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Bdc4daf9e895848738ab26142b3a1ae917c66e36d0d77ce2203e90b87b605464OrderFourEnumera/Variantbdc4daf9e895848738ab26142b3a1ae917c66e36d0d77ce2203e90b87b605464.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Bdc4daf9e895848738ab26142b3a1ae917c66e36d0d77ce2203e90b87b605464OrderFourEnumera/Variantbdc4daf9e895848738ab26142b3a1ae917c66e36d0d77ce2203e90b87b605464.lean#L376).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `90531b20d83a6fc72f7590482437dcd34d6e90a4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
