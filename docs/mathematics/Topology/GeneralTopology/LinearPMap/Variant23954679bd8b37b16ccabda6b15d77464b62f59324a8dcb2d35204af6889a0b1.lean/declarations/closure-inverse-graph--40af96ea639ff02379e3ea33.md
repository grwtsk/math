# closure_inverse_graph

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e5da29e849e9c1471705a0a9bbe52abde1610485",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 183,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/23/23954679bd8b37b16ccabda6b15d77464b62f59324a8dcb2d35204af6889a0b1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:36ebb660-6d09-21ae-d5d1-84d4e812916d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:39ce8306-6081-4997-9c97-9c962a8ac87e",
  "kind": "theorem",
  "lexical_name": "closure_inverse_graph",
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
  "slug": "closure-inverse-graph--40af96ea639ff02379e3ea33",
  "source": {
    "blob": "e5da29e849e9c1471705a0a9bbe52abde1610485",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 197,
    "line": 183,
    "path": "GRWTSK/Topology/GeneralTopology/LinearPMap/Variant23954679bd8b37b16ccabda6b15d77464b62f59324a8dcb2d35204af6889a0b1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:40af96ea639ff02379e3ea3336767e26ba6ea43c01534f20aacf0b96e8cc87c2",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LinearPMap/Variant23954679bd8b37b16ccabda6b15d77464b62f59324a8dcb2d35204af6889a0b1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:39ce8306-6081-4997-9c97-9c962a8ac87e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 183–197.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem closure_inverse_graph (hf : f.ker = ⊥) (hf' : f.IsClosable) (hcf : f.closure.ker = ⊥) :
    f.closure.inverse.graph = f.inverse.graph.topologicalClosure := by
  rw [inverse_graph hf, inverse_graph hcf, ← hf'.graph_closure_eq_closure_graph]
  apply SetLike.ext'
  simp only [Submodule.topologicalClosure_coe, Submodule.map_coe, LinearEquiv.coe_coe,
    LinearEquiv.prodComm_apply]
  apply (image_closure_subset_closure_image continuous_swap).antisymm
  have h1 := (LinearEquiv.prodComm R E F).toEquiv.image_eq_preimage_symm f.graph
  have h2 := (LinearEquiv.prodComm R E F).toEquiv.image_eq_preimage_symm (_root_.closure f.graph)
  simp only [LinearEquiv.coe_toEquiv, LinearEquiv.prodComm_apply] at h1 h2
  rw [h1, h2]
  apply continuous_swap.closure_preimage_subset

/-- Assuming that `f` is invertible and closable, then the closure is invertible if and only
if the inverse of `f` is closable. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LinearPMap/Variant23954679bd8b37b16ccabda6b15d77464b62f59324a8dcb2d35204af6889a0b1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LinearPMap/Variant23954679bd8b37b16ccabda6b15d77464b62f59324a8dcb2d35204af6889a0b1.lean#L183).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e5da29e849e9c1471705a0a9bbe52abde1610485` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
