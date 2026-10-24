# foldr_attach

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9502589a50e673c3faefbb7f95b349514d6ed257",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 357,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3a/3a4ab48b28c6ef486431ba32dabe800716c5277d101335492834bd66de705c63.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e21ef693-931f-3329-e689-7dfe0704bf9d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:978769b3-982f-6cab-1e1e-d5122a1a980b",
  "kind": "theorem",
  "lexical_name": "foldr_attach",
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
  "slug": "foldr-attach--a24dc3bb4b533cdb7e7ffdfd",
  "source": {
    "blob": "9502589a50e673c3faefbb7f95b349514d6ed257",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 365,
    "line": 357,
    "path": "GRWTSK/Topology/GeneralTopology/Attach/Variant3a4ab48b28c6ef486431ba32dabe800716c5277d101335492834bd66de705c63.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a24dc3bb4b533cdb7e7ffdfd0535c370fa1cced16bc61b2bcd90616c5cc0e637",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Attach/Variant3a4ab48b28c6ef486431ba32dabe800716c5277d101335492834bd66de705c63.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:978769b3-982f-6cab-1e1e-d5122a1a980b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 357–365.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem foldr_attach {xs : Array α} {f : α → β → β} {b : β} :
    xs.attach.foldr (fun t acc => f t.1 acc) b = xs.foldr f b := by
  rcases xs with ⟨xs⟩
  simp only [List.attach_toArray, List.attachWith_mem_toArray, List.size_toArray,
    List.foldr_toArray', List.mem_toArray, List.foldr_subtype]
  congr
  ext
  simpa using fun a => List.mem_of_getElem? a

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Attach/Variant3a4ab48b28c6ef486431ba32dabe800716c5277d101335492834bd66de705c63.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Attach/Variant3a4ab48b28c6ef486431ba32dabe800716c5277d101335492834bd66de705c63.lean#L357).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9502589a50e673c3faefbb7f95b349514d6ed257` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
