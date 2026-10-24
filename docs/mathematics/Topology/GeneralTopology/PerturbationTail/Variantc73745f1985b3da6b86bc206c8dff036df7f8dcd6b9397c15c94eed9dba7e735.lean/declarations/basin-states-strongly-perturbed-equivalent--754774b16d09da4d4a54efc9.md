# basin_states_strongly_perturbed_equivalent

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b0cd1fed3b4e68ea997e4d8ae51a7fe6244a7f8f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 569,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c7/c73745f1985b3da6b86bc206c8dff036df7f8dcd6b9397c15c94eed9dba7e735.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8f8c07be-8c11-f55b-4aa1-13dbd35434ff",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5a0e36be-6d2a-2c1f-6ed6-e92ff400faf5",
  "kind": "theorem",
  "lexical_name": "basin_states_strongly_perturbed_equivalent",
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
  "slug": "basin-states-strongly-perturbed-equivalent--754774b16d09da4d4a54efc9",
  "source": {
    "blob": "b0cd1fed3b4e68ea997e4d8ae51a7fe6244a7f8f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 588,
    "line": 569,
    "path": "GRWTSK/Topology/GeneralTopology/PerturbationTail/Variantc73745f1985b3da6b86bc206c8dff036df7f8dcd6b9397c15c94eed9dba7e735.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:754774b16d09da4d4a54efc980e1a4b98b13b262ce5e70c7ffb001130294d061",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/PerturbationTail/Variantc73745f1985b3da6b86bc206c8dff036df7f8dcd6b9397c15c94eed9dba7e735.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5a0e36be-6d2a-2c1f-6ed6-e92ff400faf5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 569–588.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem basin_states_strongly_perturbed_equivalent
    {State : Type u}
    {Schedule : Type v}
    [PseudoMetricSpace State]
    (exact :
      ContractiveBoundaryCertificate State Schedule)
    {leftInitial rightInitial : State}
    (left_mem : leftInitial ∈ exact.basin)
    (right_mem : rightInitial ∈ exact.basin) :
    StronglyPerturbedAsymptoticallyEquivalent
      exact leftInitial rightInitial := by
  refine ⟨left_mem, right_mem, ?_⟩
  intro left right leftSchedule rightSchedule
    leftTail rightTail
  exact
    perturbed_traversal_limit_deterministic
      left right leftSchedule rightSchedule
      left_mem right_mem leftTail rightTail

end Mathematics.MobiusOntology
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/PerturbationTail/Variantc73745f1985b3da6b86bc206c8dff036df7f8dcd6b9397c15c94eed9dba7e735.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/PerturbationTail/Variantc73745f1985b3da6b86bc206c8dff036df7f8dcd6b9397c15c94eed9dba7e735.lean#L569).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b0cd1fed3b4e68ea997e4d8ae51a7fe6244a7f8f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
