# denote_blastUmod

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:76fe9c49-9ee8-9d7f-86e7-ec2378d4fdca",
  "kind": "theorem",
  "lexical_name": "denote_blastUmod",
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
  "slug": "denote-blastumod--c737de5b9fc53af5095d04f9",
  "source": {
    "blob": "b5989af5f8df411ae49565034fea614382c15a75",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 210,
    "line": 144,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Umod/Variantb307017c4a46a40f546e421a8e2c3c1e24ebfe0da547be37ae69965b9c1aa55e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c737de5b9fc53af5095d04f9cf47129d7ae8db321554e872be6a885d68167179",
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

Occurrence: `result:76fe9c49-9ee8-9d7f-86e7-ec2378d4fdca`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 144–210.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem denote_blastUmod (aig : AIG α) (lhs rhs : BitVec w) (assign : α → Bool)
      (input : BinaryRefVec aig w)
      (hleft : ∀ (idx : Nat) (hidx : idx < w), ⟦aig, input.lhs.get idx hidx, assign⟧ = lhs.getLsbD idx)
      (hright : ∀ (idx : Nat) (hidx : idx < w), ⟦aig, input.rhs.get idx hidx, assign⟧ = rhs.getLsbD idx) :
      ∀ (idx : Nat) (hidx : idx < w),
        ⟦(blastUmod aig input).aig, (blastUmod aig input).vec.get idx hidx, assign⟧
          =
        (lhs % rhs).getLsbD idx := by
  intro idx hidx
  unfold blastUmod
  simp only [Ref.cast_eq, RefVec.denote_ite,
    RefVec.get_cast]
  split
  next hdiscr =>
    rw [blastUdiv.go_denote_mem_prefix (hstart := Ref.hgate _)] at hdiscr
    rw [BVPred.mkEq_denote_eq (lhs := rhs) (rhs := 0#w)] at hdiscr
    · simp only [beq_iff_eq] at hdiscr
      rw [hdiscr]
      rw [blastUdiv.go_denote_mem_prefix (hstart := ?h)]
      case h =>
        apply AIG.LawfulOperator.lt_size_of_lt_aig_size (f := BVPred.mkEq)
        exact Ref.hgate _
      rw [AIG.LawfulOperator.denote_mem_prefix (f := BVPred.mkEq)]
      · simp [hleft]
      · simp [Ref.hgate]
    · intro idx hidx
      simp [hright]
    · intro idx hidx
      simp only [BitVec.getLsbD_zero]
      rw [denote_blastConst]
      simp
  next hdiscr =>
    rw [blastUdiv.go_denote_mem_prefix (hstart := Ref.hgate _)] at hdiscr
    rw [BVPred.mkEq_denote_eq (lhs := rhs) (rhs := 0#w)] at hdiscr
    · have hzero : 0#w < rhs := by
        rw [Normalize.BitVec.zero_lt_iff_zero_neq]
        simpa using hdiscr
      rw [blastUmod.denote_go (hzero := hzero)]
      · intro idx hidx
        rw [AIG.LawfulOperator.denote_mem_prefix (f := BVPred.mkEq)]
        · simp [hleft]
        · simp [Ref.hgate]
      · intro idx hidx
        rw [AIG.LawfulOperator.denote_mem_prefix (f := BVPred.mkEq)]
        · simp [hright]
        · simp [Ref.hgate]
      · intro idx hidx
        rw [AIG.LawfulOperator.denote_mem_prefix (f := BVPred.mkEq)]
        · simp only [RefVec.get_cast, Ref.cast_eq]
          rw [denote_blastConst]
          simp
        · simp [Ref.hgate]
      · intro idx hidx
        rw [AIG.LawfulOperator.denote_mem_prefix (f := BVPred.mkEq)]
        · simp only [RefVec.get_cast, Ref.cast_eq]
          rw [denote_blastConst]
          simp
        · simp [Ref.hgate]
    · intro idx hdix
      simp [hright]
    · intro idx hdix
      simp

end bitblast
end BVExpr

end Std.Tactic.BVDecide
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Umod/Variantb307017c4a46a40f546e421a8e2c3c1e24ebfe0da547be37ae69965b9c1aa55e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Umod/Variantb307017c4a46a40f546e421a8e2c3c1e24ebfe0da547be37ae69965b9c1aa55e.lean#L144).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b5989af5f8df411ae49565034fea614382c15a75` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
