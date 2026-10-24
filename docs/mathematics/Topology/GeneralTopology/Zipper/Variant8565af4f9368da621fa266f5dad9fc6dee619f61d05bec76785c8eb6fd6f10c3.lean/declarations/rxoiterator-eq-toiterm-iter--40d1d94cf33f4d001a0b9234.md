# RxoIterator.eq_toIterM_iter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "217d12380e966e0d49c510bbfe6785f0b6ba63d8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 629,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/85/8565af4f9368da621fa266f5dad9fc6dee619f61d05bec76785c8eb6fd6f10c3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7ca99304-46d8-ce16-f3e7-44632008fa45",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ee4837b7-0052-577e-a0b5-d703816c11ee",
  "kind": "theorem",
  "lexical_name": "RxoIterator.eq_toIterM_iter",
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
  "slug": "rxoiterator-eq-toiterm-iter--40d1d94cf33f4d001a0b9234",
  "source": {
    "blob": "217d12380e966e0d49c510bbfe6785f0b6ba63d8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 631,
    "line": 629,
    "path": "GRWTSK/Topology/GeneralTopology/Zipper/Variant8565af4f9368da621fa266f5dad9fc6dee619f61d05bec76785c8eb6fd6f10c3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:40d1d94cf33f4d001a0b9234e55f48e8243d8511dbae9a34c9165970b173f5b0",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Zipper/Variant8565af4f9368da621fa266f5dad9fc6dee619f61d05bec76785c8eb6fd6f10c3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ee4837b7-0052-577e-a0b5-d703816c11ee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 629–631.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem RxoIterator.eq_toIterM_iter [Ord α] (it : Iter (α := RxoIterator α β) ((a : α) × β a)) :
    it.toIterM = ⟨it.internalState⟩ := by rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Zipper/Variant8565af4f9368da621fa266f5dad9fc6dee619f61d05bec76785c8eb6fd6f10c3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Zipper/Variant8565af4f9368da621fa266f5dad9fc6dee619f61d05bec76785c8eb6fd6f10c3.lean#L629).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `217d12380e966e0d49c510bbfe6785f0b6ba63d8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
