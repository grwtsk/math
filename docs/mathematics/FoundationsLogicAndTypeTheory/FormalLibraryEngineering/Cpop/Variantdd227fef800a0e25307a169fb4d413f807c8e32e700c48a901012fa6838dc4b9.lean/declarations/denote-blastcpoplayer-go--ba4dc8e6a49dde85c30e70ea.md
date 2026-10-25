# denote_blastCpopLayer.go

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d1812ff626310aec0f5bcd39aac1cb04d417fdb5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 143,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/dd/dd227fef800a0e25307a169fb4d413f807c8e32e700c48a901012fa6838dc4b9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7e2db98c-09fa-7eb4-fd80-a38f08182ce5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:cbf61a69-3b46-b6df-93aa-75172c701814",
  "kind": "theorem",
  "lexical_name": "denote_blastCpopLayer.go",
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
  "slug": "denote-blastcpoplayer-go--ba4dc8e6a49dde85c30e70ea",
  "source": {
    "blob": "d1812ff626310aec0f5bcd39aac1cb04d417fdb5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 217,
    "line": 143,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cpop/Variantdd227fef800a0e25307a169fb4d413f807c8e32e700c48a901012fa6838dc4b9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ba4dc8e6a49dde85c30e70ea6da757f482c1806c1f98cf44d07831ebe4a7d697",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cpop/Variantdd227fef800a0e25307a169fb4d413f807c8e32e700c48a901012fa6838dc4b9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cbf61a69-3b46-b6df-93aa-75172c701814`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 143–217.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem denote_blastCpopLayer.go (aig : AIG α) (iterNum : Nat)
    (oldLayer : AIG.RefVec aig (len * w)) (newLayer : AIG.RefVec aig (iterNum * w))
    (oldLayerBv : BitVec (len * w)) (hold' : 2 * (iterNum - 1) < len)
    (hold : ∀ (idx : Nat) (hidx : idx < len * w),
            ⟦aig, oldLayer.get idx hidx, assign⟧ = oldLayerBv.getLsbD idx)
    (hnew : ∀ (idx : Nat) (hidx : idx < iterNum * w),
            ⟦aig, newLayer.get idx hidx, assign⟧ =
        (BitVec.cpopLayer (oldLayer := oldLayerBv) 0#(0 * w) (by simp; omega)).getLsbD idx) :
    ∀ (idx : Nat) (hidx : idx < (len + 1) / 2 * w),
      ⟦
        (blastCpopLayer.go iterNum oldLayer newLayer hold' (by rfl)).aig,
        (blastCpopLayer.go iterNum oldLayer newLayer hold' (by rfl)).vec.get idx hidx,
        assign
      ⟧ = (BitVec.cpopLayer oldLayerBv 0#(0 * w) (by omega)).getLsbD idx := by
  intros idx hidx
  generalize hgen : blastCpopLayer.go (outWidth := (len + 1) / 2 * w) iterNum oldLayer newLayer
    hold' (by rfl) = res
  unfold blastCpopLayer.go at hgen
  split at hgen
  · rw [← hgen]
    simp only
    apply denote_blastCpopLayer.go (hold' := by omega)
    · intros idx hidx
      rw [AIG.LawfulVecOperator.denote_mem_prefix (f := blastAppend),
        AIG.LawfulVecOperator.denote_mem_prefix (f := blastAdd),
        AIG.LawfulVecOperator.denote_mem_prefix (f := blastExtract),
        AIG.LawfulVecOperator.denote_mem_prefix (f := blastExtract)]
      simp only [RefVec.cast_cast, RefVec.get_cast, Ref.cast_eq, hold]
      · exact (oldLayer.get idx hidx).hgate
      all_goals
        simp only [RefVec.cast_cast, RefVec.get_cast, Ref.cast_eq]
        apply LawfulVecOperator.lt_size_of_lt_aig_size
        apply Ref.hgate
    · intros idx hidx
      simp only [RefVec.cast_cast, denote_blastAppend, RefVec.get_cast, Ref.cast_eq]
      split
      · rw [AIG.LawfulVecOperator.denote_mem_prefix (f := blastAdd),
          AIG.LawfulVecOperator.denote_mem_prefix (f := blastExtract),
          AIG.LawfulVecOperator.denote_mem_prefix (f := blastExtract)]
        simp only [hnew]
        · exact (newLayer.get idx (by omega)).hgate
        all_goals
          apply LawfulVecOperator.lt_size_of_lt_aig_size
          apply Ref.hgate
      · have hiter : idx / w = iterNum := Nat.div_eq_of_lt_le (by omega) hidx
        subst hiter
        rw [BitVec.getLsbD_cpopLayer (oldLayer := oldLayerBv) (by intros; omega) (by omega),
          ← Nat.div_eq_sub_mod_div (m := idx) (n := w)]
        simp only [show idx - idx / w * w = idx % w by exact Eq.symm Nat.mod_eq_sub_div_mul]
        apply denote_blastAdd
        · intros idx' hidx'
          simp only [RefVec.get_cast, Ref.cast_eq, hidx', BitVec.getLsbD_eq_getElem,
            BitVec.getElem_extractLsb']
          rw [AIG.LawfulVecOperator.denote_mem_prefix (f := blastExtract), denote_blastExtract]
          · split
            · simp [hold]
            · case _ hnot =>
              simp only [Nat.not_lt] at hnot
              exact Eq.symm (BitVec.getLsbD_of_ge oldLayerBv (2 * (idx / w) * w + idx') hnot)
          · simp [Ref.hgate]
        · intros idx'' hidx''
          simp only [denote_blastExtract, RefVec.get_cast, Ref.cast_eq, BitVec.getLsbD_extractLsb']
          split
          · rw [AIG.LawfulVecOperator.denote_mem_prefix (f := blastExtract)]
            · simp [hold, hidx'']
            · apply Ref.hgate
          · case _ hnot =>
            simp only [hidx'', decide_true, Bool.true_and, Bool.false_eq]
            simp only [Nat.not_lt] at hnot
            apply BitVec.getLsbD_of_ge oldLayerBv (ge := hnot)
  · have h : iterNum = (len + 1) / 2 := by omega
    subst h
    rw [← hgen, hnew]
termination_by len - iterNum * 2

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cpop/Variantdd227fef800a0e25307a169fb4d413f807c8e32e700c48a901012fa6838dc4b9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cpop/Variantdd227fef800a0e25307a169fb4d413f807c8e32e700c48a901012fa6838dc4b9.lean#L143).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d1812ff626310aec0f5bcd39aac1cb04d417fdb5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
