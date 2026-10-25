# twoPowShift_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4695067a-7ad0-e064-1118-2b1b0883a021",
  "kind": "theorem",
  "lexical_name": "twoPowShift_eq",
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
  "slug": "twopowshift-eq--96340dd7f83827e5a7fd2389",
  "source": {
    "blob": "4e29d6781d2fc4d3b90ebb7295f6543acc4739aa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 330,
    "line": 274,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ShiftRight/Variant427ee7406dfaa1dd636275472ba71579b1ffb5ceb92fe920f91ab15b7186234e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:96340dd7f83827e5a7fd23893c779c4aa0335b32d3ea6437cbb6bbf6e4b80545",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ShiftRight/Variant427ee7406dfaa1dd636275472ba71579b1ffb5ceb92fe920f91ab15b7186234e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4695067a-7ad0-e064-1118-2b1b0883a021`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 274–330.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem twoPowShift_eq (aig : AIG α) (target : TwoPowShiftTarget aig w) (lhs : BitVec w)
    (rhs : BitVec target.n) (assign : α → Bool)
    (hleft : ∀ (idx : Nat) (hidx : idx < w), ⟦aig, target.lhs.get idx hidx, assign⟧ = lhs.getLsbD idx)
    (hright : ∀ (idx : Nat) (hidx : idx < target.n), ⟦aig, target.rhs.get idx hidx, assign⟧ = rhs.getLsbD idx) :
    ∀ (idx : Nat) (hidx : idx < w),
        ⟦
          (twoPowShift aig target).aig,
          (twoPowShift aig target).vec.get idx hidx,
          assign
        ⟧
          =
        (lhs >>> (rhs &&& BitVec.twoPow target.n target.pow)).getLsbD idx := by
  intro idx hidx
  generalize hg : twoPowShift aig target = res
  rcases target with ⟨n, lvec, rvec, pow⟩
  simp only [BitVec.and_twoPow]
  unfold twoPowShift at hg
  dsimp only at hg
  split at hg
  · split
    next hif1 =>
      rw [← hg]
      simp only [RefVec.denote_ite, RefVec.get_cast, Ref.cast_eq,
        denote_blastShiftRightConst]
      rw [AIG.LawfulVecOperator.denote_mem_prefix (f := blastShiftRightConst) (h := Ref.hgate _)]
      rw [hright]
      simp only [hif1, ↓reduceIte]
      have hmod : 2 ^ pow % 2 ^ n = 2 ^ pow := by
        apply Nat.mod_eq_of_lt
        apply Nat.pow_lt_pow_of_lt <;> omega
      split
      · rw [hleft]
        simp [hmod]
      · simp only [BitVec.ushiftRight_eq', BitVec.toNat_twoPow, BitVec.getLsbD_ushiftRight,
        Bool.false_eq]
        apply BitVec.getLsbD_of_ge
        omega
    next hif1 =>
      simp only [Bool.not_eq_true] at hif1
      rw [← hg]
      simp only [RefVec.denote_ite, RefVec.get_cast, Ref.cast_eq,
        denote_blastShiftRightConst]
      rw [AIG.LawfulVecOperator.denote_mem_prefix (f := blastShiftRightConst) (h := Ref.hgate _)]
      rw [hright]
      simp only [hif1, Bool.false_eq_true, ↓reduceIte]
      rw [AIG.LawfulVecOperator.denote_mem_prefix (f := blastShiftRightConst) (h := Ref.hgate _)]
      rw [hleft]
      simp
  · have : rhs.getLsbD pow = false := by
      apply BitVec.getLsbD_of_ge
      dsimp only
      omega
    simp only [this, Bool.false_eq_true, ↓reduceIte]
    rw [← hg]
    rw [hleft]
    simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ShiftRight/Variant427ee7406dfaa1dd636275472ba71579b1ffb5ceb92fe920f91ab15b7186234e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ShiftRight/Variant427ee7406dfaa1dd636275472ba71579b1ffb5ceb92fe920f91ab15b7186234e.lean#L274).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4e29d6781d2fc4d3b90ebb7295f6543acc4739aa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
