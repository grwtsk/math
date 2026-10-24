# continuousMapEval_bijective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9070af05da546ea5f420110123a6dcf95a8edaa6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 407,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/cf/cf726d940e0fb6991096c619156f4ae8b07c49b7e8996d25af646718a4d5e1f1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e7e731b4-d553-7e0f-a06e-62025ae0dfef",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:749ca7b8-6dd7-d246-8bfb-d32044ee5cba",
  "kind": "theorem",
  "lexical_name": "continuousMapEval_bijective",
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
  "slug": "continuousmapeval-bijective--f99a10b749059b97c667ae0f",
  "source": {
    "blob": "9070af05da546ea5f420110123a6dcf95a8edaa6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 424,
    "line": 407,
    "path": "GRWTSK/Topology/GeneralTopology/Ideals/Variantcf726d940e0fb6991096c619156f4ae8b07c49b7e8996d25af646718a4d5e1f1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f99a10b749059b97c667ae0f5f58d62310f433138e0391170143a974967b9975",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Ideals/Variantcf726d940e0fb6991096c619156f4ae8b07c49b7e8996d25af646718a4d5e1f1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:749ca7b8-6dd7-d246-8bfb-d32044ee5cba`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 407–424.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem continuousMapEval_bijective : Bijective (continuousMapEval X 𝕜) := by
  refine ⟨fun x y hxy => ?_, fun φ => ?_⟩
  · contrapose! hxy
    rcases exists_continuous_zero_one_of_isClosed (isClosed_singleton : _root_.IsClosed {x})
        (isClosed_singleton : _root_.IsClosed {y}) (Set.disjoint_singleton.mpr hxy) with
      ⟨f, fx, fy, -⟩
    rw [DFunLike.ne_iff]
    use (⟨fun (x : ℝ) => (x : 𝕜), RCLike.continuous_ofReal⟩ : C(ℝ, 𝕜)).comp f
    simpa only [continuousMapEval_apply_apply, ContinuousMap.comp_apply, coe_mk, Ne,
      RCLike.ofReal_inj] using
      ((fx (Set.mem_singleton x)).symm ▸ (fy (Set.mem_singleton y)).symm ▸ zero_ne_one : f x ≠ f y)
  · obtain ⟨x, hx⟩ := (ideal_isMaximal_iff (RingHom.ker φ)).mp inferInstance
    refine ⟨x, CharacterSpace.ext_ker <| Ideal.ext fun f => ?_⟩
    simpa only [RingHom.mem_ker, continuousMapEval_apply_apply, mem_idealOfSet_compl_singleton,
      RingHom.mem_ker] using SetLike.ext_iff.mp hx f

/-- This is the natural homeomorphism between a compact Hausdorff space `X` and the
`WeakDual.characterSpace 𝕜 C(X, 𝕜)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Ideals/Variantcf726d940e0fb6991096c619156f4ae8b07c49b7e8996d25af646718a4d5e1f1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Ideals/Variantcf726d940e0fb6991096c619156f4ae8b07c49b7e8996d25af646718a4d5e1f1.lean#L407).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9070af05da546ea5f420110123a6dcf95a8edaa6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
