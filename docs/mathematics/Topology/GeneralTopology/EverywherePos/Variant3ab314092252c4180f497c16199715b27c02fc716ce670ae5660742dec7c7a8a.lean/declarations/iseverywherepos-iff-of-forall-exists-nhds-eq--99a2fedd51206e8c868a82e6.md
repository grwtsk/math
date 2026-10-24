# isEverywherePos_iff_of_forall_exists_nhds_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a90149218799648593ee2c80984825d7b65add78",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 186,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3a/3ab314092252c4180f497c16199715b27c02fc716ce670ae5660742dec7c7a8a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c3cf3710-b40b-669b-6c94-860594ccd043",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:51ba992a-67f6-0fa3-5181-c17bf7f71305",
  "kind": "lemma",
  "lexical_name": "isEverywherePos_iff_of_forall_exists_nhds_eq",
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
  "slug": "iseverywherepos-iff-of-forall-exists-nhds-eq--99a2fedd51206e8c868a82e6",
  "source": {
    "blob": "a90149218799648593ee2c80984825d7b65add78",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 193,
    "line": 186,
    "path": "GRWTSK/Topology/GeneralTopology/EverywherePos/Variant3ab314092252c4180f497c16199715b27c02fc716ce670ae5660742dec7c7a8a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:99a2fedd51206e8c868a82e6db078f5abaff93030a8417bd4c6e15a402388c50",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/EverywherePos/Variant3ab314092252c4180f497c16199715b27c02fc716ce670ae5660742dec7c7a8a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:51ba992a-67f6-0fa3-5181-c17bf7f71305`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 186–193.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isEverywherePos_iff_of_forall_exists_nhds_eq (h : ∀ x ∈ s, ∃ t ∈ 𝓝 x, ∀ u ⊆ t, ν u = μ u) :
    IsEverywherePos ν s ↔ IsEverywherePos μ s := by
  refine ⟨fun H ↦ H.of_forall_exists_nhds_eq ?_, fun H ↦ H.of_forall_exists_nhds_eq h⟩
  intro x hx
  rcases h x hx with ⟨t, ht, h't⟩
  exact ⟨t, ht, fun u hu ↦ (h't u hu).symm⟩

/-- An open set is everywhere positive for a measure which is positive on open sets. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/EverywherePos/Variant3ab314092252c4180f497c16199715b27c02fc716ce670ae5660742dec7c7a8a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/EverywherePos/Variant3ab314092252c4180f497c16199715b27c02fc716ce670ae5660742dec7c7a8a.lean#L186).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a90149218799648593ee2c80984825d7b65add78` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
