# IsOpenQuotientMap.locallyCompactSpace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8c770d7f-1720-cce2-8b09-c91a4fb5b071",
  "kind": "theorem",
  "lexical_name": "IsOpenQuotientMap.locallyCompactSpace",
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
  "slug": "isopenquotientmap-locallycompactspace--88249652a53f1e930a5d10ad",
  "source": {
    "blob": "798e3dd3aa8b3b0f44bcab08fc4522fe989434aa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 202,
    "line": 194,
    "path": "GRWTSK/Topology/GeneralTopology/LocallyCompact/Variant0baa12f3a9d944945a43b0014c5196700ab860918d860a716432ce77bb771ec0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:88249652a53f1e930a5d10ad3e6724e61d2993c01c9e845a823eb44dde8534ab",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LocallyCompact/Variant0baa12f3a9d944945a43b0014c5196700ab860918d860a716432ce77bb771ec0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8c770d7f-1720-cce2-8b09-c91a4fb5b071`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 194–202.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsOpenQuotientMap.locallyCompactSpace [LocallyCompactSpace X] {f : X → Y}
    (hf : IsOpenQuotientMap f) : LocallyCompactSpace Y where
  local_compact_nhds := by
    refine hf.surjective.forall.2 fun x U hU ↦ ?_
    rcases local_compact_nhds (hf.continuous.continuousAt hU) with ⟨K, hKx, hKU, hKc⟩
    exact ⟨f '' K, hf.isOpenMap.image_mem_nhds hKx, image_subset_iff.2 hKU, hKc.image hf.continuous⟩

/-- If `f` is a topology inducing map with a locally compact codomain and a locally closed range,
then the domain of `f` is a locally compact space. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LocallyCompact/Variant0baa12f3a9d944945a43b0014c5196700ab860918d860a716432ce77bb771ec0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LocallyCompact/Variant0baa12f3a9d944945a43b0014c5196700ab860918d860a716432ce77bb771ec0.lean#L194).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `798e3dd3aa8b3b0f44bcab08fc4522fe989434aa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
