# denote_blastDivSubtractShift_r

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9c180a081845aaf5750d90c5eb62e55871e2cd50",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 176,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/70/708707ec327819116653d8acfc3961453b52674e104a98989ee189949d2d7584.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:30343a47-51b6-81d9-ac0c-10127e92104a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4883748e-d6ce-2a4d-a890-77eaa9c0ee80",
  "kind": "theorem",
  "lexical_name": "denote_blastDivSubtractShift_r",
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
  "slug": "denote-blastdivsubtractshift-r--46368337976ae5c66bc3422c",
  "source": {
    "blob": "9c180a081845aaf5750d90c5eb62e55871e2cd50",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 301,
    "line": 176,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Udiv/Variant708707ec327819116653d8acfc3961453b52674e104a98989ee189949d2d7584.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:46368337976ae5c66bc3422ce9468b9fcf2568f66db59185f02aae4465507784",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Udiv/Variant708707ec327819116653d8acfc3961453b52674e104a98989ee189949d2d7584.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4883748e-d6ce-2a4d-a890-77eaa9c0ee80`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 176–301.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem denote_blastDivSubtractShift_r (aig : AIG α) (assign : α → Bool) (lhs rhs : BitVec w)
    (n d : AIG.RefVec aig w) (wn wr : Nat)
    (q r : AIG.RefVec aig w) (qbv rbv : BitVec w)
    (hleft : ∀ (idx : Nat) (hidx : idx < w), ⟦aig, n.get idx hidx, assign⟧ = lhs.getLsbD idx)
    (hright : ∀ (idx : Nat) (hidx : idx < w), ⟦aig, d.get idx hidx, assign⟧ = rhs.getLsbD idx)
    (hr : ∀ (idx : Nat) (hidx : idx < w), ⟦aig, r.get idx hidx, assign⟧ = rbv.getLsbD idx)
      :
    ∀ (idx : Nat) (hidx : idx < w),
      ⟦
        (blastDivSubtractShift aig n d wn wr q r).aig,
        (blastDivSubtractShift aig n d wn wr q r).r.get idx hidx,
        assign
      ⟧
        =
      (BitVec.divSubtractShift { n := lhs, d := rhs } { wn := wn, wr := wr, q := qbv, r := rbv }).r.getLsbD idx := by
  intro idx hidx
  unfold blastDivSubtractShift BitVec.divSubtractShift
  simp only [RefVec.denote_ite, LawfulVecOperator.denote_cast_entry, RefVec.get_cast]
  rw [BVPred.mkUlt_denote_eq (lhs := rbv.shiftConcat (lhs.getLsbD (wn - 1))) (rhs := rhs)]
  · split
    next hdiscr =>
      rw [← Normalize.BitVec.lt_ult] at hdiscr
      simp only [Ref.cast_eq, hdiscr, ↓reduceIte]
      rw [AIG.LawfulVecOperator.denote_mem_prefix (f := AIG.RefVec.ite) (h := ?h)]
      case h =>
        apply AIG.LawfulOperator.lt_size_of_lt_aig_size (f := BVPred.mkUlt)
        apply AIG.LawfulVecOperator.lt_size_of_lt_aig_size
        apply AIG.LawfulVecOperator.lt_size_of_lt_aig_size
        apply AIG.LawfulVecOperator.lt_size_of_lt_aig_size
        exact Ref.hgate _
      rw [AIG.LawfulOperator.denote_mem_prefix (f := BVPred.mkUlt) (h := ?h)]
      case h =>
        apply AIG.LawfulVecOperator.lt_size_of_lt_aig_size
        apply AIG.LawfulVecOperator.lt_size_of_lt_aig_size
        apply AIG.LawfulVecOperator.lt_size_of_lt_aig_size
        exact Ref.hgate _
      rw [AIG.LawfulVecOperator.denote_mem_prefix (f := blastSub) (h := ?h)]
      case h =>
        apply AIG.LawfulVecOperator.lt_size_of_lt_aig_size
        apply AIG.LawfulVecOperator.lt_size_of_lt_aig_size
        exact Ref.hgate _
      rw [AIG.LawfulVecOperator.denote_mem_prefix (f := blastShiftConcat) (h := ?h)]
      case h =>
        apply AIG.LawfulVecOperator.lt_size_of_lt_aig_size
        exact Ref.hgate _
      rw [AIG.LawfulVecOperator.denote_mem_prefix (f := blastShiftConcat) (h := Ref.hgate _)]
      rw [denote_blastShiftConcat_eq_shiftConcat]
      · intro idx hidx
        simp [hr]
      · rw [BVPred.denote_getD_eq_getLsbD]
        · exact hleft
        · simp
    next hdiscr =>
      rw [← Normalize.BitVec.lt_ult] at hdiscr
      simp only [Ref.cast_eq, hdiscr, ↓reduceIte]
      rw [AIG.LawfulVecOperator.denote_mem_prefix (f := AIG.RefVec.ite) (h := ?h2)]
      case h2 =>
        apply AIG.LawfulOperator.lt_size_of_lt_aig_size (f := BVPred.mkUlt)
        exact Ref.hgate _
      rw [AIG.LawfulOperator.denote_mem_prefix (f := BVPred.mkUlt) (h := Ref.hgate _)]
      rw [denote_blastSub]
      · intro idx hidx
        simp only [RefVec.get_cast, Ref.cast_eq]
        rw [AIG.LawfulVecOperator.denote_mem_prefix (f := blastShiftConcat) (h := ?h2)]
        case h2 =>
          apply AIG.LawfulVecOperator.lt_size_of_lt_aig_size (f := blastShiftConcat)
          exact Ref.hgate _
        rw [AIG.LawfulVecOperator.denote_mem_prefix (f := blastShiftConcat) (h := Ref.hgate _)]
        rw [denote_blastShiftConcat_eq_shiftConcat]
        · simp [hr]
        · rw [BVPred.denote_getD_eq_getLsbD]
          · exact hleft
          · simp
      · intro idx hidx
        rw [AIG.LawfulVecOperator.denote_mem_prefix (f := blastShiftConcat) (h := ?h3)]
        case h3 =>
          apply AIG.LawfulVecOperator.lt_size_of_lt_aig_size (f := blastShiftConcat)
          apply AIG.LawfulVecOperator.lt_size_of_lt_aig_size (f := blastShiftConcat)
          simp [Ref.hgate]
        rw [AIG.LawfulVecOperator.denote_mem_prefix (f := blastShiftConcat) (h := ?h3)]
        case h3 =>
          apply AIG.LawfulVecOperator.lt_size_of_lt_aig_size (f := blastShiftConcat)
          simp [Ref.hgate]
        rw [AIG.LawfulVecOperator.denote_mem_prefix (f := blastShiftConcat)]
        · simp [hright]
        · simp [Ref.hgate]
  · intro idx hidx
    rw [AIG.LawfulVecOperator.denote_mem_prefix (f := blastSub) (h := ?h4)]
    case h4 =>
      apply AIG.LawfulVecOperator.lt_size_of_lt_aig_size (f := blastShiftConcat)
      apply AIG.LawfulVecOperator.lt_size_of_lt_aig_size (f := blastShiftConcat)
      simp [Ref.hgate]
    rw [AIG.LawfulVecOperator.denote_mem_prefix (f := blastShiftConcat) (h := ?h4)]
    case h4 =>
      apply AIG.LawfulVecOperator.lt_size_of_lt_aig_size (f := blastShiftConcat)
      simp [Ref.hgate]
    rw [AIG.LawfulVecOperator.denote_mem_prefix (f := blastShiftConcat)]
    . simp only [Ref.cast_eq, RefVec.get_cast]
      rw [denote_blastShiftConcat_eq_shiftConcat]
      . simp [hr]
      . dsimp only
        rw [BVPred.denote_getD_eq_getLsbD]
        · exact hleft
        · simp
    . simp [Ref.hgate]
  · intro idx hidx
    rw [AIG.LawfulVecOperator.denote_mem_prefix (f := blastSub) (h := ?h5)]
    case h5 =>
      apply AIG.LawfulVecOperator.lt_size_of_lt_aig_size (f := blastShiftConcat)
      apply AIG.LawfulVecOperator.lt_size_of_lt_aig_size (f := blastShiftConcat)
      apply AIG.LawfulVecOperator.lt_size_of_lt_aig_size (f := blastShiftConcat)
      simp [Ref.hgate]
    rw [AIG.LawfulVecOperator.denote_mem_prefix (f := blastShiftConcat) (h := ?h5)]
    case h5 =>
      apply AIG.LawfulVecOperator.lt_size_of_lt_aig_size (f := blastShiftConcat)
      apply AIG.LawfulVecOperator.lt_size_of_lt_aig_size (f := blastShiftConcat)
      simp [Ref.hgate]
    rw [AIG.LawfulVecOperator.denote_mem_prefix (f := blastShiftConcat) (h := ?h5)]
    case h5 =>
      apply AIG.LawfulVecOperator.lt_size_of_lt_aig_size (f := blastShiftConcat)
      simp [Ref.hgate]
    rw [AIG.LawfulVecOperator.denote_mem_prefix (f := blastShiftConcat)]
    . simp [hright]
    . simp [Ref.hgate]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Udiv/Variant708707ec327819116653d8acfc3961453b52674e104a98989ee189949d2d7584.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Udiv/Variant708707ec327819116653d8acfc3961453b52674e104a98989ee189949d2d7584.lean#L176).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9c180a081845aaf5750d90c5eb62e55871e2cd50` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
