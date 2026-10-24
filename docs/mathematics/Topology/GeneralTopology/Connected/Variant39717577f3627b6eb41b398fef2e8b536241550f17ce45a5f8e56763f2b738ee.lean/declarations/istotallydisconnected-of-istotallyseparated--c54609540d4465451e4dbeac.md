# isTotallyDisconnected_of_isTotallySeparated

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:751d910b-3437-a05f-10f6-4204d457e64e",
  "kind": "theorem",
  "lexical_name": "isTotallyDisconnected_of_isTotallySeparated",
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
  "slug": "istotallydisconnected-of-istotallyseparated--c54609540d4465451e4dbeac",
  "source": {
    "blob": "b8acb47e4588e836c15e517cee37cb8a60018219",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1537,
    "line": 1521,
    "path": "GRWTSK/Topology/GeneralTopology/Connected/Variant39717577f3627b6eb41b398fef2e8b536241550f17ce45a5f8e56763f2b738ee.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c54609540d4465451e4dbeacd74f66b2ace912383b416b241d93f8a6e5eaf87c",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Connected/Variant39717577f3627b6eb41b398fef2e8b536241550f17ce45a5f8e56763f2b738ee.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:751d910b-3437-a05f-10f6-4204d457e64e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1521–1537.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isTotallyDisconnected_of_isTotallySeparated {s : Set α} (H : IsTotallySeparated s) :
    IsTotallyDisconnected s := by
  intro t hts ht x x_in y y_in
  by_contra h
  obtain
    ⟨u : Set α, v : Set α, hu : IsOpen u, hv : IsOpen v, hxu : x ∈ u, hyv : y ∈ v, hs : s ⊆ u ∪ v,
      huv⟩ :=
    H x (hts x_in) y (hts y_in) h
  refine' (ht _ _ hu hv (hts.trans hs) ⟨x, x_in, hxu⟩ ⟨y, y_in, hyv⟩).ne_empty _
  rw [huv.inter_eq, inter_empty]
#align is_totally_disconnected_of_is_totally_separated isTotallyDisconnected_of_isTotallySeparated

alias IsTotallySeparated.isTotallyDisconnected := isTotallyDisconnected_of_isTotallySeparated
#align is_totally_separated.is_totally_disconnected IsTotallySeparated.isTotallyDisconnected

/-- A space is totally separated if any two points can be separated by two disjoint open sets
covering the whole space. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Connected/Variant39717577f3627b6eb41b398fef2e8b536241550f17ce45a5f8e56763f2b738ee.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Connected/Variant39717577f3627b6eb41b398fef2e8b536241550f17ce45a5f8e56763f2b738ee.lean#L1521).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b8acb47e4588e836c15e517cee37cb8a60018219` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
