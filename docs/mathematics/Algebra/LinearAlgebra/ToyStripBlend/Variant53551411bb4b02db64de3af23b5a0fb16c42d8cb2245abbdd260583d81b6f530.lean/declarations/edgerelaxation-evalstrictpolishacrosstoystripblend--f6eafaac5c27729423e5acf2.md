# EdgeRelaxation.evalStrictPolishAcrossToyStripBlend

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:88efb1ce440908333e15ad3c9688397615520e9dca7813b919b893343a6311c0",
  "kind": "def",
  "lexical_name": "EdgeRelaxation.evalStrictPolishAcrossToyStripBlend",
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
  "slug": "edgerelaxation-evalstrictpolishacrosstoystripblend--f6eafaac5c27729423e5acf2",
  "source": {
    "blob": "9fa3604e24b9166a1339fe45b5af03ad46d4e837",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 363,
    "line": 356,
    "path": "GRWTSK/Algebra/LinearAlgebra/ToyStripBlend/Variant53551411bb4b02db64de3af23b5a0fb16c42d8cb2245abbdd260583d81b6f530.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f6eafaac5c27729423e5acf2ec9064a8b70e064ae0a5c5db2dd89b72d9da76eb",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/ToyStripBlend/Variant53551411bb4b02db64de3af23b5a0fb16c42d8cb2245abbdd260583d81b6f530.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:88efb1ce440908333e15ad3c9688397615520e9dca7813b919b893343a6311c0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 356–363.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def EdgeRelaxation.evalStrictPolishAcrossToyStripBlend
    (tokens : List (Prefix.StrictToken EdgeRelaxation.Line3)) :
    Option EdgeRelaxation.DensityExpr :=
  match FormulaTree.fromStrictPolish? tokens with
  | some t => some (EdgeRelaxation.evalTreeAcrossToyStripBlend t)
  | none => none

/-- Polish token stream for the local center variable. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/ToyStripBlend/Variant53551411bb4b02db64de3af23b5a0fb16c42d8cb2245abbdd260583d81b6f530.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/ToyStripBlend/Variant53551411bb4b02db64de3af23b5a0fb16c42d8cb2245abbdd260583d81b6f530.lean#L356).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9fa3604e24b9166a1339fe45b5af03ad46d4e837` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
