# varying

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7d0e0788b3712ac99ffa5f5e73717d468bccd4fe175cb1c97dcc933319c6a2da",
  "kind": "def",
  "lexical_name": "varying",
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
  "slug": "varying--f07802fe5b9f50acd6c068cb",
  "source": {
    "blob": "369acd1b9c6ef3433e80baddc77623e4c0dad732",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 313,
    "line": 311,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/PositiveAtlas/Variant75aef130f11e9ec3de51b3c4eb69d8842d85aab3f0ed94d6e7ca25ceaf6a0104.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f07802fe5b9f50acd6c068cbb743bc4a37a77155c10087d6df013b7745853c11",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/PositiveAtlas/Variant75aef130f11e9ec3de51b3c4eb69d8842d85aab3f0ed94d6e7ca25ceaf6a0104.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7d0e0788b3712ac99ffa5f5e73717d468bccd4fe175cb1c97dcc933319c6a2da`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 311–313.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def varying : Unit → Fin 2 → ℝ := fun _ i => if i = 0 then 0 else 4

/-- The weighted average is 3, rather than the unweighted value 2. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/PositiveAtlas/Variant75aef130f11e9ec3de51b3c4eb69d8842d85aab3f0ed94d6e7ca25ceaf6a0104.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/PositiveAtlas/Variant75aef130f11e9ec3de51b3c4eb69d8842d85aab3f0ed94d6e7ca25ceaf6a0104.lean#L311).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `369acd1b9c6ef3433e80baddc77623e4c0dad732` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
