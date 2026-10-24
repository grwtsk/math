# e8Coxeter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:31aae729970430f3ec2f04f3dbc73078c5abc7d462fc7d9273c39bd897b9017a",
  "kind": "def",
  "lexical_name": "e8Coxeter",
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
  "slug": "e8coxeter--235feda3bb8ebf5413c17c99",
  "source": {
    "blob": "90b64fcf8e9dd99531f6339f8a565b7456b7da0e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 138,
    "line": 131,
    "path": "GRWTSK/Algebra/LinearAlgebra/GeometryV1/Variantd09d4042254d7b91666e6cde7c771ecd1a5fe30c3320c56847f05c046c7b88da.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:235feda3bb8ebf5413c17c9957c9b5aaf5ed4f26e615ca8e953a5ea97e297a6f",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/GeometryV1/Variantd09d4042254d7b91666e6cde7c771ecd1a5fe30c3320c56847f05c046c7b88da.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:31aae729970430f3ec2f04f3dbc73078c5abc7d462fc7d9273c39bd897b9017a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 131–138.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def e8Coxeter : Matrix (Fin 8) (Fin 8) ℤ := !![(-1),(1),(0),(0),(0),(0),(0),(0);
  (-1),(0),(1),(0),(0),(0),(0),(0);
  (-1),(0),(0),(1),(0),(0),(0),(1);
  (-1),(0),(0),(0),(1),(0),(0),(1);
  (-1),(0),(0),(0),(0),(1),(0),(1);
  (-1),(0),(0),(0),(0),(0),(1),(1);
  (-1),(0),(0),(0),(0),(0),(0),(1);
  (-1),(0),(0),(1),(0),(0),(0),(0)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/GeometryV1/Variantd09d4042254d7b91666e6cde7c771ecd1a5fe30c3320c56847f05c046c7b88da.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/GeometryV1/Variantd09d4042254d7b91666e6cde7c771ecd1a5fe30c3320c56847f05c046c7b88da.lean#L131).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `90b64fcf8e9dd99531f6339f8a565b7456b7da0e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
