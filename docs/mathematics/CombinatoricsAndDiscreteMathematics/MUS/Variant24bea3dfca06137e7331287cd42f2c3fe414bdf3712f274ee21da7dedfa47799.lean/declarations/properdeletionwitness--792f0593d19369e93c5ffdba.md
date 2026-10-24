# ProperDeletionWitness

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b98f6116696027093eb676b0f183d7581d5ed2f54e0b4460fd419befebd5f8ea",
  "kind": "structure",
  "lexical_name": "ProperDeletionWitness",
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
  "slug": "properdeletionwitness--792f0593d19369e93c5ffdba",
  "source": {
    "blob": "a4b528702b53a2f3f17db76841d3ba6f204ed3ec",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 36,
    "line": 28,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/MUS/Variant24bea3dfca06137e7331287cd42f2c3fe414bdf3712f274ee21da7dedfa47799.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:792f0593d19369e93c5ffdbacf1fd9a0ce9e823618b893af9ee87e41b8690f13",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/MUS/Variant24bea3dfca06137e7331287cd42f2c3fe414bdf3712f274ee21da7dedfa47799.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b98f6116696027093eb676b0f183d7581d5ed2f54e0b4460fd419befebd5f8ea`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 28–36.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure ProperDeletionWitness
    {Constraint : Type}
    [DecidableEq Constraint]
    (core subset : Finset Constraint) where
  removed : Constraint
  removed_mem : removed ∈ core
  subset_without_removed :
    subset ⊆ core.erase removed

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/MUS/Variant24bea3dfca06137e7331287cd42f2c3fe414bdf3712f274ee21da7dedfa47799.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/MUS/Variant24bea3dfca06137e7331287cd42f2c3fe414bdf3712f274ee21da7dedfa47799.lean#L28).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a4b528702b53a2f3f17db76841d3ba6f204ed3ec` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
