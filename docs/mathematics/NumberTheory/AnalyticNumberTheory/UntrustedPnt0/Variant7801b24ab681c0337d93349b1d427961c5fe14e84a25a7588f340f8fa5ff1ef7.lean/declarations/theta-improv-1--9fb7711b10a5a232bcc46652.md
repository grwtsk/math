# theta_improv_1

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c6825e4a-1144-38b4-2d91-f527c6dc900d",
  "kind": "theorem",
  "lexical_name": "theta_improv_1",
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
  "slug": "theta-improv-1--9fb7711b10a5a232bcc46652",
  "source": {
    "blob": "04dd9185ccbc06b581c8737da51066f96c86705c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 570,
    "line": 538,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/UntrustedPnt0/Variant7801b24ab681c0337d93349b1d427961c5fe14e84a25a7588f340f8fa5ff1ef7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9fb7711b10a5a232bcc46652c3aa402f210800ded0811997a59fcc95e24e6a6d",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/UntrustedPnt0/Variant7801b24ab681c0337d93349b1d427961c5fe14e84a25a7588f340f8fa5ff1ef7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c6825e4a-1144-38b4-2d91-f527c6dc900d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 538–570.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem theta_improv_1 (x : ℝ) (hx : x > 1) :
    |θ x - x| ≤ 20.83 * x / (log x) ^ 3 := by
  have hx_pos : x > 0 := by linarith
  have hlog_pos : log x > 0 := log_pos hx
  by_cases! hx2 : x ≥ 2
  · have hEθ := Dusart.theorem_4_2
      (by simp [Dusart.Table_4_2] : ((3 : ℕ), (20.83 : ℝ), (2 : ℝ)) ∈ Dusart.Table_4_2) hx2
    simp only [Eθ] at hEθ
    rw [div_le_div_iff₀ hx_pos (pow_pos hlog_pos 3)] at hEθ
    rwa [le_div_iff₀ (pow_pos hlog_pos 3)]
  · have hlog2 : log 2 < 1 := by
      linarith [log_lt_sub_one_of_pos (by norm_num : (0:ℝ) < 2) (by norm_num : (2:ℝ) ≠ 1)]
    have hlog_lt1 : log x < 1 := lt_trans (log_lt_log hx_pos hx2) hlog2
    have hlog3_lt1 : (log x) ^ 3 < 1 := by
      calc (log x) ^ 3 ≤ log x := by
            nlinarith [sq_nonneg (log x), sq_nonneg (1 - log x)]
        _ < 1 := hlog_lt1
    rw [le_div_iff₀ (pow_pos hlog_pos 3)]
    have habs : |θ x - x| ≤ x := by
      rw [abs_le]; constructor
      · linarith [theta_nonneg x]
      · have : θ x ≤ log 4 * x := theta_le_log4_mul_x hx_pos.le
        have : log 4 = 2 * log 2 := by
          rw [show (4:ℝ) = 2^2 by norm_num, log_pow]; ring
        nlinarith
    exact le_trans (mul_le_mul habs hlog3_lt1.le (pow_pos hlog_pos 3).le (by linarith))
      (by linarith)

@[blueprint
  "thm:dusart2018-theta-improv-2"
  (title := "Dusart 2018, $\\vartheta$ improvement 2")
  (statement := /-- For $x \geq 89{,}967{,}803$, we have $|\vartheta(x) - x| \leq \frac{x}{\log^3 x}$. -/)
  (latexEnv := "theorem")]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/UntrustedPnt0/Variant7801b24ab681c0337d93349b1d427961c5fe14e84a25a7588f340f8fa5ff1ef7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/UntrustedPnt0/Variant7801b24ab681c0337d93349b1d427961c5fe14e84a25a7588f340f8fa5ff1ef7.lean#L538).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `04dd9185ccbc06b581c8737da51066f96c86705c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
