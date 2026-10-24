# newmanFiniteCoefficients_not_soficThrough_of_state_collision

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c4add8ed-1755-7488-1db9-a2e42477bae7",
  "kind": "theorem",
  "lexical_name": "newmanFiniteCoefficients_not_soficThrough_of_state_collision",
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
  "slug": "newmanfinitecoefficients-not-soficthrough-of-state-collision--45be6cf904297be0e155fdc6",
  "source": {
    "blob": "92fee09daeb035062dc277a935be0e59f5127db7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 207,
    "line": 190,
    "path": "GRWTSK/NumberTheory/Farey/FiniteHeatCompressionBridge.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:45be6cf904297be0e155fdc62053dc3df7a49b50b3badd0f9eeb82568d0f96ce",
  "verification": {
    "reference": "docs/verification/NumberTheory/Farey/FiniteHeatCompressionBridge.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c4add8ed-1755-7488-1db9-a2e42477bae7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 190–207.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem newmanFiniteCoefficients_not_soficThrough_of_state_collision
    {ι : Type u} {State : Type v} [Fintype State]
    (state : (ι → ℝ) → State)
    (frequency : ι → ℝ) (t : ℝ)
    {x y : ι → ℝ}
    (hState : state x = state y)
    (hDifferent : x ≠ y) :
    ¬ SoficThrough state (newmanFiniteCoefficients frequency t) := by
  apply not_soficThrough_of_collision
    state (newmanFiniteCoefficients frequency t) x y hState
  intro hProcess
  exact hDifferent
    (injective_of_exactProcessRecovery
      (newmanFiniteCoefficients frequency t)
      (newmanFiniteCoefficients_exactProcessRecovery frequency t)
      hProcess)

end GRWTSK.NumberTheory.Farey.FiniteHeatCompressionBridge
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Farey/FiniteHeatCompressionBridge.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Farey/FiniteHeatCompressionBridge.lean#L190).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `92fee09daeb035062dc277a935be0e59f5127db7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
