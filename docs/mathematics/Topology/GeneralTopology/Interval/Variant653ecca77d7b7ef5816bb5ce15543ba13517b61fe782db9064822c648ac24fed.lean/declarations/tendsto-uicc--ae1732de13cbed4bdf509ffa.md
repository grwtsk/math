# Tendsto.uIcc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c210c9e40148a29029e7f1668ed843f576322921",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 261,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/65/653ecca77d7b7ef5816bb5ce15543ba13517b61fe782db9064822c648ac24fed.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:19b699a3-80a9-c492-e82d-3b99ca02ee03",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:da76da68-fc22-31ee-6e26-87b7e6d71b7a",
  "kind": "theorem",
  "lexical_name": "Tendsto.uIcc",
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
  "slug": "tendsto-uicc--ae1732de13cbed4bdf509ffa",
  "source": {
    "blob": "c210c9e40148a29029e7f1668ed843f576322921",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 268,
    "line": 261,
    "path": "GRWTSK/Topology/GeneralTopology/Interval/Variant653ecca77d7b7ef5816bb5ce15543ba13517b61fe782db9064822c648ac24fed.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ae1732de13cbed4bdf509ffa9c4be7f0f532eebb0fcb4d7b47f870aed09ceac9",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Interval/Variant653ecca77d7b7ef5816bb5ce15543ba13517b61fe782db9064822c648ac24fed.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:da76da68-fc22-31ee-6e26-87b7e6d71b7a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 261–268.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem Tendsto.uIcc {l : Filter α} [TendstoIxxClass Icc l l] {f g : β → α}
    {lb : Filter β} (hf : Tendsto f lb l) (hg : Tendsto g lb l) :
    Tendsto (fun x => [[f x, g x]]) lb l.smallSets :=
  (@TendstoIxxClass.tendsto_Ixx α Set.uIcc _ _ _).comp <| hf.prodMk hg

end LinearOrder

end Filter
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Interval/Variant653ecca77d7b7ef5816bb5ce15543ba13517b61fe782db9064822c648ac24fed.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Interval/Variant653ecca77d7b7ef5816bb5ce15543ba13517b61fe782db9064822c648ac24fed.lean#L261).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c210c9e40148a29029e7f1668ed843f576322921` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
