# stdAddChar_affineShift_eq_shift_mul_doubled

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4c8e4ed6-68bb-c94f-10f8-f1ef23a53a9f",
  "kind": "theorem",
  "lexical_name": "stdAddChar_affineShift_eq_shift_mul_doubled",
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
  "slug": "stdaddchar-affineshift-eq-shift-mul-doubled--faf52cdfda9d98c25cbceb01",
  "source": {
    "blob": "9242ab7f752131ddfcc560324898aab75bf0f927",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 211,
    "line": 189,
    "path": "GRWTSK/NumberTheory/Moebius/GrowingShiftAffineChowlaHalfIndex.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:faf52cdfda9d98c25cbceb012c613a433dee4c45c839fdd6b81e8b75f9856a26",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/GrowingShiftAffineChowlaHalfIndex.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4c8e4ed6-68bb-c94f-10f8-f1ef23a53a9f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 189–211.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem stdAddChar_affineShift_eq_shift_mul_doubled
    (d m r h : ℕ) [NeZero d]
    (hr : r < 2)
    (k : ZMod (d * d)) :
    ZMod.stdAddChar
        (k * parityAffineShiftResidueCoordinate d (2 * m + r) h) =
      affineChowlaShiftPhase d h k *
        ZMod.stdAddChar
          (doubledSquareModulusFrequency d k *
            (m : ZMod (d * d))) := by
  rw [parityAffineShiftResidueCoordinate_reconstructed d m r h hr]
  unfold affineChowlaShiftPhase doubledSquareModulusFrequency
  have harg :
      k * ((m : ZMod (d * d)) +
          (m : ZMod (d * d)) +
          (h : ZMod (d * d))) =
        k * (h : ZMod (d * d)) +
          (k + k) * (m : ZMod (d * d)) := by
    ring
  rw [harg, AddChar.map_add_eq_mul]

/-- The exact growing-shift affine twist is a shift phase times the half-index
fixed-form core at doubled frequency. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/GrowingShiftAffineChowlaHalfIndex.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/GrowingShiftAffineChowlaHalfIndex.lean#L189).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9242ab7f752131ddfcc560324898aab75bf0f927` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
