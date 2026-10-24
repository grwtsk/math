# source_signed_work_whole

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:497f41ee-116a-df2d-c43d-f26499e38532",
  "kind": "theorem",
  "lexical_name": "source_signed_work_whole",
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
  "slug": "source-signed-work-whole--2c3df992307db78d796e0d75",
  "source": {
    "blob": "d412f8794494be78d7155563dc84ade26664108e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 302,
    "line": 273,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/MonotoneSourceReadout/Varianta0d496e4739e797cd122c9ecb985c83b65dfa6778c2bcb4c5dc534161ea55735.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2c3df992307db78d796e0d753a69b68e585c2a6f1fdca8f78f30bc1e02dcec5a",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/MonotoneSourceReadout/Varianta0d496e4739e797cd122c9ecb985c83b65dfa6778c2bcb4c5dc534161ea55735.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:497f41ee-116a-df2d-c43d-f26499e38532`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 273–302.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem source_signed_work_whole (A : ℝ) (hA : 1 ≤ A) :
    (∫ t : ℝ, discrepancy t * deriv (criticalPrimeTest A) t) =
      ∫ t in -(2 * A)..2 * A, discrepancy t * deriv (criticalPrimeTest A) t := by
  have hp : 0 < A := by linarith
  have hs : Function.support (criticalPrimeTest A) ⊆ Icc (-(2 * A)) (2 * A) := by
    intro t ht
    by_contra h
    have hn : criticalPrimeTest A t ≠ 0 := ht
    have habs : 2 * A ≤ |t| := by
      simp only [mem_Icc, not_and_or, not_le] at h
      rcases h with hlo | hhi
      · rw [abs_of_nonpos (by linarith)]; linarith
      · exact hhi.le.trans (le_abs_self t)
    have hz := sourceCorrelation_eq_zero_of_two_mul_le_abs A t hp habs
    simp [criticalPrimeTest, hz] at hn
  have hts : tsupport (criticalPrimeTest A) ⊆ Icc (-(2 * A)) (2 * A) :=
    closure_minimal hs isClosed_Icc
  have he : (fun t => discrepancy t * deriv (criticalPrimeTest A) t) =
      (Icc (-(2 * A)) (2 * A)).indicator (fun t => discrepancy t * deriv (criticalPrimeTest A) t) := by
    funext t
    by_cases ht : t ∈ Icc (-(2 * A)) (2 * A)
    · rw [indicator_of_mem ht]
    · rw [indicator_of_notMem ht]
      have hz : deriv (criticalPrimeTest A) t = 0 :=
        deriv_of_notMem_tsupport (fun hh => ht (hts hh))
      rw [hz, mul_zero]
  nth_rw 1 [he]
  rw [integral_indicator measurableSet_Icc, integral_Icc_eq_integral_Ioc,
    ← intervalIntegral.integral_of_le (by linarith : -(2 * A) ≤ 2 * A)]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/MonotoneSourceReadout/Varianta0d496e4739e797cd122c9ecb985c83b65dfa6778c2bcb4c5dc534161ea55735.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/MonotoneSourceReadout/Varianta0d496e4739e797cd122c9ecb985c83b65dfa6778c2bcb4c5dc534161ea55735.lean#L273).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d412f8794494be78d7155563dc84ade26664108e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
