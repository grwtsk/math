# cycleFactorsAux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5d92ef86dacb4754749d90bf0c8ce3708c0f26b86d7e1c1a15e2da977d6d30a0",
  "kind": "def",
  "lexical_name": "cycleFactorsAux",
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
  "slug": "cyclefactorsaux--0358d22ba7b3c32ce45029ad",
  "source": {
    "blob": "22bcdd88db207682520dfc42779dcca1dbf6b45a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 425,
    "line": 366,
    "path": "GRWTSK/Algebra/GroupTheory/Factors/Variante6508ef027ebd3ec8eed3351afaa52f32195a33ecfa4bf873ddbb913513dfcf1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0358d22ba7b3c32ce45029ad95d717a8b867bbbfcb2071c596de82e599a02c7d",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Factors/Variante6508ef027ebd3ec8eed3351afaa52f32195a33ecfa4bf873ddbb913513dfcf1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5d92ef86dacb4754749d90bf0c8ce3708c0f26b86d7e1c1a15e2da977d6d30a0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 366–425.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def cycleFactorsAux [DecidableEq α] [Fintype α]
    (l : List α) (f : Perm α) (h : ∀ {x}, f x ≠ x → x ∈ l) :
    { pl : List (Perm α) // pl.prod = f ∧ (∀ g ∈ pl, IsCycle g) ∧ pl.Pairwise Disjoint } :=
  go l f h (fun _ => rfl)
where
  /-- The auxiliary of `cycleFactorsAux`. This functions separates cycles from `f` instead of `g`
  to prevent the process of a cycle gets complex. -/
  go (l : List α) (g : Perm α) (hg : ∀ {x}, g x ≠ x → x ∈ l)
    (hfg : ∀ {x}, g x ≠ x → cycleOf f x = cycleOf g x) :
    { pl : List (Perm α) // pl.prod = g ∧ (∀ g' ∈ pl, IsCycle g') ∧ pl.Pairwise Disjoint } :=
  match l with
  | [] => ⟨[], by
      { simp only [imp_false, List.Pairwise.nil, List.not_mem_nil, forall_const, and_true,
          forall_prop_of_false, Classical.not_not, not_false_iff, List.prod_nil] at *
        ext
        simp [*]}⟩
  | x :: l =>
    if hx : g x = x then go l g (by
        intro y hy; exact List.mem_of_ne_of_mem (fun h => hy (by rwa [h])) (hg hy)) hfg
    else
      let ⟨m, hm⟩ :=
        go l ((cycleOf f x)⁻¹ * g) (by
            rw [hfg hx]
            intro y hy
            exact List.mem_of_ne_of_mem
              (fun h : y = x => by
                rw [h, mul_apply, Ne, inv_eq_iff_eq, cycleOf_apply_self] at hy
                exact hy rfl)
              (hg fun h : g y = y => by
                rw [mul_apply, h, Ne, inv_eq_iff_eq, cycleOf_apply] at hy
                split_ifs at hy <;> tauto))
          (by
            rw [hfg hx]
            intro y hy
            simp [symm_apply_eq, cycleOf_apply, eq_comm (a := g y)] at hy
            rw [hfg (Ne.symm hy.right), ← mul_inv_eq_one (a := g.cycleOf y), cycleOf_inv]
            simp_rw [mul_inv_rev]
            rw [inv_inv, cycleOf_mul_of_apply_right_eq_self, ← cycleOf_inv, mul_inv_eq_one]
            · rw [Commute.inv_left_iff, commute_iff_eq]
              ext z; by_cases hz : SameCycle g x z
              · simp [cycleOf_apply, hz]
              · simp [cycleOf_apply_of_not_sameCycle, hz]
            · exact cycleOf_apply_of_not_sameCycle hy.left)
      ⟨cycleOf f x :: m, by
        obtain ⟨hm₁, hm₂, hm₃⟩ := hm
        rw [hfg hx] at hm₁ ⊢
        rw [List.pairwise_cons]
        refine ⟨?_, fun g' hg' ↦ ?_, fun g' hg' y ↦ ?_, hm₃⟩
        · simp [List.prod_cons, hm₁]
        · exact ((List.mem_cons).1 hg').elim (fun hg' => hg'.symm ▸ isCycle_cycleOf _ hx) (hm₂ g')
        by_contra! ⟨hgy, hg'y⟩
        have hxy : SameCycle g x y := not_imp_comm.1 cycleOf_apply_of_not_sameCycle hgy
        have hg'm : g' :: m.erase g' ~ m := List.cons_perm_iff_perm_erase.2 ⟨hg', .refl _⟩
        have : ∀ h ∈ m.erase g', Disjoint g' h :=
          (List.pairwise_cons.1 ((hg'm.pairwise_iff Disjoint.symm).2 hm₃)).1
        refine hg'y <| (disjoint_prod_right _ this y).resolve_right ?_
        have hsc : SameCycle g⁻¹ x (g y) := by rwa [sameCycle_inv, sameCycle_apply_right]
        rw [disjoint_prod_perm hm₃ hg'm.symm, List.prod_cons, ← eq_inv_mul_iff_mul_eq] at hm₁
        simpa [hm₁, cycleOf_inv, hsc.cycleOf_apply, eq_symm_apply, eq_comm] using hg'y⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Factors/Variante6508ef027ebd3ec8eed3351afaa52f32195a33ecfa4bf873ddbb913513dfcf1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Factors/Variante6508ef027ebd3ec8eed3351afaa52f32195a33ecfa4bf873ddbb913513dfcf1.lean#L366).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `22bcdd88db207682520dfc42779dcca1dbf6b45a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
