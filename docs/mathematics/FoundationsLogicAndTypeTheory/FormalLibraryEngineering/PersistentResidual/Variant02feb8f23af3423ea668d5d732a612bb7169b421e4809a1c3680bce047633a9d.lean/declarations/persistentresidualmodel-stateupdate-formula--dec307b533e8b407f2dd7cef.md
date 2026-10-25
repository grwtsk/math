# persistentResidualModel_stateUpdate_formula

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "aef33b3529f6513f9a08045056f8b648c60d9ac5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 344,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/02/02feb8f23af3423ea668d5d732a612bb7169b421e4809a1c3680bce047633a9d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:caa0b8a6-f0a8-d4d3-900d-d3b95a8f4927",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f4a903da-ac1f-9b77-b66f-d48226f9d37f",
  "kind": "theorem",
  "lexical_name": "persistentResidualModel_stateUpdate_formula",
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
  "slug": "persistentresidualmodel-stateupdate-formula--dec307b533e8b407f2dd7cef",
  "source": {
    "blob": "aef33b3529f6513f9a08045056f8b648c60d9ac5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 365,
    "line": 344,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PersistentResidual/Variant02feb8f23af3423ea668d5d732a612bb7169b421e4809a1c3680bce047633a9d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dec307b533e8b407f2dd7cef80068746d2d8e1cf9eef79dc6f8b845985ae7aba",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PersistentResidual/Variant02feb8f23af3423ea668d5d732a612bb7169b421e4809a1c3680bce047633a9d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f4a903da-ac1f-9b77-b66f-d48226f9d37f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 344–365.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem persistentResidualModel_stateUpdate_formula
    {State Input Output Constraint ResidualMemory ResidualEnergy Parameter
      DurableCheckpoint : Type uRole}
    {ResidualSpace : ResidualKind → Type uRole}
    [AddCommGroup State] [Module ℝ State] [FiniteDimensional ℝ State]
    [AddCommGroup Input] [Module ℝ Input] [FiniteDimensional ℝ Input]
    [AddCommGroup ResidualMemory] [Module ℝ ResidualMemory]
    [FiniteDimensional ℝ ResidualMemory]
    [AddCommGroup ResidualEnergy] [Module ℝ ResidualEnergy]
    [FiniteDimensional ℝ ResidualEnergy]
    (model : PersistentResidualModel State Input Output Constraint
      ResidualMemory ResidualEnergy Parameter DurableCheckpoint ResidualSpace)
    (state : State) (input : Input) (memory : ResidualMemory)
    (energy : ResidualEnergy) :
    model.stateUpdate state input memory energy =
      model.baseOperator state + model.memoryModulation memory state +
        model.energyModulation energy state + model.memoryDrive memory +
        model.inputDrive input + model.deterministicDrive input memory energy :=
  model.stateUpdate_formula state input memory energy

/-- The mixed state/memory difference of the actual model update isolates the
declared residual-conditioned operator modulation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PersistentResidual/Variant02feb8f23af3423ea668d5d732a612bb7169b421e4809a1c3680bce047633a9d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PersistentResidual/Variant02feb8f23af3423ea668d5d732a612bb7169b421e4809a1c3680bce047633a9d.lean#L344).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aef33b3529f6513f9a08045056f8b648c60d9ac5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
