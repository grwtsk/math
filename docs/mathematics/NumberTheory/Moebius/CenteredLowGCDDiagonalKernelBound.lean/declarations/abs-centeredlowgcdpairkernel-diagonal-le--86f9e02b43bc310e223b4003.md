# abs_centeredLowGCDPairKernel_diagonal_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8e92f943-5ad5-e74d-5cc0-00c7113d30c7",
  "kind": "theorem",
  "lexical_name": "abs_centeredLowGCDPairKernel_diagonal_le",
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
  "slug": "abs-centeredlowgcdpairkernel-diagonal-le--86f9e02b43bc310e223b4003",
  "source": {
    "blob": "025afceebb333db5255c30755790652b3b18fa99",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 215,
    "line": 162,
    "path": "GRWTSK/NumberTheory/Moebius/CenteredLowGCDDiagonalKernelBound.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:86f9e02b43bc310e223b4003d119ac41852eceb376a163304c6c4ff8780273a4",
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

Occurrence: `result:8e92f943-5ad5-e74d-5cc0-00c7113d30c7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 162–215.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem abs_centeredLowGCDPairKernel_diagonal_le
    {X Y n : ℕ}
    (hn : n ∈ octaveIndexSet X) :
    |centeredLowGCDPairKernel X Y n n| ≤
      ((n.divisors.card : ℝ) ^ 2) *
          (Real.log ((4 * X : ℕ) : ℝ) ^ 2) +
        2 * Real.log ((4 * X : ℕ) : ℝ) + 1 := by
  have hgg := abs_genuineLowGCDPairKernel_diagonal_le
    (Y := Y) hn
  have hatom :
      |genuineMobiusLogAtom X n| ≤
        Real.log ((4 * X : ℕ) : ℝ) := by
    rw [genuineMobiusLogAtom_eq_vonMangoldt hn,
      abs_of_nonneg (ArithmeticFunction.vonMangoldt_nonneg (n := n))]
    exact (ArithmeticFunction.vonMangoldt_le_log (n := n)).trans <|
      Real.log_le_log
        (by exact_mod_cast (octave_mem_bounds hn).1)
        (by exact_mod_cast (octave_mem_bounds hn).2)
  unfold centeredLowGCDPairKernel
  calc
    |genuineLowGCDPairKernel X Y n n -
        genuineMobiusLogAtom X n -
        genuineMobiusLogAtom X n + 1| ≤
      |genuineLowGCDPairKernel X Y n n| +
        |genuineMobiusLogAtom X n| +
        |genuineMobiusLogAtom X n| + 1 := by
      calc
        |_ + 1| ≤
            |genuineLowGCDPairKernel X Y n n -
              genuineMobiusLogAtom X n -
              genuineMobiusLogAtom X n| + 1 := by
          simpa using abs_add
            (genuineLowGCDPairKernel X Y n n -
              genuineMobiusLogAtom X n -
              genuineMobiusLogAtom X n) 1
        _ ≤
            (|genuineLowGCDPairKernel X Y n n -
              genuineMobiusLogAtom X n| +
              |genuineMobiusLogAtom X n|) + 1 := by
          gcongr
          exact abs_sub _ _
        _ ≤
            (|genuineLowGCDPairKernel X Y n n| +
              |genuineMobiusLogAtom X n| +
              |genuineMobiusLogAtom X n|) + 1 := by
          gcongr
          exact abs_sub _ _
    _ ≤ ((n.divisors.card : ℝ) ^ 2) *
          (Real.log ((4 * X : ℕ) : ℝ) ^ 2) +
        2 * Real.log ((4 * X : ℕ) : ℝ) + 1 := by
      linarith


end GRWTSK.NumberTheory.Moebius.CenteredLowGCD
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CenteredLowGCDDiagonalKernelBound.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CenteredLowGCDDiagonalKernelBound.lean#L162).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `025afceebb333db5255c30755790652b3b18fa99` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
