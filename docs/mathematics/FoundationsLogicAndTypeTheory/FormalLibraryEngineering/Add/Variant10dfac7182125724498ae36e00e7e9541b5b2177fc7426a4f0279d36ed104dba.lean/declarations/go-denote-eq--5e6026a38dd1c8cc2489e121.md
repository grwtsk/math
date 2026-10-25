# go_denote_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c4b3e755090b70d15c3a6e304b4abb2ec5ad056f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 141,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/10/10dfac7182125724498ae36e00e7e9541b5b2177fc7426a4f0279d36ed104dba.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8118cb1e-f77e-4c33-2f6c-bade94791f00",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:00dcb56f-056d-bad5-dfe3-e551b6fbd1ce",
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
  "slug": "go-denote-eq--5e6026a38dd1c8cc2489e121",
  "source": {
    "blob": "c4b3e755090b70d15c3a6e304b4abb2ec5ad056f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 207,
    "line": 141,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Add/Variant10dfac7182125724498ae36e00e7e9541b5b2177fc7426a4f0279d36ed104dba.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5e6026a38dd1c8cc2489e1214b3631a20aa2ba16f85298a2300226c647cb38b5",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Add/Variant10dfac7182125724498ae36e00e7e9541b5b2177fc7426a4f0279d36ed104dba.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:00dcb56f-056d-bad5-dfe3-e551b6fbd1ce`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 141–207.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem go_denote_eq (aig : AIG α) (curr : Nat) (hcurr : curr ≤ w) (cin : Ref aig)
    (s : AIG.RefVec aig curr) (lhs rhs : AIG.RefVec aig w) (assign : α → Bool)
    (lhsExpr rhsExpr : BitVec w)
    (hleft : ∀ (idx : Nat) (hidx : idx < w), ⟦aig, lhs.get idx hidx, assign⟧ = lhsExpr.getLsbD idx)
    (hright : ∀ (idx : Nat) (hidx : idx < w), ⟦aig, rhs.get idx hidx, assign⟧ = rhsExpr.getLsbD idx)
    (hcin : ⟦aig, cin, assign⟧ = BitVec.carry curr lhsExpr rhsExpr false) :
    ∀ (idx : Nat) (hidx1 : idx < w),
        curr ≤ idx
          →
        ⟦
          (go aig lhs rhs curr hcurr cin s).aig,
          (go aig lhs rhs curr hcurr cin s).vec.get idx hidx1,
          assign
        ⟧
          =
        ⟦aig, lhs.get idx hidx1, assign⟧.xor
          (⟦aig, rhs.get idx hidx1, assign⟧.xor
            (BitVec.carry idx lhsExpr rhsExpr false)) := by
  intro idx hidx1 hidx2
  generalize hgo : go aig lhs rhs curr hcurr cin s = res
  unfold go at hgo
  dsimp only at hgo
  split at hgo
  next hlt =>
    cases Nat.eq_or_lt_of_le hidx2 with
    | inl heq =>
      rw [← hgo]
      rw [go_get (hidx := by omega)]
      rw [AIG.RefVec.get_push_ref_eq' (hidx := by rw [heq])]
      simp only [← heq]
      rw [go_denote_mem_prefix]
      · unfold mkFullAdder
        simp [hcin]
      · simp only [Ref.gate_cast]
        apply Ref.hgate
    | inr hlt =>
      rw [← hgo]
      rw [go_denote_eq (lhsExpr := lhsExpr) (rhsExpr := rhsExpr) (curr := curr + 1)]
      · rw [mkFullAdder_denote_mem_prefix]
        rw [mkFullAdder_denote_mem_prefix]
        · simp
        · simp [Ref.hgate]
        · simp [Ref.hgate]
      · intro idx hidx
        rw [mkFullAdder_denote_mem_prefix]
        rw [← hleft idx hidx]
        · simp
        · simp [Ref.hgate]
      · intro idx hidx
        rw [mkFullAdder_denote_mem_prefix]
        rw [← hright idx hidx]
        · simp
        · simp [Ref.hgate]
      · unfold mkFullAdder
        simp only [Ref.cast_eq, denote_projected_entry, denote_mkFullAdderCarry,
          FullAdderInput.lhs_cast, FullAdderInput.rhs_cast, FullAdderInput.cin_cast,
          BitVec.carry_succ]
        rw [AIG.LawfulOperator.denote_mem_prefix (f := mkFullAdderOut) (h := Ref.hgate _)]
        rw [AIG.LawfulOperator.denote_mem_prefix (f := mkFullAdderOut) (h := Ref.hgate _)]
        rw [AIG.LawfulOperator.denote_mem_prefix (f := mkFullAdderOut) (h := Ref.hgate _)]
        rw [hleft, hright, hcin]
        simp [atLeastTwo_eq_halfAdder]
      · omega
  · omega
termination_by w - curr


```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Add/Variant10dfac7182125724498ae36e00e7e9541b5b2177fc7426a4f0279d36ed104dba.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Add/Variant10dfac7182125724498ae36e00e7e9541b5b2177fc7426a4f0279d36ed104dba.lean#L141).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c4b3e755090b70d15c3a6e304b4abb2ec5ad056f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
