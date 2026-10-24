# cesaroWeight_second_abs_le_physical

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1da9f09b-dd1e-95b7-f259-8a501632b10c",
  "kind": "theorem",
  "lexical_name": "cesaroWeight_second_abs_le_physical",
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
  "slug": "cesaroweight-second-abs-le-physical--8102f555f94eda0368472137",
  "source": {
    "blob": "9bf9b4b68ac4bd0a0df4e4a4169703bbcd4d0c99",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 148,
    "line": 124,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceCesaroKernelBudget/Variantb022426caa932263468eec22257c5aeff341cd41830f79dce98b492e55acea0a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8102f555f94eda0368472137ae9a91ec8d61fcd36ea12c5ce2b306447fd44cb2",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceCesaroKernelBudget/Variantb022426caa932263468eec22257c5aeff341cd41830f79dce98b492e55acea0a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1da9f09b-dd1e-95b7-f259-8a501632b10c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 124–148.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cesaroWeight_second_abs_le_physical (A t : ℝ) (hA : 91 ≤ A)
    (ht0 : 0 ≤ t) (ht : t ≤ 2 * A) :
    |deriv (deriv (cesaroWeight A)) t| ≤ 134 / A ^ 3 + 65 / (6 * A ^ 2) := by
  have hp : 0 < A := by linarith
  have h3 := actual_correlation_third_abs_le_physical A t hA ht0 ht
  have h2 := sourceCorrelation_second_deriv_abs_le_coefficient (by linarith : 1 ≤ A) t
  have he : 162826 / (7623 * A ^ 2) / 2 ≤ 65 / (6 * A ^ 2) := by
    have hb : 162826 / (7623 * A ^ 2) ≤ 65 / (3 * A ^ 2) := by
      apply (div_le_div_iff₀ (by positivity) (by positivity)).mpr
      nlinarith [sq_pos_of_pos hp]
    have hd := div_le_div_of_nonneg_right hb (by norm_num : (0 : ℝ) ≤ 2)
    have heq : 65 / (3 * A ^ 2) / 2 = 65 / (6 * A ^ 2) := by
      rw [div_div]
      congr 1
      ring
    exact hd.trans_eq heq
  rw [cesaroWeight_second_deriv A t hp]
  calc
    _ ≤ |deriv (deriv (deriv (sourceCorrelation explicitSecondDerivative A))) t| +
        |deriv (deriv (sourceCorrelation explicitSecondDerivative A)) t / 2| := abs_add_le _ _
    _ ≤ 134 / A ^ 3 + 162826 / (7623 * A ^ 2) / 2 := by
      rw [abs_div, abs_of_pos (by norm_num : (0 : ℝ) < 2)]
      exact add_le_add h3 (div_le_div_of_nonneg_right h2 (by norm_num))
    _ ≤ _ := add_le_add le_rfl he

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceCesaroKernelBudget/Variantb022426caa932263468eec22257c5aeff341cd41830f79dce98b492e55acea0a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceCesaroKernelBudget/Variantb022426caa932263468eec22257c5aeff341cd41830f79dce98b492e55acea0a.lean#L124).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9bf9b4b68ac4bd0a0df4e4a4169703bbcd4d0c99` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
