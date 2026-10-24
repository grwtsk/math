# finite_regularPart_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c2b45d7c-c278-1ce3-8aca-1bd46d3bda82",
  "kind": "theorem",
  "lexical_name": "finite_regularPart_bound",
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
  "slug": "finite-regularpart-bound--99fd5d1dcfeaabab064f1aa5",
  "source": {
    "blob": "bd10ac13e6e788c512782ab06d530a452b265848",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 105,
    "line": 79,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHPoleExclusion/Variant8be5c760a6bc9b8ccb2f48dbed4edbfd700be35dfce4cb03694a1ea7d1fa0391.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:99fd5d1dcfeaabab064f1aa5a4e685046c90144c007fb856201b63f8c1dff7e7",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHPoleExclusion/Variant8be5c760a6bc9b8ccb2f48dbed4edbfd700be35dfce4cb03694a1ea7d1fa0391.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c2b45d7c-c278-1ce3-8aca-1bd46d3bda82`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 79–105.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finite_regularPart_bound {ι : Type*} (s : Finset ι)
    (weight : ι → ℝ) (location : ι → ℂ) {g : ℝ} {p z : ℂ}
    (hw : ∀ i ∈ s, 0 ≤ weight i)
    (hsep : ∀ i ∈ s, g ≤ ‖location i - p‖)
    (hdg : ‖z - p‖ < g) :
    ‖∑ i ∈ s, (weight i : ℂ) / (location i - z)‖ ≤
      (∑ i ∈ s, weight i) / (g - ‖z - p‖) := by
  have hgd : 0 < g - ‖z - p‖ := sub_pos.mpr hdg
  calc
    ‖∑ i ∈ s, (weight i : ℂ) / (location i - z)‖
        ≤ ∑ i ∈ s, ‖(weight i : ℂ) / (location i - z)‖ := norm_sum_le _ _
    _ ≤ ∑ i ∈ s, weight i / (g - ‖z - p‖) := by
      apply Finset.sum_le_sum
      intro i hi
      apply Finset.sum_le_sum
      intro his hhis
      have hden : g - ‖z - p‖ ≤ ‖location i - z‖ := by
        have ht := norm_add_le (location i - z) (z - p)
        have he : location i - z + (z - p) = location i - p := by ring
        rw [he] at ht
        linarith [hsep i hhis]
      rw [norm_div, Complex.norm_real, Real.norm_eq_abs, abs_of_nonneg (hw i hhis)]
      exact div_le_div_of_nonneg_left (hw i hhis) hgd hden
    _ = (∑ i ∈ s, weight i) / (g - ‖z - p‖) := by
      simp only [Finset.sum_div]

/-- The requested finite positive-measure estimate, with literal total mass. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHPoleExclusion/Variant8be5c760a6bc9b8ccb2f48dbed4edbfd700be35dfce4cb03694a1ea7d1fa0391.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHPoleExclusion/Variant8be5c760a6bc9b8ccb2f48dbed4edbfd700be35dfce4cb03694a1ea7d1fa0391.lean#L79).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bd10ac13e6e788c512782ab06d530a452b265848` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
