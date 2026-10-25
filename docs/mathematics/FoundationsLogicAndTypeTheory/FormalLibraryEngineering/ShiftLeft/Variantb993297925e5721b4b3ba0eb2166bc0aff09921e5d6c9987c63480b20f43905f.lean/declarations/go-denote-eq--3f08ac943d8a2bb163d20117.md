# go_denote_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:08addc65-3fe2-e63f-5a9a-77c320e629d0",
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
  "slug": "go-denote-eq--3f08ac943d8a2bb163d20117",
  "source": {
    "blob": "4ec18cb711599292a51ee0463706a647de641a2d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 282,
    "line": 246,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ShiftLeft/Variantb993297925e5721b4b3ba0eb2166bc0aff09921e5d6c9987c63480b20f43905f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3f08ac943d8a2bb163d20117f6232811981bc49769bfc0f85249340a6e8230c3",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ShiftLeft/Variantb993297925e5721b4b3ba0eb2166bc0aff09921e5d6c9987c63480b20f43905f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:08addc65-3fe2-e63f-5a9a-77c320e629d0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 246–282.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem go_denote_eq (aig : AIG α) (distance : AIG.RefVec aig n) (curr : Nat)
      (hcurr : curr ≤ n - 1) (acc : AIG.RefVec aig w)
    (lhs : BitVec w) (rhs : BitVec n) (assign : α → Bool)
    (hacc : ∀ (idx : Nat) (hidx : idx < w), ⟦aig, acc.get idx hidx, assign⟧ = (BitVec.shiftLeftRec lhs rhs curr).getLsbD idx)
    (hright : ∀ (idx : Nat) (hidx : idx < n), ⟦aig, distance.get idx hidx, assign⟧ = rhs.getLsbD idx) :
    ∀ (idx : Nat) (hidx : idx < w),
        ⟦
          (go aig distance curr acc).aig,
          (go aig distance curr acc).vec.get idx hidx,
          assign
        ⟧
          =
        (BitVec.shiftLeftRec lhs rhs (n - 1)).getLsbD idx := by
  intro idx hidx
  generalize hgo : go aig distance curr acc = res
  unfold go at hgo
  dsimp only at hgo
  split at hgo
  · rw [← hgo]
    rw [go_denote_eq]
    · omega
    · intro idx hidx
      simp only [BitVec.shiftLeftRec_succ]
      rw [twoPowShift_eq (lhs := BitVec.shiftLeftRec lhs rhs curr)]
      · simp [hacc]
      · simp [hright]
    · intro idx hidx
      rw [AIG.LawfulVecOperator.denote_mem_prefix (f := twoPowShift)]
      · simp [hright]
      · simp [Ref.hgate]
  · have : curr = n - 1 := by omega
    rw [← hgo]
    simp [hacc, this]
termination_by n - 1 - curr

end blastShiftLeft

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ShiftLeft/Variantb993297925e5721b4b3ba0eb2166bc0aff09921e5d6c9987c63480b20f43905f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ShiftLeft/Variantb993297925e5721b4b3ba0eb2166bc0aff09921e5d6c9987c63480b20f43905f.lean#L246).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4ec18cb711599292a51ee0463706a647de641a2d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
