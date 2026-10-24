# dense_biUnion_interior_of_closed

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "926a6354ec0f24fe9b2d653840ab1eba471305fb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 148,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/37/37ab3f261f7190c6ec9680599ba0035d221f84bad8c9cb57b07ac1997ae17b07.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8da14f0a-454f-3aa8-66ad-8785bfc454fc",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7a56a7d5-153b-02e3-eb89-57fe03185ebb",
  "kind": "theorem",
  "lexical_name": "dense_biUnion_interior_of_closed",
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
  "slug": "dense-biunion-interior-of-closed--65cb22aaf2fb9ee6eeb1715b",
  "source": {
    "blob": "926a6354ec0f24fe9b2d653840ab1eba471305fb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 153,
    "line": 148,
    "path": "GRWTSK/Topology/GeneralTopology/Lemmas/Variant37ab3f261f7190c6ec9680599ba0035d221f84bad8c9cb57b07ac1997ae17b07.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:65cb22aaf2fb9ee6eeb1715bf2bba15608de2bddcaeb390abed3b360328a49a6",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Lemmas/Variant37ab3f261f7190c6ec9680599ba0035d221f84bad8c9cb57b07ac1997ae17b07.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7a56a7d5-153b-02e3-eb89-57fe03185ebb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 148–153.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dense_biUnion_interior_of_closed {S : Set α} {f : α → Set X} (hc : ∀ s ∈ S, IsClosed (f s))
    (hS : S.Countable) (hU : ⋃ s ∈ S, f s = univ) : Dense (⋃ s ∈ S, interior (f s)) :=
  IsGδ.univ.dense_biUnion_interior_of_closed dense_univ hS hc hU.ge

/-- Baire theorem: if countably many closed sets cover the whole space, then their interiors
are dense. Formulated here with `⋃₀`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Lemmas/Variant37ab3f261f7190c6ec9680599ba0035d221f84bad8c9cb57b07ac1997ae17b07.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Lemmas/Variant37ab3f261f7190c6ec9680599ba0035d221f84bad8c9cb57b07ac1997ae17b07.lean#L148).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `926a6354ec0f24fe9b2d653840ab1eba471305fb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
