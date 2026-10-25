# go_denote_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:82d17f53-ff24-fbf4-504f-65879018e20d",
  "kind": "theorem",
  "lexical_name": "go_denote_eq",
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
  "slug": "go-denote-eq--adf989b162f86f90b673ff47",
  "source": {
    "blob": "3ea5178550fe77198884c1a12c87350cc8fe6ac4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 521,
    "line": 303,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expr/Variantbd4019f93a745a85038956ac295a94a513d96ec4decd23cba3249d5e7875b708.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:adf989b162f86f90b673ff471c46390ffa01fb9086c7792d0bc813eb5d3527e1",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expr/Variantbd4019f93a745a85038956ac295a94a513d96ec4decd23cba3249d5e7875b708.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:82d17f53-ff24-fbf4-504f-65879018e20d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 303–521.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem go_denote_eq (aig : AIG BVBit) (expr : BVExpr w) (assign : Assignment)
    (cache : Cache aig) (hinv : Cache.Inv assign aig cache) :
    ∀ (idx : Nat) (hidx : idx < w),
        ⟦(go aig expr cache).result.val.aig, (go aig expr cache).result.val.vec.get idx hidx, assign.toAIGAssignment⟧
          =
        (expr.eval assign).getLsbD idx := by
  intro idx hidx
  generalize hres : go aig expr cache = res
  unfold go at hres
  split at hres
  · rw [← hres]
    simp
  · rw [← hres]
    simp
  · dsimp only at hres
    split at hres
    · rw [← hres]
      simp only [RefVec.denote_zip, RefVec.get_cast, Ref.cast_eq, denote_mkAndCached, eval_bin,
        BVBinOp.eval_and, BitVec.getLsbD_and]
      congr 1
      · rw [goCache_denote_mem_prefix (hstart := Ref.hgate _)]
        rw [goCache_denote_eq]
        exact hinv
      · rw [goCache_denote_eq]
        apply goCache_Inv_of_Inv
        exact hinv
    · rw [← hres]
      simp only [RefVec.denote_zip, RefVec.get_cast, Ref.cast_eq, denote_mkOrCached, eval_bin,
        BVBinOp.eval_or, BitVec.getLsbD_or]
      congr 1
      · rw [goCache_denote_mem_prefix (hstart := Ref.hgate _)]
        rw [goCache_denote_eq]
        exact hinv
      · rw [goCache_denote_eq]
        apply goCache_Inv_of_Inv
        exact hinv
    · rw [← hres]
      simp only [RefVec.denote_zip, RefVec.get_cast, Ref.cast_eq, denote_mkXorCached, eval_bin,
        BVBinOp.eval_xor, BitVec.getLsbD_xor]
      congr 1
      · rw [goCache_denote_mem_prefix (hstart := Ref.hgate _)]
        rw [goCache_denote_eq]
        exact hinv
      · rw [goCache_denote_eq]
        apply goCache_Inv_of_Inv
        exact hinv
    · rw [← hres]
      simp only [eval_bin, BVBinOp.eval_add]
      rw [denote_blastAdd]
      · intro idx hidx
        rw [goCache_denote_mem_prefix]
        simp only [RefVec.get_cast, Ref.cast_eq]
        rw [goCache_denote_eq]
        · exact hinv
        · simp [Ref.hgate]
      · intro idx hidx
        rw [goCache_denote_eq]
        apply goCache_Inv_of_Inv
        exact hinv
    · rw [← hres]
      simp only [eval_bin, BVBinOp.eval_mul]
      rw [denote_blastMul]
      · intro idx hidx
        rw [goCache_denote_mem_prefix]
        simp only [RefVec.get_cast, Ref.cast_eq]
        rw [goCache_denote_eq]
        · exact hinv
        · simp [Ref.hgate]
      · intro idx hidx
        rw [goCache_denote_eq]
        apply goCache_Inv_of_Inv
        exact hinv
    · rw [← hres]
      simp only [eval_bin, BVBinOp.eval_udiv]
      rw [denote_blastUdiv]
      · intro idx hidx
        rw [goCache_denote_mem_prefix]
        simp only [RefVec.get_cast, Ref.cast_eq]
        rw [goCache_denote_eq]
        · exact hinv
        · simp [Ref.hgate]
      · intro idx hidx
        rw [goCache_denote_eq]
        apply goCache_Inv_of_Inv
        exact hinv
    · rw [← hres]
      simp only [eval_bin, BVBinOp.eval_umod]
      rw [denote_blastUmod]
      · intro idx hidx
        rw [goCache_denote_mem_prefix]
        simp only [RefVec.get_cast, Ref.cast_eq]
        rw [goCache_denote_eq]
        · exact hinv
        · simp [Ref.hgate]
      · intro idx hidx
        rw [goCache_denote_eq]
        apply goCache_Inv_of_Inv
        exact hinv
  · dsimp only at hres
    split at hres
    · rw [← hres]
      simp only [denote_blastNot, eval_un, BVUnOp.eval_not, hidx, BitVec.getLsbD_eq_getElem,
        BitVec.getElem_not, Bool.not_eq_eq_eq_not, Bool.not_not]
      rw [goCache_denote_eq]
      · apply BitVec.getLsbD_eq_getElem
      · exact hinv
    · rw [← hres]
      simp only [denote_blastRotateLeft, eval_un, BVUnOp.eval_rotateLeft, hidx,
        BitVec.getLsbD_eq_getElem, BitVec.getElem_rotateLeft]
      split
      all_goals
        rw [goCache_denote_eq]
        · apply BitVec.getLsbD_eq_getElem
        · exact hinv
    · rw [← hres]
      simp only [denote_blastRotateRight, eval_un, BVUnOp.eval_rotateRight, hidx,
        BitVec.getLsbD_eq_getElem, BitVec.getElem_rotateRight]
      split
      all_goals
        rw [goCache_denote_eq]
        · apply BitVec.getLsbD_eq_getElem
        · exact hinv
    · rw [← hres]
      simp only [denote_blastArithShiftRightConst, eval_un, BVUnOp.eval_arithShiftRightConst, hidx,
        BitVec.getLsbD_eq_getElem, BitVec.getElem_sshiftRight]
      split
      · rw [goCache_denote_eq]
        · apply BitVec.getLsbD_eq_getElem
        · exact hinv
      · rw [goCache_denote_eq]
        · simp [BitVec.msb_eq_getLsbD_last]
        · exact hinv
    · rw [← hres]
      simp only [denote_blastReverse, eval_un, BVUnOp.eval_reverse, hidx, BitVec.getLsbD_eq_getElem,
        BitVec.getElem_reverse, BitVec.getMsbD_eq_getLsbD, decide_true, Bool.true_and]
      rw [goCache_denote_eq]
      exact hinv
    · rw [← hres]
      simp only [eval_un, BVUnOp.eval_clz, BitVec.clz]
      rw [denote_blastClz]
      intro idx hidx
      rw [goCache_denote_eq]
      exact hinv
    · rw [← hres]
      simp only [eval_un, BVUnOp.eval_cpop]
      rw [denote_blastCpop]
      intro idx hidx
      rw [goCache_denote_eq]
      exact hinv
  next h =>
    subst h
    rw [← hres]
    simp only [denote_blastAppend, RefVec.get_cast, Ref.cast_eq, eval_append, BitVec.getLsbD_append]
    split
    · rw [goCache_denote_eq]
      apply goCache_Inv_of_Inv
      exact hinv
    · rw [goCache_denote_mem_prefix (hstart := Ref.hgate _)]
      rw [goCache_denote_eq]
      exact hinv
  next h =>
    subst h
    rw [← hres]
    simp only [denote_blastReplicate, eval_replicate, hidx, BitVec.getLsbD_eq_getElem,
      BitVec.getElem_replicate]
    split
    next h =>
      simp only [h, Nat.zero_mul, Nat.not_lt_zero] at hidx
    · rw [goCache_denote_eq]
      · apply BitVec.getLsbD_eq_getElem
      · exact hinv
  · rw [← hres]
    simp only [denote_blastExtract, eval_extract, hidx, BitVec.getLsbD_eq_getElem,
      BitVec.getElem_extractLsb']
    split
    · rw [goCache_denote_eq]
      exact hinv
    · symm
      apply BitVec.getLsbD_of_ge
      omega
  · rw [eval_shiftLeft, ← hres, denote_blastShiftLeft]
    · intro idx hidx
      rw [goCache_denote_mem_prefix]
      · simp only [RefVec.get_cast, Ref.cast_eq]
        rw [goCache_denote_eq]
        exact hinv
      · simp [Ref.hgate]
    · intro idx hidx
      rw [goCache_denote_eq]
      apply goCache_Inv_of_Inv
      exact hinv
  · rw [eval_shiftRight, ← hres, denote_blastShiftRight]
    · intro idx hidx
      rw [goCache_denote_mem_prefix]
      · simp only [RefVec.get_cast, Ref.cast_eq]
        rw [goCache_denote_eq]
        exact hinv
      · simp [Ref.hgate]
    · intro idx hidx
      rw [goCache_denote_eq]
      apply goCache_Inv_of_Inv
      exact hinv
  · rw [eval_arithShiftRight, ← hres, denote_blastArithShiftRight]
    · intro idx hidx
      rw [goCache_denote_mem_prefix]
      · simp only [RefVec.get_cast, Ref.cast_eq]
        rw [goCache_denote_eq]
        exact hinv
      · simp [Ref.hgate]
    · intro idx hidx
      rw [goCache_denote_eq]
      apply goCache_Inv_of_Inv
      exact hinv
termination_by idx => (sizeOf expr, 0, idx)

end

end bitblast

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expr/Variantbd4019f93a745a85038956ac295a94a513d96ec4decd23cba3249d5e7875b708.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expr/Variantbd4019f93a745a85038956ac295a94a513d96ec4decd23cba3249d5e7875b708.lean#L303).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3ea5178550fe77198884c1a12c87350cc8fe6ac4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
