# centered_beta_short_examples

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:787064ef-7928-3a1d-b921-f57c2fa7a259",
  "kind": "theorem",
  "lexical_name": "centered_beta_short_examples",
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
  "slug": "centered-beta-short-examples--21e6b99ff9b39161da235f1f",
  "source": {
    "blob": "5ba1221bfde7cfad3ea578648709acc115344d78",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 50,
    "line": 38,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceSignedPrefixObstruction/Variantd6f98c130e4951f287d7a683a7805821a967c2b153bdef54acaa6314a354cfed.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:21e6b99ff9b39161da235f1f5e32906370ea3567cfa56f6284dbbb559c919c68",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceSignedPrefixObstruction/Variantd6f98c130e4951f287d7a683a7805821a967c2b153bdef54acaa6314a354cfed.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:787064ef-7928-3a1d-b921-f57c2fa7a259`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 38–50.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem centered_beta_short_examples :
    centeredBeta 3 4 = (1 / 6 : ℝ) ∧
    centeredBeta 3 5 = (-5 / 6 : ℝ) ∧
    centeredBeta 3 6 = (7 / 6 : ℝ) := by
  have h2 : moebius 2 = -1 := moebius_apply_prime Nat.prime_two
  have h3 : moebius 3 = -1 := moebius_apply_prime (by norm_num)
  have hb (n : ℕ) (hn : 0 < n) : beta 3 n =
      (if n = 1 then 1 else 0) -
        ∑ d ∈ Finset.Icc 1 3, if d ∣ n then (moebius d : ℝ) else 0 := by
    rw [beta_eq_delta_sub_short, short_divisor_sum_eq_indicator 3 n hn]
  norm_num [centeredBeta, actual_alpha, hb 4 (by norm_num), hb 5 (by norm_num),
    hb 6 (by norm_num), Finset.sum_Icc_succ_top, h2, h3]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceSignedPrefixObstruction/Variantd6f98c130e4951f287d7a683a7805821a967c2b153bdef54acaa6314a354cfed.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceSignedPrefixObstruction/Variantd6f98c130e4951f287d7a683a7805821a967c2b153bdef54acaa6314a354cfed.lean#L38).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5ba1221bfde7cfad3ea578648709acc115344d78` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
