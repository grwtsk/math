# canonicalFourFamilyGreenMatrixApply_eq_divisor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:790bae0c-a658-2b66-8643-6caf0e443b92",
  "kind": "theorem",
  "lexical_name": "canonicalFourFamilyGreenMatrixApply_eq_divisor",
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
  "slug": "canonicalfourfamilygreenmatrixapply-eq-divisor--85e14c77ae0197d7222a04c3",
  "source": {
    "blob": "f71dbe475e99bce6b8ea8c633f320b118d69b6d5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 258,
    "line": 195,
    "path": "GRWTSK/NumberTheory/Moebius/CanonicalFourFamilyThinGreenMatrix.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:85e14c77ae0197d7222a04c32179771c89ec9e030d4ffb4036cb6a778931a138",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/CanonicalFourFamilyThinGreenMatrix.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:790bae0c-a658-2b66-8643-6caf0e443b92`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 195–258.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem canonicalFourFamilyGreenMatrixApply_eq_divisor
    (X n : ℕ) (v : CanonicalFourFamily → ℕ → ℝ) :
    canonicalFourFamilyGreenMatrixApply X n v =
      ∑ p ∈ n.divisorsAntidiagonal,
        if p.1 ∈ anchoredDyadicSourceIndices X ∧
            0 < (anchoredMobiusPair p.1).h then
          (anchoredPairSign p.1 * (ArithmeticFunction.log p.2 : ℝ)) *
            v (canonicalFourFamilyOfAnchor p.1)
              (anchoredMobiusPair p.1).center
        else 0 := by
  classical
  unfold canonicalFourFamilyGreenMatrixApply
    canonicalFourFamilyGreenMatrixEntry
  simp_rw [Finset.sum_mul]
  calc
    (∑ F : CanonicalFourFamily,
      ∑ c ∈ Finset.range (2 * X + 1),
        ∑ p ∈ n.divisorsAntidiagonal,
          (if p.1 ∈ anchoredDyadicSourceIndices X ∧
              0 < (anchoredMobiusPair p.1).h ∧
              F = canonicalFourFamilyOfAnchor p.1 ∧
              c = (anchoredMobiusPair p.1).center then
            anchoredPairSign p.1 * (ArithmeticFunction.log p.2 : ℝ)
           else 0) * v F c) =
      ∑ F : CanonicalFourFamily,
        ∑ p ∈ n.divisorsAntidiagonal,
          ∑ c ∈ Finset.range (2 * X + 1),
            (if p.1 ∈ anchoredDyadicSourceIndices X ∧
                0 < (anchoredMobiusPair p.1).h ∧
                F = canonicalFourFamilyOfAnchor p.1 ∧
                c = (anchoredMobiusPair p.1).center then
              anchoredPairSign p.1 * (ArithmeticFunction.log p.2 : ℝ)
             else 0) * v F c := by
               apply Finset.sum_congr rfl
               intro F _hF
               rw [Finset.sum_comm]
    _ = ∑ p ∈ n.divisorsAntidiagonal,
        ∑ F : CanonicalFourFamily,
          ∑ c ∈ Finset.range (2 * X + 1),
            (if p.1 ∈ anchoredDyadicSourceIndices X ∧
                0 < (anchoredMobiusPair p.1).h ∧
                F = canonicalFourFamilyOfAnchor p.1 ∧
                c = (anchoredMobiusPair p.1).center then
              anchoredPairSign p.1 * (ArithmeticFunction.log p.2 : ℝ)
             else 0) * v F c := by rw [Finset.sum_comm]
    _ = _ := by
      apply Finset.sum_congr rfl
      intro p hp
      by_cases hs : p.1 ∈ anchoredDyadicSourceIndices X
      · by_cases hpos : 0 < (anchoredMobiusPair p.1).h
        · have ha : 0 < p.1 := by
            have hzero := Nat.left_ne_zero_of_mem_divisorsAntidiagonal hp
            omega
          have haX : p.1 ≤ 2 * X :=
            (Finset.mem_Icc.mp hs).2
          have hone :=
            canonicalFourFamily_oneHot ha haX
              (anchoredPairSign p.1 * (ArithmeticFunction.log p.2 : ℝ)) v
          simpa [hs, hpos] using hone
        · simp [hs, hpos]
      · simp [hs]

/-- The omitted OTHER-SHIFT channel, with the canonical family chosen
at every single factor. This signed channel need not be small. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CanonicalFourFamilyThinGreenMatrix.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CanonicalFourFamilyThinGreenMatrix.lean#L195).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f71dbe475e99bce6b8ea8c633f320b118d69b6d5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
