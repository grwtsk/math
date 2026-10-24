# cycleFactorsAux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0eca17b4bf1ec25269fbd29ee4b5f2aad2c16c2c8a6d13b99748496206201b9a",
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
  "slug": "cyclefactorsaux--60a516bc14b5a7c558413e08",
  "source": {
    "blob": "b92c71b484fcb1c327cdc72dedf42ccfd73547c4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 417,
    "line": 358,
    "path": "GRWTSK/Algebra/GroupTheory/Factors/Variant7a64a94592378475c8964c0428c5f194204d6bd8ae4f512fb2e9efb9740f8887.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:60a516bc14b5a7c558413e08f4f6b257940cd1b3ab54d93ce9284dab11b1fbcc",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Factors/Variant7a64a94592378475c8964c0428c5f194204d6bd8ae4f512fb2e9efb9740f8887.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0eca17b4bf1ec25269fbd29ee4b5f2aad2c16c2c8a6d13b99748496206201b9a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 358–417.

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

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Factors/Variant7a64a94592378475c8964c0428c5f194204d6bd8ae4f512fb2e9efb9740f8887.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Factors/Variant7a64a94592378475c8964c0428c5f194204d6bd8ae4f512fb2e9efb9740f8887.lean#L358).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b92c71b484fcb1c327cdc72dedf42ccfd73547c4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
