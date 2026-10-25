# step_monotone

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:29ff3a75-2f00-af1c-4b03-d7ffa04d7db0",
  "kind": "theorem",
  "lexical_name": "step_monotone",
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
  "slug": "step-monotone--0d56159e4d422bdcbf7456a1",
  "source": {
    "blob": "66ffa05e7620437fd268ce9af9fa028ace9f6af4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 149,
    "line": 87,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Signed/Variant8f50b57e38579c6b89409a5fb17fb1ea258f2967a433d7b351e0d5002b8e35cc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0d56159e4d422bdcbf7456a146515ad1b4945deb1346815fb42b5e6d95359afe",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Signed/Variant8f50b57e38579c6b89409a5fb17fb1ea258f2967a433d7b351e0d5002b8e35cc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:29ff3a75-2f00-af1c-4b03-d7ffa04d7db0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 87–149.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem step_monotone : Monotone (step Ω hC hw) := by
  intro v w hv T
  apply (SignedCandidate.order _ _).mpr
  simp only [step,SignedCandidate.set_wrap]
  cases T with
  | sort s => cases hC.signing (Ω.profile (.sort s)) <;> exact Set.Subset.rfl
  | var i => cases hC.signing (Ω.profile (.var i)) <;> exact Set.Subset.rfl
  | lam D E => cases hC.signing (Ω.profile (.lam D E)) <;> exact Set.Subset.rfl
  | app f n => cases hC.signing (Ω.profile (.app f n)) <;> exact Set.Subset.rfl
  | pi D E =>
    dsimp only [stepCandidate]
    by_cases H : Normal (.pi D E) ∧ (∃ s, Ω.HasType (.pi D E) (.sort s)) ∧ Ω.profile (.pi D E) ∈ C
    · simp only [if_pos H]
      obtain ⟨hn,⟨s,ht⟩,hpC⟩ := H
      have hd : ∀ hD : Ω.profile D ∈ C,
          hC.signing (Ω.profile (.pi D E)) = Bool.xor (hC.signing (Ω.profile D)) true := by
        intro hD
        obtain ⟨a,b,c,hD',hE,hr,hconv⟩ := ht.choose_spec.generation_pi
        have hf := Profile.triple hw ht.choose_spec
        have hglob : ProfileTriple P (Ω.profile D)
            (Profile P (D.rename (Expr.reverseIndex ht.choose) :: Ω.context ht.choose)
              (E.rename (Expr.liftRen (Expr.reverseIndex ht.choose)))) (Ω.profile (.pi D E)) := by
          rw [Ω.profile_at hw hD',Ω.profile_at hw ht.choose_spec]
          exact hf
        exact hC.signing_cross hno hD hpC (.singleton (.domain hglob))
      have he : ∀ n, Ω.HasType n D → Ω.profile (E.instantiate n).normalForm ∈ C →
          hC.signing (Ω.profile (E.instantiate n).normalForm) = hC.signing (Ω.profile (.pi D
            E)) := by
        intro n hn hnc
        rw [Ω.profile_normalForm] at hnc ⊢
        simpa only [Bool.xor_false] using
          (hC.signing_cross hno hnc hpC (Ω.profile_instantiate_product_path hw ht hn).parity).symm
      have flip (a b : Bool) (h : a = Bool.xor b true) : b = !a := by
        cases a <;> cases b <;> cases h <;> rfl
      cases hs : hC.signing (Ω.profile (.pi D E)) with
      | false =>
        simp only [Bool.false_eq_true,ite_false]
        intro h hh
        refine ⟨hh.1,?_⟩
        intro n hn X hX
        rcases Set.mem_singleton_iff.mp hX with rfl
        have hn' : n ∈ value Ω hC v D := value_backward Ω hC hv (by
          intro hc
          simpa only [hs,Bool.not_false,Bool.not_true] using flip _ _ (hd hc)) hn
        have hout := hh.2 n hn' _ (Set.mem_singleton _)
        exact value_forward Ω hC hv (fun hc => (he n (value_candidate Ω hC w D |>.upper hn).1
          hc).trans hs) hout
      | true =>
        simp only [ite_true]
        intro h hh
        refine ⟨hh.1,?_⟩
        intro n hn X hX
        rcases Set.mem_singleton_iff.mp hX with rfl
        have hn' : n ∈ value Ω hC w D := value_forward Ω hC hv (by
          intro hc
          simpa only [hs,Bool.not_false,Bool.not_true] using flip _ _ (hd hc)) hn
        have hout := hh.2 n hn' _ (Set.mem_singleton _)
        exact value_backward Ω hC hv (fun hc => (he n (value_candidate Ω hC v D |>.upper hn).1
          hc).trans hs) hout
    · simp only [if_neg H]
      cases hC.signing (Ω.profile (.pi D E)) <;> exact Set.Subset.rfl

open Classical in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Signed/Variant8f50b57e38579c6b89409a5fb17fb1ea258f2967a433d7b351e0d5002b8e35cc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Signed/Variant8f50b57e38579c6b89409a5fb17fb1ea258f2967a433d7b351e0d5002b8e35cc.lean#L87).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `66ffa05e7620437fd268ce9af9fa028ace9f6af4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
