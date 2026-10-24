# hasStrictFDerivAt_of_hasFDerivAt_of_continuousAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4b46ffd0e4aa5e81a5fcaf37a270b32772426225",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 798,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/40/40cef273dfcb65e71d1d78ac9b1cead5fdfab066d868570f6584f33114424b2f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e9b18cba-260c-8e58-21f2-0056a1939a6a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:26f903f5-e80d-02b3-ac88-6f7e79650c9a",
  "kind": "theorem",
  "lexical_name": "hasStrictFDerivAt_of_hasFDerivAt_of_continuousAt",
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
  "slug": "hasstrictfderivat-of-hasfderivat-of-continuousat--cfc0295091d03955029db4f6",
  "source": {
    "blob": "4b46ffd0e4aa5e81a5fcaf37a270b32772426225",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 820,
    "line": 798,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MeanValue/Variant40cef273dfcb65e71d1d78ac9b1cead5fdfab066d868570f6584f33114424b2f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cfc0295091d03955029db4f6c162f1bc19acbb9b8a8c829b24c6d48076837b59",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/MeanValue/Variant40cef273dfcb65e71d1d78ac9b1cead5fdfab066d868570f6584f33114424b2f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:26f903f5-e80d-02b3-ac88-6f7e79650c9a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 798–820.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hasStrictFDerivAt_of_hasFDerivAt_of_continuousAt
    (hder : ∀ᶠ y in 𝓝 x, HasFDerivAt f (f' y) y) (hcont : ContinuousAt f' x) :
    HasStrictFDerivAt f (f' x) x := by
  -- turn little-o definition of strict_fderiv into an epsilon-delta statement
  rw [hasStrictFDerivAt_iff_isLittleO, isLittleO_iff]
  refine fun c hc => Metric.eventually_nhds_iff_ball.mpr ?_
  -- the correct ε is the modulus of continuity of f'
  rcases Metric.mem_nhds_iff.mp (inter_mem hder (hcont <| ball_mem_nhds _ hc)) with ⟨ε, ε0, hε⟩
  refine ⟨ε, ε0, ?_⟩
  -- simplify formulas involving the product E × E
  rintro ⟨a, b⟩ h
  rw [← ball_prod_same, prodMk_mem_set_prod_eq] at h
  -- exploit the choice of ε as the modulus of continuity of f'
  have hf' : ∀ x' ∈ ball x ε, ‖f' x' - f' x‖ ≤ c := fun x' H' => by
    rw [← dist_eq_norm]
    exact le_of_lt (hε H').2
  -- apply mean value theorem
  letI : NormedSpace ℝ G := RestrictScalars.normedSpace ℝ 𝕜 G
  refine (convex_ball _ _).norm_image_sub_le_of_norm_hasFDerivWithin_le' ?_ hf' h.2 h.1
  exact fun y hy => (hε hy).1.hasFDerivWithinAt

/-- Over the reals or the complexes, a continuously differentiable function is strictly
differentiable. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/MeanValue/Variant40cef273dfcb65e71d1d78ac9b1cead5fdfab066d868570f6584f33114424b2f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MeanValue/Variant40cef273dfcb65e71d1d78ac9b1cead5fdfab066d868570f6584f33114424b2f.lean#L798).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4b46ffd0e4aa5e81a5fcaf37a270b32772426225` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
