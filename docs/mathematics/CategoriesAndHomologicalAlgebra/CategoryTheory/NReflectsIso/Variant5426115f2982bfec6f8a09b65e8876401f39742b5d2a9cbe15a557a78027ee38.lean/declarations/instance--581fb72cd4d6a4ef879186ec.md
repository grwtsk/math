# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ca33bc3741173d7edb86f082a84e82393aa98491377648d99b9543994e6a448f",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--581fb72cd4d6a4ef879186ec",
  "source": {
    "blob": "25f486dc08c1fe93cbcb55d96d3a968bcdd798a7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 67,
    "line": 37,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/NReflectsIso/Variant5426115f2982bfec6f8a09b65e8876401f39742b5d2a9cbe15a557a78027ee38.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:581fb72cd4d6a4ef879186ec49f588c6a88830c4d59984b13bbad5435f707d25",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/NReflectsIso/Variant5426115f2982bfec6f8a09b65e8876401f39742b5d2a9cbe15a557a78027ee38.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ca33bc3741173d7edb86f082a84e82393aa98491377648d99b9543994e6a448f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 37–67.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : ReflectsIsomorphisms (N₁ : SimplicialObject C ⥤ Karoubi (ChainComplex C ℕ)) :=
  ⟨fun {X Y} f => by
    intro
    -- restating the result in a way that allows induction on the degree n
    suffices ∀ n : ℕ, IsIso (f.app (op [n])) by
      haveI : ∀ Δ : SimplexCategoryᵒᵖ, IsIso (f.app Δ) := fun Δ => this Δ.unop.len
      apply NatIso.isIso_of_isIso_app
    -- restating the assumption in a more practical form
    have h₁ := HomologicalComplex.congr_hom (Karoubi.hom_ext_iff.mp (IsIso.hom_inv_id (N₁.map f)))
    have h₂ := HomologicalComplex.congr_hom (Karoubi.hom_ext_iff.mp (IsIso.inv_hom_id (N₁.map f)))
    have h₃ := fun n =>
      Karoubi.HomologicalComplex.p_comm_f_assoc (inv (N₁.map f)) n (f.app (op [n]))
    simp only [N₁_map_f, Karoubi.comp_f, HomologicalComplex.comp_f,
      AlternatingFaceMapComplex.map_f, N₁_obj_p, Karoubi.id_eq, assoc] at h₁ h₂ h₃
    -- we have to construct an inverse to f in degree n, by induction on n
    intro n
    induction' n with n hn
    -- degree 0
    · use (inv (N₁.map f)).f.f 0
      have h₁₀ := h₁ 0
      have h₂₀ := h₂ 0
      dsimp at h₁₀ h₂₀
      simp only [id_comp, comp_id] at h₁₀ h₂₀
      tauto
    · haveI := hn
      use φ { a := PInfty.f (n + 1) ≫ (inv (N₁.map f)).f.f (n + 1)
              b := fun i => inv (f.app (op [n])) ≫ X.σ i }
      simp only [MorphComponents.id, ← id_φ, ← preComp_φ, preComp, ← postComp_φ, postComp,
        PInfty_f_naturality_assoc, IsIso.hom_inv_id_assoc, assoc, IsIso.inv_hom_id_assoc,
        SimplicialObject.σ_naturality, h₁, h₂, h₃]⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/NReflectsIso/Variant5426115f2982bfec6f8a09b65e8876401f39742b5d2a9cbe15a557a78027ee38.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/NReflectsIso/Variant5426115f2982bfec6f8a09b65e8876401f39742b5d2a9cbe15a557a78027ee38.lean#L37).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `25f486dc08c1fe93cbcb55d96d3a968bcdd798a7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
