# coreGrowingShiftEndpointTransverseMultiplier_norm_lowerBound_via_finiteCyclic

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6e1881a5-898b-5267-cccd-1d0a6334cd64",
  "kind": "theorem",
  "lexical_name": "coreGrowingShiftEndpointTransverseMultiplier_norm_lowerBound_via_finiteCyclic",
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
  "slug": "coregrowingshiftendpointtransversemultiplier-norm-lowerbound-via-finitec--8cf168fafe79bb909ee3e293",
  "source": {
    "blob": "04f0cb6f227f7166c94e5a6ebf188b9108007d7e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 76,
    "line": 62,
    "path": "GRWTSK/NumberTheory/Moebius/CoreGrowingShiftEndpointFiniteCyclicDictionary.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8cf168fafe79bb909ee3e293129ed9c0dcc9f8e465f55a6e9aaa3d64fcd2ac15",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/CoreGrowingShiftEndpointFiniteCyclicDictionary.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6e1881a5-898b-5267-cccd-1d0a6334cd64`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 62–76.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coreGrowingShiftEndpointTransverseMultiplier_norm_lowerBound_via_finiteCyclic
    (j : ℕ)
    (t : CoreGrowingShiftEndpointDoubledFourierIndex j) :
    coreGrowingShiftEndpointTransverseJordanLowerScale j t ≤
      ‖coreGrowingShiftEndpointTransverseMultiplier j t‖ := by
  simpa [coreGrowingShiftEndpointTransverseJordanLowerScale,
    coreGrowingShiftEndpointTransverseCircularDistance,
    coreGrowingShiftEndpointTransverseMultiplier,
    GRWTSK.NumberTheory.CharacterSums.finiteCyclicJordanLowerScale,
    GRWTSK.NumberTheory.CharacterSums.finiteCyclicCircularDistance] using
    GRWTSK.NumberTheory.CharacterSums.finiteCyclicJordanLowerScale_le_norm_stdAddChar_sub_one
      t

/-- Legacy endpoint inverse multiplier is supplied by the isolated
Mathlib-only finite cyclic theorem. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CoreGrowingShiftEndpointFiniteCyclicDictionary.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CoreGrowingShiftEndpointFiniteCyclicDictionary.lean#L62).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `04f0cb6f227f7166c94e5a6ebf188b9108007d7e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
