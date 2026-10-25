# mkOverflowBit_eq_carry

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b0e459aa-d595-50dc-aced-b00966d6722d",
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
  "slug": "mkoverflowbit-eq-carry--62e4f3de35361cab86730479",
  "source": {
    "blob": "5aa2699831a529111f345d5bf014292a3aa702a0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 91,
    "line": 73,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Carry/Variant1edf7c12ae2a07fdde1c60af6cb89c105d4eab98bab55fab06f7addad060c173.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:62e4f3de35361cab86730479e1158d22a3fdf6bc77de4806cf2a6d3fe5d01d73",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Carry/Variant1edf7c12ae2a07fdde1c60af6cb89c105d4eab98bab55fab06f7addad060c173.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b0e459aa-d595-50dc-aced-b00966d6722d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–91.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Carry/Variant1edf7c12ae2a07fdde1c60af6cb89c105d4eab98bab55fab06f7addad060c173.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Carry/Variant1edf7c12ae2a07fdde1c60af6cb89c105d4eab98bab55fab06f7addad060c173.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5aa2699831a529111f345d5bf014292a3aa702a0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
