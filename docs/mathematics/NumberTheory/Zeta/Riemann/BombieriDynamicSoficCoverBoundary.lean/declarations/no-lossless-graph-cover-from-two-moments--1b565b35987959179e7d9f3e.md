# no_lossless_graph_cover_from_two_moments

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1355d882-ffe8-2baf-7026-de177a32b9a6",
  "kind": "theorem",
  "lexical_name": "no_lossless_graph_cover_from_two_moments",
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
  "slug": "no-lossless-graph-cover-from-two-moments--1b565b35987959179e7d9f3e",
  "source": {
    "blob": "cdf02856aeeee15b55000182096f2cf2fe0a7f8a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 170,
    "line": 154,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/BombieriDynamicSoficCoverBoundary.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1b565b35987959179e7d9f3ec5c9016c121706a7ad5f21c42f55770f74b123be",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/BombieriDynamicSoficCoverBoundary.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1355d882-ffe8-2baf-7026-de177a32b9a6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 154–170.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem no_lossless_graph_cover_from_two_moments
    {Label : Type u} [Fintype Label]
    {G : RootedSoficGraph Label}
    {step : Combination 2 → Combination 2}
    (C : CommutingLosslessGraphCover G (Combination 2) step)
    (postprocess : (ℂ × ℂ) → C.Spectrum)
    (hFactors : ∀ u,
      C.lift u = postprocess (bombieriMomentProfile u)) :
    False :=
  C.no_recovery_after_collision bombieriMomentProfile
    postprocess hFactors twoMoment_corrected_zero_collision
    correctedCoordinates_ne_zero

/-- Literal application of the currently proved Huffman packet encoder
AFTER an arbitrary encoding of the two Bombieri moments into bytes.
The packet round-trip remains valid for the bytes; the ORIGINAL
three-coordinate coefficients are irretrievable after the moment loss. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/BombieriDynamicSoficCoverBoundary.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/BombieriDynamicSoficCoverBoundary.lean#L154).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cdf02856aeeee15b55000182096f2cf2fe0a7f8a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
