# IsLocallyArtinian.of_isOpenImmersion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ad3a8f9f-742f-e4af-bd85-724d1dc5fded",
  "kind": "lemma",
  "lexical_name": "IsLocallyArtinian.of_isOpenImmersion",
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
  "slug": "islocallyartinian-of-isopenimmersion--7e64049095130b9d10bf434e",
  "source": {
    "blob": "a275ac77ff550dfeb702072d6d2e971259e74468",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 96,
    "line": 90,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Artinian/Varianta0f7665ce0e40b14977d3956bf8a2b2a75404f92417b6aa4236f5e300881710d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7e64049095130b9d10bf434e01f929c2238d9cb459ce3e0394a9db6e2ddfce7d",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Artinian/Varianta0f7665ce0e40b14977d3956bf8a2b2a75404f92417b6aa4236f5e300881710d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ad3a8f9f-742f-e4af-bd85-724d1dc5fded`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 90–96.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma IsLocallyArtinian.of_isOpenImmersion [IsOpenImmersion f] [IsLocallyArtinian Y] :
    IsLocallyArtinian X where
  isArtinianRing_presheaf_obj U :=
    have : IsArtinianRing ↑Γ(Y, f ''ᵁ ↑U) :=
      IsLocallyArtinian.isArtinianRing_presheaf_obj ⟨_, U.2.image_of_isOpenImmersion f⟩
    (f.appIso U).commRingCatIsoToRingEquiv.surjective.isArtinianRing

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Artinian/Varianta0f7665ce0e40b14977d3956bf8a2b2a75404f92417b6aa4236f5e300881710d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Artinian/Varianta0f7665ce0e40b14977d3956bf8a2b2a75404f92417b6aa4236f5e300881710d.lean#L90).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a275ac77ff550dfeb702072d6d2e971259e74468` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
