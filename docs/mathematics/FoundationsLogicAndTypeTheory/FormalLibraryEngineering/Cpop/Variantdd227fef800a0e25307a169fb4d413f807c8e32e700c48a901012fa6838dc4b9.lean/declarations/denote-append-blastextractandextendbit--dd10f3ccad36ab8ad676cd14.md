# denote_append_blastExtractAndExtendBit

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
      "line": 73,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/dd/dd227fef800a0e25307a169fb4d413f807c8e32e700c48a901012fa6838dc4b9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8f50207d-4eb6-5707-0d84-90a128ec37dc",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8240969e-2531-e099-a8f8-199e1781adca",
  "kind": "theorem",
  "lexical_name": "denote_append_blastExtractAndExtendBit",
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
  "slug": "denote-append-blastextractandextendbit--dd10f3ccad36ab8ad676cd14",
  "source": {
    "blob": "d1812ff626310aec0f5bcd39aac1cb04d417fdb5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 99,
    "line": 73,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cpop/Variantdd227fef800a0e25307a169fb4d413f807c8e32e700c48a901012fa6838dc4b9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dd10f3ccad36ab8ad676cd14a74164aba1f4dc19b22503385788b9d02e44b48d",
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

Occurrence: `result:8240969e-2531-e099-a8f8-199e1781adca`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–99.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem denote_append_blastExtractAndExtendBit (assign : α → Bool) (aig : AIG α)
    (currIdx w : Nat) (x : BitVec w) (xc : AIG.RefVec aig w) (acc : AIG.RefVec aig (w * currIdx))
    (hidx : idx < w * currIdx + w)
    (hacc : ∀ (idx : Nat) (hidx : idx < w * currIdx),
                ⟦aig, acc.get idx hidx, assign⟧ = (BitVec.extractAndExtend w x).getLsbD idx)
              (hx : ∀ (idx : Nat) (hidx : idx < w), ⟦aig, xc.get idx hidx, assign⟧ = x.getLsbD idx) :
    ⟦
      (blastExtractAndExtendBit aig ⟨currIdx, xc⟩).aig,
      ((acc.cast (by apply AIG.LawfulVecOperator.le_size (f := blastExtractAndExtendBit))).append
        (blastExtractAndExtendBit aig ⟨currIdx, xc⟩).vec).get idx hidx,
      assign
    ⟧ = (BitVec.extractAndExtend w x).getLsbD idx := by
  rw [RefVec.get_append]
  split
  · rw [blastExtractAndExtendBit_denote_mem_prefix (xc := xc)]
    apply hacc
    simp only [RefVec.get_cast, Ref.cast_eq]
    apply acc.hrefs (i := idx)
  · rw [BitVec.getLsbD_extractAndExtend (by omega)]
    have h := Nat.div_eq_of_lt_le (k := currIdx) (m := idx) (n := w)
      (by rw [Nat.mul_comm]; omega)
      (by rw [Nat.add_mul, Nat.mul_comm currIdx w]; omega)
    have h' := Nat.mod_eq_sub_mul_div (k := w) (x := idx)
    rw [h] at h'
    simp only [← h', ← Nat.div_eq_sub_mod_div (m := idx) (n := w), h]
    apply denote_blastExtractAndExtendBit (hx := hx)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cpop/Variantdd227fef800a0e25307a169fb4d413f807c8e32e700c48a901012fa6838dc4b9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cpop/Variantdd227fef800a0e25307a169fb4d413f807c8e32e700c48a901012fa6838dc4b9.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d1812ff626310aec0f5bcd39aac1cb04d417fdb5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
