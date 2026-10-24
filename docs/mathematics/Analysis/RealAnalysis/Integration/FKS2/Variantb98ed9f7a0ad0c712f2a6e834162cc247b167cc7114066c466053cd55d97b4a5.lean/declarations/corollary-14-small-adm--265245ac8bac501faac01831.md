# corollary_14_small_adm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2aa71078-101e-0b91-9e1e-117082df94e9",
  "kind": "lemma",
  "lexical_name": "corollary_14_small_adm",
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
  "slug": "corollary-14-small-adm--265245ac8bac501faac01831",
  "source": {
    "blob": "4bc63a57afc465f27db885b1686b1f5e58591aef",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1266,
    "line": 1230,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/FKS2/Variantb98ed9f7a0ad0c712f2a6e834162cc247b167cc7114066c466053cd55d97b4a5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:265245ac8bac501faac01831b260a329c17bcf08217e54a066e4b3eadd9eb159",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/FKS2/Variantb98ed9f7a0ad0c712f2a6e834162cc247b167cc7114066c466053cd55d97b4a5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2aa71078-101e-0b91-9e1e-117082df94e9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1230–1266.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma corollary_14_small_adm :
    ∀ {x : ℝ}, 2 ≤ x → x ≤ Real.exp 30 →
    (1:ℝ) ≤ admissible_bound 121.0961 (3/2) 2 5.5666305 x := by
  intro x hx hx30
  let u : ℝ := Real.log x / 5.5666305
  have hu_pos : 0 < u := by
    have hlogx : 0 < Real.log x := Real.log_pos (lt_of_lt_of_le (by norm_num) hx)
    exact div_pos hlogx (by norm_num)
  have hu_ge : (31/250:ℝ) ≤ u := by
    have hlog2x : Real.log 2 ≤ Real.log x := Real.log_le_log (by norm_num) hx
    have h : (31/250:ℝ) * 5.5666305 ≤ Real.log x := by
      nlinarith [hlog2x, LogTables.log_2_gt]
    exact (le_div_iff₀ (by norm_num : (0:ℝ) < 5.5666305)).2 h
  have hu_le : u ≤ 30 / 5.5666305 := by
    have hlog : Real.log x ≤ 30 := by
      have := Real.log_le_log (by positivity : 0 < x) hx30
      simpa [Real.log_exp] using this
    have hdiv : Real.log x / 5.5666305 ≤ 30 / 5.5666305 :=
      div_le_div_of_nonneg_right hlog (by norm_num)
    simpa [u] using hdiv
  change (1:ℝ) ≤ 121.0961 * u ^ (3 / 2 : ℝ) * Real.exp (-2 * u ^ (1 / 2 : ℝ))
  have hu_pow : u ^ (3 / 2 : ℝ) = u * Real.sqrt u := by
    rw [show (3 / 2 : ℝ) = (1:ℝ) + (1 / 2 : ℝ) by norm_num]
    rw [Real.rpow_add hu_pos]
    simp [Real.sqrt_eq_rpow]
  have hu_sqrtpow : u ^ (1 / 2 : ℝ) = Real.sqrt u := by
    simp [Real.sqrt_eq_rpow]
  rw [hu_pow, hu_sqrtpow]
  by_cases hu64 : u ≤ (16/25:ℝ)
  · exact corollary_14_small_adm_case1 u hu_pos hu_ge hu64
  · have hu64' : (16/25:ℝ) < u := lt_of_not_ge hu64
    by_cases hu94 : u ≤ (9/4:ℝ)
    · exact corollary_14_small_adm_case2 u hu_pos hu64' hu94
    · have hu94' : (9/4:ℝ) < u := lt_of_not_ge hu94
      exact corollary_14_small_adm_case3 u hu_pos hu94' hu_le

-- Helper establishing ⌊30 / log 2⌋₊ = 43.
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/FKS2/Variantb98ed9f7a0ad0c712f2a6e834162cc247b167cc7114066c466053cd55d97b4a5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/FKS2/Variantb98ed9f7a0ad0c712f2a6e834162cc247b167cc7114066c466053cd55d97b4a5.lean#L1230).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4bc63a57afc465f27db885b1686b1f5e58591aef` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
