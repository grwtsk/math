# range_map

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:065daa24-ea60-c2ec-7a95-d79d3c83f0f6",
  "kind": "lemma",
  "lexical_name": "range_map",
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
  "slug": "range-map--f845a743cf30e80d5102dffa",
  "source": {
    "blob": "c3f7d41c291f01b5ea34ea2dd12b8f3b39d04598",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 372,
    "line": 343,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/PullbackCarrier/Variante4e8768752dece08dc3cbdc6b71bffbbb97d4bdbc1bf21aeb0872d5451728211.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f845a743cf30e80d5102dffa8e6085823a1d4e7fb6f66d527287e9650f59cd01",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/PullbackCarrier/Variante4e8768752dece08dc3cbdc6b71bffbbb97d4bdbc1bf21aeb0872d5451728211.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:065daa24-ea60-c2ec-7a95-d79d3c83f0f6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 343–372.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma range_map {X' Y' S' : Scheme.{u}} (f' : X' ⟶ S') (g' : Y' ⟶ S') (i₁ : X ⟶ X')
    (i₂ : Y ⟶ Y') (i₃ : S ⟶ S') (e₁ : f ≫ i₃ = i₁ ≫ f')
    (e₂ : g ≫ i₃ = i₂ ≫ g') [Mono i₃] :
    Set.range (pullback.map f g f' g' i₁ i₂ i₃ e₁ e₂).base =
      (pullback.fst f' g').base ⁻¹' Set.range i₁.base ∩
        (pullback.snd f' g').base ⁻¹' Set.range i₂.base := by
  ext z
  constructor
  · rintro ⟨t, rfl⟩
    constructor
    · use (pullback.fst f g).base t
      rw [← Scheme.comp_base_apply, ← Scheme.comp_base_apply]
      simp
    · use (pullback.snd f g).base t
      rw [← Scheme.comp_base_apply, ← Scheme.comp_base_apply]
      simp
  · intro ⟨⟨x, hx⟩, ⟨y, hy⟩⟩
    let T₁ : Triplet (pullback.fst f' g') i₁ := Triplet.mk' z x hx.symm
    obtain ⟨w₁, hw₁⟩ := T₁.exists_preimage
    let T₂ : Triplet (pullback.snd f' g') i₂ := Triplet.mk' z y hy.symm
    obtain ⟨w₂, hw₂⟩ := T₂.exists_preimage
    let T : Triplet (pullback.fst (pullback.fst f' g') i₁) (pullback.fst (pullback.snd f' g') i₂) :=
      Triplet.mk' w₁ w₂ <| by simp [hw₁.left, hw₂.left, T₁, T₂]
    obtain ⟨t, _, ht₂⟩ := T.exists_preimage
    use (pullbackFstFstIso f g f' g' i₁ i₂ i₃ e₁ e₂).hom.base t
    rw [pullback_map_eq_pullbackFstFstIso_inv, ← Scheme.comp_base_apply, Iso.hom_inv_id_assoc]
    simp [ht₂, T, hw₂.left, T₂]

end Pullback

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/PullbackCarrier/Variante4e8768752dece08dc3cbdc6b71bffbbb97d4bdbc1bf21aeb0872d5451728211.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/PullbackCarrier/Variante4e8768752dece08dc3cbdc6b71bffbbb97d4bdbc1bf21aeb0872d5451728211.lean#L343).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c3f7d41c291f01b5ea34ea2dd12b8f3b39d04598` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
