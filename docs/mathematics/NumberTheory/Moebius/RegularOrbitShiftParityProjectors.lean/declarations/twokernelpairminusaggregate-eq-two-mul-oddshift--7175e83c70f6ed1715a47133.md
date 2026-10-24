# twoKernelPairMinusAggregate_eq_two_mul_oddShift

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8c02d9f2-1ce3-67b5-e46d-473e592f26e2",
  "kind": "theorem",
  "lexical_name": "twoKernelPairMinusAggregate_eq_two_mul_oddShift",
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
  "slug": "twokernelpairminusaggregate-eq-two-mul-oddshift--7175e83c70f6ed1715a47133",
  "source": {
    "blob": "c704448768339770aa5b21459dfdc2b9fd291867",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 205,
    "line": 171,
    "path": "GRWTSK/NumberTheory/Moebius/RegularOrbitShiftParityProjectors.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7175e83c70f6ed1715a47133a45da9b0f9761e159930da1571720ca9186dac91",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/RegularOrbitShiftParityProjectors.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8c02d9f2-1ce3-67b5-e46d-473e592f26e2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 171–205.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem twoKernelPairMinusAggregate_eq_two_mul_oddShift
    (b d r : ℕ) [NeZero d]
    (hNonunit : TwoNonunitSquareModulusParameter d)
    (k : ZMod (d * d)) :
    twoKernelPairMinusAggregate b d r k =
      2 * twoKernelOddShiftAggregate b d r k := by
  rw [twoKernelPairMinusAggregate_eq_projector
    b d r hNonunit k]
  unfold twoKernelOddShiftAggregate
  calc
    (∑ h ∈ positiveEndpointShiftSet b,
      affineChowlaShiftPhase d h k *
        (1 - twoKernelShiftCharacter d h) *
        halfIndexAffineChowlaCore b d r h
          (doubledSquareModulusFrequency d k)) =
      ∑ h ∈ positiveEndpointShiftSet b,
        if Odd h then
          2 *
            (affineChowlaShiftPhase d h k *
              halfIndexAffineChowlaCore b d r h
                (doubledSquareModulusFrequency d k))
        else 0 := by
          apply Finset.sum_congr rfl
          intro h _hh
          rw [one_sub_twoKernelShiftCharacter_eq_oddSelector
            d h hNonunit]
          by_cases hOdd : Odd h <;> simp [hOdd] <;> ring
    _ = 2 * ∑ h ∈ oddPositiveEndpointShiftSet b,
        affineChowlaShiftPhase d h k *
          halfIndexAffineChowlaCore b d r h
            (doubledSquareModulusFrequency d k) := by
          unfold oddPositiveEndpointShiftSet
          rw [Finset.mul_sum, Finset.sum_filter]

/-- Even-shift contribution from one complete canonical regular orbit. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/RegularOrbitShiftParityProjectors.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/RegularOrbitShiftParityProjectors.lean#L171).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c704448768339770aa5b21459dfdc2b9fd291867` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
