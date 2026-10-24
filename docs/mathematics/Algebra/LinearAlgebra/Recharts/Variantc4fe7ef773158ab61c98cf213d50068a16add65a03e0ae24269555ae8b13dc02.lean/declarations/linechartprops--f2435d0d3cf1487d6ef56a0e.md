# LineChartProps

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:570c0681899527f1192a77b9c11e32bf34334d587bf7a449e10e27d15072a8ba",
  "kind": "structure",
  "lexical_name": "LineChartProps",
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
  "slug": "linechartprops--f2435d0d3cf1487d6ef56a0e",
  "source": {
    "blob": "8dd78ab8f6947c7b77054a1a38e37dff58e17905",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 36,
    "line": 26,
    "path": "GRWTSK/Algebra/LinearAlgebra/Recharts/Variantc4fe7ef773158ab61c98cf213d50068a16add65a03e0ae24269555ae8b13dc02.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f2435d0d3cf1487d6ef56a0eb56a9f9651971db93911a647e5bc06de76f8ca71",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Recharts/Variantc4fe7ef773158ab61c98cf213d50068a16add65a03e0ae24269555ae8b13dc02.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:570c0681899527f1192a77b9c11e32bf34334d587bf7a449e10e27d15072a8ba`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 26–36.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure LineChartProps where
  layout : LineChartLayout := .horizontal
  syncId? : Option String := none
  syncMethod? : Option LineChartSyncMethod := some .index
  width : Nat
  height : Nat
  data : Array Json
  margin : LineChartMargin := {}
  deriving FromJson, ToJson

/-- See https://recharts.org/en-US/api/LineChart. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Recharts/Variantc4fe7ef773158ab61c98cf213d50068a16add65a03e0ae24269555ae8b13dc02.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Recharts/Variantc4fe7ef773158ab61c98cf213d50068a16add65a03e0ae24269555ae8b13dc02.lean#L26).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8dd78ab8f6947c7b77054a1a38e37dff58e17905` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
