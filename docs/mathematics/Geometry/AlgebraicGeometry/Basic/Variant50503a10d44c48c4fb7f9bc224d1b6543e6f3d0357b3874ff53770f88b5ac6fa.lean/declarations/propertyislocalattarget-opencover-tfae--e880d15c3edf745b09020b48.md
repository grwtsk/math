# PropertyIsLocalAtTarget.openCover_TFAE

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3310b63b-77a4-6d45-b0ba-54b6801d15ea",
  "kind": "theorem",
  "lexical_name": "PropertyIsLocalAtTarget.openCover_TFAE",
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
  "slug": "propertyislocalattarget-opencover-tfae--e880d15c3edf745b09020b48",
  "source": {
    "blob": "e46573ee1ece9b543a3af061d0730edcca8f6617",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 433,
    "line": 393,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Basic/Variant50503a10d44c48c4fb7f9bc224d1b6543e6f3d0357b3874ff53770f88b5ac6fa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e880d15c3edf745b09020b489e1d4ca2c64fc6c23b0e6c82dd698f1a64906004",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Basic/Variant50503a10d44c48c4fb7f9bc224d1b6543e6f3d0357b3874ff53770f88b5ac6fa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3310b63b-77a4-6d45-b0ba-54b6801d15ea`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 393–433.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem PropertyIsLocalAtTarget.openCover_TFAE {P : MorphismProperty Scheme}
    (hP : PropertyIsLocalAtTarget P) {X Y : Scheme.{u}} (f : X ⟶ Y) :
    TFAE
      [P f,
        ∃ 𝒰 : Scheme.OpenCover.{u} Y,
          ∀ i : 𝒰.J, P (pullback.snd : (𝒰.pullbackCover f).obj i ⟶ 𝒰.obj i),
        ∀ (𝒰 : Scheme.OpenCover.{u} Y) (i : 𝒰.J),
          P (pullback.snd : (𝒰.pullbackCover f).obj i ⟶ 𝒰.obj i),
        ∀ U : Opens Y.carrier, P (f ∣_ U),
        ∀ {U : Scheme} (g : U ⟶ Y) [IsOpenImmersion g], P (pullback.snd : pullback f g ⟶ U),
        ∃ (ι : Type u) (U : ι → Opens Y.carrier) (_ : iSup U = ⊤), ∀ i, P (f ∣_ U i)] := by
  tfae_have 2 → 1
  · rintro ⟨𝒰, H⟩; exact hP.3 f 𝒰 H
  tfae_have 1 → 4
  · intro H U; exact hP.2 f U H
  tfae_have 4 → 3
  · intro H 𝒰 i
    rw [← hP.1.arrow_mk_iso_iff (morphismRestrictOpensRange f _)]
    exact H <| Scheme.Hom.opensRange (𝒰.map i)
  tfae_have 3 → 2
  · exact fun H => ⟨Y.affineCover, H Y.affineCover⟩
  tfae_have 4 → 5
  · intro H U g hg
    rw [← hP.1.arrow_mk_iso_iff (morphismRestrictOpensRange f _)]
    apply H
  tfae_have 5 → 4
  · intro H U
    erw [hP.1.cancel_left_isIso]
    apply H
  tfae_have 4 → 6
  · intro H; exact ⟨PUnit, fun _ => ⊤, ciSup_const, fun _ => H _⟩
  tfae_have 6 → 2
  · rintro ⟨ι, U, hU, H⟩
    refine' ⟨Y.openCoverOfSuprEqTop U hU, _⟩
    intro i
    rw [← hP.1.arrow_mk_iso_iff (morphismRestrictOpensRange f _)]
    convert H i
    all_goals ext1; exact Subtype.range_coe
  tfae_finish
#align algebraic_geometry.property_is_local_at_target.open_cover_tfae AlgebraicGeometry.PropertyIsLocalAtTarget.openCover_TFAE

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Basic/Variant50503a10d44c48c4fb7f9bc224d1b6543e6f3d0357b3874ff53770f88b5ac6fa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Basic/Variant50503a10d44c48c4fb7f9bc224d1b6543e6f3d0357b3874ff53770f88b5ac6fa.lean#L393).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e46573ee1ece9b543a3af061d0730edcca8f6617` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
