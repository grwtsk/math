# isAffine_of_isAffineOpen_basicOpen

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a37537ed8d4baf118d18e4205d679c240a95656f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 104,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fb/fb23f8644acbe1f881cfce0bfd203c5b4ed4c9da65d96937890b93f324a5bba1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:464c0e19-5ef1-b2a6-bd40-af549a152ef0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:80d1adb9-1a9a-3b3f-56f7-5e29cf3ab47c",
  "kind": "lemma",
  "lexical_name": "isAffine_of_isAffineOpen_basicOpen",
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
  "slug": "isaffine-of-isaffineopen-basicopen--1c80564a23eae7076c689ca5",
  "source": {
    "blob": "a37537ed8d4baf118d18e4205d679c240a95656f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 133,
    "line": 104,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Affine/Variantfb23f8644acbe1f881cfce0bfd203c5b4ed4c9da65d96937890b93f324a5bba1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1c80564a23eae7076c689ca51bc8782ede162dca78fcebbfaabb83ea19e7913b",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Affine/Variantfb23f8644acbe1f881cfce0bfd203c5b4ed4c9da65d96937890b93f324a5bba1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:80d1adb9-1a9a-3b3f-56f7-5e29cf3ab47c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 104–133.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isAffine_of_isAffineOpen_basicOpen (s : Set Γ(X, ⊤))
    (hs : Ideal.span s = ⊤) (hs₂ : ∀ i ∈ s, IsAffineOpen (X.basicOpen i)) :
    IsAffine X := by
  have : QuasiSeparatedSpace X := isAffineOpen_of_isAffineOpen_basicOpen_aux s hs hs₂
  have : CompactSpace X := by
    obtain ⟨s', hs', e⟩ := (Ideal.span_eq_top_iff_finite _).mp hs
    rw [← isCompact_univ_iff, ← Opens.coe_top, ← iSup_basicOpen_of_span_eq_top _ _ e]
    simp only [Finset.mem_coe, Opens.iSup_mk, Opens.carrier_eq_coe, Opens.coe_mk]
    apply s'.isCompact_biUnion
    exact fun i hi ↦ (hs₂ _ (hs' hi)).isCompact
  constructor
  refine HasAffineProperty.of_iSup_eq_top (P := MorphismProperty.isomorphisms Scheme)
    (fun i : s ↦ ⟨PrimeSpectrum.basicOpen i.1, ?_⟩) ?_ (fun i ↦ ⟨?_, ?_⟩)
  · show IsAffineOpen _
    simp only [← basicOpen_eq_of_affine]
    exact (isAffineOpen_top (Scheme.Spec.obj (op _))).basicOpen _
  · rw [PrimeSpectrum.iSup_basicOpen_eq_top_iff, Subtype.range_coe_subtype, Set.setOf_mem_eq, hs]
  · rw [Scheme.toSpecΓ_preimage_basicOpen]
    exact hs₂ _ i.2
  · simp only [Functor.comp_obj, Functor.rightOp_obj, Scheme.Γ_obj, Scheme.Spec_obj, id_eq,
      eq_mpr_eq_cast, Functor.id_obj, Opens.map_top, morphismRestrict_app]
    refine IsIso.comp_isIso' ?_ inferInstance
    convert isIso_ΓSpec_adjunction_unit_app_basicOpen i.1 using 0
    refine congr(IsIso ((ΓSpec.adjunction.unit.app X).app $(?_)))
    rw [Opens.isOpenEmbedding_obj_top]

/--
If `s` is a spanning set of `Γ(X, U)`, such that each `X.basicOpen i` is affine, then `U` is also
affine.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Affine/Variantfb23f8644acbe1f881cfce0bfd203c5b4ed4c9da65d96937890b93f324a5bba1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Affine/Variantfb23f8644acbe1f881cfce0bfd203c5b4ed4c9da65d96937890b93f324a5bba1.lean#L104).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a37537ed8d4baf118d18e4205d679c240a95656f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
