# mkUlt_denote_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d8662e46-22df-cbb7-04f0-dc7fdac26016",
  "kind": "theorem",
  "lexical_name": "mkUlt_denote_eq",
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
  "slug": "mkult-denote-eq--90f76c2fa20f1293aa95ebf4",
  "source": {
    "blob": "32f07eb0f4927077102b39fbb209195596dfe5f6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 59,
    "line": 36,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ult/Variant69abb38f544f8a71b738dd283a6880f20c7fe934e12a6c47bf92a32be880d98e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:90f76c2fa20f1293aa95ebf4c72b6c4147e503352ff1a710862c773bb1b505c7",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ult/Variant69abb38f544f8a71b738dd283a6880f20c7fe934e12a6c47bf92a32be880d98e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d8662e46-22df-cbb7-04f0-dc7fdac26016`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 36–59.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mkUlt_denote_eq (aig : AIG α) (lhs rhs : BitVec w) (input : BinaryRefVec aig w)
    (assign : α → Bool)
    (hleft : ∀ (idx : Nat) (hidx : idx < w), ⟦aig, input.lhs.get idx hidx, assign⟧ = lhs.getLsbD idx)
    (hright : ∀ (idx : Nat) (hidx : idx < w), ⟦aig, input.rhs.get idx hidx, assign⟧ = rhs.getLsbD idx) :
    ⟦mkUlt aig input, assign⟧ = BitVec.ult lhs rhs := by
  rw [BitVec.ult_eq_not_carry]
  unfold mkUlt
  simp only [denote_projected_entry, denote_mkNotCached]
  congr 1
  rw [BVExpr.bitblast.mkOverflowBit_eq_carry (input := ⟨w, _, _⟩) (lhs := lhs) (rhs := ~~~rhs)]
  · simp
  · dsimp only
    intro idx hidx
    rw [AIG.LawfulVecOperator.denote_mem_prefix (f := BVExpr.bitblast.blastNot) (h := ?h)]
    case h => simp [Ref.hgate]
    apply hleft
  · dsimp only
    intro idx hidx
    simp only [hidx, BitVec.getLsbD_eq_getElem, BitVec.getElem_not]
    rw [BVExpr.bitblast.denote_blastNot, hright, BitVec.getLsbD_eq_getElem]

end BVPred

end Std.Tactic.BVDecide
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ult/Variant69abb38f544f8a71b738dd283a6880f20c7fe934e12a6c47bf92a32be880d98e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ult/Variant69abb38f544f8a71b738dd283a6880f20c7fe934e12a6c47bf92a32be880d98e.lean#L36).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `32f07eb0f4927077102b39fbb209195596dfe5f6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
