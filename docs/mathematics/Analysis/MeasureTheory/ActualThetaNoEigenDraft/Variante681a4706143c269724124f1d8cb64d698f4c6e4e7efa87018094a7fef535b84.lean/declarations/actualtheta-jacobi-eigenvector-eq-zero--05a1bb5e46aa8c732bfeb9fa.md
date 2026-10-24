# actualTheta_jacobi_eigenvector_eq_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "85d6ea5b1d34751872b072959942f336a568c307",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 29,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e6/e681a4706143c269724124f1d8cb64d698f4c6e4e7efa87018094a7fef535b84.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b3ca3645-9568-d9a4-5e85-9b1e71f72ee0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1a444ab7-49eb-14c3-6799-9fe674482087",
  "kind": "theorem",
  "lexical_name": "actualTheta_jacobi_eigenvector_eq_zero",
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
  "slug": "actualtheta-jacobi-eigenvector-eq-zero--05a1bb5e46aa8c732bfeb9fa",
  "source": {
    "blob": "85d6ea5b1d34751872b072959942f336a568c307",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 46,
    "line": 29,
    "path": "GRWTSK/Analysis/MeasureTheory/ActualThetaNoEigenDraft/Variante681a4706143c269724124f1d8cb64d698f4c6e4e7efa87018094a7fef535b84.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:05a1bb5e46aa8c732bfeb9fa20ab6a4d41a391a1e6ec50aebf64de875b392c52",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/ActualThetaNoEigenDraft/Variante681a4706143c269724124f1d8cb64d698f4c6e4e7efa87018094a7fef535b84.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1a444ab7-49eb-14c3-6799-9fe674482087`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 29–46.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualTheta_jacobi_eigenvector_eq_zero {t : ℝ} (ht : 0 ≤ t) (z : ℂ)
    (f : jacobiDomain t ht)
    (h : jacobiOperator t ht f = z • (f : lp (fun _ : ℕ => ℂ) 2)) :
    (f : lp (fun _ : ℕ => ℂ) 2) = 0 := by
  have he : (domainUnitary t ht f : Lp ℂ 2 (momentMeasure t)) = 0 :=
    actualTheta_coordinate_eigenvector_eq_zero t z (domainUnitary t ht f) (by
      rw [← pointedUnitary_jacobiOperator ht f, h, map_smul]
      rfl)
  apply (pointedUnitary t ht).injective
  rw [map_zero]
  exact he

#print axioms actualMomentMeasure_nullSingleton
#print axioms actualTheta_coordinate_eigenvector_eq_zero
#print axioms actualTheta_jacobi_eigenvector_eq_zero

end
end ContinuousThetaNoEigenDraft
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/ActualThetaNoEigenDraft/Variante681a4706143c269724124f1d8cb64d698f4c6e4e7efa87018094a7fef535b84.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/ActualThetaNoEigenDraft/Variante681a4706143c269724124f1d8cb64d698f4c6e4e7efa87018094a7fef535b84.lean#L29).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `85d6ea5b1d34751872b072959942f336a568c307` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
