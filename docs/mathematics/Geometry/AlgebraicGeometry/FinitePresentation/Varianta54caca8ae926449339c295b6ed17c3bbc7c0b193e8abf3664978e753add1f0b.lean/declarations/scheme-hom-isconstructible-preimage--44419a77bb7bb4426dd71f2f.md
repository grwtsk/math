# Scheme.Hom.isConstructible_preimage

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0607f8cc-f0c3-75f4-208a-6ede3a30dcc1",
  "kind": "lemma",
  "lexical_name": "Scheme.Hom.isConstructible_preimage",
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
  "slug": "scheme-hom-isconstructible-preimage--44419a77bb7bb4426dd71f2f",
  "source": {
    "blob": "25cf1cb9d06becc9cfb19b18775a001734602a70",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 157,
    "line": 149,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/FinitePresentation/Varianta54caca8ae926449339c295b6ed17c3bbc7c0b193e8abf3664978e753add1f0b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:44419a77bb7bb4426dd71f2fe9d0344c6c37d03b174af09e3e326196ce72d801",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/FinitePresentation/Varianta54caca8ae926449339c295b6ed17c3bbc7c0b193e8abf3664978e753add1f0b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0607f8cc-f0c3-75f4-208a-6ede3a30dcc1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 149–157.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Scheme.Hom.isConstructible_preimage (f : X.Hom Y) {s : Set Y} (hs : IsConstructible s) :
    IsConstructible (f.base ⁻¹' s) :=
  hs.preimage f.continuous fun t ht ht' ↦ IsRetrocompact_iff_isSpectralMap_subtypeVal.mpr
    ((quasiCompact_iff_spectral _).mp
    (MorphismProperty.of_isPullback (P := @QuasiCompact)
    (isPullback_morphismRestrict f ⟨t, ht⟩)
    ((quasiCompact_iff_spectral _).mpr (IsRetrocompact_iff_isSpectralMap_subtypeVal.mp ht'))))

end AlgebraicGeometry
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/FinitePresentation/Varianta54caca8ae926449339c295b6ed17c3bbc7c0b193e8abf3664978e753add1f0b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/FinitePresentation/Varianta54caca8ae926449339c295b6ed17c3bbc7c0b193e8abf3664978e753add1f0b.lean#L149).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `25cf1cb9d06becc9cfb19b18775a001734602a70` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
