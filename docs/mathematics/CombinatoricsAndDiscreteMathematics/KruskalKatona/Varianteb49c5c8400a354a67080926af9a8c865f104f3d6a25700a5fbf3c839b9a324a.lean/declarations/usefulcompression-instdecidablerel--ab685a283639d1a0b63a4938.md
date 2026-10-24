# UsefulCompression.instDecidableRel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:152adfbd448d69e253f06715cd426a2ae046597a06bbb1a05e5a56fb2ea37911",
  "kind": "instance",
  "lexical_name": "UsefulCompression.instDecidableRel",
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
  "slug": "usefulcompression-instdecidablerel--ab685a283639d1a0b63a4938",
  "source": {
    "blob": "823982778b6c949859a1a495a90fa0fd7a2e64d7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 152,
    "line": 146,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/KruskalKatona/Varianteb49c5c8400a354a67080926af9a8c865f104f3d6a25700a5fbf3c839b9a324a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ab685a283639d1a0b63a4938a6fab19dd61b2506c5fea6235ceacbcf5772e8bd",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/KruskalKatona/Varianteb49c5c8400a354a67080926af9a8c865f104f3d6a25700a5fbf3c839b9a324a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:152adfbd448d69e253f06715cd426a2ae046597a06bbb1a05e5a56fb2ea37911`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 146–152.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private instance UsefulCompression.instDecidableRel :
    DecidableRel (α := Finset α) UsefulCompression :=
  fun _ _ ↦ inferInstanceAs (Decidable (_ ∧ _))

/-- Applying a good compression will decrease measure, keep cardinality, keep sizes and decrease
shadow. In particular, 'good' means it's useful, and every smaller compression won't make a
difference. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/KruskalKatona/Varianteb49c5c8400a354a67080926af9a8c865f104f3d6a25700a5fbf3c839b9a324a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/KruskalKatona/Varianteb49c5c8400a354a67080926af9a8c865f104f3d6a25700a5fbf3c839b9a324a.lean#L146).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `823982778b6c949859a1a495a90fa0fd7a2e64d7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
