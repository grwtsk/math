# whole_of_centered

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:68c6dd49-9181-b2f8-ab8c-8f77b2953d83",
  "kind": "theorem",
  "lexical_name": "whole_of_centered",
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
  "slug": "whole-of-centered--f7845add4d7dadd83c1acc29",
  "source": {
    "blob": "0db97ae3339973128cd7b44392e5a854ae9d1f95",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 135,
    "line": 93,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/BranchWeightedGrowth/Variant74b3f9d1f2c5d02ef7502cebb479aa44e4130dbbc00c0c27fdfdfa4c841af1ea.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f7845add4d7dadd83c1acc296036481325cfc2f0a35a950cdf1e2a30f866227c",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/BranchWeightedGrowth/Variant74b3f9d1f2c5d02ef7502cebb479aa44e4130dbbc00c0c27fdfdfa4c841af1ea.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:68c6dd49-9181-b2f8-ab8c-8f77b2953d83`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 93–135.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem whole_of_centered : CenteredPickupPoly → WholePickupPoly := by
  rintro ⟨C, p, R, hC, hp, hR, hP⟩
  let q : ℝ := max p 1
  let D : ℝ := max (C + 1) (2 * (Real.exp R - 1))
  have hD : 0 ≤ D := (by linarith : 0 ≤ C + 1).trans (le_max_left _ _)
  have hq : 0 ≤ q := hp.trans (le_max_left _ _)
  refine ⟨D, q, hD, hq, ?_⟩
  intro T hT
  have hbase : 1 ≤ 1 + T := by linarith
  have hpowone : 1 ≤ (1 + T) ^ q := Real.one_le_rpow hbase hq
  by_cases hlarge : 2 * R ≤ T
  · have hA : 1 ≤ T / 2 := by linarith
    have ht : T ∈ readingWindow (T / 2) := by
      constructor
      · have h := reset_le_endpoint hA
        linarith
      · linarith
    have hcenter := hP (T / 2) (by linarith) T ht
    have hreset := reset_abs_le hA
    have hp1 : (T / 2) ^ p ≤ (1 + T) ^ p :=
      Real.rpow_le_rpow (by linarith) (by linarith) hp
    have hp2 : (1 + T) ^ p ≤ (1 + T) ^ q :=
      Real.rpow_le_rpow_of_exponent_le hbase (le_max_left _ _)
    have hTpow : T ≤ (1 + T) ^ q := by
      have h := Real.rpow_le_rpow_of_exponent_le hbase (le_max_right p 1)
      rw [Real.rpow_one] at h
      exact (by linarith : T ≤ 1 + T).trans h
    have hcp := mul_le_mul_of_nonneg_left (hp1.trans hp2) hC
    have had : |pickup T| ≤ |centeredPickup (T / 2) T| + |pickup (2 * Real.log (T / 2))| := by
      simpa [centeredPickup] using abs_add_le (pickup T - pickup (2 * Real.log (T / 2)))
        (pickup (2 * Real.log (T / 2)))
    have hpre : |pickup T| ≤ (C + 1) * (1 + T) ^ q := by nlinarith
    exact hpre.trans (mul_le_mul_of_nonneg_right (le_max_left _ _) (by positivity))
  · have hsmall : T / 2 ≤ R := by linarith
    have he := Real.exp_le_exp.mpr hsmall
    have hconst : 0 ≤ 2 * (Real.exp R - 1) := by
      have h := Real.one_le_exp_iff.mpr (by linarith : 0 ≤ R)
      linarith
    have hbounded : |pickup T| ≤ 2 * (Real.exp R - 1) := by
      linarith [pickup_abs_le hT]
    exact hbounded.trans ((le_mul_of_one_le_right hconst hpowone).trans
      (mul_le_mul_of_nonneg_right (le_max_right _ _) (by positivity)))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/BranchWeightedGrowth/Variant74b3f9d1f2c5d02ef7502cebb479aa44e4130dbbc00c0c27fdfdfa4c841af1ea.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/BranchWeightedGrowth/Variant74b3f9d1f2c5d02ef7502cebb479aa44e4130dbbc00c0c27fdfdfa4c841af1ea.lean#L93).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0db97ae3339973128cd7b44392e5a854ae9d1f95` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
