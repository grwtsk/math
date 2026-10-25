# go_denote_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7fda233979c4f00b997ee74647be8bc621400ce9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 35,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e0/e0b3958bd691dcf636c120aea5126afc208f1e8476768a3788fadb438584a511.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e380c62e-f3c0-dfc8-d9b0-a78baee734b9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7d3be00d-7b9f-1669-04bb-d32612ed5d80",
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
  "slug": "go-denote-eq--0dbbcf059d78ca55ff46cac6",
  "source": {
    "blob": "7fda233979c4f00b997ee74647be8bc621400ce9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 142,
    "line": 35,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Mul/Variante0b3958bd691dcf636c120aea5126afc208f1e8476768a3788fadb438584a511.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0dbbcf059d78ca55ff46cac600c2973a88df0d66bc80ae723dc791f549e8e3cf",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Mul/Variante0b3958bd691dcf636c120aea5126afc208f1e8476768a3788fadb438584a511.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7d3be00d-7b9f-1669-04bb-d32612ed5d80`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 35–142.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem go_denote_eq {w : Nat} (aig : AIG α) (curr : Nat) (hcurr : curr + 1 ≤ w)
    (acc : AIG.RefVec aig w) (lhs rhs : AIG.RefVec aig w) (lexpr rexpr : BitVec w) (assign : α → Bool)
    (hleft : ∀ (idx : Nat) (hidx : idx < w), ⟦aig, lhs.get idx hidx, assign⟧ = lexpr.getLsbD idx)
    (hright : ∀ (idx : Nat) (hidx : idx < w), ⟦aig, rhs.get idx hidx, assign⟧ = rexpr.getLsbD idx)
    (hacc : ∀ (idx : Nat) (hidx : idx < w),
                ⟦aig, acc.get idx hidx, assign⟧
                  =
                (BitVec.mulRec lexpr rexpr curr).getLsbD idx) :
    ∀ (idx : Nat) (hidx : idx < w),
        ⟦
          (go aig lhs rhs (curr + 1) acc).aig,
          (go aig lhs rhs (curr + 1) acc).vec.get idx hidx,
          assign
        ⟧
          =
        (BitVec.mulRec lexpr rexpr w).getLsbD idx := by
  intro idx hidx
  generalize hgo: go aig lhs rhs (curr + 1) acc = res
  unfold go at hgo
  split at hgo
  · split at hgo
    next hconstant =>
      rw [← hgo]
      rw [go_denote_eq]
      · omega
      · exact hleft
      · exact hright
      · intro idx hidx
        rw [BitVec.mulRec_succ_eq]
        have : rexpr.getLsbD (curr + 1) = false := by
          rw [← hright _ ‹curr + 1 < w›]
          exact of_isConstant hconstant
        simp [this, hacc]
    · dsimp only at hgo
      rw [← hgo]
      rw [go_denote_eq]
      · omega
      · intro idx hidx
        simp only [RefVec.get_cast, Ref.cast_eq]
        rw [AIG.LawfulVecOperator.denote_mem_prefix (f := RefVec.ite)]
        rw [AIG.LawfulVecOperator.denote_mem_prefix (f := blastAdd)]
        rw [AIG.LawfulVecOperator.denote_mem_prefix (f := blastShiftLeftConst)]
        rw [hleft]
        all_goals
          repeat apply AIG.LawfulVecOperator.lt_size_of_lt_aig_size
          exact Ref.hgate _
      · intro idx hidx
        simp only [RefVec.get_cast, Ref.cast_eq]
        rw [AIG.LawfulVecOperator.denote_mem_prefix (f := RefVec.ite)]
        rw [AIG.LawfulVecOperator.denote_mem_prefix (f := blastAdd)]
        rw [AIG.LawfulVecOperator.denote_mem_prefix (f := blastShiftLeftConst)]
        rw [hright]
        all_goals
          repeat apply AIG.LawfulVecOperator.lt_size_of_lt_aig_size
          exact Ref.hgate _
      · intro idx hidx
        rw [BitVec.mulRec_succ_eq]
        simp only [RefVec.denote_ite, RefVec.get_cast, Ref.cast_eq, BitVec.ofNat_eq_ofNat]
        split
        next hdiscr =>
          have : rexpr.getLsbD (curr + 1) = true := by
            rw [AIG.LawfulVecOperator.denote_mem_prefix (f := blastAdd)] at hdiscr
            rw [AIG.LawfulVecOperator.denote_mem_prefix (f := blastShiftLeftConst)] at hdiscr
            rw [hright] at hdiscr
            exact hdiscr
            all_goals
              repeat apply AIG.LawfulVecOperator.lt_size_of_lt_aig_size
              exact Ref.hgate _
          simp only [this, ↓reduceIte]
          rw [denote_blastAdd]
          · intros
            simp only [RefVec.get_cast, Ref.cast_eq]
            rw [AIG.LawfulVecOperator.denote_mem_prefix (f := blastShiftLeftConst) (h := Ref.hgate _)]
            rw [hacc]
          · intros
            simp only [denote_blastShiftLeftConst, BitVec.getLsbD_shiftLeft]
            split
            next hdiscr => simp [hdiscr]
            next hidx hdiscr =>
              rw [hleft]
              simp [hdiscr, hidx]
        next hdiscr =>
          have : rexpr.getLsbD (curr + 1) = false := by
            rw [AIG.LawfulVecOperator.denote_mem_prefix (f := blastAdd)] at hdiscr
            rw [AIG.LawfulVecOperator.denote_mem_prefix (f := blastShiftLeftConst)] at hdiscr
            rw [hright] at hdiscr
            simp [hdiscr]
            all_goals
              repeat apply AIG.LawfulVecOperator.lt_size_of_lt_aig_size
              exact Ref.hgate _
          simp only [this, Bool.false_eq_true, ↓reduceIte, BitVec.add_zero]
          rw [AIG.LawfulVecOperator.denote_mem_prefix (f := blastAdd)]
          rw [AIG.LawfulVecOperator.denote_mem_prefix (f := blastShiftLeftConst)]
          rw [hacc]
          all_goals
            repeat apply AIG.LawfulVecOperator.lt_size_of_lt_aig_size
            exact Ref.hgate _
  · have : curr + 1 = w := by omega
    subst this
    rw [← hgo]
    rw [hacc]
    rw [BitVec.mulRec_succ_eq]
    have : rexpr.getLsbD (curr + 1) = false := by
      apply BitVec.getLsbD_of_ge
      omega
    simp
termination_by w - curr

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Mul/Variante0b3958bd691dcf636c120aea5126afc208f1e8476768a3788fadb438584a511.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Mul/Variante0b3958bd691dcf636c120aea5126afc208f1e8476768a3788fadb438584a511.lean#L35).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7fda233979c4f00b997ee74647be8bc621400ce9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
