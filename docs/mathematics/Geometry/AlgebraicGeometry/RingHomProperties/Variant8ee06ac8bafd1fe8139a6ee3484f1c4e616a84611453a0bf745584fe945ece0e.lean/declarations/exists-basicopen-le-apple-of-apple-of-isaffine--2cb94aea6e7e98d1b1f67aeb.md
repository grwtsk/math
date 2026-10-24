# exists_basicOpen_le_appLE_of_appLE_of_isAffine

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a340192a-ca90-d162-298a-77140e391865",
  "kind": "lemma",
  "lexical_name": "exists_basicOpen_le_appLE_of_appLE_of_isAffine",
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
  "slug": "exists-basicopen-le-apple-of-apple-of-isaffine--2cb94aea6e7e98d1b1f67aeb",
  "source": {
    "blob": "26f03c4e4fd6f07813b86af00e58b6663b93f91a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 230,
    "line": 195,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/RingHomProperties/Variant8ee06ac8bafd1fe8139a6ee3484f1c4e616a84611453a0bf745584fe945ece0e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2cb94aea6e7e98d1b1f67aeba559e7e97ef968c3080c6955aecfa238b06e97d9",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/RingHomProperties/Variant8ee06ac8bafd1fe8139a6ee3484f1c4e616a84611453a0bf745584fe945ece0e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a340192a-ca90-d162-298a-77140e391865`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 195–230.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exists_basicOpen_le_appLE_of_appLE_of_isAffine
    (hPa : StableUnderCompositionWithLocalizationAwayTarget P) (hPl : LocalizationAwayPreserves P)
    (x : X) (U₁ : Y.affineOpens) (U₂ : Y.affineOpens) (V₁ : X.affineOpens) (V₂ : X.affineOpens)
    (hx₁ : x ∈ V₁.1) (hx₂ : x ∈ V₂.1) (e₂ : V₂.1 ≤ f ⁻¹ᵁ U₂.1) (h₂ : P (f.appLE U₂ V₂ e₂).hom)
    (hfx₁ : f.base x ∈ U₁.1) :
    ∃ (r : Γ(Y, U₁)) (s : Γ(X, V₁)) (_ : x ∈ X.basicOpen s)
      (e : X.basicOpen s ≤ f ⁻¹ᵁ Y.basicOpen r),
        P (f.appLE (Y.basicOpen r) (X.basicOpen s) e).hom := by
  obtain ⟨r, r', hBrr', hBfx⟩ := exists_basicOpen_le_affine_inter U₁.2 U₂.2 (f.base x)
    ⟨hfx₁, e₂ hx₂⟩
  have ha : IsAffineOpen (X.basicOpen (f.appLE U₂ V₂ e₂ r')) := V₂.2.basicOpen _
  have hxa : x ∈ X.basicOpen (f.appLE U₂ V₂ e₂ r') := by
    simpa [Scheme.Hom.appLE, ← Scheme.preimage_basicOpen] using And.intro hx₂ (hBrr' ▸ hBfx)
  obtain ⟨s, s', hBss', hBx⟩ := exists_basicOpen_le_affine_inter V₁.2 ha x ⟨hx₁, hxa⟩
  haveI := V₂.2.isLocalization_basicOpen (f.appLE U₂ V₂ e₂ r')
  haveI := U₂.2.isLocalization_basicOpen r'
  haveI := ha.isLocalization_basicOpen s'
  have ers : X.basicOpen s ≤ f ⁻¹ᵁ Y.basicOpen r := by
    rw [hBss', hBrr']
    apply le_trans (X.basicOpen_le _)
    simp [Scheme.Hom.appLE]
  have heq : f.appLE (Y.basicOpen r') (X.basicOpen s') (hBrr' ▸ hBss' ▸ ers) =
      f.appLE (Y.basicOpen r') (X.basicOpen (f.appLE U₂ V₂ e₂ r')) (by simp [Scheme.Hom.appLE]) ≫
        CommRingCat.ofHom (algebraMap _ _) := by
    simp only [Scheme.Hom.appLE, homOfLE_leOfHom, CommRingCat.comp_apply, Category.assoc]
    congr
    apply X.presheaf.map_comp
  refine ⟨r, s, hBx, ers, ?_⟩
  · rw [f.appLE_congr _ hBrr' hBss' (fun f => P f.hom), heq]
    apply hPa _ s' _
    rw [U₂.2.appLE_eq_away_map f V₂.2]
    exact hPl _ _ _ _ h₂

/-- If `P` holds for `f` over affine opens `U₂` of `Y` and `V₂` of `X` and `U₁` (resp. `V₁`) are
open neighborhoods of `x` (resp. `f.base x`), then `P` also holds for `f` over some affine open
`U'` of `Y` (resp. `V'` of `X`) that is contained in `U₁` (resp. `V₁`). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/RingHomProperties/Variant8ee06ac8bafd1fe8139a6ee3484f1c4e616a84611453a0bf745584fe945ece0e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/RingHomProperties/Variant8ee06ac8bafd1fe8139a6ee3484f1c4e616a84611453a0bf745584fe945ece0e.lean#L195).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `26f03c4e4fd6f07813b86af00e58b6663b93f91a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
