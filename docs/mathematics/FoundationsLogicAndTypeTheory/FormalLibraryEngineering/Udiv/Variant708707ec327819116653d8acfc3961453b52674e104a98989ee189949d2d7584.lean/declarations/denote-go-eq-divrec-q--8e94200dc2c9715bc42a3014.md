# denote_go_eq_divRec_q

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
      "line": 325,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/70/708707ec327819116653d8acfc3961453b52674e104a98989ee189949d2d7584.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e3ee9930-71e5-a489-6a55-0dfab15f7705",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2a8c97d9-d154-60d5-6247-cb5091cd154b",
  "kind": "theorem",
  "lexical_name": "denote_go_eq_divRec_q",
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
  "slug": "denote-go-eq-divrec-q--8e94200dc2c9715bc42a3014",
  "source": {
    "blob": "9c180a081845aaf5750d90c5eb62e55871e2cd50",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 400,
    "line": 325,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Udiv/Variant708707ec327819116653d8acfc3961453b52674e104a98989ee189949d2d7584.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8e94200dc2c9715bc42a30147ad98b965ac9d1ecc967bcaba789fb9422881239",
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

Occurrence: `result:2a8c97d9-d154-60d5-6247-cb5091cd154b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 325–400.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem denote_go_eq_divRec_q (aig : AIG α) (assign : α → Bool) (curr : Nat) (lhs rhs rbv qbv : BitVec w)
    (n d q r : AIG.RefVec aig w) (wn wr : Nat)
    (hleft : ∀ (idx : Nat) (hidx : idx < w), ⟦aig, n.get idx hidx, assign⟧ = lhs.getLsbD idx)
    (hright : ∀ (idx : Nat) (hidx : idx < w), ⟦aig, d.get idx hidx, assign⟧ = rhs.getLsbD idx)
    (hq : ∀ (idx : Nat) (hidx : idx < w), ⟦aig, q.get idx hidx, assign⟧ = qbv.getLsbD idx)
    (hr : ∀ (idx : Nat) (hidx : idx < w), ⟦aig, r.get idx hidx, assign⟧ = rbv.getLsbD idx)
      :
    ∀ (idx : Nat) (hidx : idx < w),
      ⟦
        (go aig curr n d wn wr q r).aig,
        (go aig curr n d wn wr q r).q.get idx hidx,
        assign
      ⟧
        =
      (BitVec.divRec curr { n := lhs, d := rhs} { wn, wr, q := qbv, r := rbv }).q.getLsbD idx := by
  induction curr generalizing aig wn wr q r qbv rbv with
  | zero =>
    intro idx hidx
    simp [go, hq]
  | succ curr ih =>
    intro idx hidx
    rw [go, BitVec.divRec_succ, BitVec.divSubtractShift]
    split
    next hdiscr =>
      rw [ih]
      · rfl
      · intro idx hidx
        rw [blastDivSubtractShift_denote_mem_prefix]
        · simp [hleft]
        · simp [Ref.hgate]
      · intro idx hidx
        rw [blastDivSubtractShift_denote_mem_prefix]
        · simp [hright]
        · simp [Ref.hgate]
      · intro idx hidx
        rw [denote_blastDivSubtractShift_q (rbv := rbv) (qbv := qbv) (lhs := lhs) (rhs := rhs)]
        · rw [BitVec.divSubtractShift]
          simp [hdiscr]
        · exact hleft
        · exact hright
        · exact hq
        · exact hr
      · intro idx hidx
        rw [denote_blastDivSubtractShift_r (rbv := rbv) (qbv := qbv) (lhs := lhs) (rhs := rhs)]
        · rw [BitVec.divSubtractShift]
          simp [hdiscr]
        · exact hleft
        · exact hright
        · exact hr
    next hdiscr =>
      rw [ih]
      · rfl
      · intro idx hidx
        rw [blastDivSubtractShift_denote_mem_prefix]
        · simp [hleft]
        · simp [Ref.hgate]
      · intro idx hidx
        rw [blastDivSubtractShift_denote_mem_prefix]
        · simp [hright]
        · simp [Ref.hgate]
      · intro idx hidx
        rw [denote_blastDivSubtractShift_q (rbv := rbv) (qbv := qbv) (lhs := lhs) (rhs := rhs)]
        · rw [BitVec.divSubtractShift]
          simp [hdiscr]
        · exact hleft
        · exact hright
        · exact hq
        · exact hr
      · intro idx hidx
        rw [denote_blastDivSubtractShift_r (rbv := rbv) (qbv := qbv) (lhs := lhs) (rhs := rhs)]
        · rw [BitVec.divSubtractShift]
          simp [hdiscr]
        · exact hleft
        · exact hright
        · exact hr

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Udiv/Variant708707ec327819116653d8acfc3961453b52674e104a98989ee189949d2d7584.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Udiv/Variant708707ec327819116653d8acfc3961453b52674e104a98989ee189949d2d7584.lean#L325).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9c180a081845aaf5750d90c5eb62e55871e2cd50` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
