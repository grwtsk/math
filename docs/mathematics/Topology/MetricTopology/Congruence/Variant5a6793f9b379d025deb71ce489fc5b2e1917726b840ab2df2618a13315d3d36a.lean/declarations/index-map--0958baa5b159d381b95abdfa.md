# index_map

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fa01a3b591b737686a929bb0a5952cefa84a146e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 85,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5a/5a6793f9b379d025deb71ce489fc5b2e1917726b840ab2df2618a13315d3d36a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bb40cdf9-43b9-e3fb-7cf1-8108ab3ddd99",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:333216ac-75a0-0d3f-bdb7-90543ab08102",
  "kind": "lemma",
  "lexical_name": "index_map",
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
  "slug": "index-map--0958baa5b159d381b95abdfa",
  "source": {
    "blob": "fa01a3b591b737686a929bb0a5952cefa84a146e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 88,
    "line": 85,
    "path": "GRWTSK/Topology/MetricTopology/Congruence/Variant5a6793f9b379d025deb71ce489fc5b2e1917726b840ab2df2618a13315d3d36a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0958baa5b159d381b95abdfa1670578523711e0f563322504d5f9a864373d319",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Congruence/Variant5a6793f9b379d025deb71ce489fc5b2e1917726b840ab2df2618a13315d3d36a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:333216ac-75a0-0d3f-bdb7-90543ab08102`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 85–88.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma index_map (h : v₁ ≅ v₂) (f : ι' → ι) : (v₁ ∘ f) ≅ (v₂ ∘ f) :=
  fun i₁ i₂ ↦ edist_eq h (f i₁) (f i₂)

/-- Change between equivalent index sets ι and ι'. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Congruence/Variant5a6793f9b379d025deb71ce489fc5b2e1917726b840ab2df2618a13315d3d36a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Congruence/Variant5a6793f9b379d025deb71ce489fc5b2e1917726b840ab2df2618a13315d3d36a.lean#L85).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fa01a3b591b737686a929bb0a5952cefa84a146e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
