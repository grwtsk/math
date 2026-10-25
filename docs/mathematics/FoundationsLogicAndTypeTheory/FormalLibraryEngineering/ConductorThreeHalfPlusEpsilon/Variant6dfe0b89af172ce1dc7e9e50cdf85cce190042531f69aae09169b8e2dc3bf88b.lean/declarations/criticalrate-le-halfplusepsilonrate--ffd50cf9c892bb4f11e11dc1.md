# criticalRate_le_halfPlusEpsilonRate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9b75b21433614f86c097c9b3683ea0cab0ec1160",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 157,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6d/6dfe0b89af172ce1dc7e9e50cdf85cce190042531f69aae09169b8e2dc3bf88b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5b1dd9bb-4f75-ddab-f372-640e0fd57b52",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1f8e3445-703f-68e5-332b-9d97ddab002f",
  "kind": "lemma",
  "lexical_name": "criticalRate_le_halfPlusEpsilonRate",
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
  "slug": "criticalrate-le-halfplusepsilonrate--ffd50cf9c892bb4f11e11dc1",
  "source": {
    "blob": "9b75b21433614f86c097c9b3683ea0cab0ec1160",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 218,
    "line": 157,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConductorThreeHalfPlusEpsilon/Variant6dfe0b89af172ce1dc7e9e50cdf85cce190042531f69aae09169b8e2dc3bf88b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ffd50cf9c892bb4f11e11dc1212d7727783775965833e62146f5b5fbbd5aaf81",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConductorThreeHalfPlusEpsilon/Variant6dfe0b89af172ce1dc7e9e50cdf85cce190042531f69aae09169b8e2dc3bf88b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1f8e3445-703f-68e5-332b-9d97ddab002f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 157–218.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma criticalRate_le_halfPlusEpsilonRate
    {epsilon : ℝ} (hepsilon : 0 < epsilon) {K : ℕ} (hK : 1 ≤ K) :
    conductorThreeCriticalRate K ≤
      (4 / epsilon ^ 2) *
        (((K + 2 : ℕ) : ℝ) ^ (-1 / 2 + epsilon)) := by
  let y : ℝ := ((K + 2 : ℕ) : ℝ)
  have hy3 : (3 : ℝ) ≤ y := by
    dsimp [y]
    exact_mod_cast (by omega : 3 ≤ K + 2)
  have hy1 : 1 ≤ y := by linarith
  have hy0 : 0 ≤ y := by linarith
  have hypos : 0 < y := lt_of_lt_of_le zero_lt_one hy1
  have hlog1 : 1 ≤ Real.log y := by
    rw [← Real.exp_le_exp, Real.exp_log hypos]
    exact le_trans Real.exp_one_lt_three.le hy3
  have hlog0 : 0 ≤ Real.log y := le_trans (by norm_num) hlog1
  have hsqrtLog : Real.sqrt (Real.log y) ≤ Real.log y := by
    have hsqrt0 := Real.sqrt_nonneg (Real.log y)
    have hsqrtSq := Real.sq_sqrt hlog0
    nlinarith
  have hlogPow := Real.log_le_rpow_div hy0 (show 0 < epsilon / 2 by positivity)
  have hquot0 : 0 ≤ y ^ (epsilon / 2) / (epsilon / 2) := by positivity
  have hlogSq : Real.log y ^ 2 ≤
      (y ^ (epsilon / 2) / (epsilon / 2)) ^ 2 :=
    (sq_le_sq₀ hlog0 hquot0).2 hlogPow
  have hlogSq' : Real.log y ^ 2 ≤ (4 / epsilon ^ 2) * y ^ epsilon := by
    calc
      Real.log y ^ 2 ≤ (y ^ (epsilon / 2) / (epsilon / 2)) ^ 2 := hlogSq
      _ = (4 / epsilon ^ 2) * y ^ epsilon := by
        rw [div_pow, ← Real.rpow_natCast, ← Real.rpow_mul hy0]
        norm_num only [Nat.cast_ofNat]
        have hexp : epsilon / 2 * (2 : ℝ) = epsilon := by ring
        rw [hexp]
        field_simp
        <;> ring
  have hsqrtYpos : 0 < Real.sqrt y := Real.sqrt_pos.2 hypos
  unfold conductorThreeCriticalRate
  change Real.log y * Real.sqrt (Real.log y) / Real.sqrt y ≤ _
  calc
    Real.log y * Real.sqrt (Real.log y) / Real.sqrt y ≤
        Real.log y ^ 2 / Real.sqrt y := by
      apply div_le_div_of_nonneg_right _ hsqrtYpos.le
      nlinarith
    _ ≤ ((4 / epsilon ^ 2) * y ^ epsilon) / Real.sqrt y := by
      exact div_le_div_of_nonneg_right hlogSq' hsqrtYpos.le
    _ = (4 / epsilon ^ 2) * y ^ (-1 / 2 + epsilon) := by
      rw [Real.sqrt_eq_rpow]
      have hinv : (y ^ ((1 : ℝ) / 2))⁻¹ = y ^ (-((1 : ℝ) / 2)) := by
        rw [← Real.rpow_neg hy0]
      rw [div_eq_mul_inv, hinv]
      calc
        (4 / epsilon ^ 2) * y ^ epsilon * y ^ (-((1 : ℝ) / 2)) =
            (4 / epsilon ^ 2) * (y ^ (-((1 : ℝ) / 2)) * y ^ epsilon) := by
              ring
        _ = (4 / epsilon ^ 2) * y ^ (-((1 : ℝ) / 2) + epsilon) := by
          rw [← Real.rpow_add hypos]
        _ = (4 / epsilon ^ 2) * y ^ (-1 / 2 + epsilon) := by
          congr 2 <;> ring

/-- The exact logarithmic matrix rate implies the weaker half-plus-epsilon
matrix rate. -/
@[surface_novel, surface_published]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConductorThreeHalfPlusEpsilon/Variant6dfe0b89af172ce1dc7e9e50cdf85cce190042531f69aae09169b8e2dc3bf88b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConductorThreeHalfPlusEpsilon/Variant6dfe0b89af172ce1dc7e9e50cdf85cce190042531f69aae09169b8e2dc3bf88b.lean#L157).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9b75b21433614f86c097c9b3683ea0cab0ec1160` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
