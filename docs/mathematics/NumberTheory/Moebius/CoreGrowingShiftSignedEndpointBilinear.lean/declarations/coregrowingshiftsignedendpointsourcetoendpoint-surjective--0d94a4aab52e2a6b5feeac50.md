# coreGrowingShiftSignedEndpointSourceToEndpoint_surjective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4bb25598-08b6-4d36-cb98-4b8a74b6b54d",
  "kind": "theorem",
  "lexical_name": "coreGrowingShiftSignedEndpointSourceToEndpoint_surjective",
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
  "slug": "coregrowingshiftsignedendpointsourcetoendpoint-surjective--0d94a4aab52e2a6b5feeac50",
  "source": {
    "blob": "f9c01da39b373e55afc2c551135031974fc4a6c8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 193,
    "line": 159,
    "path": "GRWTSK/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointBilinear.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0d94a4aab52e2a6b5feeac50d3577d281c446e05fc1b42937657297d8802c80b",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointBilinear.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4bb25598-08b6-4d36-cb98-4b8a74b6b54d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 159–193.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coreGrowingShiftSignedEndpointSourceToEndpoint_surjective
    {j : ℕ} {z : CoreGrowingShiftSignedEndpointIndex}
    (hz : z ∈ coreGrowingShiftSignedEndpointIndices j) :
    ∃ x ∈ coreGrowingShiftSignedEndpointSourceCells j,
      coreGrowingShiftSignedEndpointSourceToEndpoint x = z := by
  rcases z with ⟨N, ⟨n, m⟩⟩
  simp only [coreGrowingShiftSignedEndpointIndices,
    Finset.mem_sigma] at hz
  rcases hz with ⟨hN, hp⟩
  have hp' :=
    (mem_coreGrowingShiftSignedEndpointPairSet_iff).mp hp
  rcases hp' with
    ⟨⟨⟨hnlo, hnhi⟩, ⟨_hmlo, _hmhi⟩⟩, hnm, hshift⟩
  let a : ℕ := n - 1
  let h : ℕ := m - n
  let y : CoreGrowingShiftSignedStaircaseIndex := ⟨N, h⟩
  let x : CoreGrowingShiftSignedEndpointSourceCell := ⟨y, a⟩
  have haN : a < N := by
    dsimp [a]
    omega
  have hy : y ∈ coreGrowingShiftSignedStaircaseIndices j := by
    simp only [coreGrowingShiftSignedStaircaseIndices,
      Finset.mem_sigma]
    exact ⟨hN, by simpa [h] using hshift⟩
  refine ⟨x, ?_, ?_⟩
  · simp only [coreGrowingShiftSignedEndpointSourceCells,
      Finset.mem_sigma]
    exact ⟨hy, Finset.mem_range.mpr haN⟩
  · apply Sigma.ext
    · rfl
    · dsimp [x, y, a, h,
        coreGrowingShiftSignedEndpointSourceToEndpoint]
      apply Prod.ext <;> omega

/-- Signed value of one expanded source cell. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointBilinear.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointBilinear.lean#L159).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f9c01da39b373e55afc2c551135031974fc4a6c8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
