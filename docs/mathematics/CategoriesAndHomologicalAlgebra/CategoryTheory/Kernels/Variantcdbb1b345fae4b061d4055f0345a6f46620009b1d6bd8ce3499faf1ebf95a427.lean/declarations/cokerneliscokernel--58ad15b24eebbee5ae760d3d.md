# cokernelIsCokernel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ffc87d7736986c2ef8154abccbcb5962d1c8b9605c8b0584158bf250fb5563a1",
  "kind": "def",
  "lexical_name": "cokernelIsCokernel",
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
  "slug": "cokerneliscokernel--58ad15b24eebbee5ae760d3d",
  "source": {
    "blob": "4d5f9d4f7166c1b62ed29460bedfbc89c08bc962",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 698,
    "line": 692,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variantcdbb1b345fae4b061d4055f0345a6f46620009b1d6bd8ce3499faf1ebf95a427.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:58ad15b24eebbee5ae760d3dbc167c431dcc842a34c74d445d07154cb8a5aad1",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variantcdbb1b345fae4b061d4055f0345a6f46620009b1d6bd8ce3499faf1ebf95a427.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ffc87d7736986c2ef8154abccbcb5962d1c8b9605c8b0584158bf250fb5563a1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 692–698.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def cokernelIsCokernel :
    IsColimit (Cofork.ofπ (cokernel.π f) ((cokernel.condition f).trans zero_comp.symm)) :=
  IsColimit.ofIsoColimit (colimit.isColimit _) (Cofork.ext (Iso.refl _))
#align category_theory.limits.cokernel_is_cokernel CategoryTheory.Limits.cokernelIsCokernel

/-- Given any morphism `k : Y ⟶ W` such that `f ≫ k = 0`, `k` factors through `cokernel.π f`
    via `cokernel.desc : cokernel f ⟶ W`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variantcdbb1b345fae4b061d4055f0345a6f46620009b1d6bd8ce3499faf1ebf95a427.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variantcdbb1b345fae4b061d4055f0345a6f46620009b1d6bd8ce3499faf1ebf95a427.lean#L692).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4d5f9d4f7166c1b62ed29460bedfbc89c08bc962` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
