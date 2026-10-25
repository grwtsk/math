# denote_go

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:52b04e6a-0244-57ed-9115-39e7a41a940a",
  "kind": "theorem",
  "lexical_name": "denote_go",
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
  "slug": "denote-go--3f99a2ed70c308f17b38ac91",
  "source": {
    "blob": "b5989af5f8df411ae49565034fea614382c15a75",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 143,
    "line": 117,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Umod/Variantb307017c4a46a40f546e421a8e2c3c1e24ebfe0da547be37ae69965b9c1aa55e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3f99a2ed70c308f17b38ac9154a84f0f6dc933ef7f4e46561beb05ef3dffebda",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Umod/Variantb307017c4a46a40f546e421a8e2c3c1e24ebfe0da547be37ae69965b9c1aa55e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:52b04e6a-0244-57ed-9115-39e7a41a940a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 117–143.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem denote_go (aig : AIG α) (assign : α → Bool) (lhs rhs : BitVec w)
    (n d q r : AIG.RefVec aig w)
    (hleft : ∀ (idx : Nat) (hidx : idx < w), ⟦aig, n.get idx hidx, assign⟧ = lhs.getLsbD idx)
    (hright : ∀ (idx : Nat) (hidx : idx < w), ⟦aig, d.get idx hidx, assign⟧ = rhs.getLsbD idx)
    (hq : ∀ (idx : Nat) (hidx : idx < w), ⟦aig, q.get idx hidx, assign⟧ = false)
    (hr : ∀ (idx : Nat) (hidx : idx < w), ⟦aig, r.get idx hidx, assign⟧ = false)
    (hzero : 0#w < rhs)
      :
    ∀ (idx : Nat) (hidx : idx < w),
      ⟦
        (go aig w n d w 0 q r).aig,
        (go aig w n d w 0 q r).r.get idx hidx,
        assign
      ⟧
        =
      (lhs % rhs).getLsbD idx := by
  intro idx hidx
  rw [BitVec.umod_eq_divRec hzero]
  rw [BitVec.DivModState.init]
  rw [denote_go_eq_divRec_r (lhs := lhs) (rhs := rhs) (qbv := 0#w) (rbv := 0#w)]
  · exact hleft
  · exact hright
  · simp [hq]
  · simp [hr]

end blastUmod

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Umod/Variantb307017c4a46a40f546e421a8e2c3c1e24ebfe0da547be37ae69965b9c1aa55e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Umod/Variantb307017c4a46a40f546e421a8e2c3c1e24ebfe0da547be37ae69965b9c1aa55e.lean#L117).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b5989af5f8df411ae49565034fea614382c15a75` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
