# corollary_5_5

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1849a16a-c4bb-67b0-cbad-50531eebfb32",
  "kind": "theorem",
  "lexical_name": "corollary_5_5",
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
  "slug": "corollary-5-5--ed2ad38ef0deb85fabbddd7a",
  "source": {
    "blob": "7ebe65bc6274dee5409981605bdc80f837fc7a8f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 693,
    "line": 663,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Dusart/Variant093e278cd84868236dd4a673649b2824c13486f2d178d1d570b53c1311519905.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ed2ad38ef0deb85fabbddd7a1d2753f1c40f26d99361d7022cc102e364311a1c",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Dusart/Variant093e278cd84868236dd4a673649b2824c13486f2d178d1d570b53c1311519905.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1849a16a-c4bb-67b0-cbad-50531eebfb32`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 663–693.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem corollary_5_5 {x : ℝ} (hx : x ≥ 468991632) : HasPrimeInInterval x (x * (1 + 1 / (5000 * (log x) ^ 2))) := by
  have hx89 : x ≥ (89693 : ℝ) := by linarith
  obtain ⟨p, hp, hxp, hpxh⟩ := proposition_5_4 x hx89
  refine ⟨p, hp, hxp, hpxh.trans ?_⟩
  have hx_pos : (0:ℝ) < x := by linarith
  have hexp1_lt : exp 1 < x := by linarith [Real.exp_one_lt_d9]
  have hlog_gt1 : (1:ℝ) < log x := by
    rwa [show (1:ℝ) = log (exp 1) from (Real.log_exp 1).symm, Real.log_lt_log_iff (exp_pos 1) hx_pos]
  have hlog_pos : (0:ℝ) < log x := by linarith
  have hlog2_pos : (0:ℝ) < (log x) ^ 2 := by positivity
  have hlog3_pos : (0:ℝ) < (log x) ^ (3:ℝ) := by positivity
  have h1 : (1:ℝ) ≤ (log x) ^ (3:ℝ) := by
    calc (1:ℝ) = 1 ^ (3:ℝ) := by simp
    _ ≤ (log x) ^ (3:ℝ) := Real.rpow_le_rpow (by linarith) hlog_gt1.le (by norm_num)
  have hdiv_le_x : x / (log x) ^ (3:ℝ) ≤ x := by
    rw [div_le_iff₀ hlog3_pos]
    nlinarith
  have hx_le_mul : x ≤ x * (1 + 1 / (5000 * (log x) ^ 2)) := by
    have : 0 ≤ 1 / (5000 * (log x) ^ 2) := by positivity
    nlinarith
  linarith

@[blueprint "Dusart_thm_5_6"
  (title := "Dusart Theorem 5.6")
  (statement := /--
  We have for $x \geq 2278383$,
  \[
  \sum_{p \leq x} \frac{1}{p} = \log \log x + M + O^*\Bigl(\frac{0.2}{\log^3 x}\Bigr).
  \]
  -/)
  (latexEnv := "theorem")]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Dusart/Variant093e278cd84868236dd4a673649b2824c13486f2d178d1d570b53c1311519905.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Dusart/Variant093e278cd84868236dd4a673649b2824c13486f2d178d1d570b53c1311519905.lean#L663).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7ebe65bc6274dee5409981605bdc80f837fc7a8f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
