# tendstoLocallyUniformlyOn_biUnion

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
      "line": 102,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/85/85d8051e48b46ff21d19ece97ef97ec41b4803e511dcf677724998327eff90f0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:25d47198-092c-416d-a2d7-2f3f6598e699",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:83070bf1-2131-bfc4-d1e3-3105013e8616",
  "kind": "theorem",
  "lexical_name": "tendstoLocallyUniformlyOn_biUnion",
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
  "slug": "tendstolocallyuniformlyon-biunion--f3c4fb5e46f7ab355bc83fe2",
  "source": {
    "blob": "084041ee3b5f5e565688f6e5195a998c10f0a379",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 107,
    "line": 102,
    "path": "GRWTSK/Topology/GeneralTopology/LocallyUniformConvergence/Variant85d8051e48b46ff21d19ece97ef97ec41b4803e511dcf677724998327eff90f0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f3c4fb5e46f7ab355bc83fe2d8859d5bc3d200a918fd57c472c9d849bfdca1ea",
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

Occurrence: `result:83070bf1-2131-bfc4-d1e3-3105013e8616`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 102–107.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendstoLocallyUniformlyOn_biUnion {s : Set γ} {S : γ → Set α} (hS : ∀ i ∈ s, IsOpen (S i))
    (h : ∀ i ∈ s, TendstoLocallyUniformlyOn F f p (S i)) :
    TendstoLocallyUniformlyOn F f p (⋃ i ∈ s, S i) :=
  tendstoLocallyUniformlyOn_iUnion (fun i => isOpen_iUnion (hS i)) fun i =>
   tendstoLocallyUniformlyOn_iUnion (hS i) (h i)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LocallyUniformConvergence/Variant85d8051e48b46ff21d19ece97ef97ec41b4803e511dcf677724998327eff90f0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LocallyUniformConvergence/Variant85d8051e48b46ff21d19ece97ef97ec41b4803e511dcf677724998327eff90f0.lean#L102).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `084041ee3b5f5e565688f6e5195a998c10f0a379` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
