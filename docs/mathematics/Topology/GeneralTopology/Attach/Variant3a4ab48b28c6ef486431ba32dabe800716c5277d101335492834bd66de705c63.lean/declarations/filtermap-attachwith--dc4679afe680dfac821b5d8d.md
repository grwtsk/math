# filterMap_attachWith

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
      "line": 414,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3a/3a4ab48b28c6ef486431ba32dabe800716c5277d101335492834bd66de705c63.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:cd831f5c-7feb-b66e-5ebc-e9c7227e0843",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:217db697-9287-33bf-77d3-51171c516797",
  "kind": "theorem",
  "lexical_name": "filterMap_attachWith",
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
  "slug": "filtermap-attachwith--dc4679afe680dfac821b5d8d",
  "source": {
    "blob": "9502589a50e673c3faefbb7f95b349514d6ed257",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 421,
    "line": 414,
    "path": "GRWTSK/Topology/GeneralTopology/Attach/Variant3a4ab48b28c6ef486431ba32dabe800716c5277d101335492834bd66de705c63.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dc4679afe680dfac821b5d8d0bb1bca54eea68f67138140857c2e7f1829d8892",
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

Occurrence: `result:217db697-9287-33bf-77d3-51171c516797`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 414–421.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem filterMap_attachWith {q : α → Prop} {xs : Array α} {f : {x // q x} → Option β} (H)
    (w : stop = (xs.attachWith q H).size) :
    (xs.attachWith q H).filterMap f 0 stop = xs.attach.filterMap (fun ⟨x, h⟩ => f ⟨x, H _ h⟩) := by
  subst w
  cases xs
  simp [Function.comp_def]

@[simp, grind =]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Attach/Variant3a4ab48b28c6ef486431ba32dabe800716c5277d101335492834bd66de705c63.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Attach/Variant3a4ab48b28c6ef486431ba32dabe800716c5277d101335492834bd66de705c63.lean#L414).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9502589a50e673c3faefbb7f95b349514d6ed257` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
