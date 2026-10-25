# go_denote_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2310b8c6-b533-eb64-e0ae-6cf5bbb66eaf",
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
  "slug": "go-denote-eq--d4520f3a3dec0269f005d2bb",
  "source": {
    "blob": "14f4ff3f9cf6955771acdb099ff776b44c480b17",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 215,
    "line": 149,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Add/Variant940820a8e2ed4fcfe9411f561055866f8c2a3e3418b634814f04a67f3dd18eb0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d4520f3a3dec0269f005d2bb7b749fe95a25ec9789efba7bdf29c37df885fb79",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Add/Variant940820a8e2ed4fcfe9411f561055866f8c2a3e3418b634814f04a67f3dd18eb0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2310b8c6-b533-eb64-e0ae-6cf5bbb66eaf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 149–215.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Add/Variant940820a8e2ed4fcfe9411f561055866f8c2a3e3418b634814f04a67f3dd18eb0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Add/Variant940820a8e2ed4fcfe9411f561055866f8c2a3e3418b634814f04a67f3dd18eb0.lean#L149).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `14f4ff3f9cf6955771acdb099ff776b44c480b17` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
