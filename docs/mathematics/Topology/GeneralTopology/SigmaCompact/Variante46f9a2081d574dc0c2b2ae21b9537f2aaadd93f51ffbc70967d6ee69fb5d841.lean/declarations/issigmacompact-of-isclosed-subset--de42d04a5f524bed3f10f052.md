# IsSigmaCompact.of_isClosed_subset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b762bdc1d995cbd762640a9b95541f9205068dc8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 89,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e4/e46f9a2081d574dc0c2b2ae21b9537f2aaadd93f51ffbc70967d6ee69fb5d841.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b305c1cf-fb4d-7d41-abc3-1430fcb5ec42",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6e8167f4-c859-e899-6bea-bd738e9965d3",
  "kind": "lemma",
  "lexical_name": "IsSigmaCompact.of_isClosed_subset",
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
  "slug": "issigmacompact-of-isclosed-subset--de42d04a5f524bed3f10f052",
  "source": {
    "blob": "b762bdc1d995cbd762640a9b95541f9205068dc8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 96,
    "line": 89,
    "path": "GRWTSK/Topology/GeneralTopology/SigmaCompact/Variante46f9a2081d574dc0c2b2ae21b9537f2aaadd93f51ffbc70967d6ee69fb5d841.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:de42d04a5f524bed3f10f0524c2b23b5394b9ff38b41232021815717c97511ed",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SigmaCompact/Variante46f9a2081d574dc0c2b2ae21b9537f2aaadd93f51ffbc70967d6ee69fb5d841.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6e8167f4-c859-e899-6bea-bd738e9965d3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 89–96.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsSigmaCompact.of_isClosed_subset {s t : Set X} (ht : IsSigmaCompact t)
    (hs : IsClosed s) (h : s ⊆ t) : IsSigmaCompact s := by
  rcases ht with ⟨K, hcompact, hcov⟩
  refine ⟨(fun n ↦ s ∩ (K n)), fun n ↦ (hcompact n).inter_left hs, ?_⟩
  rw [← inter_iUnion, hcov]
  exact inter_eq_left.mpr h

/-- If `s` is σ-compact and `f` is continuous on `s`, `f(s)` is σ-compact. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SigmaCompact/Variante46f9a2081d574dc0c2b2ae21b9537f2aaadd93f51ffbc70967d6ee69fb5d841.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SigmaCompact/Variante46f9a2081d574dc0c2b2ae21b9537f2aaadd93f51ffbc70967d6ee69fb5d841.lean#L89).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b762bdc1d995cbd762640a9b95541f9205068dc8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
