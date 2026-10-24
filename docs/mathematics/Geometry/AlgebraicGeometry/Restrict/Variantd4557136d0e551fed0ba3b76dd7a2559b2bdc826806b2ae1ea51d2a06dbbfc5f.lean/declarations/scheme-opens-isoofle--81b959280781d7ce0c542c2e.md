# Scheme.Opens.isoOfLE

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3d15a0d220284800fd434db7d1ee122422f699c9e9495aae39f61e112e7361ca",
  "kind": "def",
  "lexical_name": "Scheme.Opens.isoOfLE",
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
  "slug": "scheme-opens-isoofle--81b959280781d7ce0c542c2e",
  "source": {
    "blob": "9e40f79e69284ea6cb2f9d636b6ee39bddde5c6d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 413,
    "line": 406,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Restrict/Variantd4557136d0e551fed0ba3b76dd7a2559b2bdc826806b2ae1ea51d2a06dbbfc5f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:81b959280781d7ce0c542c2e27d978c941aaeab7f9d9009f73a43ba3ac8b8b29",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Restrict/Variantd4557136d0e551fed0ba3b76dd7a2559b2bdc826806b2ae1ea51d2a06dbbfc5f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3d15a0d220284800fd434db7d1ee122422f699c9e9495aae39f61e112e7361ca`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 406–413.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def Scheme.Opens.isoOfLE {X : Scheme.{u}} {U V : X.Opens}
    (hUV : U ≤ V) : (V.ι ⁻¹ᵁ U).toScheme ≅ U :=
  IsOpenImmersion.isoOfRangeEq ((V.ι ⁻¹ᵁ U).ι ≫ V.ι) U.ι <| by
    have : V.ι ''ᵁ (V.ι ⁻¹ᵁ U) = U := by simpa [Scheme.Hom.image_preimage_eq_opensRange_inter]
    rw [Scheme.comp_coeBase, TopCat.coe_comp, Scheme.Opens.range_ι, Set.range_comp, ← this]
    simp

@[reassoc (attr := simp)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Restrict/Variantd4557136d0e551fed0ba3b76dd7a2559b2bdc826806b2ae1ea51d2a06dbbfc5f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Restrict/Variantd4557136d0e551fed0ba3b76dd7a2559b2bdc826806b2ae1ea51d2a06dbbfc5f.lean#L406).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9e40f79e69284ea6cb2f9d636b6ee39bddde5c6d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
