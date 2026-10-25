# pullback_cardinal_bound_false

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:86529a6e-3a6d-4ba0-06ef-c2a4a54beb13",
  "kind": "theorem",
  "lexical_name": "pullback_cardinal_bound_false",
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
  "slug": "pullback-cardinal-bound-false--f066b6293b8e90477c5b0ab5",
  "source": {
    "blob": "1cc49623fe0b77e51408166bc66d7aa657201e6d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 61,
    "line": 55,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/ReconstructionControls/Varianta5dec696ff674ab2d1c3daad75f66e9d36c2d068348a828aff8c605159ba6174.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f066b6293b8e90477c5b0ab5674e257d4d138731ed48e33bc43a2ff4a2c3363f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/ReconstructionControls/Varianta5dec696ff674ab2d1c3daad75f66e9d36c2d068348a828aff8c605159ba6174.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:86529a6e-3a6d-4ba0-06ef-c2a4a54beb13`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–61.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pullback_cardinal_bound_false : ¬#(collapse ⁻¹' singletonTarget) ≤ #singletonTarget := by
  rw [pullback_cardinals.1, pullback_cardinals.2]
  have finite : ((1 : ℕ) : Cardinal.{0}) < ((2 : ℕ) : Cardinal.{0}) :=
    Nat.cast_lt.mpr (by decide : (1 : ℕ) < 2)
  exact not_le.mpr finite

/-- Finite singleton target inventory used by the cardinal-pullback hostile control. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/ReconstructionControls/Varianta5dec696ff674ab2d1c3daad75f66e9d36c2d068348a828aff8c605159ba6174.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/ReconstructionControls/Varianta5dec696ff674ab2d1c3daad75f66e9d36c2d068348a828aff8c605159ba6174.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1cc49623fe0b77e51408166bc66d7aa657201e6d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
