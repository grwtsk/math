# isIntegralHom_over_iff_isEmpty

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7a21c2ed-079b-52df-7972-7c4ccc591fb1",
  "kind": "lemma",
  "lexical_name": "isIntegralHom_over_iff_isEmpty",
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
  "slug": "isintegralhom-over-iff-isempty--3fe9672efac6ba9aa3909ae2",
  "source": {
    "blob": "c1b022efd62bd4272fcdae489380da7dd764a8f6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 501,
    "line": 473,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/AffineSpace/Variant34f808a0c2cf70127c00874e6df32c767cc53593656da7ba692830df93404077.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3fe9672efac6ba9aa3909ae25f339c4314e8f052f23393ffd0b33c81d125aa0e",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/AffineSpace/Variant34f808a0c2cf70127c00874e6df32c767cc53593656da7ba692830df93404077.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7a21c2ed-079b-52df-7972-7c4ccc591fb1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 473–501.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isIntegralHom_over_iff_isEmpty : IsIntegralHom (𝔸(n; S) ↘ S) ↔ IsEmpty S ∨ IsEmpty n := by
  constructor
  · intro h
    cases isEmpty_or_nonempty S
    · exact .inl ‹_›
    refine .inr ?_
    wlog hS : ∃ R, S = Spec R
    · obtain ⟨x⟩ := ‹Nonempty S›
      obtain ⟨y, hy⟩ := S.affineCover.covers x
      exact this (S.affineCover.X _) (MorphismProperty.IsStableUnderBaseChange.of_isPullback
        (isPullback_map (S.affineCover.f _)) h) ⟨y⟩ ⟨_, rfl⟩
    obtain ⟨R, rfl⟩ := hS
    have : Nontrivial R := (subsingleton_or_nontrivial R).resolve_left fun H ↦
        not_isEmpty_of_nonempty (Spec R) (inferInstanceAs (IsEmpty (PrimeSpectrum R)))
    constructor
    intro i
    have := RingHom.toMorphismProperty_respectsIso_iff.mp RingHom.isIntegral_respectsIso.{u}
    rw [← MorphismProperty.cancel_left_of_respectsIso @IsIntegralHom (SpecIso n R).inv,
      SpecIso_inv_over, HasAffineProperty.iff_of_isAffine (P := @IsIntegralHom)] at h
    obtain ⟨p : Polynomial R, hp, hp'⟩ :=
      (MorphismProperty.arrow_mk_iso_iff (RingHom.toMorphismProperty RingHom.IsIntegral)
        (arrowIsoΓSpecOfIsAffine _)).mpr h.2 (X i)
    have : (rename fun _ ↦ i).comp (uniqueAlgEquiv.{_, u} _ PUnit).symm.toAlgHom p = 0 := by
      simp [← hp', ← algebraMap_eq]
    rw [AlgHom.comp_apply, map_eq_zero_iff _ (rename_injective _ (fun _ _ _ ↦ rfl))] at this
    simp only [AlgEquiv.coe_toAlgHom, EmbeddingLike.map_eq_zero_iff] at this
    simp [this] at hp
  · rintro (_ | _) <;> infer_instance

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/AffineSpace/Variant34f808a0c2cf70127c00874e6df32c767cc53593656da7ba692830df93404077.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/AffineSpace/Variant34f808a0c2cf70127c00874e6df32c767cc53593656da7ba692830df93404077.lean#L473).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c1b022efd62bd4272fcdae489380da7dd764a8f6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
