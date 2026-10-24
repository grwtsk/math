# closed_atom_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:022a83c5-5d37-725f-2493-f3a3d3cfd8cd",
  "kind": "theorem",
  "lexical_name": "closed_atom_abs_le",
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
  "slug": "closed-atom-abs-le--2402d823b1a17fec2f7d575e",
  "source": {
    "blob": "dbec6350137cf504dd247b54880c51b852d4c2f6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 57,
    "line": 31,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualAbsolutePrimeMomentUpper/Variant5bfa880af2fcefacf16b527af0c69949130f1f4c70d0d06e6c900154f39635e7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2402d823b1a17fec2f7d575e8b1e3b8a020b744208d57d2df60dc32da826669e",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualAbsolutePrimeMomentUpper/Variant5bfa880af2fcefacf16b527af0c69949130f1f4c70d0d06e6c900154f39635e7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:022a83c5-5d37-725f-2493-f3a3d3cfd8cd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 31–57.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem closed_atom_abs_le {A : ℝ} (hA : 1 ≤ A) {n : ℕ}
    (hn : n ∈ Finset.Icc 1 ⌊Real.exp (2 * A)⌋₊) :
    |vonMangoldt n * closedPrimeWeight A n| ≤
      (512 / A ^ 9) * (vonMangoldt n / Real.sqrt (n : ℝ) *
        (2304 * (2 * A - Real.log n) ^ 5 +
          96 * (2 * A - Real.log n) ^ 7 + (2 * A - Real.log n) ^ 9)) := by
  have hn1 := (Finset.mem_Icc.mp hn).1
  have hn0 : 0 < n := by omega
  have hnR : 0 < (n : ℝ) := by exact_mod_cast hn0
  have hl0 : 0 ≤ Real.log n := Real.log_nonneg (by exact_mod_cast hn1)
  have hl : Real.log n ≤ 2 * A := (Real.log_le_iff_le_exp hnR).mpr
    ((Nat.le_floor_iff (Real.exp_pos _).le).mp (Finset.mem_Icc.mp hn).2)
  have hz0 : 0 ≤ 2 * A - Real.log n := by linarith
  have hzA : 2 * A - Real.log n ≤ 2 * A := by linarith
  have hc := sourceCorrelation_upper_edge_abs_le A (2 * A - Real.log n) hA hz0 hzA
  have ht : 2 * A - (2 * A - Real.log n) = Real.log n := by ring
  rw [ht] at hc
  have hs : 0 < Real.sqrt (n : ℝ) := Real.sqrt_pos.2 hnR
  rw [closedPrimeWeight, exponentialTest_log _ _ hn0, abs_mul,
    abs_of_nonneg (vonMangoldt_nonneg n), abs_div, abs_of_pos hs]
  calc
    _ ≤ vonMangoldt n * (edgePolynomial (2 * A - Real.log n) / A ^ 9 /
        Real.sqrt (n : ℝ)) :=
      mul_le_mul_of_nonneg_left (div_le_div_of_nonneg_right hc hs.le)
        (vonMangoldt_nonneg n)
    _ = _ := by unfold edgePolynomial; ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualAbsolutePrimeMomentUpper/Variant5bfa880af2fcefacf16b527af0c69949130f1f4c70d0d06e6c900154f39635e7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualAbsolutePrimeMomentUpper/Variant5bfa880af2fcefacf16b527af0c69949130f1f4c70d0d06e6c900154f39635e7.lean#L31).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dbec6350137cf504dd247b54880c51b852d4c2f6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
