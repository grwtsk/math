# DiseqCnstr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e27211f7349534003557896fdb611fe09fbdc11bbb1c895a9a3a4923345eb453",
  "kind": "structure",
  "lexical_name": "DiseqCnstr",
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
  "slug": "diseqcnstr--3f70deda3e6acec1ef2cc154",
  "source": {
    "blob": "c4638d5afff95049dcda586f6761eb2f018a0c39",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 154,
    "line": 139,
    "path": "GRWTSK/Algebra/Types/Variant5acd58acf76666d5c6cc7edeba895aeae33248afbb65862dc02773896ae79c17.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3f70deda3e6acec1ef2cc1540a15afeece04ffd1f6db8c6dfcc398390075a697",
  "verification": {
    "reference": "docs/verification/Algebra/Types/Variant5acd58acf76666d5c6cc7edeba895aeae33248afbb65862dc02773896ae79c17.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e27211f7349534003557896fdb611fe09fbdc11bbb1c895a9a3a4923345eb453`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 139–154.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure DiseqCnstr where
  lhs : Expr
  rhs : Expr
  /-- Reified `lhs` -/
  rlhs : RingExpr
  /-- Reified `rhs` -/
  rrhs : RingExpr
  /-- `lhs - rhs` simplification chain. If it becomes `0` we have an inconsistency. -/
  d : PolyDerivation
  /--
  If `lhs` and `rhs` are semiring expressions that have been adapted as ring ones.
  The respective semiring reified expressions are stored here.
  -/
  ofSemiring? : Option (SemiringExpr × SemiringExpr)

/-- Shared state for non-commutative and commutative semirings. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Types/Variant5acd58acf76666d5c6cc7edeba895aeae33248afbb65862dc02773896ae79c17.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Types/Variant5acd58acf76666d5c6cc7edeba895aeae33248afbb65862dc02773896ae79c17.lean#L139).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c4638d5afff95049dcda586f6761eb2f018a0c39` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
