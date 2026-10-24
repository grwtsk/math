# IsLocalMaxOn.closure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d7a6932c-da34-82c1-ff87-870965ca6a4d",
  "kind": "theorem",
  "lexical_name": "IsLocalMaxOn.closure",
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
  "slug": "islocalmaxon-closure--d89938001ebe32fc7c610b9b",
  "source": {
    "blob": "a712901da78c7d687361460bd85c33e066a62290",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 57,
    "line": 47,
    "path": "GRWTSK/Topology/GeneralTopology/ExtrClosure/Variant4b607e73e75a9ce1d94cd896bf74a73193baf7309ce361535807d833af8316dc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d89938001ebe32fc7c610b9b2eb86c0f413b81b6cd86f1e99fa9b10df715e024",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ExtrClosure/Variant4b607e73e75a9ce1d94cd896bf74a73193baf7309ce361535807d833af8316dc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d7a6932c-da34-82c1-ff87-870965ca6a4d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 47–57.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem IsLocalMaxOn.closure (h : IsLocalMaxOn f s a) (hc : ContinuousOn f (closure s)) :
    IsLocalMaxOn f (closure s) a := by
  rcases mem_nhdsWithin.1 h with ⟨U, Uo, aU, hU⟩
  refine mem_nhdsWithin.2 ⟨U, Uo, aU, ?_⟩
  rintro x ⟨hxU, hxs⟩
  refine ContinuousWithinAt.closure_le ?_ ?_ continuousWithinAt_const hU
  · rwa [mem_closure_iff_nhdsWithin_neBot, nhdsWithin_inter_of_mem, ←
      mem_closure_iff_nhdsWithin_neBot]
    exact nhdsWithin_le_nhds (Uo.mem_nhds hxU)
  · exact (hc _ hxs).mono (inter_subset_right.trans subset_closure)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ExtrClosure/Variant4b607e73e75a9ce1d94cd896bf74a73193baf7309ce361535807d833af8316dc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ExtrClosure/Variant4b607e73e75a9ce1d94cd896bf74a73193baf7309ce361535807d833af8316dc.lean#L47).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a712901da78c7d687361460bd85c33e066a62290` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
