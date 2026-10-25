# mkOverflowBit_eq_carry

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1e7cf1ae583a65fd8ec4608e07ef547f905a6020",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 65,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9e/9ea4bbf6edbb2f5f8db6274ca772b182d1ed2ed4a08fc65aa5f17a74aabe2063.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7ec4e6c9-3106-9260-d49f-308aa37a5128",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:68ec844e-1ded-e95a-6bec-f626ff9ab2b2",
  "kind": "theorem",
  "lexical_name": "mkOverflowBit_eq_carry",
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
  "slug": "mkoverflowbit-eq-carry--fa136a0f2f91aae72b863d89",
  "source": {
    "blob": "1e7cf1ae583a65fd8ec4608e07ef547f905a6020",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 83,
    "line": 65,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Carry/Variant9ea4bbf6edbb2f5f8db6274ca772b182d1ed2ed4a08fc65aa5f17a74aabe2063.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fa136a0f2f91aae72b863d89370908b12c96787b5143ad8f2d81156b46011d14",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Carry/Variant9ea4bbf6edbb2f5f8db6274ca772b182d1ed2ed4a08fc65aa5f17a74aabe2063.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:68ec844e-1ded-e95a-6bec-f626ff9ab2b2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 65–83.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mkOverflowBit_eq_carry (aig : AIG α) (input : OverflowInput aig) (lhs rhs : BitVec input.w)
    (assign : α → Bool)
    (hleft : ∀ (idx : Nat) (hidx : idx < input.w), ⟦aig, input.vec.lhs.get idx hidx, assign⟧ = lhs.getLsbD idx)
    (hright : ∀ (idx : Nat) (hidx : idx < input.w), ⟦aig, input.vec.rhs.get idx hidx, assign⟧ = rhs.getLsbD idx) :
    ⟦mkOverflowBit aig input, assign⟧
      =
    BitVec.carry input.w lhs rhs ⟦aig, input.cin, assign⟧ := by
  unfold mkOverflowBit
  dsimp only
  apply mkOverflowBit.go_eq_carry
  · omega
  · assumption
  · assumption
  · simp [BitVec.carry_zero]

end bitblast
end BVExpr

end Std.Tactic.BVDecide
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Carry/Variant9ea4bbf6edbb2f5f8db6274ca772b182d1ed2ed4a08fc65aa5f17a74aabe2063.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Carry/Variant9ea4bbf6edbb2f5f8db6274ca772b182d1ed2ed4a08fc65aa5f17a74aabe2063.lean#L65).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1e7cf1ae583a65fd8ec4608e07ef547f905a6020` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
