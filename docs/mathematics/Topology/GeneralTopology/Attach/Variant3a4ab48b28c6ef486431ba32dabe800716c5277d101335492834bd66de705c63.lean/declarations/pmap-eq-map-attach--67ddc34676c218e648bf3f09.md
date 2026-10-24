# pmap_eq_map_attach

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
      "line": 160,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3a/3a4ab48b28c6ef486431ba32dabe800716c5277d101335492834bd66de705c63.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bee781f9-a965-7921-b198-a8a310d4748c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3fa43d0d-01d7-9f1e-480e-0415969ec186",
  "kind": "theorem",
  "lexical_name": "pmap_eq_map_attach",
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
  "slug": "pmap-eq-map-attach--67ddc34676c218e648bf3f09",
  "source": {
    "blob": "9502589a50e673c3faefbb7f95b349514d6ed257",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 164,
    "line": 160,
    "path": "GRWTSK/Topology/GeneralTopology/Attach/Variant3a4ab48b28c6ef486431ba32dabe800716c5277d101335492834bd66de705c63.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:67ddc34676c218e648bf3f09b1203a4d7592363b76301947f89ede503183ce6e",
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

Occurrence: `result:3fa43d0d-01d7-9f1e-480e-0415969ec186`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 160–164.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pmap_eq_map_attach {p : α → Prop} {f : ∀ a, p a → β} {xs : Array α} (H) :
    pmap f xs H = xs.attach.map fun x => f x.1 (H _ x.2) := by
  cases xs
  simp [List.pmap_eq_map_attach]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Attach/Variant3a4ab48b28c6ef486431ba32dabe800716c5277d101335492834bd66de705c63.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Attach/Variant3a4ab48b28c6ef486431ba32dabe800716c5277d101335492834bd66de705c63.lean#L160).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9502589a50e673c3faefbb7f95b349514d6ed257` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
