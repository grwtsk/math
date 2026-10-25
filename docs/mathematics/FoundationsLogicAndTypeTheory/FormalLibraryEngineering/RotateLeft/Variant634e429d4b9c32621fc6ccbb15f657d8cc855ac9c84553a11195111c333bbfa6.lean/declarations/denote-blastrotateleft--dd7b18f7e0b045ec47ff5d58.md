# denote_blastRotateLeft

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c9f2cd383c5e9f77cee8f73c14f3ed9176228fb6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 96,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/63/634e429d4b9c32621fc6ccbb15f657d8cc855ac9c84553a11195111c333bbfa6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4d3ea1dc-126f-ad39-b2eb-f77851a126f7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:803167bd-a103-ace0-0ae4-48f2ea21bc98",
  "kind": "theorem",
  "lexical_name": "denote_blastRotateLeft",
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
  "slug": "denote-blastrotateleft--dd7b18f7e0b045ec47ff5d58",
  "source": {
    "blob": "c9f2cd383c5e9f77cee8f73c14f3ed9176228fb6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 122,
    "line": 96,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RotateLeft/Variant634e429d4b9c32621fc6ccbb15f657d8cc855ac9c84553a11195111c333bbfa6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dd7b18f7e0b045ec47ff5d5872d0e57685d453efdaabd81af92099e4518ecff2",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RotateLeft/Variant634e429d4b9c32621fc6ccbb15f657d8cc855ac9c84553a11195111c333bbfa6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:803167bd-a103-ace0-0ae4-48f2ea21bc98`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 96–122.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem denote_blastRotateLeft (aig : AIG α) (target : ShiftTarget aig w)
    (assign : α → Bool) :
    ∀ (idx : Nat) (hidx : idx < w),
        ⟦
          (blastRotateLeft aig target).aig,
          (blastRotateLeft aig target).vec.get idx hidx,
          assign
        ⟧
          =
        if hidx2 : idx < target.distance % w then
          ⟦aig, target.vec.get (w - (target.distance % w) + idx) (by omega), assign⟧
        else
          ⟦aig, target.vec.get (idx - (target.distance % w)) (by omega), assign⟧
      := by
  intros
  unfold blastRotateLeft
  dsimp only
  rw [blastRotateLeft.go_get]
  · split
    · rfl
    · rfl
  · omega

end bitblast
end BVExpr

end Std.Tactic.BVDecide
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RotateLeft/Variant634e429d4b9c32621fc6ccbb15f657d8cc855ac9c84553a11195111c333bbfa6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RotateLeft/Variant634e429d4b9c32621fc6ccbb15f657d8cc855ac9c84553a11195111c333bbfa6.lean#L96).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c9f2cd383c5e9f77cee8f73c14f3ed9176228fb6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
