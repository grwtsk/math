# eq_zero_of_basicOpen_eq_bot

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3544a15d-da11-5222-0cd7-7373dc991ba9",
  "kind": "theorem",
  "lexical_name": "eq_zero_of_basicOpen_eq_bot",
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
  "slug": "eq-zero-of-basicopen-eq-bot--357295e6d16bf1fb3f0290d9",
  "source": {
    "blob": "65f371104934769a2434f4a200f7c7797661fd77",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 218,
    "line": 187,
    "path": "GRWTSK/Algebra/Properties/Variante509c053381ad19959f6ba5e656fb25672355d0f0823bd5d77570ff3218a48f6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:357295e6d16bf1fb3f0290d964f944f5031b82bf0a03e599647f399f32da9d18",
  "verification": {
    "reference": "docs/verification/Algebra/Properties/Variante509c053381ad19959f6ba5e656fb25672355d0f0823bd5d77570ff3218a48f6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3544a15d-da11-5222-0cd7-7373dc991ba9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 187–218.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eq_zero_of_basicOpen_eq_bot {X : Scheme} [hX : IsReduced X] {U : X.Opens}
    (s : Γ(X, U)) (hs : X.basicOpen s = ⊥) : s = 0 := by
  apply TopCat.Presheaf.section_ext X.sheaf U
  intro x hx
  change (X.sheaf.presheaf.germ U x hx) s = (X.sheaf.presheaf.germ U x hx) 0
  rw [map_zero]
  induction U using reduce_to_affine_global generalizing hX with
  | h₁ X U H =>
    obtain ⟨V, hx, i, H⟩ := H ⟨x, hx⟩
    specialize H (X.presheaf.map i.op s)
    rw [Scheme.basicOpen_res, hs] at H
    specialize H (inf_bot_eq _) x hx
    rw [← X.sheaf.presheaf.germ_res_apply i x hx s]
    exact H
  | h₂ X Y f =>
    refine ⟨f ⁻¹ᵁ f.opensRange, f.opensRange, by simp, rfl, ?_⟩
    rintro H hX s hs _ ⟨x, rfl⟩
    have := isReduced_of_isOpenImmersion f
    specialize H (f.app _ s) _ x ⟨x, rfl⟩
    · rw [← Scheme.preimage_basicOpen, hs]; ext1; simp [Opens.map]
    · have H : (X.presheaf.germ _ x _).hom _ = 0 := H
      rw [← Scheme.Hom.germ_stalkMap_apply f ⟨_, _⟩ x] at H
      apply_fun inv <| f.stalkMap x at H
      rw [← CommRingCat.comp_apply, CategoryTheory.IsIso.hom_inv_id, map_zero] at H
      exact H
  | h₃ R =>
    rw [basicOpen_eq_of_affine', PrimeSpectrum.basicOpen_eq_bot_iff] at hs
    replace hs := (hs.map (Scheme.ΓSpecIso R).inv.hom).eq_zero
    rw [← CommRingCat.comp_apply, Iso.hom_inv_id, CommRingCat.id_apply] at hs
    rw [hs, map_zero]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Properties/Variante509c053381ad19959f6ba5e656fb25672355d0f0823bd5d77570ff3218a48f6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Properties/Variante509c053381ad19959f6ba5e656fb25672355d0f0823bd5d77570ff3218a48f6.lean#L187).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `65f371104934769a2434f4a200f7c7797661fd77` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
