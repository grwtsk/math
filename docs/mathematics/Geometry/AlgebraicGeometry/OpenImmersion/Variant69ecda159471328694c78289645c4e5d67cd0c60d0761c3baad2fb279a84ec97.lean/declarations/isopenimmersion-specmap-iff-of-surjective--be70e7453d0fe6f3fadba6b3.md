# isOpenImmersion_SpecMap_iff_of_surjective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "60ffa081d3d766e27fce6bc51cdbcc0532ccafed",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 30,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/69/69ecda159471328694c78289645c4e5d67cd0c60d0761c3baad2fb279a84ec97.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f7ca94a7-d898-e322-e33f-8a1707a66730",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7419fd13-b2f3-ee0d-8752-a42c7167c788",
  "kind": "lemma",
  "lexical_name": "isOpenImmersion_SpecMap_iff_of_surjective",
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
  "slug": "isopenimmersion-specmap-iff-of-surjective--be70e7453d0fe6f3fadba6b3",
  "source": {
    "blob": "60ffa081d3d766e27fce6bc51cdbcc0532ccafed",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 63,
    "line": 30,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/OpenImmersion/Variant69ecda159471328694c78289645c4e5d67cd0c60d0761c3baad2fb279a84ec97.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:be70e7453d0fe6f3fadba6b3db6a2eade2ca0ed5aa0ddf7d669482a6ea6aca9c",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/OpenImmersion/Variant69ecda159471328694c78289645c4e5d67cd0c60d0761c3baad2fb279a84ec97.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7419fd13-b2f3-ee0d-8752-a42c7167c788`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 30–63.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isOpenImmersion_SpecMap_iff_of_surjective {R S : CommRingCat}
    (f : R ⟶ S) (hf : Function.Surjective f.hom) :
    IsOpenImmersion (Spec.map f) ↔
    ∃ e, IsIdempotentElem e ∧ RingHom.ker f.hom = Ideal.span {e} := by
  constructor
  · intro H
    obtain ⟨e, he, he'⟩ := PrimeSpectrum.isClopen_iff_zeroLocus.mp
      ⟨PrimeSpectrum.isClosed_range_comap_of_surjective _ _ hf,
        (Spec.map f).isOpenEmbedding.isOpen_range⟩
    refine ⟨e, he, ?_⟩
    let φ : R ⟶ _ := (CommRingCat.ofHom (Ideal.Quotient.mk (.span {e})))
    have : IsOpenImmersion (Spec.map φ) :=
      have : IsLocalization.Away (1 - e) (↑R ⧸ Ideal.span {e}) :=
        IsLocalization.away_of_isIdempotentElem he.one_sub (by simp) Ideal.Quotient.mk_surjective
      IsOpenImmersion.of_isLocalization (1 - e)
    have H : Set.range (Spec.map φ).base = Set.range (Spec.map f).base :=
      ((PrimeSpectrum.range_comap_of_surjective _ _
        Ideal.Quotient.mk_surjective).trans (by simp [φ])).trans he'.symm
    let i : S ≅ .of _ := (Scheme.Spec.preimageIso
      (IsOpenImmersion.isoOfRangeEq (Spec.map φ) (Spec.map f) H)).unop
    have hi : Function.Injective i.inv.hom := (ConcreteCategory.bijective_of_isIso i.inv).1
    have : f = φ ≫ i.inv := by apply Spec.map_injective; simp [i, ← Scheme.Spec_map]
    rw [this, CommRingCat.hom_comp, RingHom.ker_eq_comap_bot, ← Ideal.comap_comap,
      ← RingHom.ker_eq_comap_bot, (RingHom.injective_iff_ker_eq_bot i.inv.hom).mp hi,
      ← RingHom.ker_eq_comap_bot]
    simp [φ]
  · rintro ⟨e, he, he'⟩
    letI := f.hom.toAlgebra
    have : IsLocalization.Away (1 - e) S :=
      IsLocalization.away_of_isIdempotentElem he.one_sub (by simpa using he') hf
    exact IsOpenImmersion.of_isLocalization (1 - e)

variable {X Y : Scheme.{u}}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/OpenImmersion/Variant69ecda159471328694c78289645c4e5d67cd0c60d0761c3baad2fb279a84ec97.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/OpenImmersion/Variant69ecda159471328694c78289645c4e5d67cd0c60d0761c3baad2fb279a84ec97.lean#L30).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `60ffa081d3d766e27fce6bc51cdbcc0532ccafed` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
