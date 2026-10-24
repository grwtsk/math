# uniformContinuousOn_of_uniform_approx_of_uniformContinuousOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d72af75a4a61ec8563c23a25bf7f43347efb60f3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 197,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7b/7be287f12f3f369243dba3b8c9818361c96c63ce32cabfd5f1626b315c268d71.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:aa9b7210-9e27-4312-6358-bdfc05973a9d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:97f49dca-527a-a2ea-d910-bc85b3379032",
  "kind": "theorem",
  "lexical_name": "uniformContinuousOn_of_uniform_approx_of_uniformContinuousOn",
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
  "slug": "uniformcontinuouson-of-uniform-approx-of-uniformcontinuouson--70048bc7b0c2ec9d3ac010f2",
  "source": {
    "blob": "d72af75a4a61ec8563c23a25bf7f43347efb60f3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 209,
    "line": 197,
    "path": "GRWTSK/Topology/GeneralTopology/UniformApproximation/Variant7be287f12f3f369243dba3b8c9818361c96c63ce32cabfd5f1626b315c268d71.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:70048bc7b0c2ec9d3ac010f239550a9239511c4138b2351260736fb10fedfd37",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UniformApproximation/Variant7be287f12f3f369243dba3b8c9818361c96c63ce32cabfd5f1626b315c268d71.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:97f49dca-527a-a2ea-d910-bc85b3379032`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 197–209.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem uniformContinuousOn_of_uniform_approx_of_uniformContinuousOn
    (h : ∀ u ∈ 𝓤 β, ∃ F : α → β, UniformContinuousOn F s ∧ ∀ y ∈ s, (f y, F y) ∈ u) :
    UniformContinuousOn f s := by
  simp_rw [uniformContinuousOn_iff_restrict, uniformContinuous_def] at h ⊢
  intro u hu
  obtain ⟨v, hv, hvsymm, hvu⟩ := comp_comp_symm_mem_uniformity_sets hu
  obtain ⟨F, hF, hFv⟩ := h v hv
  filter_upwards [hF v hv] with x hx
  exact hvu <| prodMk_mem_comp (prodMk_mem_comp (hFv _ x.1.prop) hx)
      <| hvsymm.symm (f x.2) (F x.2) <| hFv _ x.2.prop

/-- A function which can be uniformly approximated by uniformly continuous functions is uniformly
continuous. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/UniformApproximation/Variant7be287f12f3f369243dba3b8c9818361c96c63ce32cabfd5f1626b315c268d71.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UniformApproximation/Variant7be287f12f3f369243dba3b8c9818361c96c63ce32cabfd5f1626b315c268d71.lean#L197).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d72af75a4a61ec8563c23a25bf7f43347efb60f3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
