# biprod.inrCokernelCofork

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4474b3a6afb4079abbbd0086b9b56f3053099ef50a2f7e02d119ca791d0c14fe",
  "kind": "def",
  "lexical_name": "biprod.inrCokernelCofork",
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
  "slug": "biprod-inrcokernelcofork--04d633abc3730168d12b8cc8",
  "source": {
    "blob": "520e0a6bd933273556e0ad716338480eeb0a6463",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1833,
    "line": 1829,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variantfaf52520f457c07eda8660d0265f635c1d01f4108da671f7fab524ef69d0c2e0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:04d633abc3730168d12b8cc845ff05ed47e770523599f1458527ec3525a34826",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variantfaf52520f457c07eda8660d0265f635c1d01f4108da671f7fab524ef69d0c2e0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4474b3a6afb4079abbbd0086b9b56f3053099ef50a2f7e02d119ca791d0c14fe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1829–1833.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def biprod.inrCokernelCofork : CokernelCofork (biprod.inr : Y ⟶ X ⊞ Y) :=
  BinaryBicone.inrCokernelCofork _
#align category_theory.limits.biprod.inr_cokernel_cofork CategoryTheory.Limits.biprod.inrCokernelCofork

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variantfaf52520f457c07eda8660d0265f635c1d01f4108da671f7fab524ef69d0c2e0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variantfaf52520f457c07eda8660d0265f635c1d01f4108da671f7fab524ef69d0c2e0.lean#L1829).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `520e0a6bd933273556e0ad716338480eeb0a6463` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
