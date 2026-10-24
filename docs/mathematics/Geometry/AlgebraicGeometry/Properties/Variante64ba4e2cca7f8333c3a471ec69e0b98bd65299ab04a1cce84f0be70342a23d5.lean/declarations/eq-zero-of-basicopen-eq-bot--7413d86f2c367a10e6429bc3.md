# eq_zero_of_basicOpen_eq_bot

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bbf920420ae4fb78b438b0344e8b2b37c39d7e6d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 148,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e6/e64ba4e2cca7f8333c3a471ec69e0b98bd65299ab04a1cce84f0be70342a23d5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4a7a892a-a923-c977-ea48-796dffacb547",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d5140068-9b40-2549-0cb2-1171778d45e1",
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
  "slug": "eq-zero-of-basicopen-eq-bot--7413d86f2c367a10e6429bc3",
  "source": {
    "blob": "bbf920420ae4fb78b438b0344e8b2b37c39d7e6d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 179,
    "line": 148,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Properties/Variante64ba4e2cca7f8333c3a471ec69e0b98bd65299ab04a1cce84f0be70342a23d5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7413d86f2c367a10e6429bc394888a33c4c8a85d4c1e20ccc4296b4afca2e3e6",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Properties/Variante64ba4e2cca7f8333c3a471ec69e0b98bd65299ab04a1cce84f0be70342a23d5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d5140068-9b40-2549-0cb2-1171778d45e1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 148–179.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eq_zero_of_basicOpen_eq_bot {X : Scheme} [hX : IsReduced X] {U : X.Opens}
    (s : Γ(X, U)) (hs : X.basicOpen s = ⊥) : s = 0 := by
  apply TopCat.Presheaf.section_ext X.sheaf U
  intro x hx
  show (X.sheaf.presheaf.germ U x hx) s = (X.sheaf.presheaf.germ U x hx) 0
  rw [RingHom.map_zero]
  induction U using reduce_to_affine_global generalizing hX with
  | h₁ X U H =>
    obtain ⟨V, hx, i, H⟩ := H ⟨x, hx⟩
    specialize H (X.presheaf.map i.op s)
    rw [Scheme.basicOpen_res, hs] at H
    specialize H (inf_bot_eq _) x hx
    rw [← X.sheaf.presheaf.germ_res_apply i x hx s]
    exact H
  | h₂ X Y f =>
    refine ⟨f ⁻¹ᵁ f.opensRange, f.opensRange, by ext1; simp, rfl, ?_⟩
    rintro H hX s hs _ ⟨x, rfl⟩
    haveI := isReduced_of_isOpenImmersion f
    specialize H (f.app _ s) _ x ⟨x, rfl⟩
    · rw [← Scheme.preimage_basicOpen, hs]; ext1; simp [Opens.map]
    · have H : (X.presheaf.germ _ x _).hom _ = 0 := H
      rw [← Scheme.stalkMap_germ_apply f ⟨_, _⟩ x] at H
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

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Properties/Variante64ba4e2cca7f8333c3a471ec69e0b98bd65299ab04a1cce84f0be70342a23d5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Properties/Variante64ba4e2cca7f8333c3a471ec69e0b98bd65299ab04a1cce84f0be70342a23d5.lean#L148).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bbf920420ae4fb78b438b0344e8b2b37c39d7e6d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
