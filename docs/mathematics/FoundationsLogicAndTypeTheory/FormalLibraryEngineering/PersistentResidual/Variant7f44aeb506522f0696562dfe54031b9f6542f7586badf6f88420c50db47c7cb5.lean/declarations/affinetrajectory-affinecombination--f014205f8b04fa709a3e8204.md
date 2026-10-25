# affineTrajectory_affineCombination

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9ba7297f-738c-1969-0f29-7c4e0c8f0e2e",
  "kind": "theorem",
  "lexical_name": "affineTrajectory_affineCombination",
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
  "slug": "affinetrajectory-affinecombination--f014205f8b04fa709a3e8204",
  "source": {
    "blob": "f0e7cd52895a2645a53af47c4135a7c4a4275719",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 531,
    "line": 510,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PersistentResidual/Variant7f44aeb506522f0696562dfe54031b9f6542f7586badf6f88420c50db47c7cb5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f014205f8b04fa709a3e8204d6f32cb1994793baa02961ec7f8d34595f9856ff",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PersistentResidual/Variant7f44aeb506522f0696562dfe54031b9f6542f7586badf6f88420c50db47c7cb5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9ba7297f-738c-1969-0f29-7c4e0c8f0e2e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 510–531.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem affineTrajectory_affineCombination
    (system : AffinePersistentSystem Z V)
    (initial₁ initial₀ : Z) (input₁ input₀ : Nat → V)
    (leftWeight rightWeight : ℝ)
    (normalized : leftWeight + rightWeight = 1) (horizon : Nat) :
    affineTrajectory system
        (leftWeight • initial₁ + rightWeight • initial₀)
        (fun time => leftWeight • input₁ time + rightWeight • input₀ time)
        horizon =
      leftWeight • affineTrajectory system initial₁ input₁ horizon +
        rightWeight • affineTrajectory system initial₀ input₀ horizon := by
  induction horizon with
  | zero => rfl
  | succ horizon inductionHypothesis =>
      simp only [affineTrajectory, inductionHypothesis, map_add, map_smul]
      have offsetSplit : system.offset =
          leftWeight • system.offset + rightWeight • system.offset := by
        rw [← add_smul, normalized, one_smul]
      nth_rewrite 1 [offsetSplit]
      module

/-- An affine readout is kept explicit rather than hidden in the state. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PersistentResidual/Variant7f44aeb506522f0696562dfe54031b9f6542f7586badf6f88420c50db47c7cb5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PersistentResidual/Variant7f44aeb506522f0696562dfe54031b9f6542f7586badf6f88420c50db47c7cb5.lean#L510).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f0e7cd52895a2645a53af47c4135a7c4a4275719` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
