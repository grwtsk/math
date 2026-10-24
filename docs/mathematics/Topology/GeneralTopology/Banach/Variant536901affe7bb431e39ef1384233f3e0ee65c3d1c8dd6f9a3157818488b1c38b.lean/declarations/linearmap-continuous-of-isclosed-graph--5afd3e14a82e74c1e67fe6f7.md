# LinearMap.continuous_of_isClosed_graph

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "66b95fdbaf8dd1f62c28a5a0cd2613ab7d4bcc4b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 537,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/53/536901affe7bb431e39ef1384233f3e0ee65c3d1c8dd6f9a3157818488b1c38b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:07f6fcf6-003c-1a17-ae73-dda222300830",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f88c0a2f-b4bd-baaf-f546-7c0625a019bb",
  "kind": "theorem",
  "lexical_name": "LinearMap.continuous_of_isClosed_graph",
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
  "slug": "linearmap-continuous-of-isclosed-graph--5afd3e14a82e74c1e67fe6f7",
  "source": {
    "blob": "66b95fdbaf8dd1f62c28a5a0cd2613ab7d4bcc4b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 550,
    "line": 537,
    "path": "GRWTSK/Topology/GeneralTopology/Banach/Variant536901affe7bb431e39ef1384233f3e0ee65c3d1c8dd6f9a3157818488b1c38b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5afd3e14a82e74c1e67fe6f7ba108cd337a80c24632b32009c8f7ef9c6bcb813",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Banach/Variant536901affe7bb431e39ef1384233f3e0ee65c3d1c8dd6f9a3157818488b1c38b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f88c0a2f-b4bd-baaf-f546-7c0625a019bb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 537–550.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem LinearMap.continuous_of_isClosed_graph (hg : IsClosed (g.graph : Set <| E × F)) :
    Continuous g := by
  let : CompleteSpace g.graph := completeSpace_coe_iff_isComplete.mpr hg.isComplete
  let φ₀ : E →ₗ[𝕜] E × F := LinearMap.id.prod g
  have : Function.LeftInverse Prod.fst φ₀ := fun x => rfl
  let φ : E ≃ₗ[𝕜] g.graph :=
    (LinearEquiv.ofLeftInverse this).trans (LinearEquiv.ofEq _ _ g.graph_eq_range_prod.symm)
  let ψ : g.graph ≃L[𝕜] E :=
    φ.symm.toContinuousLinearEquivOfContinuous continuous_subtype_val.fst
  exact (continuous_subtype_val.comp ψ.symm.continuous).snd

/-- A useful form of the **closed graph theorem** : let `f` be a linear map between two Banach
spaces. To show that `f` is continuous, it suffices to show that for any convergent sequence
`uₙ ⟶ x`, if `f(uₙ) ⟶ y` then `y = f(x)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Banach/Variant536901affe7bb431e39ef1384233f3e0ee65c3d1c8dd6f9a3157818488b1c38b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Banach/Variant536901affe7bb431e39ef1384233f3e0ee65c3d1c8dd6f9a3157818488b1c38b.lean#L537).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `66b95fdbaf8dd1f62c28a5a0cd2613ab7d4bcc4b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
