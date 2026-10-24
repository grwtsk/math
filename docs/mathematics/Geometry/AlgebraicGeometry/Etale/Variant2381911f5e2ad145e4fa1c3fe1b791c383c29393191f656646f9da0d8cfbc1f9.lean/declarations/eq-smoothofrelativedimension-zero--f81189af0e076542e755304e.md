# eq_smoothOfRelativeDimension_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ab750484-40bc-f5f5-fc50-166bafeeba94",
  "kind": "lemma",
  "lexical_name": "eq_smoothOfRelativeDimension_zero",
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
  "slug": "eq-smoothofrelativedimension-zero--f81189af0e076542e755304e",
  "source": {
    "blob": "d7390b074b6bfb2e9b2b94efcfa268462d33957b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 113,
    "line": 105,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Etale/Variant2381911f5e2ad145e4fa1c3fe1b791c383c29393191f656646f9da0d8cfbc1f9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f81189af0e076542e755304ec0f26693928f4923eedd63fdd2a0a34d1fcd89be",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Etale/Variant2381911f5e2ad145e4fa1c3fe1b791c383c29393191f656646f9da0d8cfbc1f9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ab750484-40bc-f5f5-fc50-166bafeeba94`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 105–113.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma eq_smoothOfRelativeDimension_zero : @Etale = @SmoothOfRelativeDimension 0 := by
  apply HasRingHomProperty.ext
  introv
  have : @RingHom.Etale = @RingHom.IsStandardSmoothOfRelativeDimension 0 := by
    ext; apply RingHom.etale_iff_isStandardSmoothOfRelativeDimension_zero
  rw [← this, RingHom.locally_iff_of_localizationSpanTarget]
  · exact RingHom.Etale.respectsIso
  · exact RingHom.Etale.ofLocalizationSpanTarget

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Etale/Variant2381911f5e2ad145e4fa1c3fe1b791c383c29393191f656646f9da0d8cfbc1f9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Etale/Variant2381911f5e2ad145e4fa1c3fe1b791c383c29393191f656646f9da0d8cfbc1f9.lean#L105).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d7390b074b6bfb2e9b2b94efcfa268462d33957b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
