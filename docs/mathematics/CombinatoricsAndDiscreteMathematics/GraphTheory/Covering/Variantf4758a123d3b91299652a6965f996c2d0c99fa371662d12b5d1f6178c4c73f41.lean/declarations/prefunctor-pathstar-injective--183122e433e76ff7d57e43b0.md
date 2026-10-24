# Prefunctor.pathStar_injective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f3eb2899-02af-eb91-deeb-32916b2fd775",
  "kind": "theorem",
  "lexical_name": "Prefunctor.pathStar_injective",
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
  "slug": "prefunctor-pathstar-injective--183122e433e76ff7d57e43b0",
  "source": {
    "blob": "df4be3e457222a67c5f15c87fb97d086665f5f2d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 229,
    "line": 188,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Covering/Variantf4758a123d3b91299652a6965f996c2d0c99fa371662d12b5d1f6178c4c73f41.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:183122e433e76ff7d57e43b0d339bd2e50aeb0cb1a796c7e4ad3b630bddcc4b2",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Covering/Variantf4758a123d3b91299652a6965f996c2d0c99fa371662d12b5d1f6178c4c73f41.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f3eb2899-02af-eb91-deeb-32916b2fd775`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 188–229.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Prefunctor.pathStar_injective (hφ : ∀ u, Injective (φ.star u)) (u : U) :
    Injective (φ.pathStar u) := by
  dsimp +unfoldPartialApp [Prefunctor.pathStar, Quiver.PathStar.mk]
  rintro ⟨v₁, p₁⟩
  induction p₁ with
  | nil =>
    rintro ⟨y₂, p₂⟩
    rcases p₂ with - | ⟨p₂, e₂⟩
    · intro; rfl -- Porting note: goal not present in lean3.
    · intro h
      -- Porting note: added `Sigma.mk.inj_iff`
      simp only [mapPath_cons, Sigma.mk.inj_iff] at h
      exfalso
      obtain ⟨h, h'⟩ := h
      rw [← Path.eq_cast_iff_heq rfl h.symm, Path.cast_cons] at h'
      exact (Path.nil_ne_cons _ _) h'
  | cons p₁ e₁ ih =>
    rename_i x₁ y₁
    rintro ⟨y₂, p₂⟩
    rcases p₂ with - | ⟨p₂, e₂⟩
    · intro h
      simp only [mapPath_cons, Sigma.mk.inj_iff] at h
      exfalso
      obtain ⟨h, h'⟩ := h
      rw [← Path.cast_eq_iff_heq rfl h, Path.cast_cons] at h'
      exact (Path.cons_ne_nil _ _) h'
    · rename_i x₂
      intro h
      simp only [mapPath_cons, Sigma.mk.inj_iff] at h
      obtain ⟨hφy, h'⟩ := h
      rw [← Path.cast_eq_iff_heq rfl hφy, Path.cast_cons, Path.cast_rfl_rfl] at h'
      have hφx := Path.obj_eq_of_cons_eq_cons h'
      have hφp := Path.heq_of_cons_eq_cons h'
      have hφe := HEq.trans (Hom.cast_heq rfl hφy _).symm (Path.hom_heq_of_cons_eq_cons h')
      have h_path_star : φ.pathStar u ⟨x₁, p₁⟩ = φ.pathStar u ⟨x₂, p₂⟩ := by
        simp only [Prefunctor.pathStar_apply, Sigma.mk.inj_iff]; exact ⟨hφx, hφp⟩
      cases ih h_path_star
      have h_star : φ.star x₁ ⟨y₁, e₁⟩ = φ.star x₁ ⟨y₂, e₂⟩ := by
        simp only [Prefunctor.star_apply, Sigma.mk.inj_iff]; exact ⟨hφy, hφe⟩
      cases hφ x₁ h_star
      rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Covering/Variantf4758a123d3b91299652a6965f996c2d0c99fa371662d12b5d1f6178c4c73f41.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Covering/Variantf4758a123d3b91299652a6965f996c2d0c99fa371662d12b5d1f6178c4c73f41.lean#L188).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `df4be3e457222a67c5f15c87fb97d086665f5f2d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
