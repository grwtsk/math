# integral_one_div_log_sq_le_const

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2da8f7a1095fdd5b64ca8609b613f4c0960c9eed",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 3028,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e6/e677b791cd8a3612859851d52d29bc8714a3844979df02a794d8fd4e87a9731a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e4378c18-6407-12ee-26a1-6648b5926aa1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:177cb4a2-4711-d7d1-f752-fe04737230d3",
  "kind": "lemma",
  "lexical_name": "integral_one_div_log_sq_le_const",
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
  "slug": "integral-one-div-log-sq-le-const--aa53831dffd4003af6c5137f",
  "source": {
    "blob": "2da8f7a1095fdd5b64ca8609b613f4c0960c9eed",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 3059,
    "line": 3028,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/FKS2/Variante677b791cd8a3612859851d52d29bc8714a3844979df02a794d8fd4e87a9731a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:aa53831dffd4003af6c5137fd619ad50f50e0d6689d7603c6588a0272b4e4d28",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/FKS2/Variante677b791cd8a3612859851d52d29bc8714a3844979df02a794d8fd4e87a9731a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:177cb4a2-4711-d7d1-f752-fe04737230d3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 3028–3059.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma integral_one_div_log_sq_le_const {x₁ s : ℝ} (hx₁ : 1 < x₁) (h : x₁ ≤ s) :
    ∫ u in x₁..s, 1 / (Real.log u) ^ 2 ≤ (s - x₁) / (Real.log x₁) ^ 2 := by
  have h_bound : ∫ u in x₁..s, 1 / (Real.log u) ^ 2 ≤ ∫ u in x₁..s, 1 / (Real.log x₁) ^ 2 := by
    apply_rules [ intervalIntegral.integral_mono_on ];
    · apply ContinuousOn.intervalIntegrable
      -- Goal: ContinuousOn (fun u ↦ 1 / log u ^ 2) (uIcc x₁ s)
      apply ContinuousOn.div continuousOn_const
      · -- Continuity of (log ·)^2 on the interval
        apply ContinuousOn.pow
        apply Real.continuousOn_log.mono
        -- Need: ∀ u ∈ uIcc x₁ s, u ≠ 0
        intro u hu
        rw [Set.uIcc_of_le h] at hu
        -- u ≥ x₁ > 1 > 0, so u ≠ 0
        exact ne_of_gt (by linarith [hu.1])
      · -- Non-vanishing: (log u)^2 ≠ 0 on the interval
        intro u hu
        rw [Set.uIcc_of_le h] at hu
        have hlog : 0 < Real.log u :=
          Real.log_pos (hx₁.trans_le hu.1)
        exact pow_ne_zero _ hlog.ne'
    · apply_rules [ ContinuousOn.intervalIntegrable ]; exact continuousOn_const
    · intro x hx
      have hx₁' : 0 < Real.log x₁ := Real.log_pos hx₁
      have hlog : Real.log x₁ ≤ Real.log x :=
        Real.log_le_log (by linarith) hx.1
      have hlogx : 0 < Real.log x := hx₁'.trans_le hlog
      rw [div_le_div_iff₀ (pow_pos hlogx 2) (pow_pos hx₁' 2)]
      simp only [one_mul]
      nlinarith [sq_nonneg (Real.log x - Real.log x₁)]
  aesop

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/FKS2/Variante677b791cd8a3612859851d52d29bc8714a3844979df02a794d8fd4e87a9731a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/FKS2/Variante677b791cd8a3612859851d52d29bc8714a3844979df02a794d8fd4e87a9731a.lean#L3028).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2da8f7a1095fdd5b64ca8609b613f4c0960c9eed` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
