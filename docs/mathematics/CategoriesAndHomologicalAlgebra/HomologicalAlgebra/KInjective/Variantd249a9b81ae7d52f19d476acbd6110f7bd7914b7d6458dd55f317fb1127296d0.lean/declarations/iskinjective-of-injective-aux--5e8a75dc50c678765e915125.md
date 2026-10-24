# isKInjective_of_injective_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3bb7dfe3-465f-171d-f1ae-91bb06c156e0",
  "kind": "lemma",
  "lexical_name": "isKInjective_of_injective_aux",
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
  "slug": "iskinjective-of-injective-aux--5e8a75dc50c678765e915125",
  "source": {
    "blob": "cf88f4838bfd7d37523a4a6af25321741dbf6f71",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 140,
    "line": 108,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/KInjective/Variantd249a9b81ae7d52f19d476acbd6110f7bd7914b7d6458dd55f317fb1127296d0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5e8a75dc50c678765e9151252ad72e6d3b0531683c81ce3ca09e1bab61b7b686",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/KInjective/Variantd249a9b81ae7d52f19d476acbd6110f7bd7914b7d6458dd55f317fb1127296d0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3bb7dfe3-465f-171d-f1ae-91bb06c156e0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 108–140.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isKInjective_of_injective_aux {K L : CochainComplex C ℤ}
    (f : K ⟶ L) (α : Cochain K L (-1)) (n m : ℤ) (hnm : n + 1 = m)
    (hK : K.ExactAt m) [Injective (L.X m)]
    (hα : (δ (-1) 0 α).EqUpTo (Cochain.ofHom f) n) :
    ∃ (h : K.X (n + 2) ⟶ L.X (n + 1)),
      (δ (-1) 0 (α + Cochain.single h (-1))).EqUpTo (Cochain.ofHom f) m := by
  subst hnm
  let u := f.f (n + 1) - α.v (n + 1) n (by lia) ≫ L.d n (n + 1) -
    K.d (n + 1) (n + 2) ≫ α.v (n + 2) (n + 1) (by lia)
  have hu : K.d n (n + 1) ≫ u = 0 := by
    have eq := hα n n (add_zero n) (by rfl)
    simp only [δ_v (-1) 0 (neg_add_cancel 1) α n n (add_zero _) (n - 1) (n + 1)
      (by lia) (by lia), Int.negOnePow_zero, one_smul, Cochain.ofHom_v] at eq
    simp only [u, comp_sub, HomologicalComplex.d_comp_d_assoc, zero_comp,
      ← f.comm, ← eq, add_comp, Category.assoc, L.d_comp_d, comp_zero, zero_add, sub_self]
  rw [K.exactAt_iff' n (n + 1) (n + 2) (by simp) (by simp; lia)] at hK
  obtain ⟨β, hβ⟩ : ∃ (β : K.X (n + 2) ⟶ L.X (n + 1)), K.d (n + 1) (n + 2) ≫ β = u :=
    ⟨hK.descToInjective _ hu, hK.comp_descToInjective _ _⟩
  refine ⟨β, ?_⟩
  intro p q hpq hp
  obtain rfl : p = q := by lia
  obtain hp | rfl := hp.lt_or_eq
  · rw [δ_add, Cochain.add_v, hα p p (by lia) (by lia), add_eq_left,
      δ_v (-1) 0 (neg_add_cancel 1) _ p p hpq (p - 1) (p + 1) rfl rfl,
      Cochain.single_v_eq_zero _ _ _ _ _ (by lia),
      Cochain.single_v_eq_zero _ _ _ _ _ (by lia)]
    simp
  · rw [δ_v (-1) 0 (neg_add_cancel 1) _ (n + 1) (n + 1) (by lia) n (n + 2)
      (by lia) (by lia), Cochain.add_v,
      Cochain.single_v_eq_zero _ _ _ _ _ (by lia)]
    simp [hβ, u]

open Cochain.InductionUp in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/KInjective/Variantd249a9b81ae7d52f19d476acbd6110f7bd7914b7d6458dd55f317fb1127296d0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/KInjective/Variantd249a9b81ae7d52f19d476acbd6110f7bd7914b7d6458dd55f317fb1127296d0.lean#L108).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cf88f4838bfd7d37523a4a6af25321741dbf6f71` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
