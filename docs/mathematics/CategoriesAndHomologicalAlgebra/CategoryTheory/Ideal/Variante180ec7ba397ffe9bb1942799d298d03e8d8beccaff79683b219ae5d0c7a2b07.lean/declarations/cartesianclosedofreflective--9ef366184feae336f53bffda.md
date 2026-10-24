# cartesianClosedOfReflective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8a7ce5793774d1490508252804a86fdc3ec3cb49e2bccf5c83167f28be1ddb59",
  "kind": "def",
  "lexical_name": "cartesianClosedOfReflective",
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
  "slug": "cartesianclosedofreflective--9ef366184feae336f53bffda",
  "source": {
    "blob": "1db69e0342437a91c9d70a5546b42ec7295aa863",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 246,
    "line": 230,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Ideal/Variante180ec7ba397ffe9bb1942799d298d03e8d8beccaff79683b219ae5d0c7a2b07.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9ef366184feae336f53bffdadec9c753121bf89dc215b85736d36fbebd8304d4",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Ideal/Variante180ec7ba397ffe9bb1942799d298d03e8d8beccaff79683b219ae5d0c7a2b07.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8a7ce5793774d1490508252804a86fdc3ec3cb49e2bccf5c83167f28be1ddb59`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 230–246.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def cartesianClosedOfReflective : MonoidalClosed D :=
  cartesianClosedOfReflective' i (i.essImage.ι ⋙ reflector i)
    (NatIso.ofComponents (fun X ↦
      have := Functor.essImage.unit_isIso X.2
      (asIso ((reflectorAdjunction i).unit.app X.obj)).symm))

variable [BraidedCategory C]

/-- We construct a bijection between morphisms `L(A ⊗ B) ⟶ X` and morphisms `LA ⊗ LB ⟶ X`.
This bijection has two key properties:
* It is natural in `X`: See `bijection_natural`.
* When `X = LA ⨯ LB`, then the backwards direction sends the identity morphism to the product
  comparison morphism: See `bijection_symm_apply_id`.

Together these help show that `L` preserves binary products. This should be considered
*internal implementation* towards `preservesBinaryProductsOfExponentialIdeal`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Ideal/Variante180ec7ba397ffe9bb1942799d298d03e8d8beccaff79683b219ae5d0c7a2b07.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Ideal/Variante180ec7ba397ffe9bb1942799d298d03e8d8beccaff79683b219ae5d0c7a2b07.lean#L230).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1db69e0342437a91c9d70a5546b42ec7295aa863` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
