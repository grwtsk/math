# go_denote_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d04cbd52-9853-eb28-71ce-06251d07f931",
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
  "slug": "go-denote-eq--227a28dd8c0fd2e9d214a37d",
  "source": {
    "blob": "0de41f8c4a4a46898956a6d496611e9396cb2336",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 101,
    "line": 44,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Clz/Variantbc09bacb7adf34b1adc0e31a516a3d4ad60c8d3ed6e6c81b9e4711169e867d3a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:227a28dd8c0fd2e9d214a37d68e9d2abb7d274b46900b9a55c9a4a2dc47a1798",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Clz/Variantbc09bacb7adf34b1adc0e31a516a3d4ad60c8d3ed6e6c81b9e4711169e867d3a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d04cbd52-9853-eb28-71ce-06251d07f931`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 44–101.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem go_denote_eq {w : Nat} (aig : AIG α)
    (acc : AIG.RefVec aig w) (xc : AIG.RefVec aig w) (x : BitVec w) (assign : α → Bool)
    (hx : ∀ (idx : Nat) (hidx : idx < w), ⟦aig, xc.get idx hidx, assign⟧ = x.getLsbD idx)
    (hacc : ∀ (idx : Nat) (hidx : idx < w),
      if curr = 0 then ⟦aig, acc.get idx hidx, assign⟧ = (BitVec.ofNat w w).getLsbD idx
      else ⟦aig, acc.get idx hidx, assign⟧ = (BitVec.clzAuxRec x (curr - 1)).getLsbD idx)
    :
    ∀ (idx : Nat) (hidx : idx < w),
        ⟦
          (go aig xc curr acc).aig,
          (go aig xc curr acc).vec.get idx hidx,
          assign
        ⟧
          =
        (BitVec.clzAuxRec x (w - 1)).getLsbD idx := by
    intro idx hidx
    generalize hgo: go aig xc curr acc = res
    unfold go at hgo
    split at hgo
    case isTrue h =>
      simp only [BitVec.natCast_eq_ofNat, BitVec.ofNat_eq_ofNat] at hgo
      rw [← hgo, go_denote_eq]
      · intro idx hidx
        rw [AIG.LawfulVecOperator.denote_mem_prefix (f := RefVec.ite)]
        · simp [hx]
        · simp [Ref.hgate]
      · intro idx hidx
        simp only [Nat.add_eq_zero_iff, Nat.succ_ne_self, and_false, reduceIte,
          Nat.add_one_sub_one]
        rw [RefVec.denote_ite]
        split
        next h =>
          rw [hx] at h
          have : 1 < 2 ^ w := by exact Nat.one_lt_two_pow_iff.mpr (by omega)
          rcases curr with _|curr
          · simp [denote_blastConst, BitVec.clzAuxRec_zero, h, BitVec.ofNat_sub_ofNat_of_le (x := w) (y := 1) (by omega) (by omega)]
          · have := Nat.lt_pow_self (n := curr + 1) (a := 2) (by omega)
            have := Nat.pow_lt_pow_of_lt (a := 2) (n := curr + 1) (m := w) (by omega) (by omega)
            simp only [denote_blastConst, BitVec.clzAuxRec_succ, h, reduceIte]
            rw [BitVec.ofNat_sub_ofNat_of_le (x := w) (y := 1) (by omega) (by omega),
                BitVec.ofNat_sub_ofNat_of_le (x := w - 1) (y := curr + 1) (by omega) (by omega)]
        · split at hacc
          next h1 h2 =>
            have hxc : x.getLsbD 0 = false := by rw [hx] at h1; simp [h2] at h1; exact h1
            simp [hacc, h2, BitVec.clzAuxRec_zero, hxc]
          next h1 h2 =>
            obtain ⟨curr, hcurr⟩ : ∃ curr', curr = curr' + 1 := by apply Nat.exists_eq_add_one.mpr (by omega)
            subst hcurr
            have hxc : x.getLsbD (curr + 1) = false := by rw [hx] at h1; simp at h1; exact h1
            simp [hacc, BitVec.clzAuxRec_succ, hxc]
    case isFalse h =>
      rw [← hgo]
      simp only [show ¬curr = 0 by omega, reduceIte] at hacc
      simp only [hacc, BitVec.clzAuxRec_eq_clzAuxRec_of_le (x := x) (n := curr - 1) (by omega)]

end blastClz

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Clz/Variantbc09bacb7adf34b1adc0e31a516a3d4ad60c8d3ed6e6c81b9e4711169e867d3a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Clz/Variantbc09bacb7adf34b1adc0e31a516a3d4ad60c8d3ed6e6c81b9e4711169e867d3a.lean#L44).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0de41f8c4a4a46898956a6d496611e9396cb2336` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
