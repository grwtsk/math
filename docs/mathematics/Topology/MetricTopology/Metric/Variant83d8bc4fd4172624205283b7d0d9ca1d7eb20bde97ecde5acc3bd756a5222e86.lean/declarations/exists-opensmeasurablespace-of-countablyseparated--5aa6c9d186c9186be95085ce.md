# exists_opensMeasurableSpace_of_countablySeparated

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:eba2bc28-91f5-acb6-0e0b-42e7d60b5b9e",
  "kind": "theorem",
  "lexical_name": "exists_opensMeasurableSpace_of_countablySeparated",
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
  "slug": "exists-opensmeasurablespace-of-countablyseparated--5aa6c9d186c9186be95085ce",
  "source": {
    "blob": "3e23632cc068a75fc3d0abe181b9a848aa899a9c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 227,
    "line": 214,
    "path": "GRWTSK/Topology/MetricTopology/Metric/Variant83d8bc4fd4172624205283b7d0d9ca1d7eb20bde97ecde5acc3bd756a5222e86.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5aa6c9d186c9186be95085ce01c4632bb92021970e4f39340554958d5f16a68b",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Metric/Variant83d8bc4fd4172624205283b7d0d9ca1d7eb20bde97ecde5acc3bd756a5222e86.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eba2bc28-91f5-acb6-0e0b-42e7d60b5b9e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 214–227.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_opensMeasurableSpace_of_countablySeparated (α : Type*)
    [m : MeasurableSpace α] [CountablySeparated α] :
    ∃ _ : TopologicalSpace α, SecondCountableTopology α ∧ T4Space α ∧ OpensMeasurableSpace α := by
  rcases exists_countablyGenerated_le_of_countablySeparated α with ⟨m', _, _, m'le⟩
  rcases exists_borelSpace_of_countablyGenerated_of_separatesPoints (m := m') with ⟨τ, _, _, τm'⟩
  exact ⟨τ, ‹_›, ‹_›, @OpensMeasurableSpace.mk _ _ m (τm'.measurable_eq.symm.le.trans m'le)⟩


section ContinuousENorm

variable {ε : Type*} [MeasurableSpace ε] [TopologicalSpace ε] [ContinuousENorm ε]
  [OpensMeasurableSpace ε] [MeasurableSpace β]

@[measurability, fun_prop]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Metric/Variant83d8bc4fd4172624205283b7d0d9ca1d7eb20bde97ecde5acc3bd756a5222e86.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Metric/Variant83d8bc4fd4172624205283b7d0d9ca1d7eb20bde97ecde5acc3bd756a5222e86.lean#L214).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3e23632cc068a75fc3d0abe181b9a848aa899a9c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
