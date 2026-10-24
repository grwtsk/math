# isOpenMap_over

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:608f7b32-615c-43f3-e25d-66aafb5dd671",
  "kind": "lemma",
  "lexical_name": "isOpenMap_over",
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
  "slug": "isopenmap-over--a03d5f61d940a9ce460685f2",
  "source": {
    "blob": "c1b022efd62bd4272fcdae489380da7dd764a8f6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 426,
    "line": 413,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/AffineSpace/Variant34f808a0c2cf70127c00874e6df32c767cc53593656da7ba692830df93404077.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a03d5f61d940a9ce460685f227cb744ce34cfc0ecc85bef91c2b8df9fd6fc8d9",
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

Occurrence: `result:608f7b32-615c-43f3-e25d-66aafb5dd671`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 413–426.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isOpenMap_over : IsOpenMap (𝔸(n; S) ↘ S) := by
  change topologically @IsOpenMap _
  wlog hS : ∃ R, S = Spec R
  · refine (IsZariskiLocalAtTarget.iff_of_openCover
      (P := topologically @IsOpenMap) S.affineCover).mpr ?_
    intro i
    have := this (n := n) (S.affineCover.X i) ⟨_, rfl⟩
    rwa [← (isPullback_map (n := n) (S.affineCover.f i)).isoPullback_hom_snd,
      MorphismProperty.cancel_left_of_respectsIso (P := topologically @IsOpenMap)] at this
  obtain ⟨R, rfl⟩ := hS
  rw [← MorphismProperty.cancel_left_of_respectsIso (P := topologically @IsOpenMap)
    (SpecIso n R).inv, SpecIso_inv_over]
  exact MvPolynomial.isOpenMap_comap_C

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/AffineSpace/Variant34f808a0c2cf70127c00874e6df32c767cc53593656da7ba692830df93404077.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/AffineSpace/Variant34f808a0c2cf70127c00874e6df32c767cc53593656da7ba692830df93404077.lean#L413).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c1b022efd62bd4272fcdae489380da7dd764a8f6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
