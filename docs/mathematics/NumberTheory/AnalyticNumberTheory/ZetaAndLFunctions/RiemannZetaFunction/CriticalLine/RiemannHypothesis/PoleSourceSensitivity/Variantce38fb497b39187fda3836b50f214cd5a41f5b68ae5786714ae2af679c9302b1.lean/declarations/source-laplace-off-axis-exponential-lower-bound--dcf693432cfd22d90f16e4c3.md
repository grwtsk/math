# source_laplace_off_axis_exponential_lower_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:de1545e5-b06f-6381-e945-eaefc103b87e",
  "kind": "theorem",
  "lexical_name": "source_laplace_off_axis_exponential_lower_bound",
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
  "slug": "source-laplace-off-axis-exponential-lower-bound--dcf693432cfd22d90f16e4c3",
  "source": {
    "blob": "99dc36794dce7394ea5d7e17a1133dc411d277be",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 119,
    "line": 105,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PoleSourceSensitivity/Variantce38fb497b39187fda3836b50f214cd5a41f5b68ae5786714ae2af679c9302b1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dcf693432cfd22d90f16e4c36771264e6346db4b350a11a08ec5e20398c1dc0a",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PoleSourceSensitivity/Variantce38fb497b39187fda3836b50f214cd5a41f5b68ae5786714ae2af679c9302b1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:de1545e5-b06f-6381-e945-eaefc103b87e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 105–119.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem source_laplace_off_axis_exponential_lower_bound (z : ℂ) (hz : z.re ≠ 0)
    (hpole : z ^ 2 ≠ 1 / 4) :
    ∃ c : ℝ, 0 < c ∧ ∃ R : ℝ, 1 ≤ R ∧ ∀ A : ℝ, R ≤ A →
      c * Real.exp (2 * A * |z.re|) / A ^ 9 ≤ ‖sourceLaplace A z‖ := by
  by_cases hpos : 0 < z.re
  · simpa only [abs_of_pos hpos] using source_laplace_exponential_lower_bound z hpos hpole
  have hneg : z.re < 0 := lt_of_le_of_ne (le_of_not_gt hpos) hz
  obtain ⟨c, hc, R, hR, htail⟩ := source_laplace_left_exponential_lower_bound z hneg hpole
  refine ⟨c, hc, R, hR, ?_⟩
  intro A hA
  have he : 2 * A * |z.re| = -2 * A * z.re := by rw [abs_of_neg hneg]; ring
  rw [he]
  exact htail A hA

/-- The actual right pole has zero response, so no positive exponential lower bound exists there. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PoleSourceSensitivity/Variantce38fb497b39187fda3836b50f214cd5a41f5b68ae5786714ae2af679c9302b1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PoleSourceSensitivity/Variantce38fb497b39187fda3836b50f214cd5a41f5b68ae5786714ae2af679c9302b1.lean#L105).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `99dc36794dce7394ea5d7e17a1133dc411d277be` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
