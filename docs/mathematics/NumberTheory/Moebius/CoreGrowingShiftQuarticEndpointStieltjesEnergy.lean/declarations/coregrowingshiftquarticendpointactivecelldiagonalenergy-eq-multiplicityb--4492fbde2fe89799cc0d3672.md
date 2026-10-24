# coreGrowingShiftQuarticEndpointActiveCellDiagonalEnergy_eq_multiplicityBox

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:91ce9f45-2526-3b8e-fbd3-7d634678bfa7",
  "kind": "theorem",
  "lexical_name": "coreGrowingShiftQuarticEndpointActiveCellDiagonalEnergy_eq_multiplicityBox",
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
  "slug": "coregrowingshiftquarticendpointactivecelldiagonalenergy-eq-multiplicityb--4492fbde2fe89799cc0d3672",
  "source": {
    "blob": "b1bfa84eb99b3829a02980495e11decb5c0cf75b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 187,
    "line": 139,
    "path": "GRWTSK/NumberTheory/Moebius/CoreGrowingShiftQuarticEndpointStieltjesEnergy.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4492fbde2fe89799cc0d36724cb277ee3740478dfde144cd69afe09ded220938",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/CoreGrowingShiftQuarticEndpointStieltjesEnergy.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:91ce9f45-2526-3b8e-fbd3-7d634678bfa7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 139–187.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coreGrowingShiftQuarticEndpointActiveCellDiagonalEnergy_eq_multiplicityBox
    (j : ℕ) :
    coreGrowingShiftQuarticEndpointActiveCellDiagonalEnergy j =
      coreGrowingShiftQuarticEndpointMultiplicityWeightedDiagonalBoxEnergy j := by
  classical
  have hmaps :
      ∀ x ∈ coreGrowingShiftQuarticEndpointActiveCells j,
        coreGrowingShiftQuarticEndpointActiveCellBoxIndex j x ∈
          coreGrowingShiftQuarticEndpointDyadicBox j := by
    intro x hx
    exact coreGrowingShiftQuarticEndpointActiveCellBoxIndex_mem hx
  calc
    coreGrowingShiftQuarticEndpointActiveCellDiagonalEnergy j =
      ∑ q ∈ coreGrowingShiftQuarticEndpointDyadicBox j,
        ∑ x ∈ (coreGrowingShiftQuarticEndpointActiveCells j).filter
            (fun x =>
              coreGrowingShiftQuarticEndpointActiveCellBoxIndex j x = q),
          coreGrowingShiftQuarticEndpointActiveCellDiagonalValue j x := by
      unfold coreGrowingShiftQuarticEndpointActiveCellDiagonalEnergy
      exact (Finset.sum_fiberwise_of_maps_to hmaps
        (fun x =>
          coreGrowingShiftQuarticEndpointActiveCellDiagonalValue j x)).symm
    _ = ∑ q ∈ coreGrowingShiftQuarticEndpointDyadicBox j,
        (coreGrowingShiftQuarticEndpointDepthMultiplicity j q : ℝ) *
          mertensTwoPointQuarticEndpointPair q.1 q.2 ^ 2 := by
      apply Finset.sum_congr rfl
      intro q _hq
      calc
        (∑ x ∈ (coreGrowingShiftQuarticEndpointActiveCells j).filter
            (fun x =>
              coreGrowingShiftQuarticEndpointActiveCellBoxIndex j x = q),
          coreGrowingShiftQuarticEndpointActiveCellDiagonalValue j x) =
          ∑ _x ∈ (coreGrowingShiftQuarticEndpointActiveCells j).filter
              (fun x =>
                coreGrowingShiftQuarticEndpointActiveCellBoxIndex j x = q),
            mertensTwoPointQuarticEndpointPair q.1 q.2 ^ 2 := by
          apply Finset.sum_congr rfl
          intro x hx
          unfold coreGrowingShiftQuarticEndpointActiveCellDiagonalValue
            coreGrowingShiftQuarticEndpointActiveCellBoxIndex at hx ⊢
          rw [← (Finset.mem_filter.mp hx).2]
        _ = (coreGrowingShiftQuarticEndpointDepthMultiplicity j q : ℝ) *
            mertensTwoPointQuarticEndpointPair q.1 q.2 ^ 2 := by
          simp [coreGrowingShiftQuarticEndpointDepthMultiplicity]
    _ = coreGrowingShiftQuarticEndpointMultiplicityWeightedDiagonalBoxEnergy j := by
      rfl

/-- Replacing literal diagonal multiplicity by the exact interval formula is
lossless. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CoreGrowingShiftQuarticEndpointStieltjesEnergy.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CoreGrowingShiftQuarticEndpointStieltjesEnergy.lean#L139).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b1bfa84eb99b3829a02980495e11decb5c0cf75b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
