# IsPreconnected.induction₂

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:25bc76ec-fb9b-7dcd-f97c-1fec005f9354",
  "kind": "lemma",
  "lexical_name": "IsPreconnected.induction₂",
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
  "slug": "ispreconnected-induction--0fc4e109375af9a27f946517",
  "source": {
    "blob": "b8acb47e4588e836c15e517cee37cb8a60018219",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1024,
    "line": 1014,
    "path": "GRWTSK/Topology/GeneralTopology/Connected/Variant39717577f3627b6eb41b398fef2e8b536241550f17ce45a5f8e56763f2b738ee.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0fc4e109375af9a27f94651700531084ad93223e6716d52af92a9999c08ff887",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Connected/Variant39717577f3627b6eb41b398fef2e8b536241550f17ce45a5f8e56763f2b738ee.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:25bc76ec-fb9b-7dcd-f97c-1fec005f9354`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1014–1024.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsPreconnected.induction₂ {s : Set α} (hs : IsPreconnected s) (P : α → α → Prop)
    (h : ∀ x ∈ s, ∀ᶠ y in 𝓝[s] x, P x y)
    (h' : ∀ x y z, x ∈ s → y ∈ s → z ∈ s → P x y → P y z → P x z)
    (h'' : ∀ x y, x ∈ s → y ∈ s → P x y → P y x)
    {x y : α} (hx : x ∈ s) (hy : y ∈ s) : P x y := by
  apply hs.induction₂' P (fun z hz ↦ ?_) h' hx hy
  filter_upwards [h z hz, self_mem_nhdsWithin] with a ha h'a
  exact ⟨ha, h'' z a hz h'a ha⟩

/-- A set `s` is preconnected if and only if for every cover by two open sets that are disjoint on
`s`, it is contained in one of the two covering sets. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Connected/Variant39717577f3627b6eb41b398fef2e8b536241550f17ce45a5f8e56763f2b738ee.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Connected/Variant39717577f3627b6eb41b398fef2e8b536241550f17ce45a5f8e56763f2b738ee.lean#L1014).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b8acb47e4588e836c15e517cee37cb8a60018219` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
