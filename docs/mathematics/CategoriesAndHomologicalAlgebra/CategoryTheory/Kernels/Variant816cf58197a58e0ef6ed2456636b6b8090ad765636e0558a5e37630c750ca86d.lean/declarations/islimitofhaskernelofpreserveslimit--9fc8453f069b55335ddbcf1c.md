# isLimitOfHasKernelOfPreservesLimit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:960c1f8b892ad652a6a4b77c45464c0fe9a997a45c76f634da425ecd395d0705",
  "kind": "def",
  "lexical_name": "isLimitOfHasKernelOfPreservesLimit",
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
  "slug": "islimitofhaskernelofpreserveslimit--9fc8453f069b55335ddbcf1c",
  "source": {
    "blob": "0bf8b6d24a4e04b31005ecc2f855a23eb4a83f8d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 108,
    "line": 102,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant816cf58197a58e0ef6ed2456636b6b8090ad765636e0558a5e37630c750ca86d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9fc8453f069b55335ddbcf1cf8f8f89afce74f9823b68778de59cccffc4e1f20",
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

Occurrence: `declaration:960c1f8b892ad652a6a4b77c45464c0fe9a997a45c76f634da425ecd395d0705`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 102–108.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def isLimitOfHasKernelOfPreservesLimit [PreservesLimit (parallelPair f 0) G] :
    IsLimit
      (Fork.ofι (G.map (kernel.ι f))
          (by simp only [← G.map_comp, kernel.condition, comp_zero, Functor.map_zero]) :
        Fork (G.map f) 0) :=
  isLimitForkMapOfIsLimit' G (kernel.condition f) (kernelIsKernel f)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant816cf58197a58e0ef6ed2456636b6b8090ad765636e0558a5e37630c750ca86d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant816cf58197a58e0ef6ed2456636b6b8090ad765636e0558a5e37630c750ca86d.lean#L102).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0bf8b6d24a4e04b31005ecc2f855a23eb4a83f8d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
