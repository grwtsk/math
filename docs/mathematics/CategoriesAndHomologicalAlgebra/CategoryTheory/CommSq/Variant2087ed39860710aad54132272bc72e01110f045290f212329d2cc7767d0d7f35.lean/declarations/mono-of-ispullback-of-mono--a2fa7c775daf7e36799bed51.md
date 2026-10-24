# mono_of_isPullback_of_mono

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b02cb242-6c8f-1529-fbc4-5ce97ce777dd",
  "kind": "lemma",
  "lexical_name": "mono_of_isPullback_of_mono",
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
  "slug": "mono-of-ispullback-of-mono--a2fa7c775daf7e36799bed51",
  "source": {
    "blob": "5049fc07a053e3f4b4fe587866c96dd7a273fc79",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 106,
    "line": 86,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CommSq/Variant2087ed39860710aad54132272bc72e01110f045290f212329d2cc7767d0d7f35.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a2fa7c775daf7e36799bed5140926eb0d68cf1bf897c50640fb664d6e90a1f47",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CommSq/Variant2087ed39860710aad54132272bc72e01110f045290f212329d2cc7767d0d7f35.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b02cb242-6c8f-1529-fbc4-5ce97ce777dd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 86–106.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma mono_of_isPullback_of_mono
    (h₁ : IsPushout t l r b) {X₅ : C} {r' : X₂ ⟶ X₅} {b' : X₃ ⟶ X₅}
    (h₂ : IsPullback t l r' b') (k : X₄ ⟶ X₅)
    (fac₁ : r ≫ k = r') (fac₂ : b ≫ k = b') [Mono r'] : Mono k :=
  Preadditive.mono_of_cancel_zero _ (fun {T₀} x₄ hx₄ ↦ by
    obtain ⟨T₁, π, _, x₂, x₃, eq⟩ := hom_eq_add_up_to_refinements h₁ x₄
    have fac₃ : (-x₂) ≫ r' = x₃ ≫ b' := by
      rw [Preadditive.neg_comp, neg_eq_iff_add_eq_zero, ← fac₂, ← fac₁,
        ← assoc, ← assoc, ← Preadditive.add_comp, ← eq, assoc, hx₄, comp_zero]
    obtain ⟨x₂', hx₂'⟩ : ∃ x₂', π ≫ x₄ = x₂' ≫ r := by
      refine ⟨x₂ + h₂.lift (-x₂) x₃ fac₃ ≫ t, ?_⟩
      rw [eq, Preadditive.add_comp, assoc, h₁.w, IsPullback.lift_snd_assoc, add_comm]
    rw [← cancel_epi π, comp_zero, reassoc_of% hx₂', fac₁] at hx₄
    obtain rfl := zero_of_comp_mono _ hx₄
    rw [zero_comp] at hx₂'
    rw [← cancel_epi π, hx₂', comp_zero])

end IsPushout

namespace IsPullback

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CommSq/Variant2087ed39860710aad54132272bc72e01110f045290f212329d2cc7767d0d7f35.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CommSq/Variant2087ed39860710aad54132272bc72e01110f045290f212329d2cc7767d0d7f35.lean#L86).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5049fc07a053e3f4b4fe587866c96dd7a273fc79` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
