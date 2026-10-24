# of_stalkMap

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
      "line": 646,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b5/b5fbeae3593f697d3d82ab6cd614704d4ffdd8f41571269df3196dcea078eaf6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bc742def-64d4-7fa3-5202-7be3f44835a7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:cb9ef042-84c4-e0bf-ed2c-4add3ddef8b9",
  "kind": "lemma",
  "lexical_name": "of_stalkMap",
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
  "slug": "of-stalkmap--2e57b243581cc44e7ce525b7",
  "source": {
    "blob": "e0585bd799331b3ff8dd4654fd068c8780ac86bc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 677,
    "line": 646,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/RingHomProperties/Variantb5fbeae3593f697d3d82ab6cd614704d4ffdd8f41571269df3196dcea078eaf6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2e57b243581cc44e7ce525b71f2ac2be45f09b945a55ff20ef4ddbd88abacea4",
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

Occurrence: `result:cb9ef042-84c4-e0bf-ed2c-4add3ddef8b9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 646–677.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma of_stalkMap (hQ : OfLocalizationPrime Q) (H : ∀ x, Q (f.stalkMap x).hom) : P f := by
  have hQi := (HasRingHomProperty.isLocal_ringHomProperty P).respectsIso
  wlog hY : IsAffine Y generalizing X Y f
  · rw [IsLocalAtTarget.iff_of_iSup_eq_top (P := P) _ (iSup_affineOpens_eq_top _)]
    intro U
    refine this (fun x ↦ ?_) U.2
    exact (hQi.arrow_mk_iso_iff (AlgebraicGeometry.morphismRestrictStalkMap f U x)).mpr (H x.val)
  wlog hX : IsAffine X generalizing X f
  · rw [IsLocalAtSource.iff_of_iSup_eq_top (P := P) _ (iSup_affineOpens_eq_top _)]
    intro U
    refine this ?_ U.2
    intro x
    rw [Scheme.stalkMap_comp, CommRingCat.hom_comp, hQi.cancel_right_isIso]
    exact H x.val
  wlog hXY : ∃ R S, Y = Spec R ∧ X = Spec S generalizing X Y
  · rw [← P.cancel_right_of_respectsIso (g := Y.isoSpec.hom)]
    rw [← P.cancel_left_of_respectsIso (f := X.isoSpec.inv)]
    refine this inferInstance (fun x ↦ ?_) inferInstance ?_
    · rw [Scheme.stalkMap_comp, Scheme.stalkMap_comp, CommRingCat.hom_comp,
        hQi.cancel_right_isIso, CommRingCat.hom_comp, hQi.cancel_left_isIso]
      apply H
    · use Γ(Y, ⊤), Γ(X, ⊤)
  obtain ⟨R, S, rfl, rfl⟩ := hXY
  obtain ⟨φ, rfl⟩ := Spec.map_surjective f
  rw [Spec_iff (P := P)]
  apply hQ
  intro P hP
  specialize H ⟨P, hP⟩
  rwa [hQi.arrow_mk_iso_iff (Scheme.arrowStalkMapSpecIso φ _)] at H

/-- Let `Q` be a property of ring maps that is stable under localization.
Then if the associated property of scheme morphisms holds for `f`, `Q` holds on all stalks. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/RingHomProperties/Variantb5fbeae3593f697d3d82ab6cd614704d4ffdd8f41571269df3196dcea078eaf6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/RingHomProperties/Variantb5fbeae3593f697d3d82ab6cd614704d4ffdd8f41571269df3196dcea078eaf6.lean#L646).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e0585bd799331b3ff8dd4654fd068c8780ac86bc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
