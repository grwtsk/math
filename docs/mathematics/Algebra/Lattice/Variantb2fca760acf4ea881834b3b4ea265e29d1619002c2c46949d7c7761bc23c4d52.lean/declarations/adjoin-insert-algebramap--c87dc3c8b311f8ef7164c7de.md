# adjoin_insert_algebraMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fef09cf6-1498-dc84-a193-1cd6ac2bc07e",
  "kind": "theorem",
  "lexical_name": "adjoin_insert_algebraMap",
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
  "slug": "adjoin-insert-algebramap--c87dc3c8b311f8ef7164c7de",
  "source": {
    "blob": "c14bb6ce8649d50eb922b6f666e41a908d7783b5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 555,
    "line": 550,
    "path": "GRWTSK/Algebra/Lattice/Variantb2fca760acf4ea881834b3b4ea265e29d1619002c2c46949d7c7761bc23c4d52.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c87dc3c8b311f8ef7164c7deb1ab182b85797bd0fa2088678efe8afbff1e7daf",
  "verification": {
    "reference": "docs/verification/Algebra/Lattice/Variantb2fca760acf4ea881834b3b4ea265e29d1619002c2c46949d7c7761bc23c4d52.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fef09cf6-1498-dc84-a193-1cd6ac2bc07e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 550–555.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem adjoin_insert_algebraMap (x : R) (s : Set A) :
    adjoin R (insert (algebraMap R A x) s) = adjoin R s := by
  rw [Set.insert_eq, adjoin_union]
  simp

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Lattice/Variantb2fca760acf4ea881834b3b4ea265e29d1619002c2c46949d7c7761bc23c4d52.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Lattice/Variantb2fca760acf4ea881834b3b4ea265e29d1619002c2c46949d7c7761bc23c4d52.lean#L550).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c14bb6ce8649d50eb922b6f666e41a908d7783b5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
