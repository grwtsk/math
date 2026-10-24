# valid

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7dae92cb-2783-45f7-8772-92a509abc23f",
  "kind": "theorem",
  "lexical_name": "valid",
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
  "slug": "valid--6f4cdaa97b289f75500eb8ef",
  "source": {
    "blob": "361bc33c42c29b9a9e096ad4167790577200bea3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 162,
    "line": 99,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripNormalizedRationalPair.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6f4cdaa97b289f75500eb8ef2ead67217e6615c32017a285ca8687951c42c078",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CriticalStripNormalizedRationalPair.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7dae92cb-2783-45f7-8772-92a509abc23f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 99–162.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem valid {A : Input} {N : ℕ} {x y : ℚ}
    (hx : 0 < x) (hx1 : x < 1) (hoff : x ≠ 1/2)
    (hp : A.plus.check N (plusPoint x y)=true)
    (hm : A.minus.check N (minusPoint x y)=true) :
    (A.packed N x y).ChannelValid U.source (pairCenter y) (pairOffset x) := by
  have hN := ((A.plus.check_iff N (plusPoint x y)).mp hp).1
  have hb := RationalEvaluatedPair.endpoints_in_band y hx hx1
  have hsp : pairCenter y+pairOffset x ∈ U.strip := ⟨hb.1.1,hb.1.2.1⟩
  have hsm : pairCenter y-pairOffset x ∈ U.strip := ⟨hb.2.1,hb.2.2.1⟩
  have hpp : (plusPoint x y).value ∈ U.strip := by
    rwa [(RationalEvaluatedPair.endpoints x y).1] at hsp
  have hmp : (minusPoint x y).value ∈ U.strip := by
    rwa [(RationalEvaluatedPair.endpoints x y).2] at hsm
  have ep := quotient_encloses hp hpp
  have em := quotient_encloses hm hmp
  rw [← (RationalEvaluatedPair.endpoints x y).1] at ep
  rw [← (RationalEvaluatedPair.endpoints x y).2] at em
  have hfinite := channels_of_endpoint_disks ep em
  let C := U.enclosure hN (RationalEvaluatedPair.offset_ne_zero hoff) hsp hsm
  have heC : ‖even U.source (pairCenter y) (pairOffset x)-
      even (U.model N) (pairCenter y) (pairOffset x)‖ ≤ (sourceValue N : ℝ) := by
    have h : ‖even U.source (pairCenter y) (pairOffset x)-
        even (U.model N) (pairCenter y) (pairOffset x)‖ ≤ C1Approximation.tailRadius N := C.even_error
    rwa [sourceValue_cast] at h
  have hoC : ‖odd U.source (pairCenter y) (pairOffset x)-
      odd (U.model N) (pairCenter y) (pairOffset x)‖ ≤ (sourceSecant N : ℝ) := by
    have h : ‖odd U.source (pairCenter y) (pairOffset x)-
        odd (U.model N) (pairCenter y) (pairOffset x)‖ ≤ C1Approximation.logRadius N := C.odd_error
    rwa [sourceSecant_cast] at h
  have heCenter : (A.packed N x y).evenCenter.value =
      ((quotientCenter A.plus N (plusPoint x y)).value+
        (quotientCenter A.minus N (minusPoint x y)).value)/2 := by
    simp only [packed,Gaussian.value_qscale,Gaussian.value_qadd]
    push_cast; ring
  have hoCenter : (A.packed N x y).oddCenter.value =
      ((quotientCenter A.plus N (plusPoint x y)).value-
        (quotientCenter A.minus N (minusPoint x y)).value)/(2*pairOffset x) := by
    simp only [packed,Gaussian.value_qscale,Gaussian.value_qsub]
    simp only [pairOffset]
    push_cast; ring
  constructor
  · change ‖even U.source (pairCenter y) (pairOffset x)-(A.packed N x y).evenCenter.value‖ ≤ _
    rw [heCenter]
    have h := norm_add_le
      (even U.source (pairCenter y) (pairOffset x)-even (U.model N) (pairCenter y) (pairOffset x))
      (even (U.model N) (pairCenter y) (pairOffset x)-
        ((quotientCenter A.plus N (plusPoint x y)).value+
          (quotientCenter A.minus N (minusPoint x y)).value)/2)
    rw [sub_add_sub_cancel] at h
    exact h.trans (by simpa only [packed,Rat.cast_add,Rat.cast_div,Rat.cast_ofNat]
      using add_le_add heC hfinite.1)
  · change ‖odd U.source (pairCenter y) (pairOffset x)-(A.packed N x y).oddCenter.value‖ ≤ _
    rw [hoCenter]
    have h := norm_add_le
      (odd U.source (pairCenter y) (pairOffset x)-odd (U.model N) (pairCenter y) (pairOffset x))
      (odd (U.model N) (pairCenter y) (pairOffset x)-
        ((quotientCenter A.plus N (plusPoint x y)).value-
          (quotientCenter A.minus N (minusPoint x y)).value)/(2*pairOffset x))
    rw [sub_add_sub_cancel] at h
    rw [RationalEvaluatedPair.offset_norm] at hfinite
    exact h.trans (by simpa only [packed,Rat.cast_add,Rat.cast_div,Rat.cast_mul,Rat.cast_ofNat,Rat.cast_abs]
      using add_le_add hoC hfinite.2)

/-- End-to-end source-bound acceptance; no caller-provided tail/evaluation oracle. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CriticalStripNormalizedRationalPair.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripNormalizedRationalPair.lean#L99).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `361bc33c42c29b9a9e096ad4167790577200bea3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
