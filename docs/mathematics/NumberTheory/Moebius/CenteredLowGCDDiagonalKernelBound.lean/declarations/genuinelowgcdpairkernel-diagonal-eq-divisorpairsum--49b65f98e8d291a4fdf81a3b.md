# genuineLowGCDPairKernel_diagonal_eq_divisorPairSum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1dedec6c-3467-6abd-a3a1-e4c63e7085d3",
  "kind": "theorem",
  "lexical_name": "genuineLowGCDPairKernel_diagonal_eq_divisorPairSum",
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
  "slug": "genuinelowgcdpairkernel-diagonal-eq-divisorpairsum--49b65f98e8d291a4fdf81a3b",
  "source": {
    "blob": "025afceebb333db5255c30755790652b3b18fa99",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 75,
    "line": 27,
    "path": "GRWTSK/NumberTheory/Moebius/CenteredLowGCDDiagonalKernelBound.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:49b65f98e8d291a4fdf81a3b6764a5a8af69f3864ef0dfcbc7996ee47d56caa8",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/CenteredLowGCDDiagonalKernelBound.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1dedec6c-3467-6abd-a3a1-e4c63e7085d3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 27–75.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem genuineLowGCDPairKernel_diagonal_eq_divisorPairSum
    {X Y n : ℕ}
    (hn : n ∈ octaveIndexSet X) :
    genuineLowGCDPairKernel X Y n n =
      ∑ d ∈ n.divisors,
        ∑ e ∈ n.divisors,
          if Nat.gcd d e ≤ Y then
            mobiusLogTerm n d * mobiusLogTerm n e
          else 0 := by
  unfold genuineLowGCDPairKernel
  have hfilter :
      (modulusIndexSet X).filter (fun d => d ∣ n) =
        n.divisors := by
    ext d
    simp only [modulusIndexSet, Finset.mem_filter,
      Finset.mem_Icc, Nat.mem_divisors]
    constructor
    · rintro ⟨⟨hd0, hdB⟩, hdn⟩
      exact ⟨hdn, Nat.ne_of_gt (octave_mem_bounds hn).1⟩
    · rintro ⟨hdn, hn0⟩
      have hdpos : 0 < d :=
        Nat.pos_of_dvd_of_pos hdn (octave_mem_bounds hn).1
      have hdle : d ≤ n :=
        Nat.le_of_dvd (octave_mem_bounds hn).1 hdn
      exact ⟨⟨hdpos, hdle.trans (octave_mem_bounds hn).2⟩, hdn⟩
  calc
    (∑ d ∈ modulusIndexSet X,
      ∑ e ∈ modulusIndexSet X,
        if d ∣ n ∧ e ∣ n ∧ Nat.gcd d e ≤ Y then
          mobiusLogTerm n d * mobiusLogTerm n e
        else 0) =
      ∑ d ∈ (modulusIndexSet X).filter (fun d => d ∣ n),
        ∑ e ∈ (modulusIndexSet X).filter (fun e => e ∣ n),
          if Nat.gcd d e ≤ Y then
            mobiusLogTerm n d * mobiusLogTerm n e
          else 0 := by
      rw [Finset.sum_filter]
      apply Finset.sum_congr rfl
      intro d hd
      by_cases hdn : d ∣ n
      · simp only [hdn, if_true]
        rw [Finset.sum_filter]
        apply Finset.sum_congr rfl
        intro e he
        by_cases hen : e ∣ n <;> simp [hen]
      · simp [hdn]
    _ = _ := by rw [hfilter]

/-- One genuine Möbius-log divisor term is bounded by the octave logarithm. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CenteredLowGCDDiagonalKernelBound.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CenteredLowGCDDiagonalKernelBound.lean#L27).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `025afceebb333db5255c30755790652b3b18fa99` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
