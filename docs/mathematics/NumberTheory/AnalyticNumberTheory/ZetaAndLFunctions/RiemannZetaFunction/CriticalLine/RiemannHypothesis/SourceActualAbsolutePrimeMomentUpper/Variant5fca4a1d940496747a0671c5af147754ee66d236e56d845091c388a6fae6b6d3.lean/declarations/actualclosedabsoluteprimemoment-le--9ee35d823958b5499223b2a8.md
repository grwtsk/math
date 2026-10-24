# actualClosedAbsolutePrimeMoment_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:549f70d4-d297-9c7a-dbbf-ca5ae1ba44b3",
  "kind": "theorem",
  "lexical_name": "actualClosedAbsolutePrimeMoment_le",
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
  "slug": "actualclosedabsoluteprimemoment-le--9ee35d823958b5499223b2a8",
  "source": {
    "blob": "c52e163417e37caafd5b2f2a13cd0cc98db55c8c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 117,
    "line": 83,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualAbsolutePrimeMomentUpper/Variant5fca4a1d940496747a0671c5af147754ee66d236e56d845091c388a6fae6b6d3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9ee35d823958b5499223b2a8c27ec26c678c5cf40b45e368b6d9f6fdbfd11113",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualAbsolutePrimeMomentUpper/Variant5fca4a1d940496747a0671c5af147754ee66d236e56d845091c388a6fae6b6d3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:549f70d4-d297-9c7a-dbbf-ca5ae1ba44b3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 83–117.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualClosedAbsolutePrimeMoment_le {A : ℝ} (hA : 1 ≤ A) :
    actualClosedAbsolutePrimeMoment A ≤
      actualAbsolutePrimeMomentUpperConstant * Real.exp A / A ^ 9 := by
  have hA0 : 0 < A := by linarith
  have hL : 0 ≤ 2 * A := by linarith
  have h5 := actualHalfMangoldtEdgeMoment_le 4 hL
  have h7 := actualHalfMangoldtEdgeMoment_le 6 hL
  have h9 := actualHalfMangoldtEdgeMoment_le 8 hL
  norm_num at h5 h7 h9
  have hsum : 2304 * actualHalfMangoldtEdgeMoment 5 (2 * A) +
      96 * actualHalfMangoldtEdgeMoment 7 (2 * A) +
        actualHalfMangoldtEdgeMoment 9 (2 * A) ≤
      513146880 * (Real.log 4 + 4) * Real.exp A := by
    nlinarith
  calc
    _ ≤ ∑ n ∈ Finset.Icc 1 ⌊Real.exp (2 * A)⌋₊,
        |vonMangoldt n * closedPrimeWeight A n| := by
      unfold actualClosedAbsolutePrimeMoment
      exact Finset.sum_le_sum_of_subset_of_nonneg
        (Finset.Icc_subset_Icc (by norm_num) le_rfl) (fun _ _ _ => abs_nonneg _)
    _ ≤ ∑ n ∈ Finset.Icc 1 ⌊Real.exp (2 * A)⌋₊,
        (512 / A ^ 9) * (vonMangoldt n / Real.sqrt (n : ℝ) *
          (2304 * (2 * A - Real.log n) ^ 5 +
            96 * (2 * A - Real.log n) ^ 7 + (2 * A - Real.log n) ^ 9)) :=
      Finset.sum_le_sum (fun _ hn => closed_atom_abs_le hA hn)
    _ = (512 / A ^ 9) *
        (2304 * actualHalfMangoldtEdgeMoment 5 (2 * A) +
          96 * actualHalfMangoldtEdgeMoment 7 (2 * A) +
            actualHalfMangoldtEdgeMoment 9 (2 * A)) := by
      rw [← Finset.mul_sum, full_polynomial_sum_eq]
    _ ≤ (512 / A ^ 9) * (513146880 * (Real.log 4 + 4) * Real.exp A) :=
      mul_le_mul_of_nonneg_left hsum (by positivity)
    _ = _ := by unfold actualAbsolutePrimeMomentUpperConstant; ring

/-- A positive actual mass has the complementary reciprocal lower scale. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualAbsolutePrimeMomentUpper/Variant5fca4a1d940496747a0671c5af147754ee66d236e56d845091c388a6fae6b6d3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualAbsolutePrimeMomentUpper/Variant5fca4a1d940496747a0671c5af147754ee66d236e56d845091c388a6fae6b6d3.lean#L83).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c52e163417e37caafd5b2f2a13cd0cc98db55c8c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
