# reindex_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:12428656-db8d-2e3e-94e3-6171c31d9fda",
  "kind": "theorem",
  "lexical_name": "reindex_apply",
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
  "slug": "reindex-apply--4a9566ec73e568af455e65e0",
  "source": {
    "blob": "4540e807f05e99c9c9a1f82795eac9c8f0263d6f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 110,
    "line": 100,
    "path": "GRWTSK/Algebra/LinearAlgebra/Matrix/Variant546d4ffbb1fef6e2d05a5ec402e98a6f7ac6f39e2651b66b2ee1057aa0bf3915.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4a9566ec73e568af455e65e0a9ad7703bd5d02e3bfc9322aae8a44c7b4095021",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/MatrixTheory/Variant546d4ffbb1fef6e2d05a5ec402e98a6f7ac6f39e2651b66b2ee1057aa0bf3915.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:12428656-db8d-2e3e-94e3-6171c31d9fda`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 100–110.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
theorem reindex_apply (i i' : B') : M.reindex e i i' = M (e.symm i) (e.symm i') := rfl

variable (n : ℕ)

/-- The Coxeter matrix of type Aₙ.

The corresponding Coxeter-Dynkin diagram is:
```
    o --- o --- o ⬝ ⬝ ⬝ ⬝ o --- o
```
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/MatrixTheory/Variant546d4ffbb1fef6e2d05a5ec402e98a6f7ac6f39e2651b66b2ee1057aa0bf3915.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Matrix/Variant546d4ffbb1fef6e2d05a5ec402e98a6f7ac6f39e2651b66b2ee1057aa0bf3915.lean#L100).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4540e807f05e99c9c9a1f82795eac9c8f0263d6f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
