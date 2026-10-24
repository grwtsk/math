# stalkMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e0585bd799331b3ff8dd4654fd068c8780ac86bc",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 678,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b5/b5fbeae3593f697d3d82ab6cd614704d4ffdd8f41571269df3196dcea078eaf6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7d161275-c12f-4e17-bc0b-207719bd5750",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:efc0f66f-3160-c75e-1e20-9ef5c5495148",
  "kind": "lemma",
  "lexical_name": "stalkMap",
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
  "slug": "stalkmap--de6be4fa578f9e31d73c99ad",
  "source": {
    "blob": "e0585bd799331b3ff8dd4654fd068c8780ac86bc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 709,
    "line": 678,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/RingHomProperties/Variantb5fbeae3593f697d3d82ab6cd614704d4ffdd8f41571269df3196dcea078eaf6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:de6be4fa578f9e31d73c99adda2d520d45232a23307b0eb73559ad8e3aad3f21",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/RingHomProperties/Variantb5fbeae3593f697d3d82ab6cd614704d4ffdd8f41571269df3196dcea078eaf6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:efc0f66f-3160-c75e-1e20-9ef5c5495148`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 678–709.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma stalkMap
    (hQ : ∀ {R S : Type u} [CommRing R] [CommRing S] (f : R →+* S) (_ : Q f)
      (J : Ideal S) (_ : J.IsPrime), Q (Localization.localRingHom _ J f rfl))
    (hf : P f) (x : X) : Q (f.stalkMap x).hom := by
  have hQi := (HasRingHomProperty.isLocal_ringHomProperty P).respectsIso
  wlog h : IsAffine X ∧ IsAffine Y generalizing X Y f
  · obtain ⟨U, hU, hfx, _⟩ := Opens.isBasis_iff_nbhd.mp (isBasis_affine_open Y)
      (Opens.mem_top <| f.base x)
    obtain ⟨V, hV, hx, e⟩ := Opens.isBasis_iff_nbhd.mp (isBasis_affine_open X)
      (show x ∈ f ⁻¹ᵁ U from hfx)
    rw [← hQi.arrow_mk_iso_iff (Scheme.Hom.resLEStalkMap f e ⟨x, hx⟩)]
    exact this (IsLocalAtSource.resLE _ hf) _ ⟨hV, hU⟩
  obtain ⟨hX, hY⟩ := h
  wlog hXY : ∃ R S, Y = Spec R ∧ X = Spec S generalizing X Y
  · have : Q ((X.isoSpec.inv ≫ f ≫ Y.isoSpec.hom).stalkMap (X.isoSpec.hom.base x)).hom := by
      refine this ?_ (X.isoSpec.hom.base x) inferInstance inferInstance ?_
      · rwa [P.cancel_left_of_respectsIso, P.cancel_right_of_respectsIso]
      · use Γ(Y, ⊤), Γ(X, ⊤)
    rw [Scheme.stalkMap_comp, Scheme.stalkMap_comp, CommRingCat.hom_comp,
      hQi.cancel_right_isIso, CommRingCat.hom_comp, hQi.cancel_left_isIso] at this
    have heq : (X.isoSpec.inv.base (X.isoSpec.hom.base x)) = x := by simp
    rwa [hQi.arrow_mk_iso_iff
      (Scheme.arrowStalkMapIsoOfEq f heq)] at this
  obtain ⟨R, S, rfl, rfl⟩ := hXY
  obtain ⟨φ, rfl⟩ := Spec.map_surjective f
  rw [hQi.arrow_mk_iso_iff (Scheme.arrowStalkMapSpecIso φ _)]
  rw [Spec_iff (P := P)] at hf
  apply hQ _ hf

end HasRingHomProperty

end AlgebraicGeometry
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/RingHomProperties/Variantb5fbeae3593f697d3d82ab6cd614704d4ffdd8f41571269df3196dcea078eaf6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/RingHomProperties/Variantb5fbeae3593f697d3d82ab6cd614704d4ffdd8f41571269df3196dcea078eaf6.lean#L678).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e0585bd799331b3ff8dd4654fd068c8780ac86bc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
