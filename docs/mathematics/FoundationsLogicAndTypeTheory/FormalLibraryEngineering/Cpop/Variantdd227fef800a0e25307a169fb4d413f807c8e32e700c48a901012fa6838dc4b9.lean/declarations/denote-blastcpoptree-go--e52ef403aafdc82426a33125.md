# denote_blastCpopTree.go

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
      "line": 251,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/dd/dd227fef800a0e25307a169fb4d413f807c8e32e700c48a901012fa6838dc4b9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:08a43830-b037-3dfb-d284-1619028b14d4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5167b7f5-4345-f465-5477-887eec54c2d0",
  "kind": "theorem",
  "lexical_name": "denote_blastCpopTree.go",
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
  "slug": "denote-blastcpoptree-go--e52ef403aafdc82426a33125",
  "source": {
    "blob": "d1812ff626310aec0f5bcd39aac1cb04d417fdb5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 284,
    "line": 251,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cpop/Variantdd227fef800a0e25307a169fb4d413f807c8e32e700c48a901012fa6838dc4b9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e52ef403aafdc82426a33125d3c6ee7d999a1a77795d376d25de06c3e3ff707d",
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

Occurrence: `result:5167b7f5-4345-f465-5477-887eec54c2d0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 251–284.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem denote_blastCpopTree.go (aig : AIG α) (len : Nat)
    (l : AIG.RefVec aig (len * w)) (h : 0 < len) (bv : BitVec (len * w))
    (hpar : ∀ (idx : Nat) (hidx : idx < len * w), ⟦aig, l.get idx hidx, assign⟧ = bv.getLsbD idx) :
    ∀ (idx : Nat) (hidx : idx < w),
      ⟦
        (blastCpopTree.go l h).aig,
        (blastCpopTree.go l h).vec.get idx hidx,
        assign
      ⟧ = (BitVec.cpopTree bv).getLsbD idx := by
  intros idx hidx
  generalize hgen : blastCpopTree.go l h = res
  unfold blastCpopTree.go at hgen
  split at hgen
  · rw [← hgen]
    unfold BitVec.cpopTree
    simp only [Lean.Elab.WF.paramLet, show ¬len = 0 by omega, reduceDIte, show ¬len = 1 by omega]
    apply denote_blastCpopTree.go
    apply denote_blastCpopLayer (iterNum := 0)
    · simp
      omega
    · simp [hpar]
  · have : len = 1 := by omega
    subst this
    rw [← hgen, BitVec.cpopTree]
    simp only [Lean.Elab.WF.paramLet, Nat.succ_ne_self, reduceDIte, BitVec.getLsbD_cast]
    rw [← hpar]
    · congr
      · simp
      · apply eqRec_heq
      · apply proof_irrel_heq
    · omega
termination_by len


```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cpop/Variantdd227fef800a0e25307a169fb4d413f807c8e32e700c48a901012fa6838dc4b9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cpop/Variantdd227fef800a0e25307a169fb4d413f807c8e32e700c48a901012fa6838dc4b9.lean#L251).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d1812ff626310aec0f5bcd39aac1cb04d417fdb5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
