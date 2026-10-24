# isQuotientMap_of_surjective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8df1840034f03f6976335b08c21ed3f529cc0142",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 122,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/be/beb3f499047422f911e5b1d062fadd4bc0f60facea6e339c662288a00e853270.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f376b26c-3071-e3ef-d788-984d958e27f5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:efff5ea1-861c-c6c9-b8f1-7cfbf0aab9a7",
  "kind": "lemma",
  "lexical_name": "isQuotientMap_of_surjective",
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
  "slug": "isquotientmap-of-surjective--4d79ba6b42a660054af56966",
  "source": {
    "blob": "8df1840034f03f6976335b08c21ed3f529cc0142",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 154,
    "line": 122,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Flat/Variantbeb3f499047422f911e5b1d062fadd4bc0f60facea6e339c662288a00e853270.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4d79ba6b42a660054af56966776feec0100588355265b3c2dcd42c2fdd48aa18",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Flat/Variantbeb3f499047422f911e5b1d062fadd4bc0f60facea6e339c662288a00e853270.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:efff5ea1-861c-c6c9-b8f1-7cfbf0aab9a7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 122–154.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isQuotientMap_of_surjective {X Y : Scheme.{u}} (f : X ⟶ Y) [Flat f] [QuasiCompact f]
    [Surjective f] : Topology.IsQuotientMap f := by
  rw [Topology.isQuotientMap_iff]
  refine ⟨.of_isOpen_preimage_iff_isOpen fun s ↦
    ⟨fun hs ↦ ?_, fun hs ↦ hs.preimage f.continuous⟩, f.surjective⟩
  wlog hY : ∃ R, Y = Spec R
  · let 𝒰 := Y.affineCover
    rw [𝒰.isOpenCover_opensRange.isOpen_iff_inter]
    intro i
    rw [Scheme.Hom.coe_opensRange, ← Set.image_preimage_eq_inter_range]
    apply (𝒰.f i).isOpenEmbedding.isOpenMap
    refine this (f := pullback.fst (𝒰.f i) f) _ ?_ ⟨_, rfl⟩
    rw [← Set.preimage_comp, ← TopCat.coe_comp, ← Scheme.Hom.comp_base, pullback.condition,
      Scheme.Hom.comp_base, TopCat.coe_comp, Set.preimage_comp]
    exact hs.preimage (Scheme.Hom.continuous _)
  obtain ⟨R, rfl⟩ := hY
  wlog hX : ∃ S, X = Spec S
  · have _ : CompactSpace X := QuasiCompact.compactSpace_of_compactSpace f
    let 𝒰 := X.affineCover.finiteSubcover
    let p : ∐ (fun i : 𝒰.I₀ ↦ 𝒰.X i) ⟶ X := Sigma.desc (fun i ↦ 𝒰.f i)
    refine this (f := (∐ (fun i : 𝒰.I₀ ↦ 𝒰.X i)).isoSpec.inv ≫ p ≫ f) _ _ ?_ ⟨_, rfl⟩
    rw [← Category.assoc, Scheme.Hom.comp_base, TopCat.coe_comp, Set.preimage_comp]
    exact hs.preimage (_ ≫ p).continuous
  obtain ⟨S, rfl⟩ := hX
  obtain ⟨φ, rfl⟩ := Spec.map_surjective f
  refine ((PrimeSpectrum.isQuotientMap_of_generalizingMap ?_ ?_).isOpen_preimage).mp hs
  · exact (surjective_iff (Spec.map φ)).mp inferInstance
  · apply RingHom.Flat.generalizingMap_comap
    rwa [← HasRingHomProperty.Spec_iff (P := @Flat)]

set_option backward.isDefEq.respectTransparency.types false in
/-- A flat surjective morphism of schemes is an epimorphism in the category of schemes. -/
@[stacks 02VW]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Flat/Variantbeb3f499047422f911e5b1d062fadd4bc0f60facea6e339c662288a00e853270.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Flat/Variantbeb3f499047422f911e5b1d062fadd4bc0f60facea6e339c662288a00e853270.lean#L122).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8df1840034f03f6976335b08c21ed3f529cc0142` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
