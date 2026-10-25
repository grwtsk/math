# finite_ACF_prime_not_realize_of_ACF_zero_realize

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2cfe3174-8647-f5e4-2885-7d3fe322a9b5",
  "kind": "theorem",
  "lexical_name": "finite_ACF_prime_not_realize_of_ACF_zero_realize",
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
  "slug": "finite-acf-prime-not-realize-of-acf-zero-realize--431984ad0f766ec6257ca0eb",
  "source": {
    "blob": "7f9e5c9d76f9a8c2ae9c8eef9eed291cd6b1889a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 234,
    "line": 193,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/IsAlgClosed/Variant3eb94125c5ca6fceb6d3cde5fc771d5a0afb4f568dfe5d72e1be4c81dbd15bf9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:431984ad0f766ec6257ca0eba02c17362ebe1e13fe1ff1b385722ab8c7ab289b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ModelTheory/IsAlgClosed/Variant3eb94125c5ca6fceb6d3cde5fc771d5a0afb4f568dfe5d72e1be4c81dbd15bf9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2cfe3174-8647-f5e4-2885-7d3fe322a9b5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 193–234.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finite_ACF_prime_not_realize_of_ACF_zero_realize
    (φ : Language.ring.Sentence) (h : Theory.ACF 0 ⊨ᵇ φ) :
    Set.Finite { p : Nat.Primes | ¬ Theory.ACF p ⊨ᵇ φ } := by
  rw [Theory.models_iff_finset_models] at h
  rcases h with ⟨T0, hT0, h⟩
  have f : ∀ ψ ∈ Theory.ACF 0,
      { s : Finset Nat.Primes // ∀ q : Nat.Primes, q ∉ s → Theory.ACF q ⊨ᵇ ψ } := by
    intro ψ hψ
    rw [Theory.ACF, Theory.fieldOfChar, Set.union_right_comm, Set.mem_union, if_pos rfl,
      Set.mem_image] at hψ
    apply Classical.choice
    rcases hψ with h | ⟨p, hp, rfl⟩
    · refine ⟨⟨∅, ?_⟩⟩
      intro q _
      exact Theory.models_sentence_of_mem
        (by rw [Theory.ACF, Theory.fieldOfChar, Set.union_right_comm];
            exact Set.mem_union_left _ h)
    · refine ⟨⟨{⟨p, hp⟩}, ?_⟩⟩
      rintro ⟨q, _⟩ hq ⟨K⟩ _ _
      have hqp : q ≠ p := by simpa [← Nat.Primes.coe_nat_inj] using hq
      let _ := fieldOfModelACF q K
      have := modelField_of_modelACF q K
      let _ := compatibleRingOfModelField K
      have := charP_of_model_fieldOfChar q K
      simp only [eqZero, Term.equal, BoundedFormula.realize_not, BoundedFormula.realize_bdEqual,
        Term.realize_relabel, Sum.elim_comp_inl, realize_termOfFreeCommRing, map_natCast,
        realize_zero, ← CharP.charP_iff_prime_eq_zero hp]
      intro _
      exact hqp <| CharP.eq K inferInstance inferInstance
  let s : Finset Nat.Primes := T0.attach.biUnion (fun φ => f φ.1 (hT0 φ.2))
  have hs : ∀ (p : Nat.Primes) ψ, ψ ∈ T0 → p ∉ s → Theory.ACF p ⊨ᵇ ψ := by
    intro p ψ hψ hpψ
    simp only [s, Finset.mem_biUnion, Finset.mem_attach, true_and,
      Subtype.exists, not_exists] at hpψ
    exact (f ψ (hT0 hψ)).2 p (hpψ _ hψ)
  refine Set.Finite.subset (Finset.finite_toSet s) (Set.compl_subset_comm.2 ?_)
  intro p hp
  exact Theory.models_of_models_theory (fun ψ hψ => hs p ψ hψ hp) h

/-- The **Lefschetz principle**. A first order sentence is modeled by the theory
of algebraically closed fields of characteristic zero if and only if it is modeled by
the theory of algebraically closed fields of characteristic `p` for infinitely many `p`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ModelTheory/IsAlgClosed/Variant3eb94125c5ca6fceb6d3cde5fc771d5a0afb4f568dfe5d72e1be4c81dbd15bf9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/IsAlgClosed/Variant3eb94125c5ca6fceb6d3cde5fc771d5a0afb4f568dfe5d72e1be4c81dbd15bf9.lean#L193).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7f9e5c9d76f9a8c2ae9c8eef9eed291cd6b1889a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
