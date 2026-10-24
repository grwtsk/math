# norm_logDeriv_Gammaℝ_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fe197cb5f0b3d92c9227c55fc92283fd0b26dfbb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 141,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9e/9e6fb6384838ce6d32b8498810ea51040bccfba226a1fc03c58bcb7815a5f8f2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:05f3e955-15be-65bf-7254-c50c8ec84124",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9727a893-0597-89d8-a33a-c593133566c1",
  "kind": "lemma",
  "lexical_name": "norm_logDeriv_Gammaℝ_le",
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
  "slug": "norm-logderiv-gamma-le--b9dbdec7ebaf29c13a977a92",
  "source": {
    "blob": "fe197cb5f0b3d92c9227c55fc92283fd0b26dfbb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 176,
    "line": 141,
    "path": "GRWTSK/Analysis/SpecialFunctions/Y/Variant9e6fb6384838ce6d32b8498810ea51040bccfba226a1fc03c58bcb7815a5f8f2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b9dbdec7ebaf29c13a977a92fb82d7191492e8203afb4b365394e477a0bc82b4",
  "verification": {
    "reference": "docs/verification/Analysis/SpecialFunctions/Y/Variant9e6fb6384838ce6d32b8498810ea51040bccfba226a1fc03c58bcb7815a5f8f2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9727a893-0597-89d8-a33a-c593133566c1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 141–176.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma norm_logDeriv_Gammaℝ_le {s : ℂ} (hre : 0 < s.re) (hre' : s.re ≤ 4) (him : 2 ≤ |s.im|) :
    ‖logDeriv Gammaℝ s‖ ≤ 4 * |s.im| := by
  rw [Zeta23.RvM.logDeriv_Gammaℝ hre]
  have hw : 0 < (s / 2).re := by simp; linarith
  have hw' : 1 ≤ |(s / 2).im| := by
    simp only [Complex.div_ofNat_im]
    rw [abs_div, abs_two]
    linarith
  have hψ := norm_digamma_le hw hw'
  have hs : ‖s‖ ≤ 4 + |s.im| := by
    refine le_trans (Complex.norm_le_abs_re_add_abs_im s) ?_
    rw [abs_of_pos hre]
    linarith
  have hs2 : ‖s / 2‖ = ‖s‖ / 2 := by rw [norm_div]; norm_num
  have hlogpi : ‖-(Real.log Real.pi : ℂ) / 2‖ ≤ 1 := by
    rw [norm_div, norm_neg, Complex.norm_real, Real.norm_eq_abs,
      abs_of_nonneg (Real.log_nonneg (by linarith [Real.pi_gt_three]))]
    have : Real.log Real.pi ≤ 2 := by
      have h4 : Real.log Real.pi ≤ Real.log 4 := Real.log_le_log Real.pi_pos Real.pi_lt_four.le
      have h4' : Real.log 4 = 2 * Real.log 2 := by
        rw [show (4:ℝ) = 2 ^ 2 by norm_num, Real.log_pow]; push_cast; ring
      linarith [Real.log_two_lt_d9]
    have h2 : ‖(2 : ℂ)‖ = 2 := by norm_num
    rw [h2]
    linarith
  calc ‖-(Real.log Real.pi : ℂ) / 2 + (1 / 2 : ℂ) * Complex.digamma (s / 2)‖
      ≤ ‖-(Real.log Real.pi : ℂ) / 2‖ + ‖(1 / 2 : ℂ) * Complex.digamma (s / 2)‖ := norm_add_le _ _
    _ ≤ 1 + 1 / 2 * (‖s‖ / 2 + 8) := by
        gcongr
        rw [norm_mul, ← hs2]
        have : ‖(1 / 2 : ℂ)‖ = 1 / 2 := by norm_num
        rw [this]
        gcongr
    _ ≤ 4 * |s.im| := by linarith

/-- **Polynomial growth of Y**: ‖Y(s)‖ ≤ C·|Im s|⁴ for 1/8 ≤ Re s ≤ 4, |Im s| ≥ 2. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/SpecialFunctions/Y/Variant9e6fb6384838ce6d32b8498810ea51040bccfba226a1fc03c58bcb7815a5f8f2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SpecialFunctions/Y/Variant9e6fb6384838ce6d32b8498810ea51040bccfba226a1fc03c58bcb7815a5f8f2.lean#L141).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fe197cb5f0b3d92c9227c55fc92283fd0b26dfbb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
