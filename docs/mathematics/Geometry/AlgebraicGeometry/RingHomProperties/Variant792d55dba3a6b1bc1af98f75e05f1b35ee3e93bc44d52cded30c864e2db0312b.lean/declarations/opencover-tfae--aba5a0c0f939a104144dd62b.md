# openCover_TFAE

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ea74f0b3-38be-e8a7-e6cb-06b32e30807f",
  "kind": "theorem",
  "lexical_name": "openCover_TFAE",
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
  "slug": "opencover-tfae--aba5a0c0f939a104144dd62b",
  "source": {
    "blob": "653ea3160ced1b0792ac93326eb237d91538f8c7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 490,
    "line": 448,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/RingHomProperties/Variant792d55dba3a6b1bc1af98f75e05f1b35ee3e93bc44d52cded30c864e2db0312b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:aba5a0c0f939a104144dd62b2f5fb60e1824d02f3a5e90c628b428446ca6701f",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/RingHomProperties/Variant792d55dba3a6b1bc1af98f75e05f1b35ee3e93bc44d52cded30c864e2db0312b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ea74f0b3-38be-e8a7-e6cb-06b32e30807f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 448–490.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem openCover_TFAE {X Y : Scheme.{u}} [IsAffine Y] (f : X ⟶ Y) :
    List.TFAE
      [sourceAffineLocally (@P) f,
        ∃ 𝒰 : Scheme.OpenCover.{u} X, ∀ i : 𝒰.J, sourceAffineLocally (@P) (𝒰.map i ≫ f),
        ∀ (𝒰 : Scheme.OpenCover.{u} X) (i : 𝒰.J), sourceAffineLocally (@P) (𝒰.map i ≫ f),
        ∀ {U : Scheme} (g : U ⟶ X) [IsOpenImmersion g], sourceAffineLocally (@P) (g ≫ f)] := by
  tfae_have 1 → 4
  · intro H U g hg V
    skip
    -- Porting note: this has metavariable if I put it directly into rw
    have := (hP.affine_openCover_TFAE f).out 0 3
    rw [this] at H
    haveI : IsAffine _ := V.2
    rw [← Category.assoc]
    -- Porting note: Lean could find this previously
    have : IsOpenImmersion <| (Scheme.ofRestrict U (Opens.openEmbedding V.val)) ≫ g :=
      LocallyRingedSpace.IsOpenImmersion.comp _ _
    apply H
  tfae_have 4 → 3
  · intro H 𝒰 _ i; skip; apply H
  tfae_have 3 → 2
  · intro H; refine' ⟨X.affineCover, H _⟩
  tfae_have 2 → 1
  · rintro ⟨𝒰, h𝒰⟩
    -- Porting note: this has metavariable if I put it directly into rw
    have := (hP.affine_openCover_TFAE f).out 0 1
    rw [this]
    refine' ⟨𝒰.bind fun _ => Scheme.affineCover _, _, _⟩
    · intro i; dsimp; infer_instance
    · intro i
      specialize h𝒰 i.1
      -- Porting note: this has metavariable if I put it directly into rw
      have := (hP.affine_openCover_TFAE (𝒰.map i.fst ≫ f)).out 0 3
      rw [this] at h𝒰
      erw [Category.assoc]
      -- Porting note: this was discharged after the apply previously
      have : IsAffine (Scheme.OpenCover.obj
        (Scheme.OpenCover.bind 𝒰 fun x ↦ Scheme.affineCover (Scheme.OpenCover.obj 𝒰 x)) i) := by
          dsimp; infer_instance
      apply @h𝒰 _ (show _ from _)
  tfae_finish
#align ring_hom.property_is_local.open_cover_tfae RingHom.PropertyIsLocal.openCover_TFAE

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/RingHomProperties/Variant792d55dba3a6b1bc1af98f75e05f1b35ee3e93bc44d52cded30c864e2db0312b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/RingHomProperties/Variant792d55dba3a6b1bc1af98f75e05f1b35ee3e93bc44d52cded30c864e2db0312b.lean#L448).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `653ea3160ced1b0792ac93326eb237d91538f8c7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
