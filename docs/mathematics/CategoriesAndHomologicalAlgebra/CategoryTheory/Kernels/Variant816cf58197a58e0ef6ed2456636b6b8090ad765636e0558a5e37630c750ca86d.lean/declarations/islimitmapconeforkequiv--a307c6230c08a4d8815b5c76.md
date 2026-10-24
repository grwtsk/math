# isLimitMapConeForkEquiv'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:51fcac896698594f80b2f0ad10aa8422fd0e86f774a7dc71f5a9dc742d2eb8dc",
  "kind": "def",
  "lexical_name": "isLimitMapConeForkEquiv'",
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
  "slug": "islimitmapconeforkequiv--a307c6230c08a4d8815b5c76",
  "source": {
    "blob": "0bf8b6d24a4e04b31005ecc2f855a23eb4a83f8d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 88,
    "line": 77,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant816cf58197a58e0ef6ed2456636b6b8090ad765636e0558a5e37630c750ca86d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a307c6230c08a4d8815b5c76c9e8fd5e79bc86df88d9ed8c18c5779696902cc5",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant816cf58197a58e0ef6ed2456636b6b8090ad765636e0558a5e37630c750ca86d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:51fcac896698594f80b2f0ad10aa8422fd0e86f774a7dc71f5a9dc742d2eb8dc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 77–88.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def isLimitMapConeForkEquiv' :
    IsLimit (G.mapCone (KernelFork.ofι h w)) ≃
      IsLimit
        (KernelFork.ofι (G.map h) (by simp only [← G.map_comp, w, Functor.map_zero]) :
          Fork (G.map f) 0) :=
  KernelFork.isLimitMapConeEquiv _ _

/-- The property of preserving kernels expressed in terms of kernel forks.

This is a variant of `isLimitForkMapOfIsLimit` for equalizers,
which we can't use directly between `G.map 0 = 0` does not hold definitionally.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant816cf58197a58e0ef6ed2456636b6b8090ad765636e0558a5e37630c750ca86d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant816cf58197a58e0ef6ed2456636b6b8090ad765636e0558a5e37630c750ca86d.lean#L77).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0bf8b6d24a4e04b31005ecc2f855a23eb4a83f8d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
