# exists_orthogonal_basis

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ba86ff2cf97a7e31b5f653aef111f34d53964b9b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1342,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/22/22ba6cb8b9a88a3c470878e283e6d0cac24a8dfba48ab4db2d65d6bcc75d9920.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e67077f0-da29-d313-937b-2f67cfa6dada",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d55b7ba7-c917-6e17-f920-17708aaa609d",
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
  "slug": "exists-orthogonal-basis--ede72a769bb2520feddd4aa1",
  "source": {
    "blob": "ba86ff2cf97a7e31b5f653aef111f34d53964b9b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1398,
    "line": 1342,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant22ba6cb8b9a88a3c470878e283e6d0cac24a8dfba48ab4db2d65d6bcc75d9920.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ede72a769bb2520feddd4aa1fd407590ff092abb45f4f41eeba05e5077692b1d",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variant22ba6cb8b9a88a3c470878e283e6d0cac24a8dfba48ab4db2d65d6bcc75d9920.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d55b7ba7-c917-6e17-f920-17708aaa609d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1342–1398.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_orthogonal_basis [hK : Invertible (2 : K)] {B : LinearMap.BilinForm K V}
    (hB₂ : B.IsSymm) : ∃ v : Basis (Fin (finrank K V)) K V, B.IsOrthoᵢ v := by
  suffices ∀ d, finrank K V = d → ∃ v : Basis (Fin d) K V, B.IsOrthoᵢ v by exact this _ rfl
  intro d hd
  induction d generalizing V with
  | zero => exact ⟨basisOfFinrankZero hd, fun _ _ _ => map_zero _⟩
  | succ d ih =>
  -- either the bilinear form is trivial or we can pick a non-null `x`
  obtain rfl | hB₁ := eq_or_ne B 0
  · let b := Module.finBasis K V
    rw [hd] at b
    exact ⟨b, fun i j _ => rfl⟩
  obtain ⟨x, hx⟩ := exists_bilinForm_self_ne_zero hB₁ hB₂
  rw [← Submodule.finrank_add_eq_of_isCompl (isCompl_span_singleton_orthogonal hx).symm,
    finrank_span_singleton (ne_zero_of_map hx)] at hd
  let B' := B.domRestrict₁₂ ((K ∙ x).orthogonalBilin B) ((K ∙ x).orthogonalBilin B)
  obtain ⟨v', hv₁⟩ := ih (hB₂.domRestrict _ : B'.IsSymm) (Nat.succ.inj hd)
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
        exact (smul_eq_zero.1 this).resolve_right fun h => hx <| h.symm ▸ map_zero _)
      (by
        intro y
        refine ⟨-B x y / B x x, fun z hz => ?_⟩
        obtain ⟨c, rfl⟩ := Submodule.mem_span_singleton.1 hz
        rw [map_smul, smul_apply, map_add, map_smul, smul_eq_mul, smul_eq_mul,
          div_mul_cancel₀ _ hx, add_neg_cancel, mul_zero])
  refine ⟨b, ?_⟩
  rw [Basis.coe_mkFinCons]
  intro j i
  refine Fin.cases ?_ (fun i => ?_) i <;> refine Fin.cases ?_ (fun j => ?_) j <;> intro hij <;>
    simp only [Function.onFun, Fin.cons_zero, Fin.cons_succ, Function.comp_apply]
  · exact (hij rfl).elim
  · rw [← hB₂.eq]
    exact (v' j).prop _ (Submodule.mem_span_singleton_self x)
  · exact (v' i).prop _ (Submodule.mem_span_singleton_self x)
  · exact hv₁ (ne_of_apply_ne _ hij)

end BilinForm

end LinearMap

namespace QuadraticMap

open Finset Module

variable [CommSemiring R] [AddCommMonoid M] [Module R M] [AddCommMonoid N] [Module R N]
variable {ι : Type*}

/-- Given a quadratic map `Q` and a basis, `basisRepr` is the basis representation of `Q`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variant22ba6cb8b9a88a3c470878e283e6d0cac24a8dfba48ab4db2d65d6bcc75d9920.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variant22ba6cb8b9a88a3c470878e283e6d0cac24a8dfba48ab4db2d65d6bcc75d9920.lean#L1342).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ba86ff2cf97a7e31b5f653aef111f34d53964b9b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
