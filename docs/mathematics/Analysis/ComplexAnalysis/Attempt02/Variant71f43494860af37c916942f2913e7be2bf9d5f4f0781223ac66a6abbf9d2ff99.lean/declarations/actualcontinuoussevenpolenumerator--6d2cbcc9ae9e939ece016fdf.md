# actualContinuousSevenPoleNumerator

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:426ffa47a7467e233f0bc4201c3878658afc7f768bf0276e54c1d5bbe95b2200",
  "kind": "def",
  "lexical_name": "actualContinuousSevenPoleNumerator",
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
  "slug": "actualcontinuoussevenpolenumerator--6d2cbcc9ae9e939ece016fdf",
  "source": {
    "blob": "92b1f77df9fa1c5ffd22d266eb1e45a38ce218af",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 26,
    "line": 24,
    "path": "GRWTSK/Analysis/ComplexAnalysis/Attempt02/Variant71f43494860af37c916942f2913e7be2bf9d5f4f0781223ac66a6abbf9d2ff99.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6d2cbcc9ae9e939ece016fdf5d6562eb42f6ae67f5790b3750f995a76689d4bc",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/Attempt02/Variant71f43494860af37c916942f2913e7be2bf9d5f4f0781223ac66a6abbf9d2ff99.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:426ffa47a7467e233f0bc4201c3878658afc7f768bf0276e54c1d5bbe95b2200`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 24–26.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def actualContinuousSevenPoleNumerator (s : ℂ) : ℂ := 1 - s * (7 : ℂ) ^ (1 - s)

/-- The true difference quotient is assigned its derivative at the touching pole. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/Attempt02/Variant71f43494860af37c916942f2913e7be2bf9d5f4f0781223ac66a6abbf9d2ff99.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/Attempt02/Variant71f43494860af37c916942f2913e7be2bf9d5f4f0781223ac66a6abbf9d2ff99.lean#L24).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `92b1f77df9fa1c5ffd22d266eb1e45a38ce218af` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
