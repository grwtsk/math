# FiniteSelmerProblem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d8436fa51e013cc290ec4cc7b921285fbe2636bbd9d44023217f3df774dc3fb4",
  "kind": "structure",
  "lexical_name": "FiniteSelmerProblem",
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
  "slug": "finiteselmerproblem--0a61156c6d95dd0fb65a25b2",
  "source": {
    "blob": "e4d0ee759ef29257c1b1937738615baecf13a254",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 202,
    "line": 188,
    "path": "GRWTSK/Algebra/Selmer/Variant0ced97d1829bbedcadeedbfd44120ff51f2c538ad3a12754e64ec4a4ddb1e4c4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0a61156c6d95dd0fb65a25b29efccadc57e01d159a5c6ed293425f1bd20c2d11",
  "verification": {
    "reference": "docs/verification/Algebra/Selmer/Variant0ced97d1829bbedcadeedbfd44120ff51f2c538ad3a12754e64ec4a4ddb1e4c4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d8436fa51e013cc290ec4cc7b921285fbe2636bbd9d44023217f3df774dc3fb4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 188–202.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure FiniteSelmerProblem where
  V : Type w
  G : FiniteGroupData.{u}
  A : FiniteAddCommGroup.{v}
  ρG : AdditiveAction G A
  Gv : V → FiniteGroupData.{u}
  ρv : (place : V) → AdditiveAction (Gv place) A
  ιv : (place : V) → ActionHom (ρv place) ρG
  localCondition :
    (place : V) →
      FiniteSubgroup (FiniteH1.additiveStructure (Gv place) A (ρv place))

namespace FiniteSelmerProblem

/-- The actual Selmer subgroup attached to the bundled problem. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Selmer/Variant0ced97d1829bbedcadeedbfd44120ff51f2c538ad3a12754e64ec4a4ddb1e4c4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Selmer/Variant0ced97d1829bbedcadeedbfd44120ff51f2c538ad3a12754e64ec4a4ddb1e4c4.lean#L188).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e4d0ee759ef29257c1b1937738615baecf13a254` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
