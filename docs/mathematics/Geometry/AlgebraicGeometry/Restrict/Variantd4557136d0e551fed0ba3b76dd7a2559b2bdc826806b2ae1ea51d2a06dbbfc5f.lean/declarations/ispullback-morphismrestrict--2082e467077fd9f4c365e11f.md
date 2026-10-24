# isPullback_morphismRestrict

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:523c0342-f7d5-6f5a-6ff2-decf6a6376b1",
  "kind": "theorem",
  "lexical_name": "isPullback_morphismRestrict",
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
  "slug": "ispullback-morphismrestrict--2082e467077fd9f4c365e11f",
  "source": {
    "blob": "9e40f79e69284ea6cb2f9d636b6ee39bddde5c6d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 470,
    "line": 461,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Restrict/Variantd4557136d0e551fed0ba3b76dd7a2559b2bdc826806b2ae1ea51d2a06dbbfc5f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2082e467077fd9f4c365e11f6c2d10ff1a418889d76936633b0db1948dc398cc",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Restrict/Variantd4557136d0e551fed0ba3b76dd7a2559b2bdc826806b2ae1ea51d2a06dbbfc5f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:523c0342-f7d5-6f5a-6ff2-decf6a6376b1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 461–470.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isPullback_morphismRestrict {X Y : Scheme.{u}} (f : X ⟶ Y) (U : Y.Opens) :
    IsPullback (f ∣_ U) (f ⁻¹ᵁ U).ι U.ι f := by
  delta morphismRestrict
  rw [← Category.id_comp f]
  refine
    (IsPullback.of_horiz_isIso ⟨?_⟩).paste_horiz
      (IsPullback.of_hasPullback f (Y.ofRestrict U.isOpenEmbedding)).flip
  erw [pullbackRestrictIsoRestrict_inv_fst]
  rw [Category.comp_id]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Restrict/Variantd4557136d0e551fed0ba3b76dd7a2559b2bdc826806b2ae1ea51d2a06dbbfc5f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Restrict/Variantd4557136d0e551fed0ba3b76dd7a2559b2bdc826806b2ae1ea51d2a06dbbfc5f.lean#L461).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9e40f79e69284ea6cb2f9d636b6ee39bddde5c6d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
