# twoPowShift_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d98444aa9dcbee552359921f0433108891af10b0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 399,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5a/5acfb1b9ddf9280355da456ee0b0f8bf766094fff089fe46b32ee18ec837c342.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:79fa3819-baa6-038a-106a-be573192dbcc",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c21b62a8-8c49-0e4c-1fda-cb56286f4b25",
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
  "slug": "twopowshift-eq--31e55406e8028eb37becbc1c",
  "source": {
    "blob": "d98444aa9dcbee552359921f0433108891af10b0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 455,
    "line": 399,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ShiftRight/Variant5acfb1b9ddf9280355da456ee0b0f8bf766094fff089fe46b32ee18ec837c342.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:31e55406e8028eb37becbc1cc061b0f43b6188ad5fd13ad2e1193f7b062b3de6",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ShiftRight/Variant5acfb1b9ddf9280355da456ee0b0f8bf766094fff089fe46b32ee18ec837c342.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c21b62a8-8c49-0e4c-1fda-cb56286f4b25`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 399–455.

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
        (BitVec.sshiftRight' lhs (rhs &&& BitVec.twoPow target.n target.pow)).getLsbD idx := by
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
        denote_blastArithShiftRightConst]
      rw [AIG.LawfulVecOperator.denote_mem_prefix (f := blastArithShiftRightConst) (h := Ref.hgate _)]
      rw [hright]
      simp only [hif1, ↓reduceIte]
      have hmod : 2 ^ pow % 2 ^ n = 2 ^ pow := by
        apply Nat.mod_eq_of_lt
        apply Nat.pow_lt_pow_of_lt <;> omega
      split
      next hlt =>
        rw [hleft]
        simp [hmod, BitVec.getElem_sshiftRight, hlt, hidx]
      next hlt =>
        rw [hleft]
        simp [BitVec.getElem_sshiftRight, hmod, hlt, hidx, BitVec.msb_eq_getLsbD_last]
    next hif1 =>
      simp only [Bool.not_eq_true] at hif1
      rw [← hg]
      simp only [RefVec.denote_ite, RefVec.get_cast, Ref.cast_eq,
        denote_blastArithShiftRightConst]
      rw [AIG.LawfulVecOperator.denote_mem_prefix (f := blastArithShiftRightConst) (h := Ref.hgate _)]
      rw [hright]
      simp only [hif1, Bool.false_eq_true, ↓reduceIte]
      rw [AIG.LawfulVecOperator.denote_mem_prefix (f := blastArithShiftRightConst) (h := Ref.hgate _)]
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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ShiftRight/Variant5acfb1b9ddf9280355da456ee0b0f8bf766094fff089fe46b32ee18ec837c342.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ShiftRight/Variant5acfb1b9ddf9280355da456ee0b0f8bf766094fff089fe46b32ee18ec837c342.lean#L399).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d98444aa9dcbee552359921f0433108891af10b0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
