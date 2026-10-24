# knownPoints_eq_positiveHeightHead_of_symmetric_edge_count_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:04d96785-03c0-f6e0-426f-b30eb48df723",
  "kind": "theorem",
  "lexical_name": "knownPoints_eq_positiveHeightHead_of_symmetric_edge_count_eq",
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
  "slug": "knownpoints-eq-positiveheighthead-of-symmetric-edge-count-eq--0e0c9c5fda1c0630b284b2af",
  "source": {
    "blob": "8c3fc47b8c55997f4cee33ae3f21ea625ae295df",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 251,
    "line": 240,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/RationalRectangleSymmetricEdgeEnclosure.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0e0c9c5fda1c0630b284b2af2abe589daeba4ccbd43b8dc12a0a0a69de2707f7",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/RationalRectangleSymmetricEdgeEnclosure.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:04d96785-03c0-f6e0-426f-b30eb48df723`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 240–251.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem knownPoints_eq_positiveHeightHead_of_symmetric_edge_count_eq
    (N : ℕ)
    (alignment : CanonicalFamilyAlignment family (contourHeight N))
    (report : SymmetricRectangleEdgeEnclosure N)
    (count : ℕ) (accepted : report.accepts count = true)
    (complete : family.certifiedCount = count) :
    alignment.knownPoints = positiveHeightHead (contourHeight N) :=
  knownPoints_eq_positiveHeightHead_of_rectangle_count_eq N alignment
    report.toCanonicalRectangleIndexEnclosure count accepted complete

/-- Equality also produces a zero-gap packet for the complete bounded-divisor
and prime-side consumers. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/RationalRectangleSymmetricEdgeEnclosure.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/RationalRectangleSymmetricEdgeEnclosure.lean#L240).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8c3fc47b8c55997f4cee33ae3f21ea625ae295df` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
