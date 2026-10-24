# IsSheafEqualizerProducts

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5579ab538399881ed5786dbe3ed6bc382d3d47896e6eaff306f6e238bc8c45eb",
  "kind": "def",
  "lexical_name": "IsSheafEqualizerProducts",
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
  "slug": "issheafequalizerproducts--c5c756edc03d3898a5ed87be",
  "source": {
    "blob": "47af846b3bad3f84b4d53bfe593d212c35f51fb0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 192,
    "line": 178,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EqualizerProducts/Variantb1ddbc901985f90c0607ac50900529bb80197d98ca2ffe7737e41aeb8d3d71fb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c5c756edc03d3898a5ed87be912ec5c7b88bae09119f6089eb7fc972672d205f",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/EqualizerProducts/Variantb1ddbc901985f90c0607ac50900529bb80197d98ca2ffe7737e41aeb8d3d71fb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5579ab538399881ed5786dbe3ed6bc382d3d47896e6eaff306f6e238bc8c45eb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 178–192.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def IsSheafEqualizerProducts (F : Presheaf.{v', v, u} C X) : Prop :=
  ∀ ⦃ι : Type v'⦄ (U : ι → Opens X), Nonempty (IsLimit (SheafConditionEqualizerProducts.fork F U))

/-!
The remainder of this file shows that the "equalizer products" sheaf condition is equivalent
to the "pairwise intersections" sheaf condition.
-/


namespace SheafConditionPairwiseIntersections

open CategoryTheory.Pairwise CategoryTheory.Pairwise.Hom

/-- Implementation of `SheafConditionPairwiseIntersections.coneEquiv`. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/EqualizerProducts/Variantb1ddbc901985f90c0607ac50900529bb80197d98ca2ffe7737e41aeb8d3d71fb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EqualizerProducts/Variantb1ddbc901985f90c0607ac50900529bb80197d98ca2ffe7737e41aeb8d3d71fb.lean#L178).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `47af846b3bad3f84b4d53bfe593d212c35f51fb0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
