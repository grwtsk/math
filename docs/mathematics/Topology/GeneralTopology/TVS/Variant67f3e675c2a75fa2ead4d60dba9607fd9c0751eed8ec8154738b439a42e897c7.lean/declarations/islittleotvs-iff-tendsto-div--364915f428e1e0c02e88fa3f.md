# isLittleOTVS_iff_tendsto_div

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5624ae2be391f87ef07b2377952d05a28e73510e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 127,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/67/67f3e675c2a75fa2ead4d60dba9607fd9c0751eed8ec8154738b439a42e897c7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:22affc28-9f28-969b-d232-a10c6f3c3151",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:cd4e11fe-5f4c-1967-7989-d1f69bb27c98",
  "kind": "theorem",
  "lexical_name": "isLittleOTVS_iff_tendsto_div",
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
  "slug": "islittleotvs-iff-tendsto-div--364915f428e1e0c02e88fa3f",
  "source": {
    "blob": "5624ae2be391f87ef07b2377952d05a28e73510e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 137,
    "line": 127,
    "path": "GRWTSK/Topology/GeneralTopology/TVS/Variant67f3e675c2a75fa2ead4d60dba9607fd9c0751eed8ec8154738b439a42e897c7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:364915f428e1e0c02e88fa3fd1eac67cc815b45385d5952e7904f98ec055e315",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/TVS/Variant67f3e675c2a75fa2ead4d60dba9607fd9c0751eed8ec8154738b439a42e897c7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cd4e11fe-5f4c-1967-7989-d1f69bb27c98`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 127–137.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isLittleOTVS_iff_tendsto_div :
    f =o[𝕜; l] g ↔ ∀ U ∈ 𝓝 0, ∃ V ∈ 𝓝 0,
      Tendsto (fun x ↦ egauge 𝕜 U (f x) / egauge 𝕜 V (g x)) l (𝓝 0) := by
  simp only [isLittleOTVS_iff, ← ENNReal.coe_zero, ENNReal.nhds_coe, ← NNReal.bot_eq_zero,
    (nhds_bot_basis_Iic.map _).tendsto_right_iff]
  simp +contextual [ENNReal.div_le_iff_le_mul, pos_iff_ne_zero, EventuallyLE]

alias ⟨IsLittleOTVS.tendsto_div, IsLittleOTVS.of_tendsto_div⟩ := isLittleOTVS_iff_tendsto_div

/-- A version of `IsLittleOTVS.exists_eventuallyLE_mul`
where `ε` is quantified over `ℝ≥0∞` instead of `ℝ≥0`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/TVS/Variant67f3e675c2a75fa2ead4d60dba9607fd9c0751eed8ec8154738b439a42e897c7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/TVS/Variant67f3e675c2a75fa2ead4d60dba9607fd9c0751eed8ec8154738b439a42e897c7.lean#L127).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5624ae2be391f87ef07b2377952d05a28e73510e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
