# coreGrowingShiftQuarticEndpointExplicitDepthMultiplicity_eq_zero_of_upper_le_lower

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:415a2c0e-28d6-0a7d-96c8-d6d73adfb6ec",
  "kind": "theorem",
  "lexical_name": "coreGrowingShiftQuarticEndpointExplicitDepthMultiplicity_eq_zero_of_upper_le_lower",
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
  "slug": "coregrowingshiftquarticendpointexplicitdepthmultiplicity-eq-zero-of-uppe--6fa1a56193618697ef9dc446",
  "source": {
    "blob": "2ccf6d46885121a4eadf47ced7523c8e1830418d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 369,
    "line": 358,
    "path": "GRWTSK/NumberTheory/Moebius/CoreGrowingShiftQuarticEndpointIntervalBox.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6fa1a56193618697ef9dc4462cdc816a7742db851db5a5bd80f77c7be3ca8e1c",
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

Occurrence: `result:415a2c0e-28d6-0a7d-96c8-d6d73adfb6ec`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 358–369.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coreGrowingShiftQuarticEndpointExplicitDepthMultiplicity_eq_zero_of_upper_le_lower
    {j h b : ℕ}
    (hUL :
      coreGrowingShiftQuarticEndpointExplicitDepthUpper j h ≤
        coreGrowingShiftQuarticEndpointExplicitDepthLower j h b) :
    coreGrowingShiftQuarticEndpointExplicitDepthMultiplicity j h b = 0 := by
  unfold coreGrowingShiftQuarticEndpointExplicitDepthMultiplicity
  split_ifs
  · exact Nat.sub_eq_zero_of_le hUL
  · rfl

/-- Fixed dyadic endpoint box with the exact interval-length multiplicity. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CoreGrowingShiftQuarticEndpointIntervalBox.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CoreGrowingShiftQuarticEndpointIntervalBox.lean#L358).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2ccf6d46885121a4eadf47ced7523c8e1830418d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
