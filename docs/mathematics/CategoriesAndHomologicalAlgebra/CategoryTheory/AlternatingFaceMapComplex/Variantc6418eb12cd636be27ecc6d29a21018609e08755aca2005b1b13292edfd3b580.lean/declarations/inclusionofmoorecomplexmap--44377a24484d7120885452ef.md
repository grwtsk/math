# inclusionOfMooreComplexMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:51881225bfcc661ee88998f460282b027ad8116089d1138e72d84446f77786be",
  "kind": "def",
  "lexical_name": "inclusionOfMooreComplexMap",
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
  "slug": "inclusionofmoorecomplexmap--44377a24484d7120885452ef",
  "source": {
    "blob": "50e35f3fab4887ea2d5c698d8131c1fa9d19f805",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 292,
    "line": 272,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/AlternatingFaceMapComplex/Variantc6418eb12cd636be27ecc6d29a21018609e08755aca2005b1b13292edfd3b580.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:44377a24484d7120885452ef5264060a2708ec175c73fbdff7e05fa0b3b50184",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/AlternatingFaceMapComplex/Variantc6418eb12cd636be27ecc6d29a21018609e08755aca2005b1b13292edfd3b580.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:51881225bfcc661ee88998f460282b027ad8116089d1138e72d84446f77786be`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 272–292.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def inclusionOfMooreComplexMap (X : SimplicialObject A) :
    (normalizedMooreComplex A).obj X ⟶ (alternatingFaceMapComplex A).obj X :=
  ChainComplex.ofHom (fun n => (NormalizedMooreComplex.objX X n).arrow) <| fun i ↦ by
  /- we have to show the compatibility of the differentials on the alternating
           face map complex with those defined on the normalized Moore complex:
           we first get rid of the terms of the alternating sum that are obviously
           zero on the normalized_Moore_complex -/
  simp only [normalizedMooreComplex, NormalizedMooreComplex.obj, alternatingFaceMapComplex,
    AlternatingFaceMapComplex.obj, ChainComplex.of_d, AlternatingFaceMapComplex.objD, comp_sum]
  rw [Fin.sum_univ_succ, Fintype.sum_eq_zero]
  swap
  · intro j
    rw [NormalizedMooreComplex.objX_add_one, comp_zsmul,
      ← factorThru_arrow _ _ (finset_inf_arrow_factors Finset.univ _ _ (Finset.mem_univ j)),
      Category.assoc, kernelSubobject_arrow_comp, comp_zero, smul_zero]
  -- finally, we study the remaining term which is induced by X.δ 0
  rw [add_zero, Fin.val_zero, pow_zero, one_zsmul]
  dsimp [NormalizedMooreComplex.objD, NormalizedMooreComplex.objX]
  cases i <;> simp

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/AlternatingFaceMapComplex/Variantc6418eb12cd636be27ecc6d29a21018609e08755aca2005b1b13292edfd3b580.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/AlternatingFaceMapComplex/Variantc6418eb12cd636be27ecc6d29a21018609e08755aca2005b1b13292edfd3b580.lean#L272).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `50e35f3fab4887ea2d5c698d8131c1fa9d19f805` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
