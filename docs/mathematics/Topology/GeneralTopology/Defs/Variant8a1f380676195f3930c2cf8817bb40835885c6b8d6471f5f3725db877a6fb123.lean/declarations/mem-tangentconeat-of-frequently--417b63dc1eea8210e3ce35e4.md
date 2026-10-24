# mem_tangentConeAt_of_frequently

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "14b08a77f07a1828a90b11776a2c6a305aa1ddf6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 83,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8a/8a1f380676195f3930c2cf8817bb40835885c6b8d6471f5f3725db877a6fb123.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3922a5f8-762d-0d38-0abf-e960d23caed2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fb3572e0-bc24-6ed7-f5f1-dc47c2aec54b",
  "kind": "theorem",
  "lexical_name": "mem_tangentConeAt_of_frequently",
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
  "slug": "mem-tangentconeat-of-frequently--417b63dc1eea8210e3ce35e4",
  "source": {
    "blob": "14b08a77f07a1828a90b11776a2c6a305aa1ddf6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 95,
    "line": 83,
    "path": "GRWTSK/Topology/GeneralTopology/Defs/Variant8a1f380676195f3930c2cf8817bb40835885c6b8d6471f5f3725db877a6fb123.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:417b63dc1eea8210e3ce35e4caf5a42d5935777d593bf9873ceb78c9572f9818",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Defs/Variant8a1f380676195f3930c2cf8817bb40835885c6b8d6471f5f3725db877a6fb123.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fb3572e0-bc24-6ed7-f5f1-dc47c2aec54b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 83–95.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_tangentConeAt_of_frequently {α : Type*} (l : Filter α) (c : α → R) (d : α → E)
    (hd₀ : Tendsto d l (𝓝 0)) (hds : ∃ᶠ n in l, x + d n ∈ s)
    (hcd : Tendsto (fun n ↦ c n • d n) l (𝓝 y)) : y ∈ tangentConeAt R s x := by
  suffices Tendsto (fun n ↦ c n • d n) (l ⊓ 𝓟 {y | x + d y ∈ s}) (⊤ • 𝓝[(x + ·) ⁻¹' s] 0) by
    rw [frequently_iff_neBot] at hds
    rw [tangentConeAt_def]
    exact ClusterPt.mono (hcd.mono_left inf_le_left).mapClusterPt this
  rw [← map₂_smul, ← map_prod_eq_map₂]
  refine tendsto_map.comp (tendsto_top.prodMk (tendsto_nhdsWithin_iff.mpr ⟨?_, ?_⟩))
  · exact hd₀.mono_left inf_le_left
  · simp [eventually_inf_principal]

/-- A special case of `mem_tangentConeAt_of_frequently`, which avoids `Filter.Frequently`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Defs/Variant8a1f380676195f3930c2cf8817bb40835885c6b8d6471f5f3725db877a6fb123.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Defs/Variant8a1f380676195f3930c2cf8817bb40835885c6b8d6471f5f3725db877a6fb123.lean#L83).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `14b08a77f07a1828a90b11776a2c6a305aa1ddf6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
