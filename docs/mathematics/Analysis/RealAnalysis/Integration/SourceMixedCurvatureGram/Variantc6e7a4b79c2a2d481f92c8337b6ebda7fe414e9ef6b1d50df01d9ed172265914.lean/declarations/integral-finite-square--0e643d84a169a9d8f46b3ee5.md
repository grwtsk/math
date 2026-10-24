# integral_finite_square

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3eee6c1a-0b41-757c-3907-8c55190a4e31",
  "kind": "theorem",
  "lexical_name": "integral_finite_square",
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
  "slug": "integral-finite-square--0e643d84a169a9d8f46b3ee5",
  "source": {
    "blob": "1ad5c582b170a2ab0ad3c26c5b5654dcfb665c28",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 122,
    "line": 94,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceMixedCurvatureGram/Variantc6e7a4b79c2a2d481f92c8337b6ebda7fe414e9ef6b1d50df01d9ed172265914.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0e643d84a169a9d8f46b3ee539b57414b2927fcd73d58d009317cb0990174da8",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceMixedCurvatureGram/Variantc6e7a4b79c2a2d481f92c8337b6ebda7fe414e9ef6b1d50df01d9ed172265914.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3eee6c1a-0b41-757c-3907-8c55190a4e31`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 94–122.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem integral_finite_square {ι : Type*} (s : Finset ι) (c : ι → ℝ)
    (g : ι → ℝ → ℝ)
    (hprod : ∀ i ∈ s, ∀ j ∈ s, Integrable (fun v : ℝ => g i v * g j v)) :
    (∫ v : ℝ, (∑ i ∈ s, c i * g i v) ^ 2) =
      ∑ i ∈ s, ∑ j ∈ s, c i * c j * (∫ v : ℝ, g i v * g j v) := by
  have hexpand : (fun v : ℝ => (∑ i ∈ s, c i * g i v) ^ 2) =
      (fun v : ℝ => ∑ i ∈ s, ∑ j ∈ s, c i * c j * (g i v * g j v)) := by
    funext v
    rw [pow_two, Finset.sum_mul]
    apply Finset.sum_congr rfl
    intro i _
    rw [Finset.mul_sum]
    apply Finset.sum_congr rfl
    intro j _
    ring
  rw [hexpand, integral_finsetSum s]
  · apply Finset.sum_congr rfl
    intro i hi
    rw [integral_finsetSum s]
    · apply Finset.sum_congr rfl
      intro j hj
      exact integral_const_mul (c i * c j) _
    · intro j hj
      exact (hprod i hi j hj).const_mul (c i * c j)
  · intro i hi
    exact integrable_finsetSum s (fun j hj =>
      (hprod i hi j hj).const_mul (c i * c j))

/-- Exact two-square representation of the actual finite stationary mixed-curvature kernel. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceMixedCurvatureGram/Variantc6e7a4b79c2a2d481f92c8337b6ebda7fe414e9ef6b1d50df01d9ed172265914.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceMixedCurvatureGram/Variantc6e7a4b79c2a2d481f92c8337b6ebda7fe414e9ef6b1d50df01d9ed172265914.lean#L94).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1ad5c582b170a2ab0ad3c26c5b5654dcfb665c28` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
