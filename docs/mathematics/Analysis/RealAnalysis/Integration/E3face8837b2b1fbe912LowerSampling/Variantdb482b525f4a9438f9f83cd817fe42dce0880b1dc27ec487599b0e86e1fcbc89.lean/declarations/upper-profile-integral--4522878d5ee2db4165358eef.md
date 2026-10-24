# upper_profile_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:629afab1-2a7a-4c06-4529-c1e056f3ab55",
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
  "slug": "upper-profile-integral--4522878d5ee2db4165358eef",
  "source": {
    "blob": "90fb9724b7ff572ea8bd111a49f1850261b6c05e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 80,
    "line": 58,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/E3face8837b2b1fbe912LowerSampling/Variantdb482b525f4a9438f9f83cd817fe42dce0880b1dc27ec487599b0e86e1fcbc89.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4522878d5ee2db4165358eefb2e45fe809f9741cde718457acc97ef74cf769e9",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/E3face8837b2b1fbe912LowerSampling/Variantdb482b525f4a9438f9f83cd817fe42dce0880b1dc27ec487599b0e86e1fcbc89.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:629afab1-2a7a-4c06-4529-c1e056f3ab55`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58–80.

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

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/E3face8837b2b1fbe912LowerSampling/Variantdb482b525f4a9438f9f83cd817fe42dce0880b1dc27ec487599b0e86e1fcbc89.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/E3face8837b2b1fbe912LowerSampling/Variantdb482b525f4a9438f9f83cd817fe42dce0880b1dc27ec487599b0e86e1fcbc89.lean#L58).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `90fb9724b7ff572ea8bd111a49f1850261b6c05e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
