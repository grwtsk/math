# denote_blastUdiv

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
      "line": 444,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/70/708707ec327819116653d8acfc3961453b52674e104a98989ee189949d2d7584.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:50f83a78-1184-4fa3-7efa-8fe6cd0b5b73",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b6305ea8-4e68-0059-baf1-6b22a6263ce8",
  "kind": "theorem",
  "lexical_name": "denote_blastUdiv",
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
  "slug": "denote-blastudiv--f631ccce932c2b37f9137fcb",
  "source": {
    "blob": "9c180a081845aaf5750d90c5eb62e55871e2cd50",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 508,
    "line": 444,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Udiv/Variant708707ec327819116653d8acfc3961453b52674e104a98989ee189949d2d7584.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f631ccce932c2b37f9137fcb1e2a2fb5f2886a0b30ddd6921c14aa7b2eb757a9",
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

Occurrence: `result:b6305ea8-4e68-0059-baf1-6b22a6263ce8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 444–508.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem denote_blastUdiv (aig : AIG α) (lhs rhs : BitVec w) (assign : α → Bool)
      (input : BinaryRefVec aig w)
      (hleft : ∀ (idx : Nat) (hidx : idx < w), ⟦aig, input.lhs.get idx hidx, assign⟧ = lhs.getLsbD idx)
      (hright : ∀ (idx : Nat) (hidx : idx < w), ⟦aig, input.rhs.get idx hidx, assign⟧ = rhs.getLsbD idx) :
      ∀ (idx : Nat) (hidx : idx < w),
        ⟦(blastUdiv aig input).aig, (blastUdiv aig input).vec.get idx hidx, assign⟧
          =
        (lhs / rhs).getLsbD idx := by
  intro idx hidx
  unfold blastUdiv
  simp only [Ref.cast_eq, RefVec.denote_ite,
    RefVec.get_cast]
  split
  next hdiscr =>
    rw [blastUdiv.go_denote_mem_prefix (hstart := Ref.hgate _)] at hdiscr
    rw [BVPred.mkEq_denote_eq (lhs := rhs) (rhs := 0#w)] at hdiscr
    · simp only [beq_iff_eq] at hdiscr
      rw [hdiscr]
      rw [blastUdiv.go_denote_mem_prefix]
      case hstart =>
        apply LawfulOperator.le_size_of_le_aig_size (f := BVPred.mkEq)
        exact Ref.hgate _
      rw [AIG.LawfulOperator.denote_mem_prefix (f := BVPred.mkEq) (h := Ref.hgate _)]
      rw [denote_blastConst]
      simp
    · intro idx hidx
      simp [hright]
    · intro idx hidx
      simp
  next hdiscr =>
    rw [blastUdiv.go_denote_mem_prefix (hstart := Ref.hgate _)] at hdiscr
    rw [BVPred.mkEq_denote_eq (lhs := rhs) (rhs := 0#w)] at hdiscr
    · have hzero : 0#w < rhs := by
        rw [Normalize.BitVec.zero_lt_iff_zero_neq]
        simpa using hdiscr
      rw [blastUdiv.denote_go (hzero := hzero)]
      · intro idx hidx
        rw [AIG.LawfulOperator.denote_mem_prefix (f := BVPred.mkEq)]
        · simp [hleft]
        · simp [Ref.hgate]
      · intro idx hidx
        rw [AIG.LawfulOperator.denote_mem_prefix (f := BVPred.mkEq)]
        · simp [hright]
        · simp [Ref.hgate]
      · intro idx hidx
        rw [AIG.LawfulOperator.denote_mem_prefix (f := BVPred.mkEq)]
        · simp only [RefVec.get_cast, Ref.cast_eq]
          rw [denote_blastConst]
          simp
        · simp [Ref.hgate]
      · intro idx hidx
        rw [AIG.LawfulOperator.denote_mem_prefix (f := BVPred.mkEq)]
        · simp only [RefVec.get_cast, Ref.cast_eq]
          rw [denote_blastConst]
          simp
        · simp [Ref.hgate]
    · intro idx hdix
      simp [hright]
    · intro idx hdix
      simp

end bitblast
end BVExpr

end Std.Tactic.BVDecide
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Udiv/Variant708707ec327819116653d8acfc3961453b52674e104a98989ee189949d2d7584.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Udiv/Variant708707ec327819116653d8acfc3961453b52674e104a98989ee189949d2d7584.lean#L444).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9c180a081845aaf5750d90c5eb62e55871e2cd50` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
