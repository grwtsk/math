# pi_bound_1

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f06b8815a68e0bc3decd472336d6373f75f0d0ab",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 517,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/76/7627d82640aae0869c370b5cc4a185c398d3555207448c5c3c605ac1ff12dd61.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:599808c9-5cc1-d537-ea51-6dc30f934f4e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ef4d21b6-1e10-7ae2-a8e5-78c89efecd90",
  "kind": "theorem",
  "lexical_name": "pi_bound_1",
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
  "slug": "pi-bound-1--e0d00e7a9490c182af8a1ba9",
  "source": {
    "blob": "f06b8815a68e0bc3decd472336d6373f75f0d0ab",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 560,
    "line": 517,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SqPiLtE3bf4b1c9656/Variant7627d82640aae0869c370b5cc4a185c398d3555207448c5c3c605ac1ff12dd61.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e0d00e7a9490c182af8a1ba965e9c485b9bf6e3e496ecbad5e48d5cc6a550e26",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SqPiLtE3bf4b1c9656/Variant7627d82640aae0869c370b5cc4a185c398d3555207448c5c3c605ac1ff12dd61.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ef4d21b6-1e10-7ae2-a8e5-78c89efecd90`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 517–560.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pi_bound_1 (x : ℝ) (hx : x ∈ Set.Ico 2 599) :
    Eθ x ≤ 1 - log 2 / 3 := by
  obtain ⟨hx2, hx599⟩ := hx
  have hxpos : (0 : ℝ) < x := by linarith
  have hnn : (0 : ℝ) ≤ x := by linarith
  unfold Eθ
  rw [div_le_iff₀ hxpos]
  by_cases! hx3 : x < 3
  · rw [Chebyshev.theta_eq_theta_coe_floor x]
    have hfloor : ⌊x⌋₊ = 2 := by
      apply (Nat.floor_eq_iff hnn).mpr
      exact ⟨by push_cast; linarith, by push_cast; linarith⟩
    rw [hfloor]
    have htheta_two : θ (↑(2 : ℕ) : ℝ) = log 2 := by
      simp [Chebyshev.theta, Finset.sum_filter, Finset.sum_Ioc_succ_top, Nat.prime_two]
    rw [htheta_two, abs_of_nonpos (by linarith [log_two_lt_d9]), neg_sub]
    nlinarith [log_two_gt_d9]
  · have hfloor_pos : 0 < ⌊x⌋₊ := Nat.floor_pos.mpr (by linarith : 1 ≤ x)
    have hfloor_ge3 : 3 ≤ ⌊x⌋₊ := Nat.le_floor hx3
    have hfloor_lt : ⌊x⌋₊ < 599 := (Nat.floor_lt hnn).mpr (by exact_mod_cast hx599)
    have hpointwise :=
      LeanCert.Engine.ChebyshevTheta.checkAllThetaRelErrorReal_implies 3 599 (768 / 1000) 20
        allThetaChecks_3_599 ⌊x⌋₊ hfloor_pos hfloor_ge3 hfloor_lt.le
    rw [if_pos hfloor_lt] at hpointwise
    have hxlo : (⌊x⌋₊ : ℝ) ≤ x := Nat.floor_le hnn
    have hxhi : x < (⌊x⌋₊ : ℝ) + 1 := Nat.lt_floor_add_one x
    have habs :=
      LeanCert.Engine.ChebyshevTheta.abs_theta_sub_le_mul_of_checkThetaRelErrorReal
        ⌊x⌋₊ 20 (768 / 1000) (by norm_num) (by norm_num) hpointwise x hxlo hxhi
    calc |θ x - x| ≤ ((768 / 1000 : ℚ) : ℝ) * x := habs
      _ ≤ (1 - log 2 / 3) * x := by
          gcongr
          have : (((768 : ℚ) / 1000 : ℚ) : ℝ) = 768 / 1000 := by push_cast; ring
          rw [this]
          linarith [log_two_lt_d9]

@[blueprint
  "ramanujan-pibound-2"
  (title := "Error estimate for theta, range 2 ")
  (statement := /-- For $599 < x \leq \exp(58)$ we have
$$E_\theta(x) \leq \frac{\log^2 x}{8\pi\sqrt{x}}.$$
(cf. \cite[(18)]{PT2021})-/)
  (proof := /-- This is \cite[Lemma 6]{PT2021}. -/)
  (latexEnv := "sublemma")]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SqPiLtE3bf4b1c9656/Variant7627d82640aae0869c370b5cc4a185c398d3555207448c5c3c605ac1ff12dd61.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SqPiLtE3bf4b1c9656/Variant7627d82640aae0869c370b5cc4a185c398d3555207448c5c3c605ac1ff12dd61.lean#L517).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f06b8815a68e0bc3decd472336d6373f75f0d0ab` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
