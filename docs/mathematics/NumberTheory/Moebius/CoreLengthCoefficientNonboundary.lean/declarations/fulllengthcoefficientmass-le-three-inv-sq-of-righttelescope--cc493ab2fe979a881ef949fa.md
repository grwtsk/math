# fullLengthCoefficientMass_le_three_inv_sq_of_rightTelescope

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:653dcd84-ac44-0258-add9-0b39799e84f8",
  "kind": "theorem",
  "lexical_name": "fullLengthCoefficientMass_le_three_inv_sq_of_rightTelescope",
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
  "slug": "fulllengthcoefficientmass-le-three-inv-sq-of-righttelescope--cc493ab2fe979a881ef949fa",
  "source": {
    "blob": "500a733351224a3b1949bd5887283a687a42d364",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 212,
    "line": 188,
    "path": "GRWTSK/NumberTheory/Moebius/CoreLengthCoefficientNonboundary.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cc493ab2fe979a881ef949fab6514861adea8f3e56b618f765d646bddd5316f4",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/CoreLengthCoefficientNonboundary.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:653dcd84-ac44-0258-add9-0b39799e84f8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 188–212.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fullLengthCoefficientMass_le_three_inv_sq_of_rightTelescope
    (hRight : RightLengthCoefficientTelescoping)
    {j n : ℕ}
    (hnH : logarithmicShiftThreshold j ≤ n)
    (hnX : n < 2 ^ j) :
    fullLengthCoefficientMass j n ≤
      3 * ((((2 ^ j + n : ℕ) : ℝ))⁻¹ ^ 2) := by
  rw [fullLengthCoefficientMass_eq_left_add_right,
    hRight j n hnH hnX]
  have hm : 1 ≤ 2 ^ j + n := by positivity
  calc
    leftLengthCoefficientMass j n +
        reciprocalFirstDifference (2 ^ j + n) ≤
      2 * ((((2 ^ j + n : ℕ) : ℝ))⁻¹ ^ 2) +
        (((2 ^ j + n : ℕ) : ℝ))⁻¹ ^ 2 := by
      exact add_le_add
        (leftLengthCoefficientMass_le_three_inv_sq hnH hnX)
        (reciprocalFirstDifference_le_inv_sq hm)
    _ = 3 * ((((2 ^ j + n : ℕ) : ℝ))⁻¹ ^ 2) := by ring

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.sum_reciprocalSecondDifference_Ico
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.leftLengthCoefficientMass_eq_nonboundary
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.fullLengthCoefficientMass_le_three_inv_sq_of_rightTelescope
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CoreLengthCoefficientNonboundary.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CoreLengthCoefficientNonboundary.lean#L188).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `500a733351224a3b1949bd5887283a687a42d364` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
