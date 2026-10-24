# characterMasks

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:79a88327aa9698190c306e4751a5d2b29c9d58c01965f5b7a94778a32d2bc2f6",
  "kind": "def",
  "lexical_name": "characterMasks",
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
  "slug": "charactermasks--f276d0c7322a1697a1d3c17d",
  "source": {
    "blob": "de123ed821f6d2f7adcad7cb302f14453ffb09c7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 142,
    "line": 107,
    "path": "GRWTSK/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239FiniteCharacterMatrix.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f276d0c7322a1697a1d3c17d2cb40c15a20c2912829ad9d60f5abc2846f51515",
  "verification": {
    "reference": "docs/verification/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239FiniteCharacterMatrix.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:79a88327aa9698190c306e4751a5d2b29c9d58c01965f5b7a94778a32d2bc2f6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 107–142.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def characterMasks : Fin 32 → ℕ := ![
    1065482566,
    3754858807,
    414456816,
    808816088,
    2104706649,
    4272251078,
    877452869,
    2069221883,
    1548208116,
    3775671520,
    2811225754,
    742866402,
    3057232290,
    2750315254,
    96329554,
    1900223607,
    467219687,
    3083202782,
    711861601,
    3470624593,
    3826240659,
    411009034,
    2299123316,
    2614440451,
    3275320667,
    4059813932,
    921591485,
    1144127248,
    503287970,
    2015867168,
    1781184878,
    3884564734
  ]

/-- Row masks of an independently recomputed GF(2) left inverse. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239FiniteCharacterMatrix.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239FiniteCharacterMatrix.lean#L107).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `de123ed821f6d2f7adcad7cb302f14453ffb09c7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
