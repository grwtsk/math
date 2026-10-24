# actual_positiveMass_tendsto

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:52c4881e-14af-3bb8-e82a-247c35dd6fa9",
  "kind": "theorem",
  "lexical_name": "actual_positiveMass_tendsto",
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
  "slug": "actual-positivemass-tendsto--3f72404ff527694d397bedf4",
  "source": {
    "blob": "bfa1d736b56581bc712f88e81e0237e690a7edd5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 108,
    "line": 101,
    "path": "GRWTSK/Topology/GeneralTopology/ActualEndpointLimitAttempt07/Variant8baaeaea2cecf028367f8ebe16e999a479495a5b7e6dad2ad849b1ebe6b973eb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3f72404ff527694d397bedf439b06c03810d4e8b9e435c913f7f9aeb7ca3a022",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ActualEndpointLimitAttempt07/Variant8baaeaea2cecf028367f8ebe16e999a479495a5b7e6dad2ad849b1ebe6b973eb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:52c4881e-14af-3bb8-e82a-247c35dd6fa9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 101–108.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_positiveMass_tendsto : Tendsto positiveMass atTop atTop := by
  apply tendsto_atTop_mono' (l:=atTop)
    (f₁:=fun A : ℝ => criticalPrimeTest A (2*A-1)-1)
  · filter_upwards [eventually_ge_atTop (1:ℝ)] with A hA
    exact actual_excursion_le_positiveMass hA ⟨by linarith,by linarith⟩
  · simpa only [sub_eq_add_neg] using
      tendsto_atTop_add_const_right atTop (-1:ℝ) actual_endpoint_excursion_tendsto

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ActualEndpointLimitAttempt07/Variant8baaeaea2cecf028367f8ebe16e999a479495a5b7e6dad2ad849b1ebe6b973eb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ActualEndpointLimitAttempt07/Variant8baaeaea2cecf028367f8ebe16e999a479495a5b7e6dad2ad849b1ebe6b973eb.lean#L101).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bfa1d736b56581bc712f88e81e0237e690a7edd5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
