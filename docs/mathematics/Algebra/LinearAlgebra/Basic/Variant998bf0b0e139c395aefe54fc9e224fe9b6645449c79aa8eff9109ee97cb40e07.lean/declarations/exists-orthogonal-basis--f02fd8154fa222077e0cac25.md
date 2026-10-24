# exists_orthogonal_basis

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c97cc52a-a7eb-0de7-098d-b1de40989c4e",
  "kind": "theorem",
  "lexical_name": "exists_orthogonal_basis",
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
  "slug": "exists-orthogonal-basis--f02fd8154fa222077e0cac25",
  "source": {
    "blob": "8a7f93d6e7d5570976dd3b2ad59afb1e317c4723",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1167,
    "line": 1110,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant998bf0b0e139c395aefe54fc9e224fe9b6645449c79aa8eff9109ee97cb40e07.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f02fd8154fa222077e0cac25f429d63cf73d1c5a3a24de2084879a017a371dd7",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variant998bf0b0e139c395aefe54fc9e224fe9b6645449c79aa8eff9109ee97cb40e07.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c97cc52a-a7eb-0de7-098d-b1de40989c4e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1110–1167.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_orthogonal_basis [hK : Invertible (2 : K)] {B : BilinForm K V} (hB₂ : B.IsSymm) :
    ∃ v : Basis (Fin (finrank K V)) K V, B.iIsOrtho v := by
  induction' hd : finrank K V with d ih generalizing V
  · simp_rw [Nat.zero_eq]
    exact ⟨basisOfFinrankZero hd, fun _ _ _ => zero_left _⟩
  haveI := finrank_pos_iff.1 (hd.symm ▸ Nat.succ_pos d : 0 < finrank K V)
  -- either the bilinear form is trivial or we can pick a non-null `x`
  obtain rfl | hB₁ := eq_or_ne B 0
  · let b := FiniteDimensional.finBasis K V
    rw [hd] at b
    refine' ⟨b, fun i j _ => rfl⟩
  obtain ⟨x, hx⟩ := exists_bilinForm_self_ne_zero hB₁ hB₂
  rw [← Submodule.finrank_add_eq_of_isCompl (isCompl_span_singleton_orthogonal hx).symm,
    finrank_span_singleton (ne_zero_of_not_isOrtho_self x hx)] at hd
  let B' := B.restrict (B.orthogonal <| K ∙ x)
  obtain ⟨v', hv₁⟩ := ih (B.restrictSymm hB₂ _ : B'.IsSymm) (Nat.succ.inj hd)
  -- concatenate `x` with the basis obtained by induction
  let b :=
    Basis.mkFinCons x v'
      (by
        rintro c y hy hc
        rw [add_eq_zero_iff_neg_eq] at hc
        rw [← hc, Submodule.neg_mem_iff] at hy
        have := (isCompl_span_singleton_orthogonal hx).disjoint
        rw [Submodule.disjoint_def] at this
        have := this (c • x) (Submodule.smul_mem _ _ <| Submodule.mem_span_singleton_self _) hy
        exact (smul_eq_zero.1 this).resolve_right fun h => hx <| h.symm ▸ zero_left _)
      (by
        intro y
        refine' ⟨-B x y / B x x, fun z hz => _⟩
        obtain ⟨c, rfl⟩ := Submodule.mem_span_singleton.1 hz
        rw [IsOrtho, smul_left, add_right, smul_right, div_mul_cancel _ hx, add_neg_self,
          mul_zero])
  refine' ⟨b, _⟩
  · rw [Basis.coe_mkFinCons]
    intro j i
    refine' Fin.cases _ (fun i => _) i <;> refine' Fin.cases _ (fun j => _) j <;> intro hij <;>
      simp only [Function.onFun, Fin.cons_zero, Fin.cons_succ, Function.comp_apply]
    · exact (hij rfl).elim
    · rw [IsOrtho, hB₂]
      exact (v' j).prop _ (Submodule.mem_span_singleton_self x)
    · exact (v' i).prop _ (Submodule.mem_span_singleton_self x)
    · exact hv₁ (ne_of_apply_ne _ hij)
#align bilin_form.exists_orthogonal_basis BilinForm.exists_orthogonal_basis

end BilinForm

namespace QuadraticForm

open Finset BilinForm

variable {M₁ : Type*} [Semiring R] [CommSemiring R₁] [AddCommMonoid M] [AddCommMonoid M₁]

variable [Module R M] [Module R M₁]

variable {ι : Type*} [Fintype ι] {v : Basis ι R M}

/-- Given a quadratic form `Q` and a basis, `basisRepr` is the basis representation of `Q`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variant998bf0b0e139c395aefe54fc9e224fe9b6645449c79aa8eff9109ee97cb40e07.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variant998bf0b0e139c395aefe54fc9e224fe9b6645449c79aa8eff9109ee97cb40e07.lean#L1110).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8a7f93d6e7d5570976dd3b2ad59afb1e317c4723` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
