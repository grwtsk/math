# ιMulti_family_span_fixedDegree_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b34a4c26-615f-c4ec-947a-783d71874983",
  "kind": "lemma",
  "lexical_name": "ιMulti_family_span_fixedDegree_aux",
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
  "slug": "multi-family-span-fixeddegree-aux--c1b71634f63a3a8109e360b9",
  "source": {
    "blob": "e803813de5a155b9f552dfc03699fe1d2804e777",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 382,
    "line": 353,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variante9f46121222c1b29af5ba3ec6c22018ef7c9de8173fcd8962272132d6f977d28.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c1b71634f63a3a8109e360b9ba88fb2cc2c4f0bb5cb252ab31f4050b1da65ac8",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variante9f46121222c1b29af5ba3ec6c22018ef7c9de8173fcd8962272132d6f977d28.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b34a4c26-615f-c4ec-947a-783d71874983`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 353–382.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma ιMulti_family_span_fixedDegree_aux
    {I : Type*} [LinearOrder I] (v : I → M) (α : Fin n → I) :
    ExteriorAlgebra.ιMulti R n (v ∘ α) ∈ span R (range (ExteriorAlgebra.ιMulti_family R n v)) := by
  by_cases α_inj : Injective α; swap
  · suffices ExteriorAlgebra.ιMulti R n (v ∘ α) = 0 by simp [this]
    exact AlternatingMap.map_eq_zero_of_not_injective _ _ <| fun h ↦ α_inj (Injective.of_comp h)
  suffices ∃ σ : Equiv.Perm (Fin n), (ExteriorAlgebra.ιMulti R n ((v ∘ α) ∘ σ)) ∈
      Submodule.span R (Set.range (ExteriorAlgebra.ιMulti_family R n v)) by
    obtain ⟨σ, hσ⟩ := this
    rw [AlternatingMap.map_perm] at hσ
    refine (Submodule.smul_mem_iff_of_isUnit _ (r := (σ.sign : R)) ?_).mp hσ
    rw [isUnit_iff_exists_inv]
    use (σ.sign : R)
    norm_cast
    simp only [Int.units_mul_self, Units.val_one, Int.cast_one]
  have α_card : (Finset.image α Finset.univ).card = n :=
    (Finset.card_image_of_injective Finset.univ α_inj).trans (Finset.card_fin n)
  use (Finset.orderIsoOfFin (Finset.image α Finset.univ) α_card).toEquiv.trans
    ((Set.equivOfEq Fintype.coe_image_univ).trans (Equiv.ofInjective α α_inj).symm)
  apply Submodule.mem_span_of_mem
  use ⟨(Finset.image α Finset.univ), α_card⟩
  rw [ExteriorAlgebra.ιMulti_family, Function.comp_assoc]
  congr
  ext i
  simp [Equiv.apply_ofInjective_symm]
  rfl

open Finset in
/-- If a family of vectors spans `M`, then the family of its `n`-fold exterior products spans
`⋀[R]^n M`. Here we work in the exterior algebra. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variante9f46121222c1b29af5ba3ec6c22018ef7c9de8173fcd8962272132d6f977d28.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variante9f46121222c1b29af5ba3ec6c22018ef7c9de8173fcd8962272132d6f977d28.lean#L353).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e803813de5a155b9f552dfc03699fe1d2804e777` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
