# early_kernel_error

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:25c63be5-25e5-8fb6-40f0-b3ec1bcc6ec2",
  "kind": "theorem",
  "lexical_name": "early_kernel_error",
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
  "slug": "early-kernel-error--e23e002cad03ed6bf5619f7f",
  "source": {
    "blob": "8f2498d5bce6be8dc823ac958b21625760332faf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 121,
    "line": 91,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt01/Variant7120cbf1828bde71878ba7d790bcba4455c2b5d98c401f8c9ddea50a6e6cd756.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e23e002cad03ed6bf5619f7f9af5946bee6c387f565df44519cd2639f7d11cc9",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt01/Variant7120cbf1828bde71878ba7d790bcba4455c2b5d98c401f8c9ddea50a6e6cd756.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:25c63be5-25e5-8fb6-40f0-b3ec1bcc6ec2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 91–121.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem early_kernel_error {A T t : ℝ} (hA : 91 ≤ A)
    (ht : 0 ≤ t) (htT : t ≤ T) :
    |sourceCorrelation explicitSecondDerivative A t / 4 +
      deriv (sourceCorrelation explicitSecondDerivative A) t / 2 - (1 / 4 : ℝ)| ≤
        (5 / 8 * T ^ 2 + 5 / 2 * T) / A ^ 2 := by
  have h0 := actualCorrelation_sub_one_abs_le_five hA t
  have h1 := actualCorrelation_first_abs_le_five hA t
  rw [abs_of_nonneg ht] at h1
  have he : sourceCorrelation explicitSecondDerivative A t / 4 +
      deriv (sourceCorrelation explicitSecondDerivative A) t / 2 - (1 / 4 : ℝ) =
        (sourceCorrelation explicitSecondDerivative A t - 1) / 4 +
          deriv (sourceCorrelation explicitSecondDerivative A) t / 2 := by ring
  rw [he]
  have hh := abs_add_le ((sourceCorrelation explicitSecondDerivative A t - 1) / 4)
    (deriv (sourceCorrelation explicitSecondDerivative A) t / 2)
  rw [abs_div, abs_div] at hh
  norm_num only [abs_ofNat] at hh
  have hs : t ^ 2 ≤ T ^ 2 := by nlinarith
  calc
    _ ≤ |sourceCorrelation explicitSecondDerivative A t - 1| / 4 +
        |deriv (sourceCorrelation explicitSecondDerivative A) t| / 2 := hh
    _ ≤ (5 / 2 / A ^ 2 * t ^ 2) / 4 + (5 / A ^ 2 * t) / 2 :=
      add_le_add (div_le_div_of_nonneg_right h0 (by norm_num))
        (div_le_div_of_nonneg_right h1 (by norm_num))
    _ ≤ _ := by
      have hp : 0 < A ^ 2 := by positivity
      apply (le_div_iff₀ hp).2
      field_simp
      nlinarith

/-- The actual finite early head approaches its independent signed center at an explicit rate. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt01/Variant7120cbf1828bde71878ba7d790bcba4455c2b5d98c401f8c9ddea50a6e6cd756.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt01/Variant7120cbf1828bde71878ba7d790bcba4455c2b5d98c401f8c9ddea50a6e6cd756.lean#L91).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8f2498d5bce6be8dc823ac958b21625760332faf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
