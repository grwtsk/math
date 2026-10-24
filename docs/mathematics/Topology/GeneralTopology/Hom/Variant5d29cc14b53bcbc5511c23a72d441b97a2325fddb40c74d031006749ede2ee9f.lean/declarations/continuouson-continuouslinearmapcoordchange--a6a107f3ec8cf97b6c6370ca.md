# continuousOn_continuousLinearMapCoordChange

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3bcd60575268952101c9876171e5116af0dc10e3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 71,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5d/5d29cc14b53bcbc5511c23a72d441b97a2325fddb40c74d031006749ede2ee9f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:58455e10-2428-2ed1-f9b5-8bbc87011c76",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e2652623-ca06-724d-03b8-8d2d8e440d34",
  "kind": "theorem",
  "lexical_name": "continuousOn_continuousLinearMapCoordChange",
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
  "slug": "continuouson-continuouslinearmapcoordchange--a6a107f3ec8cf97b6c6370ca",
  "source": {
    "blob": "3bcd60575268952101c9876171e5116af0dc10e3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 95,
    "line": 71,
    "path": "GRWTSK/Topology/GeneralTopology/Hom/Variant5d29cc14b53bcbc5511c23a72d441b97a2325fddb40c74d031006749ede2ee9f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a6a107f3ec8cf97b6c6370cae395d75a7afe2588483ed5d9895488e363356f6e",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Hom/Variant5d29cc14b53bcbc5511c23a72d441b97a2325fddb40c74d031006749ede2ee9f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e2652623-ca06-724d-03b8-8d2d8e440d34`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–95.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem continuousOn_continuousLinearMapCoordChange [RingHomIsometric σ]
    [VectorBundle 𝕜₁ F₁ E₁] [VectorBundle 𝕜₂ F₂ E₂]
    [MemTrivializationAtlas e₁] [MemTrivializationAtlas e₁'] [MemTrivializationAtlas e₂]
    [MemTrivializationAtlas e₂'] :
    ContinuousOn (continuousLinearMapCoordChange σ e₁ e₁' e₂ e₂')
      (e₁.baseSet ∩ e₂.baseSet ∩ (e₁'.baseSet ∩ e₂'.baseSet)) := by
  have h₁ := (compSL F₁ F₂ F₂ σ (RingHom.id 𝕜₂)).continuous
  have h₂ := (ContinuousLinearMap.flip (compSL F₁ F₁ F₂ (RingHom.id 𝕜₁) σ)).continuous
  have h₃ := continuousOn_coordChange 𝕜₁ e₁' e₁
  have h₄ := continuousOn_coordChange 𝕜₂ e₂ e₂'
  refine ((h₁.comp_continuousOn (h₄.mono ?_)).clm_comp (h₂.comp_continuousOn (h₃.mono ?_))).congr ?_
  · mfld_set_tac
  · mfld_set_tac
  · intro b _
    ext L v
    dsimp [continuousLinearMapCoordChange]

variable (σ e₁ e₁' e₂ e₂')
variable [e₁.IsLinear 𝕜₁] [e₁'.IsLinear 𝕜₁] [e₂.IsLinear 𝕜₂] [e₂'.IsLinear 𝕜₂]

/-- Given trivializations `e₁`, `e₂` for vector bundles `E₁`, `E₂` over a base `B`,
`Pretrivialization.continuousLinearMap σ e₁ e₂` is the induced pretrivialization for the
continuous `σ`-semilinear maps from `E₁` to `E₂`. That is, the map which will later become a
trivialization, after the bundle of continuous semilinear maps is equipped with the right
topological vector bundle structure. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Hom/Variant5d29cc14b53bcbc5511c23a72d441b97a2325fddb40c74d031006749ede2ee9f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Hom/Variant5d29cc14b53bcbc5511c23a72d441b97a2325fddb40c74d031006749ede2ee9f.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3bcd60575268952101c9876171e5116af0dc10e3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
