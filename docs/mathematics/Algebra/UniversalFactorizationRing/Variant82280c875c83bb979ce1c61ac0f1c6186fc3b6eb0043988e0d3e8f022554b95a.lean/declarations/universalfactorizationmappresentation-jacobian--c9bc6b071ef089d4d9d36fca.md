# universalFactorizationMapPresentation_jacobian

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5ccbb51f-0251-e8ab-2ade-88e78165c16d",
  "kind": "lemma",
  "lexical_name": "universalFactorizationMapPresentation_jacobian",
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
  "slug": "universalfactorizationmappresentation-jacobian--c9bc6b071ef089d4d9d36fca",
  "source": {
    "blob": "56a1041889cc9095ca7ab293316e7658cdf2bfe1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 336,
    "line": 314,
    "path": "GRWTSK/Algebra/UniversalFactorizationRing/Variant82280c875c83bb979ce1c61ac0f1c6186fc3b6eb0043988e0d3e8f022554b95a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c9bc6b071ef089d4d9d36fcada55df6f66e39e412269e5a67d63beef6980f705",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalFactorizationRing/Variant82280c875c83bb979ce1c61ac0f1c6186fc3b6eb0043988e0d3e8f022554b95a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5ccbb51f-0251-e8ab-2ade-88e78165c16d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 314–336.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma universalFactorizationMapPresentation_jacobian :
    letI := (universalFactorizationMap R n m k hn).toAlgebra
    (universalFactorizationMapPresentation R n m k hn).jacobian =
    (-1) ^ n * (Polynomial.resultant
      ((freeMonic R m).map Algebra.TensorProduct.includeLeftRingHom)
      ((freeMonic R k).map Algebra.TensorProduct.includeRight.toRingHom)) := by
  cases subsingleton_or_nontrivial R
  · exact Subsingleton.elim _ _
  let := (universalFactorizationMap R n m k hn).toAlgebra
  rw [Algebra.PreSubmersivePresentation.jacobian_eq_jacobiMatrix_det,
    MvPolynomial.universalFactorizationMapPresentation_jacobiMatrix]
  simp only [AlgHom.toRingHom_eq_coe, Matrix.det_neg, Matrix.det_transpose, Matrix.det_reindex_self,
    Algebra.Generators.algebraMap_apply, ← Polynomial.resultant.eq_def,
    Fintype.card_fin, map_mul, map_pow, map_neg, map_one]
  congr 1
  rw [← (aeval _).coe_toRingHom, ← Polynomial.resultant_map_map,
    Polynomial.map_map, Polynomial.map_map]
  congr 2
  · ext <;> simp [-algebraMap_apply, -AddMonoidAlgebra.coe_algebraMap, ← algebraMap_eq]
  · ext <;> simp [-algebraMap_apply, -AddMonoidAlgebra.coe_algebraMap, ← algebraMap_eq]
  · rw [(monic_freeMonic ..).natDegree_map, natDegree_freeMonic]
  · rw [(monic_freeMonic ..).natDegree_map, natDegree_freeMonic]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/UniversalFactorizationRing/Variant82280c875c83bb979ce1c61ac0f1c6186fc3b6eb0043988e0d3e8f022554b95a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalFactorizationRing/Variant82280c875c83bb979ce1c61ac0f1c6186fc3b6eb0043988e0d3e8f022554b95a.lean#L314).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `56a1041889cc9095ca7ab293316e7658cdf2bfe1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
