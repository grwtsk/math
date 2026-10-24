# source_laplace_off_axis_exponential_lower_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "484576590b124a5e7e22ea5c1c4af2cb3a97e415",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 97,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9d/9d2975379d83224038d4aebf7c952ec222ba066c1e10350b48a1c0128b83192f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:67d17a3c-ee01-6cf9-2ee0-1efd968e69a8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8cd649eb-91ae-937f-26ef-f84695ca0bff",
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
  "slug": "source-laplace-off-axis-exponential-lower-bound--cb566c95c2ead5f353996cbc",
  "source": {
    "blob": "484576590b124a5e7e22ea5c1c4af2cb3a97e415",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 111,
    "line": 97,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PoleSourceSensitivity/Variant9d2975379d83224038d4aebf7c952ec222ba066c1e10350b48a1c0128b83192f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cb566c95c2ead5f353996cbc1bea9e31d861ce1ffa726289aeb7e41763ab8b36",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PoleSourceSensitivity/Variant9d2975379d83224038d4aebf7c952ec222ba066c1e10350b48a1c0128b83192f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8cd649eb-91ae-937f-26ef-f84695ca0bff`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 97–111.

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

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PoleSourceSensitivity/Variant9d2975379d83224038d4aebf7c952ec222ba066c1e10350b48a1c0128b83192f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PoleSourceSensitivity/Variant9d2975379d83224038d4aebf7c952ec222ba066c1e10350b48a1c0128b83192f.lean#L97).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `484576590b124a5e7e22ea5c1c4af2cb3a97e415` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
