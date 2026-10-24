# canonicalFourFamilyMatrix_minus_other_eq_positiveAnchored

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7044952c-0177-037e-0705-c50f1813cc3b",
  "kind": "theorem",
  "lexical_name": "canonicalFourFamilyMatrix_minus_other_eq_positiveAnchored",
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
  "slug": "canonicalfourfamilymatrix-minus-other-eq-positiveanchored--b7cedc9ce7d982bb49611217",
  "source": {
    "blob": "f71dbe475e99bce6b8ea8c633f320b118d69b6d5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 308,
    "line": 272,
    "path": "GRWTSK/NumberTheory/Moebius/CanonicalFourFamilyThinGreenMatrix.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b7cedc9ce7d982bb49611217edc1452a394674af2a9a84fa53533d6b4b881244",
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

Occurrence: `result:7044952c-0177-037e-0705-c50f1813cc3b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 272–308.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem canonicalFourFamilyMatrix_minus_other_eq_positiveAnchored
    {X n : ℕ} (hn : n ∈ centeredGreenWindow X) :
    canonicalFourFamilyGreenMatrixApply X n
        (canonicalFourFamilyCenteredData X) -
      canonicalFourFamilyOtherShiftDivisor X n =
        anchoredPositiveShiftDivisorTransform X n
          (fun a => (anchoredMobiusPair a).coefficient) := by
  rw [canonicalFourFamilyGreenMatrixApply_eq_divisor]
  unfold canonicalFourFamilyOtherShiftDivisor
    anchoredPositiveShiftDivisorTransform
  rw [← Finset.sum_sub_distrib]
  apply Finset.sum_congr rfl
  intro p hp
  by_cases hs : p.1 ∈ anchoredDyadicSourceIndices X
  · by_cases hpos : 0 < (anchoredMobiusPair p.1).h
    · have ha : 0 < p.1 := by
        have hzero := Nat.left_ne_zero_of_mem_divisorsAntidiagonal hp
        omega
      have haX : p.1 ≤ 2 * X :=
        (Finset.mem_Icc.mp hs).2
      have hcell :=
        canonicalFourFamily_anchor_cell_minus_other_eq_coefficient ha haX hpos
      simp only [hs, hpos, and_self, if_true]
      calc
        _ = (anchoredPairSign p.1 * (ArithmeticFunction.log p.2 : ℝ)) *
            (canonicalFourFamilyCenteredData X (canonicalFourFamilyOfAnchor p.1)
              (anchoredMobiusPair p.1).center -
              anchoredAuthenticOtherShiftDefect (2 * X) p.1
                (canonicalFourFamilyShiftSet (2 * X)
                  (canonicalFourFamilyOfAnchor p.1))) := by ring
        _ = (anchoredPairSign p.1 * (ArithmeticFunction.log p.2 : ℝ)) *
              (anchoredMobiusPair p.1).coefficient := by rw [hcell]
        _ = _ := by ring
    · simp [hs, hpos]
  · simp [hs]

/-- Inherited a=1,2 zero-shift correction with no sign or domain changes. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CanonicalFourFamilyThinGreenMatrix.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CanonicalFourFamilyThinGreenMatrix.lean#L272).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f71dbe475e99bce6b8ea8c633f320b118d69b6d5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
