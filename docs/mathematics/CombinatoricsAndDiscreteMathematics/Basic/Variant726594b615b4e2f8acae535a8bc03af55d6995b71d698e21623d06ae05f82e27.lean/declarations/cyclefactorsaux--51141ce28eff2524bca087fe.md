# cycleFactorsAux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3c1bd4f102991cf91bbd233dc051ce0a7c58ce72b7afdb9835aed0fdf56511ee",
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
  "slug": "cyclefactorsaux--51141ce28eff2524bca087fe",
  "source": {
    "blob": "2605e1918b96eecdca633b14ca542208f1b1c345",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1279,
    "line": 1230,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant726594b615b4e2f8acae535a8bc03af55d6995b71d698e21623d06ae05f82e27.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:51141ce28eff2524bca087fe023f6afa5638ca19a594d494deab933b78a6e0ee",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Basic/Variant726594b615b4e2f8acae535a8bc03af55d6995b71d698e21623d06ae05f82e27.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3c1bd4f102991cf91bbd233dc051ce0a7c58ce72b7afdb9835aed0fdf56511ee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1230–1279.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def cycleFactorsAux [Fintype α] :
    ∀ (l : List α) (f : Perm α),
      (∀ {x}, f x ≠ x → x ∈ l) →
        { l : List (Perm α) // l.prod = f ∧ (∀ g ∈ l, IsCycle g) ∧ l.Pairwise Disjoint } := by
  intro l f h
  exact match l with
  | [] => ⟨[], by
      { simp only [imp_false, List.Pairwise.nil, List.not_mem_nil, forall_const, and_true_iff,
          forall_prop_of_false, Classical.not_not, not_false_iff, List.prod_nil] at *
        ext
        simp [*]}⟩
  | x::l =>
    if hx : f x = x then cycleFactorsAux l f (by
        intro y hy; exact List.mem_of_ne_of_mem (fun h => hy (by rwa [h])) (h hy))
    else
      let ⟨m, hm₁, hm₂, hm₃⟩ :=
        cycleFactorsAux l ((cycleOf f x)⁻¹ * f) (by
        intro y hy
        exact List.mem_of_ne_of_mem
            (fun h : y = x => by
              rw [h, mul_apply, Ne.def, inv_eq_iff_eq, cycleOf_apply_self] at hy
              exact hy rfl)
            (h fun h : f y = y => by
              rw [mul_apply, h, Ne.def, inv_eq_iff_eq, cycleOf_apply] at hy
              split_ifs at hy <;> tauto))
      ⟨cycleOf f x::m, by
        rw [List.prod_cons, hm₁]
        simp,
        fun g hg ↦ ((List.mem_cons).1 hg).elim (fun hg => hg.symm ▸ isCycle_cycleOf _ hx) (hm₂ g),
        List.pairwise_cons.2
          ⟨fun g hg y =>
            or_iff_not_imp_left.2 fun hfy =>
              have hxy : SameCycle f x y :=
                Classical.not_not.1 (mt cycleOf_apply_of_not_sameCycle hfy)
              have hgm : (g::m.erase g) ~ m :=
                List.cons_perm_iff_perm_erase.2 ⟨hg, List.Perm.refl _⟩
              have : ∀ h ∈ m.erase g, Disjoint g h :=
                (List.pairwise_cons.1
                    ((hgm.pairwise_iff fun a b (h : Disjoint a b) => h.symm).2 hm₃)).1
              by_cases id fun hgy : g y ≠ y =>
                (disjoint_prod_right _ this y).resolve_right <| by
                  have hsc : SameCycle f⁻¹ x (f y) := by
                    rwa [sameCycle_inv, sameCycle_apply_right]
                  rw [disjoint_prod_perm hm₃ hgm.symm, List.prod_cons,
                      ← eq_inv_mul_iff_mul_eq] at hm₁
                  rwa [hm₁, mul_apply, mul_apply, cycleOf_inv, hsc.cycleOf_apply, inv_apply_self,
                    inv_eq_iff_eq, eq_comm],
            hm₃⟩⟩
#align equiv.perm.cycle_factors_aux Equiv.Perm.cycleFactorsAux

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Basic/Variant726594b615b4e2f8acae535a8bc03af55d6995b71d698e21623d06ae05f82e27.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant726594b615b4e2f8acae535a8bc03af55d6995b71d698e21623d06ae05f82e27.lean#L1230).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2605e1918b96eecdca633b14ca542208f1b1c345` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
