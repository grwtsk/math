# real_prefix_in_weak_band

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bb590c13-36ad-fc19-ff7b-87eed6b71db0",
  "kind": "theorem",
  "lexical_name": "real_prefix_in_weak_band",
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
  "slug": "real-prefix-in-weak-band--64c3cee05b2cb88829a7a4e1",
  "source": {
    "blob": "ab7778bcab7ead613201c46c42fddac3b37f7981",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 60,
    "line": 24,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DenseFactorSelection/Variant07172663003e01beaa5c1eb4ed8025f8b24b62eb276493be2350c28e5aa7e811.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:64c3cee05b2cb88829a7a4e1089356b97706bf73e62ead2cccb9c8639009663f",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DenseFactorSelection/Variant07172663003e01beaa5c1eb4ed8025f8b24b62eb276493be2350c28e5aa7e811.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bb590c13-36ad-fc19-ff7b-87eed6b71db0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 24–60.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem real_prefix_in_weak_band (xs : List ℝ) {Y R : ℝ} (hY1 : 1 ≤ Y)
    (hf : ∀ a ∈ xs, 0 < a ∧ a ≤ Y) (hR : 1 ≤ R) (hfull : R ≤ xs.prod) :
    ∃ k : ℕ, k ≤ xs.length ∧ R / Y ≤ (xs.take k).prod ∧ (xs.take k).prod ≤ R := by
  have hY : 0 < Y := lt_of_lt_of_le (by norm_num) hY1
  induction xs generalizing R with
  | nil =>
      refine ⟨0, by simp, ?_, ?_⟩
      · simp only [List.take_nil, List.prod_nil]
        have hReq : R = 1 := by simpa using le_antisymm hfull hR
        subst R
        apply (div_le_iff₀ hY).mpr
        simpa using hY1
      · simpa using hR
  | cons a xs ih =>
      have ha := hf a (by simp)
      have htail : ∀ b ∈ xs, 0 < b ∧ b ≤ Y := by
        intro b hb
        exact hf b (by simp [hb])
      by_cases hlarge : R < a
      · refine ⟨0, by simp, ?_, by simpa using hR⟩
        simp only [List.take_zero, List.prod_nil]
        apply (div_le_iff₀ hY).mpr
        nlinarith [ha.2]
      · have haR : a ≤ R := le_of_not_gt hlarge
        have hRa : 1 ≤ R / a := (le_div_iff₀ ha.1).mpr (by simpa using haR)
        have hremain : R / a ≤ xs.prod := (div_le_iff₀ ha.1).mpr (by
          simpa only [List.prod_cons, mul_comm] using hfull)
        obtain ⟨k, hk, hlo, hhi⟩ := ih htail hRa hremain
        refine ⟨k + 1, by simpa using Nat.add_le_add_right hk 1, ?_, ?_⟩
        · simp only [List.take_succ_cons, List.prod_cons]
          have h := mul_le_mul_of_nonneg_left hlo ha.1.le
          have heq : a * (R / a / Y) = R / Y := by field_simp [ha.1.ne', hY.ne']
          rwa [heq] at h
        · simp only [List.take_succ_cons, List.prod_cons]
          have h := mul_le_mul_of_nonneg_left hhi ha.1.le
          simpa only [mul_div_cancel₀ _ ha.1.ne'] using h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DenseFactorSelection/Variant07172663003e01beaa5c1eb4ed8025f8b24b62eb276493be2350c28e5aa7e811.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DenseFactorSelection/Variant07172663003e01beaa5c1eb4ed8025f8b24b62eb276493be2350c28e5aa7e811.lean#L24).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ab7778bcab7ead613201c46c42fddac3b37f7981` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
