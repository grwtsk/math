# prod_self_subset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3e9bcc8d956ea0f73449bd91178b1f974ef29466",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 95,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/07/07f5cdd95acee03a2dedf23dbdb927afc0c756a3db185a4d71f08afe57fc7840.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6e687eff-2fd4-eb5d-e3c4-cb9948071142",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:69d06bca-950b-81e5-029e-1a67580021fe",
  "kind": "theorem",
  "lexical_name": "prod_self_subset",
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
  "slug": "prod-self-subset--e67fd8f637239e9155f9665c",
  "source": {
    "blob": "3e9bcc8d956ea0f73449bd91178b1f974ef29466",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 101,
    "line": 95,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant07f5cdd95acee03a2dedf23dbdb927afc0c756a3db185a4d71f08afe57fc7840.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e67fd8f637239e9155f9665c3c56c7a0d8dcd2d51947b9879b6188a7d2f14eeb",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant07f5cdd95acee03a2dedf23dbdb927afc0c756a3db185a4d71f08afe57fc7840.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:69d06bca-950b-81e5-029e-1a67580021fe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 95–101.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem prod_self_subset {U} (hU : U ∈ 𝓝 (1 : G × G)) :
    ∃ V : OpenSubgroup G, (V : Set G) ×ˢ (V : Set G) ⊆ U :=
  let ⟨V, W, h⟩ := prod_subset hU
  ⟨V ⊓ W, by refine Set.Subset.trans (Set.prod_mono ?_ ?_) ‹_› <;> simp⟩

/-- The Cartesian product of two nonarchimedean groups is nonarchimedean. -/
@[to_additive /-- The Cartesian product of two nonarchimedean groups is nonarchimedean. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant07f5cdd95acee03a2dedf23dbdb927afc0c756a3db185a4d71f08afe57fc7840.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant07f5cdd95acee03a2dedf23dbdb927afc0c756a3db185a4d71f08afe57fc7840.lean#L95).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3e9bcc8d956ea0f73449bd91178b1f974ef29466` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
