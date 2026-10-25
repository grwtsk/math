# shifted_generator_substitution_rejected

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f9fe3872-4605-a031-99af-42cb7c1d78ee",
  "kind": "theorem",
  "lexical_name": "shifted_generator_substitution_rejected",
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
  "slug": "shifted-generator-substitution-rejected--df303b334ae9fcf5e3fc299b",
  "source": {
    "blob": "1cc49623fe0b77e51408166bc66d7aa657201e6d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 102,
    "line": 96,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/ReconstructionControls/Varianta5dec696ff674ab2d1c3daad75f66e9d36c2d068348a828aff8c605159ba6174.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:df303b334ae9fcf5e3fc299b233573c5c704bc2dcf3ba07c70bd3a52d60a3dc5",
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

Occurrence: `result:f9fe3872-4605-a031-99af-42cb7c1d78ee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 96–102.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem shifted_generator_substitution_rejected :
    (verifyEquation FullFixtures.declaration
      (.substitution [shiftVariableIndices AssemblyFixtures.generator.equation.right]
        (.generator 0))).isSome = false := by decide

end ReconstructionControls
end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Model
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/ReconstructionControls/Varianta5dec696ff674ab2d1c3daad75f66e9d36c2d068348a828aff8c605159ba6174.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/ReconstructionControls/Varianta5dec696ff674ab2d1c3daad75f66e9d36c2d068348a828aff8c605159ba6174.lean#L96).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1cc49623fe0b77e51408166bc66d7aa657201e6d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
