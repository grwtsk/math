# LocalToGlobalCarlesonData

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b5a795eff48962d16ab52ece099969f64b6d0f1393eac41693a282514ffd97bb",
  "kind": "structure",
  "lexical_name": "LocalToGlobalCarlesonData",
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
  "slug": "localtoglobalcarlesondata--80fed3d4d573453628d35c4d",
  "source": {
    "blob": "9715f8fdd91cd80cbd623b7e2cfb1bbf6f8f92d4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 59,
    "line": 39,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/LocalToGlobalCarleson/Variant2127df67bdb06896550620855a49c7d003037ae82a9209a8a969c945bd4972a5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:80fed3d4d573453628d35c4dd24dbb84c1fafc3c396222efd67f41611780b21b",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/LocalToGlobalCarleson/Variant2127df67bdb06896550620855a49c7d003037ae82a9209a8a969c945bd4972a5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b5a795eff48962d16ab52ece099969f64b6d0f1393eac41693a282514ffd97bb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–59.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure LocalToGlobalCarlesonData where
  Node : Type
  Depth : Type
  Interval : Type
  nodeFintype : Fintype Node
  depthFintype : Fintype Depth
  intervalFintype : Fintype Interval
  depthDecidableEq : DecidableEq Depth
  depth : Node → Depth
  contribution : Node → EuclideanSpace ℂ Interval
  mass : Node → ℝ
  mass_nonneg : ∀ node, 0 ≤ mass node

attribute [instance]
  LocalToGlobalCarlesonData.nodeFintype
  LocalToGlobalCarlesonData.depthFintype
  LocalToGlobalCarlesonData.intervalFintype
  LocalToGlobalCarlesonData.depthDecidableEq

/-- Contribution vector of one depth. -/
@[expose]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/LocalToGlobalCarleson/Variant2127df67bdb06896550620855a49c7d003037ae82a9209a8a969c945bd4972a5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/LocalToGlobalCarleson/Variant2127df67bdb06896550620855a49c7d003037ae82a9209a8a969c945bd4972a5.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9715f8fdd91cd80cbd623b7e2cfb1bbf6f8f92d4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
