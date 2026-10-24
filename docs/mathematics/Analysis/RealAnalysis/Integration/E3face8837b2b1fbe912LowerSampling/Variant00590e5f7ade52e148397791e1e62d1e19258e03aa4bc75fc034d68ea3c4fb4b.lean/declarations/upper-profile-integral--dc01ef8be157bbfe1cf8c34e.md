# upper_profile_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7c201a21-45b5-ce38-2b43-76615cf65857",
  "kind": "theorem",
  "lexical_name": "upper_profile_integral",
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
  "slug": "upper-profile-integral--dc01ef8be157bbfe1cf8c34e",
  "source": {
    "blob": "3598108b269ce16fa6776938fb9a38b2cf9e876d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 72,
    "line": 50,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/E3face8837b2b1fbe912LowerSampling/Variant00590e5f7ade52e148397791e1e62d1e19258e03aa4bc75fc034d68ea3c4fb4b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dc01ef8be157bbfe1cf8c34e3cb389c5279b3a8678fc2243734e5a4f232c6196",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/E3face8837b2b1fbe912LowerSampling/Variant00590e5f7ade52e148397791e1e62d1e19258e03aa4bc75fc034d68ea3c4fb4b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7c201a21-45b5-ce38-2b43-76615cf65857`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 50–72.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem upper_profile_integral {A : ℝ} (hA : 1 ≤ A) :
    (∫ u in Ioi (1 : ℝ), plainProfile A 1 u) = criticalContinuousMoment A := by
  have he := integral_comp_exp_Ioi (plainProfile A 1) 0
  simp only [Real.exp_zero, smul_eq_mul] at he
  have hfun : (fun t : ℝ => Real.exp t * plainProfile A 1 (Real.exp t)) =
      criticalPrimeTest A := by
    funext t
    rw [plainProfile_eq_of_pos A 1 (Real.exp_pos t)]
    simp only [sourcePlainSamplingTerm, Real.log_one, Real.log_exp, zero_add,
      criticalPrimeTest, ← mul_assoc, ← Real.exp_add]
    congr 2
    ring
  rw [hfun] at he
  rw [← he, criticalContinuousMoment, intervalIntegral.integral_of_le (by linarith)]
  apply setIntegral_eq_of_subset_of_forall_sdiff_eq_zero measurableSet_Ioi
    (fun _ hx => hx.1)
  intro t ht
  have hbound : 2*A < t := by
    by_contra hn
    exact ht.2 ⟨ht.1, le_of_not_gt hn⟩
  rw [criticalPrimeTest, sourceCorrelation_eq_zero_of_two_mul_le_abs A t
    (by linarith) (hbound.le.trans (le_abs_self t)), mul_zero]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/E3face8837b2b1fbe912LowerSampling/Variant00590e5f7ade52e148397791e1e62d1e19258e03aa4bc75fc034d68ea3c4fb4b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/E3face8837b2b1fbe912LowerSampling/Variant00590e5f7ade52e148397791e1e62d1e19258e03aa4bc75fc034d68ea3c4fb4b.lean#L50).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3598108b269ce16fa6776938fb9a38b2cf9e876d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
