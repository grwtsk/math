# hasKernel_comp_mono

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a3ce716bfbc699bad8ab2fe9cc6c085e95ca7d5fc60756f2421e5765c680f04d",
  "kind": "instance",
  "lexical_name": "hasKernel_comp_mono",
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
  "slug": "haskernel-comp-mono--2271883881cb3a6144b9d1f8",
  "source": {
    "blob": "4d5f9d4f7166c1b62ed29460bedfbc89c08bc962",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 403,
    "line": 395,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variantcdbb1b345fae4b061d4055f0345a6f46620009b1d6bd8ce3499faf1ebf95a427.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2271883881cb3a6144b9d1f813dc1a8b1abe998cb0394f62f3cc172a6022e802",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variantcdbb1b345fae4b061d4055f0345a6f46620009b1d6bd8ce3499faf1ebf95a427.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a3ce716bfbc699bad8ab2fe9cc6c085e95ca7d5fc60756f2421e5765c680f04d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 395–403.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance hasKernel_comp_mono {X Y Z : C} (f : X ⟶ Y) [HasKernel f] (g : Y ⟶ Z) [Mono g] :
    HasKernel (f ≫ g) :=
  ⟨⟨{   cone := _
        isLimit := isKernelCompMono (limit.isLimit _) g rfl }⟩⟩
#align category_theory.limits.has_kernel_comp_mono CategoryTheory.Limits.hasKernel_comp_mono

/-- When `g` is a monomorphism, the kernel of `f ≫ g` is isomorphic to the kernel of `f`.
-/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variantcdbb1b345fae4b061d4055f0345a6f46620009b1d6bd8ce3499faf1ebf95a427.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variantcdbb1b345fae4b061d4055f0345a6f46620009b1d6bd8ce3499faf1ebf95a427.lean#L395).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4d5f9d4f7166c1b62ed29460bedfbc89c08bc962` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
