# Scheme.Hom.smoothLocus_eq_top_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ffa98c35-3e4a-c9a6-f7e3-e98a8b3e68a0",
  "kind": "lemma",
  "lexical_name": "Scheme.Hom.smoothLocus_eq_top_iff",
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
  "slug": "scheme-hom-smoothlocus-eq-top-iff--759ac6648d4c0e2f7c28c457",
  "source": {
    "blob": "d5d4198b84337a3a5f5f38945cd0e541cebbd76e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 331,
    "line": 319,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Smooth/Varianteac66143efec6e257bf59efaaa09fcf00e3a9daa248a4b828d3ff2d1f96796b8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:759ac6648d4c0e2f7c28c457c17a615fefda091edee7b1f23d25fd83d8ed0690",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Smooth/Varianteac66143efec6e257bf59efaaa09fcf00e3a9daa248a4b828d3ff2d1f96796b8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ffa98c35-3e4a-c9a6-f7e3-e98a8b3e68a0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 319–331.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Scheme.Hom.smoothLocus_eq_top_iff {f : X ⟶ Y} [LocallyOfFinitePresentation f] :
    f.smoothLocus = ⊤ ↔ Smooth f := by
  refine ⟨fun H ↦ ?_, fun _ ↦ f.smoothLocus_eq_top⟩
  refine IsZariskiLocalAtSource.iff_exists_resLE.mpr fun x ↦ ?_
  obtain ⟨U, hU, V, hV, hVU, hxV, H⟩ :=
    exists_smooth_of_formallySmooth_stalk f _ (H.ge (Set.mem_univ x))
  refine ⟨U, V, hxV, hVU, ?_⟩
  have : IsAffine _ := hU
  have : IsAffine _ := hV
  rw [HasRingHomProperty.iff_of_isAffine (P := @Smooth)]
  exact (RingHom.Smooth.propertyIsLocal.respectsIso.arrow_mk_iso_iff
    (arrowResLEAppIso f U V hVU)).mpr H

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Smooth/Varianteac66143efec6e257bf59efaaa09fcf00e3a9daa248a4b828d3ff2d1f96796b8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Smooth/Varianteac66143efec6e257bf59efaaa09fcf00e3a9daa248a4b828d3ff2d1f96796b8.lean#L319).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d5d4198b84337a3a5f5f38945cd0e541cebbd76e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
