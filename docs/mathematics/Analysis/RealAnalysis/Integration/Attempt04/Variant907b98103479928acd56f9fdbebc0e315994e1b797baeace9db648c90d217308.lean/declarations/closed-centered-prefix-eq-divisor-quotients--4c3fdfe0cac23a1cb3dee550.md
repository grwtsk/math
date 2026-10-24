# closed_centered_prefix_eq_divisor_quotients

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:eeddb5bc-4d6d-c19d-b503-aa208dad88cd",
  "kind": "theorem",
  "lexical_name": "closed_centered_prefix_eq_divisor_quotients",
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
  "slug": "closed-centered-prefix-eq-divisor-quotients--4c3fdfe0cac23a1cb3dee550",
  "source": {
    "blob": "3ea63a26a1c3f4953404950d73b1e9c4d99170b3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 202,
    "line": 186,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Attempt04/Variant907b98103479928acd56f9fdbebc0e315994e1b797baeace9db648c90d217308.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4c3fdfe0cac23a1cb3dee550f192bd3397679a44e9813ecf1bc0557dd3d8ce37",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Attempt04/Variant907b98103479928acd56f9fdbebc0e315994e1b797baeace9db648c90d217308.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eeddb5bc-4d6d-c19d-b503-aa208dad88cd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 186–202.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem closed_centered_prefix_eq_divisor_quotients (U M : ℕ)
    (hU : 1 ≤ U) (hUM : U ≤ M) :
    (∑ n ∈ Finset.Ioc U M, centeredBeta U n) =
      alpha U * ((M : ℝ) - (U : ℝ)) + 1 -
        ∑ d ∈ Finset.Icc 1 U, (moebius d : ℝ) * ((M / d : ℕ) : ℝ) := by
  have hc : (∑ n ∈ Finset.Ioc U M, (1 : ℝ)) = (M : ℝ) - (U : ℝ) := by
    simpa using multiples_interval_sum U M 1 hUM
  have ha : (∑ n ∈ Finset.Ioc U M, alpha U) = alpha U * ((M : ℝ) - (U : ℝ)) := by
    rw [← hc, Finset.mul_sum]
    simp
  simp only [centeredBeta, Finset.sum_add_distrib]
  rw [ha, beta_interval_eq_quotients U U M hU le_rfl hUM]
  simp_rw [mul_sub]
  rw [Finset.sum_sub_distrib, actual_moebius_quotient_sum_eq_one U hU]
  ring

/-- The new closed integer coefficient cancels only against its matching terminal prefix. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Attempt04/Variant907b98103479928acd56f9fdbebc0e315994e1b797baeace9db648c90d217308.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Attempt04/Variant907b98103479928acd56f9fdbebc0e315994e1b797baeace9db648c90d217308.lean#L186).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3ea63a26a1c3f4953404950d73b1e9c4d99170b3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
