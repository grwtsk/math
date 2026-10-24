# polynomial_graph_approximation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "898d80d2625d5b359c3f6ed64461c2b04f4fdd4b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 323,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b9/b927ccc62cb561ba8b22e5a57d93c827f7b99e7c385c483763f25c78acf351aa.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:50cd3e75-51ab-9429-051e-0ab5f7172e6f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:78c9f64a-4dc1-3ab7-c65e-b1fba1364cf2",
  "kind": "theorem",
  "lexical_name": "polynomial_graph_approximation",
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
  "slug": "polynomial-graph-approximation--4f1a8a29c1c1dac2001fab8b",
  "source": {
    "blob": "898d80d2625d5b359c3f6ed64461c2b04f4fdd4b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 351,
    "line": 323,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/ThetaPolynomialGraphCore/Variantb927ccc62cb561ba8b22e5a57d93c827f7b99e7c385c483763f25c78acf351aa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4f1a8a29c1c1dac2001fab8bc8dc17446724b3d7aa6e23cf8c390eb2ff5b60ff",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/ThetaPolynomialGraphCore/Variantb927ccc62cb561ba8b22e5a57d93c827f7b99e7c385c483763f25c78acf351aa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:78c9f64a-4dc1-3ab7-c65e-b1fba1364cf2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 323–351.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem polynomial_graph_approximation {t : ℝ} (ht : 0 ≤ t)
    (f : coordinateDomain (momentMeasure t)) {ε : ℝ} (hε : 0 < ε) :
    ∃ q : coordinateDomain (momentMeasure t), q ∈ domainPolynomialSpan t ht ∧
      ‖f.val - q.val‖ < ε ∧
      ‖coordinateMultiplication (momentMeasure t) f -
        coordinateMultiplication (momentMeasure t) q‖ < ε := by
  obtain ⟨v, hv, hdist⟩ := (weightedPolynomialSpan_dense ht).exists_dist_lt
    (graphEmbedding (momentMeasure t) f) hε
  rw [← graphEmbedding_polynomialSpan ht] at hv
  obtain ⟨q, hq, rfl⟩ := hv
  have hn := graphEmbedding_norm_sq (momentMeasure t) (f - q)
  let M : coordinateDomain (momentMeasure t) →ₗ[ℂ] Lp ℂ 2 (momentMeasure t) :=
    (coordinateMultiplication (momentMeasure t)).toFun
  change ‖graphEmbedding (momentMeasure t) (f - q)‖ ^ 2 =
    ‖(f - q).val‖ ^ 2 + ‖M (f - q)‖ ^ 2 at hn
  rw [M.map_sub] at hn
  simp only [map_sub, Submodule.coe_sub] at hn
  rw [dist_eq_norm] at hdist
  have hnorm : ‖graphEmbedding (momentMeasure t) f - graphEmbedding (momentMeasure t) q‖ < ε :=
    by simpa only [norm_sub_rev] using hdist
  have hs : ‖graphEmbedding (momentMeasure t) f - graphEmbedding (momentMeasure t) q‖ ^ 2 < ε ^ 2 :=
    (sq_lt_sq₀ (norm_nonneg _) hε.le).mpr hnorm
  refine ⟨q, hq, ?_, ?_⟩
  · nlinarith [sq_nonneg ‖M f - M q‖, norm_nonneg (f.val - q.val)]
  · change ‖M f - M q‖ < ε
    nlinarith [sq_nonneg ‖f.val - q.val‖, norm_nonneg (M f - M q)]


/-- The actual all-degree complex polynomial submodule of the original L² space. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/ThetaPolynomialGraphCore/Variantb927ccc62cb561ba8b22e5a57d93c827f7b99e7c385c483763f25c78acf351aa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/ThetaPolynomialGraphCore/Variantb927ccc62cb561ba8b22e5a57d93c827f7b99e7c385c483763f25c78acf351aa.lean#L323).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `898d80d2625d5b359c3f6ed64461c2b04f4fdd4b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
