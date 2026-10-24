# HasBinaryBiproduct

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:052eded126d0e266e1df69a032238410afa7df50b90b0e0ec822b5f12aeac0eb",
  "kind": "class",
  "lexical_name": "HasBinaryBiproduct",
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
  "slug": "hasbinarybiproduct--fc1b454ce6c86730fb82bd85",
  "source": {
    "blob": "520e0a6bd933273556e0ad716338480eeb0a6463",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1285,
    "line": 1280,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variantfaf52520f457c07eda8660d0265f635c1d01f4108da671f7fab524ef69d0c2e0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fc1b454ce6c86730fb82bd855657c5931c24b2d961b8e6ad5d76686bec151852",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variantfaf52520f457c07eda8660d0265f635c1d01f4108da671f7fab524ef69d0c2e0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:052eded126d0e266e1df69a032238410afa7df50b90b0e0ec822b5f12aeac0eb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1280–1285.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class HasBinaryBiproduct (P Q : C) : Prop where mk' ::
  exists_binary_biproduct : Nonempty (BinaryBiproductData P Q)
#align category_theory.limits.has_binary_biproduct CategoryTheory.Limits.HasBinaryBiproduct

attribute [inherit_doc HasBinaryBiproduct] HasBinaryBiproduct.exists_binary_biproduct

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variantfaf52520f457c07eda8660d0265f635c1d01f4108da671f7fab524ef69d0c2e0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variantfaf52520f457c07eda8660d0265f635c1d01f4108da671f7fab524ef69d0c2e0.lean#L1280).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `520e0a6bd933273556e0ad716338480eeb0a6463` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
