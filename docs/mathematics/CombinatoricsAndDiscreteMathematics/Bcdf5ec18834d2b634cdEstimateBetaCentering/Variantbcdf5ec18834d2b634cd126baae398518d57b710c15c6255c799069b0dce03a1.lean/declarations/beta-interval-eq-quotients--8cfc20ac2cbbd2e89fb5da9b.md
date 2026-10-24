# beta_interval_eq_quotients

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bf7207724e4707c1f9061a4d61c528bcd058a580",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 68,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bc/bcdf5ec18834d2b634cd126baae398518d57b710c15c6255c799069b0dce03a1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:49e08237-270f-62df-daa2-3cdae88fdd6f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c2ad27ea-9c38-034f-6428-f5e21aa4253f",
  "kind": "theorem",
  "lexical_name": "beta_interval_eq_quotients",
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
  "slug": "beta-interval-eq-quotients--8cfc20ac2cbbd2e89fb5da9b",
  "source": {
    "blob": "bf7207724e4707c1f9061a4d61c528bcd058a580",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 96,
    "line": 68,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Bcdf5ec18834d2b634cdEstimateBetaCentering/Variantbcdf5ec18834d2b634cd126baae398518d57b710c15c6255c799069b0dce03a1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8cfc20ac2cbbd2e89fb5da9b96a6f2bf3d5c04d657ec99c98e1d9f21792de43c",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Bcdf5ec18834d2b634cdEstimateBetaCentering/Variantbcdf5ec18834d2b634cd126baae398518d57b710c15c6255c799069b0dce03a1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c2ad27ea-9c38-034f-6428-f5e21aa4253f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 68–96.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem beta_interval_eq_quotients (U L H : ℕ) (hU : 1 ≤ U) (hUL : U ≤ L)
    (hLH : L ≤ H) :
    (∑ n ∈ Finset.Ioc L H, beta U n) =
      -∑ d ∈ Finset.Icc 1 U, (moebius d : ℝ) *
        (((H/d : ℕ) : ℝ)-((L/d : ℕ) : ℝ)) := by
  classical
  have he (n : ℕ) (hn : n ∈ Finset.Ioc L H) :
      beta U n = -(∑ d ∈ Finset.Icc 1 U, if d ∣ n then (moebius d : ℝ) else 0) := by
    have hn1 : 1 < n := by have := (Finset.mem_Ioc.mp hn).1; omega
    rw [beta_eq_delta_sub_short, if_neg (by omega), zero_sub,
      short_divisor_sum_eq_indicator U n (by omega)]
  calc
    _ = -∑ n ∈ Finset.Ioc L H,
        ∑ d ∈ Finset.Icc 1 U, if d ∣ n then (moebius d : ℝ) else 0 := by
      rw [← Finset.sum_neg_distrib]
      exact Finset.sum_congr rfl he
    _ = -∑ d ∈ Finset.Icc 1 U,
        ∑ n ∈ Finset.Ioc L H, if d ∣ n then (moebius d : ℝ) else 0 := by
      rw [Finset.sum_comm]
    _ = _ := by
      congr 1
      apply Finset.sum_congr rfl
      intro d hd
      rw [← multiples_interval_sum L H d hLH, Finset.mul_sum]
      apply Finset.sum_congr rfl
      intro n hn
      split_ifs <;> simp

/-- Centered interval identity with the finite mean and discrepancy both retained. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Bcdf5ec18834d2b634cdEstimateBetaCentering/Variantbcdf5ec18834d2b634cd126baae398518d57b710c15c6255c799069b0dce03a1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Bcdf5ec18834d2b634cdEstimateBetaCentering/Variantbcdf5ec18834d2b634cd126baae398518d57b710c15c6255c799069b0dce03a1.lean#L68).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bf7207724e4707c1f9061a4d61c528bcd058a580` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
