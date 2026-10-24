# Scheme.Hom.isConstructible_preimage

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:416b9428-2740-92a5-3afd-0bd2a22bbb6f",
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
  "slug": "scheme-hom-isconstructible-preimage--af8c9bc9b1c9d78aa470d8a7",
  "source": {
    "blob": "472d80f4edc71f7d011ca0e3e6dcd116f729c5c9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 184,
    "line": 176,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/FinitePresentation/Variant11008ad8b7abd97c4208be7d56ec5dab2543e09788961eae667a267d4e5a091c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:af8c9bc9b1c9d78aa470d8a78d0d56c0032f8d554d934660689da88a1c514af0",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/FinitePresentation/Variant11008ad8b7abd97c4208be7d56ec5dab2543e09788961eae667a267d4e5a091c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:416b9428-2740-92a5-3afd-0bd2a22bbb6f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 176–184.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Scheme.Hom.isConstructible_preimage (f : X ⟶ Y) {s : Set Y} (hs : IsConstructible s) :
    IsConstructible (f ⁻¹' s) :=
  hs.preimage f.continuous fun t ht ht' ↦ IsRetrocompact_iff_isSpectralMap_subtypeVal.mpr
    (quasiCompact_iff_isSpectralMap.mp
    (MorphismProperty.of_isPullback (P := @QuasiCompact)
    (isPullback_morphismRestrict f ⟨t, ht⟩)
    (quasiCompact_iff_isSpectralMap.mpr (IsRetrocompact_iff_isSpectralMap_subtypeVal.mp ht'))))

end AlgebraicGeometry
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/FinitePresentation/Variant11008ad8b7abd97c4208be7d56ec5dab2543e09788961eae667a267d4e5a091c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/FinitePresentation/Variant11008ad8b7abd97c4208be7d56ec5dab2543e09788961eae667a267d4e5a091c.lean#L176).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `472d80f4edc71f7d011ca0e3e6dcd116f729c5c9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
