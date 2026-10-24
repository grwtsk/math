# coreGrowingShiftSignedActiveCellToStaircase_mem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2554e584-23e7-a98b-0faf-d79b4c2de0b1",
  "kind": "theorem",
  "lexical_name": "coreGrowingShiftSignedActiveCellToStaircase_mem",
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
  "slug": "coregrowingshiftsignedactivecelltostaircase-mem--1b60366cf213e33b4ca6a7ec",
  "source": {
    "blob": "46c3d81dbbb8633f664d2f8eac9d9da440666b28",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 124,
    "line": 92,
    "path": "GRWTSK/NumberTheory/Moebius/CoreGrowingShiftSignedStaircase.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1b60366cf213e33b4ca6a7ec1981fbf849bef4b70e2fa9233f39442aa5869fbb",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/CoreGrowingShiftSignedStaircase.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2554e584-23e7-a98b-0faf-d79b4c2de0b1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 92–124.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coreGrowingShiftSignedActiveCellToStaircase_mem
    {j : ℕ} {x : CoreGrowingShiftSignedActiveCell}
    (hx : x ∈ coreGrowingShiftSignedActiveCells j) :
    coreGrowingShiftSignedActiveCellToStaircase j x ∈
      coreGrowingShiftSignedStaircaseIndices j := by
  rcases x with ⟨t, k⟩
  simp only [coreGrowingShiftSignedActiveCells,
    Finset.mem_sigma] at hx
  rcases hx with ⟨ht, hk⟩
  have ht' := ht
  rw [coreLongDeepDepths_eq_exactInterval] at ht'
  simp only [Finset.mem_Ico] at ht'
  have hkN : k < harmonicShiftCount j t :=
    Finset.mem_range.mp hk
  have hshift :
      harmonicShiftLower j t ≤ harmonicShiftLower j t + k ∧
      harmonicShiftLower j t + k < harmonicShiftUpper j t := by
    unfold harmonicShiftCount at hkN
    omega
  simp only [coreGrowingShiftSignedActiveCellToStaircase,
    coreGrowingShiftSignedStaircaseIndices, Finset.mem_sigma]
  constructor
  · simp only [coreGrowingShiftSignedStaircasePrefixSet,
      Finset.mem_Ico]
    omega
  · simp only [coreGrowingShiftSignedStaircaseShiftSet,
      Finset.mem_Ico]
    rw [← harmonicShiftLower_eq_signedStaircaseLower,
      ← harmonicShiftUpper_eq_signedStaircaseUpper]
    exact hshift

/-- The coordinate map is injective: the prefix length determines the depth,
and the shift then determines the active offset. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CoreGrowingShiftSignedStaircase.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CoreGrowingShiftSignedStaircase.lean#L92).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `46c3d81dbbb8633f664d2f8eac9d9da440666b28` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
