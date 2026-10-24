# coreGrowingShiftQuarticEndpointActiveCellBoxIndex_mem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b84eb7d4-26ff-6003-7acc-53b59a3c6c0d",
  "kind": "theorem",
  "lexical_name": "coreGrowingShiftQuarticEndpointActiveCellBoxIndex_mem",
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
  "slug": "coregrowingshiftquarticendpointactivecellboxindex-mem--2108648365cc3f9578ca538b",
  "source": {
    "blob": "2ccf6d46885121a4eadf47ced7523c8e1830418d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 106,
    "line": 77,
    "path": "GRWTSK/NumberTheory/Moebius/CoreGrowingShiftQuarticEndpointIntervalBox.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2108648365cc3f9578ca538bc9c7d3c6870134722906b4a51f3f187ca0190a1a",
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

Occurrence: `result:b84eb7d4-26ff-6003-7acc-53b59a3c6c0d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 77–106.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coreGrowingShiftQuarticEndpointActiveCellBoxIndex_mem
    {j : ℕ} {x : CoreGrowingShiftQuarticEndpointActiveCell}
    (hx : x ∈ coreGrowingShiftQuarticEndpointActiveCells j) :
    coreGrowingShiftQuarticEndpointActiveCellBoxIndex j x ∈
      coreGrowingShiftQuarticEndpointDyadicBox j := by
  rcases x with ⟨t, ⟨k, b⟩⟩
  simp only [coreGrowingShiftQuarticEndpointActiveCells,
    Finset.mem_sigma] at hx
  rcases hx with ⟨ht, hk, hb⟩
  have hkN : k < harmonicShiftCount j t :=
    Finset.mem_range.mp hk
  have hkUpper :
      harmonicShiftLower j t + k < harmonicShiftUpper j t := by
    unfold harmonicShiftCount at hkN
    omega
  have hhY :
      harmonicShiftLower j t + k < 2 ^ (j + 1) := by
    unfold harmonicShiftUpper at hkUpper
    omega
  have ht' := ht
  simp only [coreLongDeepDepths, Finset.mem_filter,
    Finset.mem_Ico] at ht'
  have hbY : b < 2 ^ (j + 1) := by
    have hbT : b < t + 1 := Finset.mem_range.mp hb
    omega
  simp [coreGrowingShiftQuarticEndpointActiveCellBoxIndex,
    coreGrowingShiftQuarticEndpointDyadicBox, hhY, hbY]

/-- The inherited nested endpoint-prefix packet is literally the active-cell
source sum. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CoreGrowingShiftQuarticEndpointIntervalBox.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CoreGrowingShiftQuarticEndpointIntervalBox.lean#L77).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2ccf6d46885121a4eadf47ced7523c8e1830418d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
