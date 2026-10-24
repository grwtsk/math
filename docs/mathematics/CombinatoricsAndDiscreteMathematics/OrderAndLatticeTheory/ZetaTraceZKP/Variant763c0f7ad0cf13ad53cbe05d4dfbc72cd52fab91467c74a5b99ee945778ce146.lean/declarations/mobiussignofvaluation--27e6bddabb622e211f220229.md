# mobiusSignOfValuation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5cc4f7d8086bfcb699dfd1004d7f52fbfd7278ec8ff04dc515e7f3d4f1eb1039",
  "kind": "def",
  "lexical_name": "mobiusSignOfValuation",
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
  "slug": "mobiussignofvaluation--27e6bddabb622e211f220229",
  "source": {
    "blob": "c4d06a05f04c058d90f6098980b412e6e6f8f1a2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 303,
    "line": 296,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ZetaTraceZKP/Variant763c0f7ad0cf13ad53cbe05d4dfbc72cd52fab91467c74a5b99ee945778ce146.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:27e6bddabb622e211f22022983885631fa2b76a200b056ad17a6fed13c45effa",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ZetaTraceZKP/Variant763c0f7ad0cf13ad53cbe05d4dfbc72cd52fab91467c74a5b99ee945778ce146.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5cc4f7d8086bfcb699dfd1004d7f52fbfd7278ec8ff04dc515e7f3d4f1eb1039`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 296–303.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mobiusSignOfValuation {B : ValuationBox} (v : ValuationChoice B) :
    Option Bool :=
  if isSquareFreeValuation v then
    some (decide (valuationSelectedCount v % 2 = 1))
  else
    none

/-- Prime list carried by a valuation box. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ZetaTraceZKP/Variant763c0f7ad0cf13ad53cbe05d4dfbc72cd52fab91467c74a5b99ee945778ce146.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ZetaTraceZKP/Variant763c0f7ad0cf13ad53cbe05d4dfbc72cd52fab91467c74a5b99ee945778ce146.lean#L296).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c4d06a05f04c058d90f6098980b412e6e6f8f1a2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
