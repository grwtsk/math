# comp_aeval

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6c0349331a0f4571ac8e5122ce0f01085e426d2a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 346,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a9/a9f032e25790cfc33033a79bf7623f440f8d7dd8333295b20f63724da5ec3f48.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:97b7051f-4025-9c0d-907b-bda7cdb0722a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5ea7b15b-a21a-bcc5-47d1-e99aaf9e0f54",
  "kind": "theorem",
  "lexical_name": "comp_aeval",
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
  "slug": "comp-aeval--ae90e885fff2f9c860ba8010",
  "source": {
    "blob": "6c0349331a0f4571ac8e5122ce0f01085e426d2a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 361,
    "line": 346,
    "path": "GRWTSK/Topology/GeneralTopology/Evaluation/Varianta9f032e25790cfc33033a79bf7623f440f8d7dd8333295b20f63724da5ec3f48.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ae90e885fff2f9c860ba8010dd3f811a22ebd5649801da1d7f457a7b665aa481",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Evaluation/Varianta9f032e25790cfc33033a79bf7623f440f8d7dd8333295b20f63724da5ec3f48.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5ea7b15b-a21a-bcc5-47d1-e99aaf9e0f54`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 346–361.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem comp_aeval (ha : HasEval a)
    {T : Type*} [CommRing T] [UniformSpace T] [IsUniformAddGroup T]
    [IsTopologicalRing T] [IsLinearTopology T T]
    [T2Space T] [Algebra R T] [ContinuousSMul R T] [CompleteSpace T]
    {ε : S →ₐ[R] T} (hε : Continuous ε) :
    ε.comp (aeval ha) = aeval (ha.map hε) := by
  apply DFunLike.ext'
  simp only [AlgHom.coe_comp, coe_aeval ha]
  rw [← RingHom.coe_coe,
    comp_eval₂ (continuous_algebraMap R S) ha (show Continuous (ε : S →+* T) from hε), coe_aeval]
  congr!
  simp only [AlgHom.comp_algebraMap_of_tower]

end Evaluation

end MvPowerSeries
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Evaluation/Varianta9f032e25790cfc33033a79bf7623f440f8d7dd8333295b20f63724da5ec3f48.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Evaluation/Varianta9f032e25790cfc33033a79bf7623f440f8d7dd8333295b20f63724da5ec3f48.lean#L346).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6c0349331a0f4571ac8e5122ce0f01085e426d2a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
