# denote_blastShiftLeft

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ced59a84dff910f40954ae7f0ec5599296530cfb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 275,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d0/d092defe1709e6932ffd887be918eef56b6f5355ee67931479a2aa62117ed8e3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e8583817-71e8-3d2c-c4d7-2eccab623708",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5a3c8f0d-ea0e-1b9d-bd75-7457d6e429d9",
  "kind": "theorem",
  "lexical_name": "denote_blastShiftLeft",
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
  "slug": "denote-blastshiftleft--0f59c12608bc8c1446f87806",
  "source": {
    "blob": "ced59a84dff910f40954ae7f0ec5599296530cfb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 319,
    "line": 275,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ShiftLeft/Variantd092defe1709e6932ffd887be918eef56b6f5355ee67931479a2aa62117ed8e3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0f59c12608bc8c1446f8780686ad8d39552eaadf77aedd3c173f0ba308dbc733",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ShiftLeft/Variantd092defe1709e6932ffd887be918eef56b6f5355ee67931479a2aa62117ed8e3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5a3c8f0d-ea0e-1b9d-bd75-7457d6e429d9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 275–319.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem denote_blastShiftLeft (aig : AIG α) (target : ArbitraryShiftTarget aig w0)
    (lhs : BitVec w0) (rhs : BitVec target.n) (assign : α → Bool)
    (hleft : ∀ (idx : Nat) (hidx : idx < w0), ⟦aig, target.target.get idx hidx, assign⟧ = lhs.getLsbD idx)
    (hright : ∀ (idx : Nat) (hidx : idx < target.n), ⟦aig, target.distance.get idx hidx, assign⟧ = rhs.getLsbD idx) :
    ∀ (idx : Nat) (hidx : idx < w0),
        ⟦
          (blastShiftLeft aig target).aig,
          (blastShiftLeft aig target).vec.get idx hidx,
          assign
        ⟧
          =
        (lhs <<< rhs).getLsbD idx := by
  intro idx hidx
  rw [BitVec.shiftLeft_eq_shiftLeftRec]
  generalize hg : blastShiftLeft aig target = res
  rcases target with ⟨n, target, distance⟩
  unfold blastShiftLeft at hg
  dsimp only at hg
  split at hg
  next hzero =>
    dsimp only
    subst hzero
    rw [← hg]
    simp only [hleft, Nat.zero_sub, BitVec.shiftLeftRec_zero, BitVec.and_twoPow, Nat.le_refl,
      BitVec.getLsbD_of_ge, Bool.false_eq_true, ↓reduceIte, BitVec.reduceHShiftLeft',
      BitVec.getLsbD_shiftLeft, Nat.sub_zero, Bool.eq_and_self, Bool.and_eq_true, decide_eq_true_eq,
      Bool.not_eq_true', decide_eq_false_iff_not, Nat.not_lt, Nat.zero_le, and_true]
    apply BitVec.lt_of_getLsbD
  · rw [← hg]
    rw [blastShiftLeft.go_denote_eq]
    · omega
    · intro idx hidx
      simp only [BitVec.shiftLeftRec_zero]
      rw [blastShiftLeft.twoPowShift_eq]
      · simp [hleft]
      · simp [hright]
    · intros
      rw [AIG.LawfulVecOperator.denote_mem_prefix (f := blastShiftLeft.twoPowShift)]
      · simp [hright]
      · simp [Ref.hgate]

end bitblast
end BVExpr

end Std.Tactic.BVDecide
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ShiftLeft/Variantd092defe1709e6932ffd887be918eef56b6f5355ee67931479a2aa62117ed8e3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ShiftLeft/Variantd092defe1709e6932ffd887be918eef56b6f5355ee67931479a2aa62117ed8e3.lean#L275).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ced59a84dff910f40954ae7f0ec5599296530cfb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
