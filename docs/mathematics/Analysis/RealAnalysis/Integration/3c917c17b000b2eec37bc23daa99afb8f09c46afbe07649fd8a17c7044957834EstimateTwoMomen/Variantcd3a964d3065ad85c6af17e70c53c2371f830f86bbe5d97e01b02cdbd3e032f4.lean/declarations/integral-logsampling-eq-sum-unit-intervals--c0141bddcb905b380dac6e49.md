# integral_logSampling_eq_sum_unit_intervals

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6a06c801-c9b4-035d-fe2a-259e72c59d3a",
  "kind": "theorem",
  "lexical_name": "integral_logSampling_eq_sum_unit_intervals",
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
  "slug": "integral-logsampling-eq-sum-unit-intervals--c0141bddcb905b380dac6e49",
  "source": {
    "blob": "cdc76a3aaaab4767f2bc20bf277507d0c986bdce",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 203,
    "line": 165,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/3c917c17b000b2eec37bc23daa99afb8f09c46afbe07649fd8a17c7044957834EstimateTwoMomen/Variantcd3a964d3065ad85c6af17e70c53c2371f830f86bbe5d97e01b02cdbd3e032f4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c0141bddcb905b380dac6e496327e280acd5bd3fb3017ae495903ff579377530",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/3c917c17b000b2eec37bc23daa99afb8f09c46afbe07649fd8a17c7044957834EstimateTwoMomen/Variantcd3a964d3065ad85c6af17e70c53c2371f830f86bbe5d97e01b02cdbd3e032f4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6a06c801-c9b4-035d-fe2a-259e72c59d3a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 165–203.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integral_logSampling_eq_sum_unit_intervals
    {F : ℝ → ℝ} (hF : ContDiff ℝ 1 F)
    {x : ℝ} (hx : 0 < x)
    (N : ℕ) :
    (∫ u in (1 : ℝ)..(N + 1 : ℝ),
      logSamplingTerm F x u) =
      ∑ k ∈ Finset.Icc 1 N,
        ∫ u in (k : ℝ)..(k + 1 : ℝ),
          logSamplingTerm F x u := by
  induction N with
  | zero =>
      norm_num
  | succ N ih =>
      by_cases hN : N = 0
      · subst N
        norm_num
      · have h1N : 1 ≤ N :=
          Nat.one_le_iff_ne_zero.mpr hN
        have hleft :=
          logSamplingTerm_intervalIntegrable
            hF hx zero_lt_one
            (by norm_num : (1 : ℝ) ≤ N + 1)
        have hright :=
          logSamplingTerm_intervalIntegrable
            hF hx
            (by
              have : (0 : ℝ) < N + 1 := by positivity
              exact this)
            (by norm_num :
              (N + 1 : ℝ) ≤ N + 2)
        have hsplit :=
          intervalIntegral.integral_add_adjacent_intervals
            hleft hright
        rw [ih] at hsplit
        rw [Finset.sum_Icc_succ_top
          (by omega : 1 ≤ N + 1)]
        have hstep : (N : ℝ) + 1 + 1 = N + 2 := by ring
        simpa only [Nat.cast_add, Nat.cast_one, hstep] using hsplit.symm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/3c917c17b000b2eec37bc23daa99afb8f09c46afbe07649fd8a17c7044957834EstimateTwoMomen/Variantcd3a964d3065ad85c6af17e70c53c2371f830f86bbe5d97e01b02cdbd3e032f4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/3c917c17b000b2eec37bc23daa99afb8f09c46afbe07649fd8a17c7044957834EstimateTwoMomen/Variantcd3a964d3065ad85c6af17e70c53c2371f830f86bbe5d97e01b02cdbd3e032f4.lean#L165).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cdc76a3aaaab4767f2bc20bf277507d0c986bdce` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
