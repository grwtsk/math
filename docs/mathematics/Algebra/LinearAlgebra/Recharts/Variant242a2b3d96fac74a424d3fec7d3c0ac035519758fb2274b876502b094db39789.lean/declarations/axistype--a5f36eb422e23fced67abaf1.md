# AxisType

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:dfaf07d166cdc0ff0bccd003e36417f8dec1497cea7cb497e2329db8be54af18",
  "kind": "inductive",
  "lexical_name": "AxisType",
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
  "slug": "axistype--a5f36eb422e23fced67abaf1",
  "source": {
    "blob": "9c950af39e351c688928e06d746a8b3e14368794",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 59,
    "line": 53,
    "path": "GRWTSK/Algebra/LinearAlgebra/Recharts/Variant242a2b3d96fac74a424d3fec7d3c0ac035519758fb2274b876502b094db39789.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a5f36eb422e23fced67abaf17d28ea14de8838ad3cb2da5513dd971a20306825",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Recharts/Variant242a2b3d96fac74a424d3fec7d3c0ac035519758fb2274b876502b094db39789.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:dfaf07d166cdc0ff0bccd003e36417f8dec1497cea7cb497e2329db8be54af18`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 53–59.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
inductive AxisType where
  /-- Treat values as numbers: spacing on axis by numeric difference. -/
  | number
  /-- Treat values as categorical: equal spacing between values. -/
  | category
  deriving FromJson, ToJson

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Recharts/Variant242a2b3d96fac74a424d3fec7d3c0ac035519758fb2274b876502b094db39789.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Recharts/Variant242a2b3d96fac74a424d3fec7d3c0ac035519758fb2274b876502b094db39789.lean#L53).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9c950af39e351c688928e06d746a8b3e14368794` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
