# symmetricLogComb_pos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:097766f5-575f-1dff-4fae-5993382cd87e",
  "kind": "theorem",
  "lexical_name": "symmetricLogComb_pos",
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
  "slug": "symmetriclogcomb-pos--ac244e5450f4d35ae19de97a",
  "source": {
    "blob": "e31288865f1982eca7052420a942462b9bdd375e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 189,
    "line": 156,
    "path": "GRWTSK/Analysis/SpecialFunctions/PNTLogBounds/Variantbf07aafb877158d5132385936280b63663c14bd9748693a1c520b28cb2931038.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ac244e5450f4d35ae19de97a1cc2cb74c074e120f6ad4619d32cd67709cdf2cd",
  "verification": {
    "reference": "docs/verification/Analysis/SpecialFunctions/PNTLogBounds/Variantbf07aafb877158d5132385936280b63663c14bd9748693a1c520b28cb2931038.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:097766f5-575f-1dff-4fae-5993382cd87e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 156–189.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem symmetricLogComb_pos (t : ℝ) (ht_pos : 0 < t) (ht_lt : t < 1) :
    0 < symmetricLogComb t := by
  -- The alternative form is log(1-t²)/(log(1+t)·log(1-t))
  -- Numerator log(1-t²) < 0 (since 0 < 1-t² < 1)
  -- Denominator log(1+t)·log(1-t) < 0 (positive times negative)
  -- So the quotient is positive
  have h1pt_pos : 0 < 1 + t := by linarith
  have h1mt_pos : 0 < 1 - t := by linarith
  have h1mt2_pos : 0 < 1 - t^2 := by nlinarith [sq_nonneg t]
  have h1mt2_lt1 : 1 - t^2 < 1 := by nlinarith [sq_nonneg t]
  have h1pt_gt1 : 1 < 1 + t := by linarith
  have h1mt_lt1 : 1 - t < 1 := by linarith
  have hlog1p_pos : 0 < log (1 + t) := log_pos h1pt_gt1
  have hlog1m_neg : log (1 - t) < 0 := log_neg h1mt_pos h1mt_lt1
  have hlog1mt2_neg : log (1 - t^2) < 0 := log_neg h1mt2_pos h1mt2_lt1
  have hdenom_neg : log (1 + t) * log (1 - t) < 0 := mul_neg_of_pos_of_neg hlog1p_pos hlog1m_neg
  -- The alternative form: symmetricLogComb t = log(1-t²) / (log(1+t) * log(1-t))
  have hlog1p_ne : log (1 + t) ≠ 0 := ne_of_gt hlog1p_pos
  have hlog1m_ne : log (1 - t) ≠ 0 := ne_of_lt hlog1m_neg
  have halt : symmetricLogComb t = log (1 - t^2) / (log (1 + t) * log (1 - t)) := by
    unfold symmetricLogComb
    have h1 : 1 / log (1 + t) + 1 / log (1 - t) =
        (log (1 - t) + log (1 + t)) / (log (1 + t) * log (1 - t)) := by field_simp
    have h2 : log (1 - t) + log (1 + t) = log ((1 - t) * (1 + t)) :=
      (log_mul (ne_of_gt h1mt_pos) (ne_of_gt h1pt_pos)).symm
    have h3 : (1 - t) * (1 + t) = 1 - t^2 := by ring
    simp only [h1, h2, h3]
  rw [halt]
  exact div_pos_of_neg_of_neg hlog1mt2_neg hdenom_neg

/-- g(t) ≤ 2 for 0 < t < 1.
    Proof uses: log(1+t) ≥ t/(1+t), log(1-t) ≥ -t/(1-t)
    Hence: 1/log(1+t) ≤ (1+t)/t, 1/log(1-t) ≤ -(1-t)/t
    Sum: ≤ (1+t)/t - (1-t)/t = 2 -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/SpecialFunctions/PNTLogBounds/Variantbf07aafb877158d5132385936280b63663c14bd9748693a1c520b28cb2931038.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SpecialFunctions/PNTLogBounds/Variantbf07aafb877158d5132385936280b63663c14bd9748693a1c520b28cb2931038.lean#L156).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e31288865f1982eca7052420a942462b9bdd375e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
