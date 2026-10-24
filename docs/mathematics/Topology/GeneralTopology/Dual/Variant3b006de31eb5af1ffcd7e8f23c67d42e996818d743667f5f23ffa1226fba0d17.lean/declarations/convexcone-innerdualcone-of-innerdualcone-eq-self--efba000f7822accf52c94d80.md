# ConvexCone.innerDualCone_of_innerDualCone_eq_self

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "98f5e15700d253f57d660fae9751607c2e2e9d2a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 198,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3b/3b006de31eb5af1ffcd7e8f23c67d42e996818d743667f5f23ffa1226fba0d17.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:97d10448-334b-78f3-dcf9-5631a5a32ca1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:00119f34-fa43-bf45-a03a-8cf960cc8060",
  "kind": "theorem",
  "lexical_name": "ConvexCone.innerDualCone_of_innerDualCone_eq_self",
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
  "slug": "convexcone-innerdualcone-of-innerdualcone-eq-self--efba000f7822accf52c94d80",
  "source": {
    "blob": "98f5e15700d253f57d660fae9751607c2e2e9d2a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 213,
    "line": 198,
    "path": "GRWTSK/Topology/GeneralTopology/Dual/Variant3b006de31eb5af1ffcd7e8f23c67d42e996818d743667f5f23ffa1226fba0d17.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:efba000f7822accf52c94d806c26a223cb39d08e4e5252b3f4212e6fb87600eb",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Dual/Variant3b006de31eb5af1ffcd7e8f23c67d42e996818d743667f5f23ffa1226fba0d17.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:00119f34-fa43-bf45-a03a-8cf960cc8060`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 198–213.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ConvexCone.innerDualCone_of_innerDualCone_eq_self (K : ConvexCone ℝ H)
    (ne : (K : Set H).Nonempty) (hc : IsClosed (K : Set H)) :
    ((K : Set H).innerDualCone : Set H).innerDualCone = K := by
  ext x
  constructor
  · rw [mem_innerDualCone, ← SetLike.mem_coe]
    contrapose!
    exact K.hyperplane_separation_of_nonempty_of_isClosed_of_nmem ne hc
  · rintro hxK y h
    specialize h x hxK
    rwa [real_inner_comm]
#align convex_cone.inner_dual_cone_of_inner_dual_cone_eq_self ConvexCone.innerDualCone_of_innerDualCone_eq_self

end CompleteSpace

end Dual
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Dual/Variant3b006de31eb5af1ffcd7e8f23c67d42e996818d743667f5f23ffa1226fba0d17.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Dual/Variant3b006de31eb5af1ffcd7e8f23c67d42e996818d743667f5f23ffa1226fba0d17.lean#L198).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `98f5e15700d253f57d660fae9751607c2e2e9d2a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
