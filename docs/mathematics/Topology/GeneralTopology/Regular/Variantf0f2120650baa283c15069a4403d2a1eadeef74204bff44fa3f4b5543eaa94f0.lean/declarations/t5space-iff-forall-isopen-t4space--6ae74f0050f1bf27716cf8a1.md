# t5Space_iff_forall_isOpen_t4Space

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ab8ac2866c917f921ebfd21ae7c876899707775a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 722,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f0/f0f2120650baa283c15069a4403d2a1eadeef74204bff44fa3f4b5543eaa94f0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:450dbd3e-5f20-f00f-b40c-73c67fb9264a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:38541301-cbae-2830-eefe-b8c87523781e",
  "kind": "theorem",
  "lexical_name": "t5Space_iff_forall_isOpen_t4Space",
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
  "slug": "t5space-iff-forall-isopen-t4space--6ae74f0050f1bf27716cf8a1",
  "source": {
    "blob": "ab8ac2866c917f921ebfd21ae7c876899707775a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 735,
    "line": 722,
    "path": "GRWTSK/Topology/GeneralTopology/Regular/Variantf0f2120650baa283c15069a4403d2a1eadeef74204bff44fa3f4b5543eaa94f0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6ae74f0050f1bf27716cf8a1f95bb499206ae9eb228cc5e4606f5a64ca3cde6c",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Regular/Variantf0f2120650baa283c15069a4403d2a1eadeef74204bff44fa3f4b5543eaa94f0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:38541301-cbae-2830-eefe-b8c87523781e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 722–735.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem t5Space_iff_forall_isOpen_t4Space :
    T5Space X ↔ ∀ s : Set X, IsOpen s → T4Space s where
  mp _ _ _ := inferInstance
  mpr h :=
    { toCompletelyNormalSpace :=
        completelyNormalSpace_iff_forall_isOpen_normalSpace.2 fun s hs => (h s hs).toNormalSpace
      toT1Space :=
        have := h univ isOpen_univ
        t1Space_of_injective_of_continuous
          (fun _ _ => congrArg Subtype.val) (continuous_id.subtype_mk mem_univ) }

/--
A space is `T5Space` iff it is hereditarily `T4Space`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Regular/Variantf0f2120650baa283c15069a4403d2a1eadeef74204bff44fa3f4b5543eaa94f0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Regular/Variantf0f2120650baa283c15069a4403d2a1eadeef74204bff44fa3f4b5543eaa94f0.lean#L722).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ab8ac2866c917f921ebfd21ae7c876899707775a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
