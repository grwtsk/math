# TendstoLocallyUniformlyOn.congr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "084041ee3b5f5e565688f6e5195a998c10f0a379",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 243,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/85/85d8051e48b46ff21d19ece97ef97ec41b4803e511dcf677724998327eff90f0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6b220973-f184-ac1a-a8f5-acb75040f064",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:df478815-9687-7fd9-8850-1e5377e0e10b",
  "kind": "theorem",
  "lexical_name": "TendstoLocallyUniformlyOn.congr",
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
  "slug": "tendstolocallyuniformlyon-congr--a90472576615a24e5375e473",
  "source": {
    "blob": "084041ee3b5f5e565688f6e5195a998c10f0a379",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 249,
    "line": 243,
    "path": "GRWTSK/Topology/GeneralTopology/LocallyUniformConvergence/Variant85d8051e48b46ff21d19ece97ef97ec41b4803e511dcf677724998327eff90f0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a90472576615a24e5375e47375bf13f8c3af43e096fe8984b55be7d6ec5c5c1f",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LocallyUniformConvergence/Variant85d8051e48b46ff21d19ece97ef97ec41b4803e511dcf677724998327eff90f0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:df478815-9687-7fd9-8850-1e5377e0e10b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 243–249.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem TendstoLocallyUniformlyOn.congr {G : ι → α → β} (hf : TendstoLocallyUniformlyOn F f p s)
    (hg : ∀ n, s.EqOn (F n) (G n)) : TendstoLocallyUniformlyOn G f p s := by
  rintro u hu x hx
  obtain ⟨t, ht, h⟩ := hf u hu x hx
  refine ⟨s ∩ t, inter_mem self_mem_nhdsWithin ht, ?_⟩
  filter_upwards [h] with i hi y hy using hg i hy.1 ▸ hi y hy.2

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LocallyUniformConvergence/Variant85d8051e48b46ff21d19ece97ef97ec41b4803e511dcf677724998327eff90f0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LocallyUniformConvergence/Variant85d8051e48b46ff21d19ece97ef97ec41b4803e511dcf677724998327eff90f0.lean#L243).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `084041ee3b5f5e565688f6e5195a998c10f0a379` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
