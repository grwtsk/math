# ConvexCone.innerDualCone_of_innerDualCone_eq_self

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5be20a35-9243-00ec-0b56-809fbadc3b7e",
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
  "slug": "convexcone-innerdualcone-of-innerdualcone-eq-self--4f428f19b7664f96bb824f6e",
  "source": {
    "blob": "ab995e1c1def2da75f3ab5bb8d28c73f31f48272",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 221,
    "line": 206,
    "path": "GRWTSK/Topology/GeneralTopology/Dual/Variant512a9942140d8750e36b299b1dd907490a09d3ba4e3b193e3ff2ab249700cb55.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4f428f19b7664f96bb824f6e5742b879347ac62ed066b09b8ea757aa8aa091a8",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Dual/Variant512a9942140d8750e36b299b1dd907490a09d3ba4e3b193e3ff2ab249700cb55.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5be20a35-9243-00ec-0b56-809fbadc3b7e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 206–221.

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

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Dual/Variant512a9942140d8750e36b299b1dd907490a09d3ba4e3b193e3ff2ab249700cb55.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Dual/Variant512a9942140d8750e36b299b1dd907490a09d3ba4e3b193e3ff2ab249700cb55.lean#L206).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ab995e1c1def2da75f3ab5bb8d28c73f31f48272` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
