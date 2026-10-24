# coreGrowingShiftQuarticEndpointActiveCellEnergy_eq_multiplicityBox

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7c59f07c-3ba9-660c-ace6-589782baa13d",
  "kind": "theorem",
  "lexical_name": "coreGrowingShiftQuarticEndpointActiveCellEnergy_eq_multiplicityBox",
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
  "slug": "coregrowingshiftquarticendpointactivecellenergy-eq-multiplicitybox--047d493cc4c01dad9d90419e",
  "source": {
    "blob": "2ccf6d46885121a4eadf47ced7523c8e1830418d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 183,
    "line": 133,
    "path": "GRWTSK/NumberTheory/Moebius/CoreGrowingShiftQuarticEndpointIntervalBox.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:047d493cc4c01dad9d90419eebfa30a7b6f3353f017d325e8f9bd19e307a13b4",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/CoreGrowingShiftQuarticEndpointIntervalBox.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7c59f07c-3ba9-660c-ace6-589782baa13d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 133–183.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coreGrowingShiftQuarticEndpointActiveCellEnergy_eq_multiplicityBox
    (j : ℕ) :
    coreGrowingShiftQuarticEndpointActiveCellEnergy j =
      coreGrowingShiftQuarticEndpointMultiplicityWeightedBoxEnergy j := by
  classical
  have hmaps :
      ∀ x ∈ coreGrowingShiftQuarticEndpointActiveCells j,
        coreGrowingShiftQuarticEndpointActiveCellBoxIndex j x ∈
          coreGrowingShiftQuarticEndpointDyadicBox j := by
    intro x hx
    exact coreGrowingShiftQuarticEndpointActiveCellBoxIndex_mem hx
  calc
    coreGrowingShiftQuarticEndpointActiveCellEnergy j =
      ∑ q ∈ coreGrowingShiftQuarticEndpointDyadicBox j,
        ∑ x ∈ (coreGrowingShiftQuarticEndpointActiveCells j).filter
            (fun x =>
              coreGrowingShiftQuarticEndpointActiveCellBoxIndex j x = q),
          coreGrowingShiftQuarticEndpointActiveCellValue j x := by
      unfold coreGrowingShiftQuarticEndpointActiveCellEnergy
      exact (Finset.sum_fiberwise_of_maps_to hmaps
        (fun x =>
          coreGrowingShiftQuarticEndpointActiveCellValue j x)).symm
    _ = ∑ q ∈ coreGrowingShiftQuarticEndpointDyadicBox j,
        (coreGrowingShiftQuarticEndpointDepthMultiplicity j q : ℝ) *
          (mertensTwoPointPrefix q.1 q.2 *
            mertensTwoPointQuarticEndpointPair q.1 q.2) := by
      apply Finset.sum_congr rfl
      intro q _hq
      calc
        (∑ x ∈ (coreGrowingShiftQuarticEndpointActiveCells j).filter
            (fun x =>
              coreGrowingShiftQuarticEndpointActiveCellBoxIndex j x = q),
          coreGrowingShiftQuarticEndpointActiveCellValue j x) =
          ∑ _x ∈ (coreGrowingShiftQuarticEndpointActiveCells j).filter
              (fun x =>
                coreGrowingShiftQuarticEndpointActiveCellBoxIndex j x = q),
            (mertensTwoPointPrefix q.1 q.2 *
              mertensTwoPointQuarticEndpointPair q.1 q.2) := by
          apply Finset.sum_congr rfl
          intro x hx
          exact
            coreGrowingShiftQuarticEndpointActiveCellValue_eq_boxValue
              (Finset.mem_filter.mp hx).2
        _ = (coreGrowingShiftQuarticEndpointDepthMultiplicity j q : ℝ) *
            (mertensTwoPointPrefix q.1 q.2 *
              mertensTwoPointQuarticEndpointPair q.1 q.2) := by
          simp [coreGrowingShiftQuarticEndpointDepthMultiplicity]
    _ = coreGrowingShiftQuarticEndpointMultiplicityWeightedBoxEnergy j := by
      rfl

/-- Exact endpoint-prefix/multiplicity-box identity. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CoreGrowingShiftQuarticEndpointIntervalBox.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CoreGrowingShiftQuarticEndpointIntervalBox.lean#L133).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2ccf6d46885121a4eadf47ced7523c8e1830418d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
