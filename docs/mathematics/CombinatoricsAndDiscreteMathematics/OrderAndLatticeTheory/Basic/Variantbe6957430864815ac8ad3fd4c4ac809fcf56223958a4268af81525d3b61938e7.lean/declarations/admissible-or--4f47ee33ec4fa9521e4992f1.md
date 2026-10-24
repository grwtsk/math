# admissible_or

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7713eeb4-336e-993c-acd7-2d97e8235a2d",
  "kind": "theorem",
  "lexical_name": "admissible_or",
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
  "slug": "admissible-or--4f47ee33ec4fa9521e4992f1",
  "source": {
    "blob": "a51ada2ab1a368f9427eff16bcb59d49d69a6584",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 302,
    "line": 268,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variantbe6957430864815ac8ad3fd4c4ac809fcf56223958a4268af81525d3b61938e7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4f47ee33ec4fa9521e4992f136ef7f768147808150eaeb15198ebb5c5440c67a",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variantbe6957430864815ac8ad3fd4c4ac809fcf56223958a4268af81525d3b61938e7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7713eeb4-336e-993c-acd7-2d97e8235a2d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 268–302.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem admissible_or (P Q : α → Prop)
  (hadm₁ : admissible P) (hadm₂ : admissible Q) : admissible (fun x => P x ∨ Q x) := by
  intro c hchain h
  have : (∀ x, c x → ∃ y, c y ∧ x ⊑ y ∧ P y) ∨ (∀ x, c x → ∃ y, c y ∧ x ⊑ y ∧ Q y) := by
    open Classical in
    apply Decidable.or_iff_not_imp_left.mpr
    intro h'
    simp only [not_forall, not_exists, not_and] at h'
    obtain ⟨x, hcx, hx⟩ := h'
    intro y hcy
    cases hchain x y hcx hcy  with
    | inl hxy =>
      refine ⟨y, hcy, rel_refl, ?_⟩
      cases h y hcy with
      | inl hPy => exfalso; apply hx y hcy hxy hPy
      | inr hQy => assumption
    | inr hyx =>
      refine ⟨x, hcx, hyx , ?_⟩
      cases h x hcx with
      | inl hPx => exfalso; apply hx x hcx rel_refl hPx
      | inr hQx => assumption
  cases this with
  | inl hP =>
    left
    rw [csup_conj (h := hP) (hchain := hchain)]
    apply hadm₁ _ (chain_conj _ _ hchain)
    intro x ⟨hcx, hPx⟩
    exact hPx
  | inr hQ =>
    right
    rw [csup_conj (h := hQ) (hchain := hchain)]
    apply hadm₂ _ (chain_conj _ _ hchain)
    intro x ⟨hcx, hQx⟩
    exact hQx

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variantbe6957430864815ac8ad3fd4c4ac809fcf56223958a4268af81525d3b61938e7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variantbe6957430864815ac8ad3fd4c4ac809fcf56223958a4268af81525d3b61938e7.lean#L268).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a51ada2ab1a368f9427eff16bcb59d49d69a6584` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
