# coe_real_preimage_closedBall_inter_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d2f8d1588000a416916ccc514df66b8fa70389fb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 155,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/cb/cbcbd1ec8149890eb5b516eb24c7f938497c6e60ea316c8a7ae2fb2c0d716013.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:59e69c08-dd7c-7c2e-433c-055cfe7dde9a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:dd5c223a-4678-aff6-8313-63e6abb20825",
  "kind": "theorem",
  "lexical_name": "coe_real_preimage_closedBall_inter_eq",
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
  "slug": "coe-real-preimage-closedball-inter-eq--279d4de8358823fef5249a68",
  "source": {
    "blob": "d2f8d1588000a416916ccc514df66b8fa70389fb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 192,
    "line": 155,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/AddCircle/Variantcbcbd1ec8149890eb5b516eb24c7f938497c6e60ea316c8a7ae2fb2c0d716013.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:279d4de8358823fef5249a68b5d8a8c62e7009ede8c17f070adb038772ca34b3",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/AddCircle/Variantcbcbd1ec8149890eb5b516eb24c7f938497c6e60ea316c8a7ae2fb2c0d716013.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dd5c223a-4678-aff6-8313-63e6abb20825`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 155–192.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coe_real_preimage_closedBall_inter_eq {x ε : ℝ} (s : Set ℝ)
    (hs : s ⊆ closedBall x (|p| / 2)) :
    (↑) ⁻¹' closedBall (x : AddCircle p) ε ∩ s = if ε < |p| / 2 then closedBall x ε ∩ s else s := by
  rcases le_or_lt (|p| / 2) ε with hε | hε
  · rcases eq_or_ne p 0 with (rfl | hp)
    · simp only [abs_zero, zero_div] at hε
      simp only [not_lt.mpr hε, coe_real_preimage_closedBall_period_zero, abs_zero, zero_div,
        if_false, inter_eq_right]
      exact hs.trans (closedBall_subset_closedBall <| by simp [hε])
    simp [closedBall_eq_univ_of_half_period_le p hp (↑x) hε, not_lt.mpr hε]
  · suffices ∀ z : ℤ, closedBall (x + z • p) ε ∩ s = if z = 0 then closedBall x ε ∩ s else ∅ by
      simp [-zsmul_eq_mul, ← QuotientAddGroup.mk_zero, coe_real_preimage_closedBall_eq_iUnion,
        iUnion_inter, iUnion_ite, this, hε]
    intro z
    simp only [Real.closedBall_eq_Icc, zero_sub, zero_add] at hs ⊢
    rcases eq_or_ne z 0 with (rfl | hz)
    · simp
    simp only [hz, zsmul_eq_mul, if_false, eq_empty_iff_forall_notMem]
    rintro y ⟨⟨hy₁, hy₂⟩, hy₀⟩
    obtain ⟨hy₃, hy₄⟩ := hs hy₀
    rcases lt_trichotomy 0 p with (hp | (rfl : 0 = p) | hp)
    · rcases Int.cast_le_neg_one_or_one_le_cast_of_ne_zero ℝ hz with hz' | hz'
      · have : ↑z * p ≤ -p := by nlinarith
        linarith [abs_eq_self.mpr hp.le]
      · have : p ≤ ↑z * p := by nlinarith
        linarith [abs_eq_self.mpr hp.le]
    · simp only [mul_zero, add_zero, abs_zero, zero_div] at hy₁ hy₂ hε
      linarith
    · rcases Int.cast_le_neg_one_or_one_le_cast_of_ne_zero ℝ hz with hz' | hz'
      · have : -p ≤ ↑z * p := by nlinarith
        linarith [abs_eq_neg_self.mpr hp.le]
      · have : ↑z * p ≤ p := by nlinarith
        linarith [abs_eq_neg_self.mpr hp.le]

section FiniteOrderPoints

variable {p} [hp : Fact (0 < p)]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/AddCircle/Variantcbcbd1ec8149890eb5b516eb24c7f938497c6e60ea316c8a7ae2fb2c0d716013.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/AddCircle/Variantcbcbd1ec8149890eb5b516eb24c7f938497c6e60ea316c8a7ae2fb2c0d716013.lean#L155).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d2f8d1588000a416916ccc514df66b8fa70389fb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
