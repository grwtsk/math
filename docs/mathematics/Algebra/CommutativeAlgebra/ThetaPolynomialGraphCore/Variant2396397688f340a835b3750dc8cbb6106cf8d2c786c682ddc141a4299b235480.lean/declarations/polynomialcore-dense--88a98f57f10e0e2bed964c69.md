# polynomialCore_dense

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:93fc6df8-31a5-68b0-6656-6151edc3ce16",
  "kind": "theorem",
  "lexical_name": "polynomialCore_dense",
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
  "slug": "polynomialcore-dense--88a98f57f10e0e2bed964c69",
  "source": {
    "blob": "74d7bf292d711254a5c8355d6ebed0d742d94693",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 451,
    "line": 433,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/ThetaPolynomialGraphCore/Variant2396397688f340a835b3750dc8cbb6106cf8d2c786c682ddc141a4299b235480.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:88a98f57f10e0e2bed964c6940c81d4b131a513e86c8bff232d6f97ec6aace3f",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/ThetaPolynomialGraphCore/Variant2396397688f340a835b3750dc8cbb6106cf8d2c786c682ddc141a4299b235480.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:93fc6df8-31a5-68b0-6656-6151edc3ce16`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 433–451.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem polynomialCore_dense {t : ℝ} (ht : 0 ≤ t) :
    Dense (polynomialCore t ht : Set (Lp ℂ 2 (momentMeasure t))) := by
  have : IsFiniteMeasure (momentMeasure t) := momentMeasure_finite ht
  have hdom : coordinateDomain (momentMeasure t) ≤ (polynomialCore t ht).topologicalClosure := by
    intro f hf
    change f ∈ closure (polynomialCore t ht : Set _)
    rw [Metric.mem_closure_iff]
    intro ε hε
    obtain ⟨q, hq, hv, _⟩ := polynomial_graph_approximation ht ⟨f, hf⟩ hε
    exact ⟨q.val, ⟨q, hq, rfl⟩, by simpa only [dist_eq_norm] using hv⟩
  rw [Submodule.dense_iff_topologicalClosure_eq_top]
  apply le_antisymm le_top
  rw [← (Submodule.dense_iff_topologicalClosure_eq_top).mp
    (coordinateDomain_dense (momentMeasure t))]
  exact Submodule.topologicalClosure_minimal _ hdom
    (polynomialCore t ht).isClosed_topologicalClosure

end
end FormalResearch.RiemannHypothesis.ThetaPolynomialGraphCore
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/ThetaPolynomialGraphCore/Variant2396397688f340a835b3750dc8cbb6106cf8d2c786c682ddc141a4299b235480.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/ThetaPolynomialGraphCore/Variant2396397688f340a835b3750dc8cbb6106cf8d2c786c682ddc141a4299b235480.lean#L433).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `74d7bf292d711254a5c8355d6ebed0d742d94693` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
