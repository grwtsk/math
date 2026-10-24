# Interval.sub

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:94725d61e526bb4e22df74d7c2d16c75df798ef22f2b20a38a9c6e677f7bb73a",
  "kind": "def",
  "lexical_name": "Interval.sub",
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
  "slug": "interval-sub--2e0090ccd8e8fb6484ec331f",
  "source": {
    "blob": "bce9f7c6c02c47ee6ee90ebab54923b406521de9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 253,
    "line": 246,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Interval/Variant71836d093e9635a325c4deeda3c5ddb152f85a9523106eb12269ba2709625e94.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2e0090ccd8e8fb6484ec331ff4f582bc873ac6e0c2c0cef80feef2d5736d0496",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Interval/Variant71836d093e9635a325c4deeda3c5ddb152f85a9523106eb12269ba2709625e94.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:94725d61e526bb4e22df74d7c2d16c75df798ef22f2b20a38a9c6e677f7bb73a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 246–253.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Interval.sub [Sub α] (I J : Interval α) : Interval α where
  lb := match I.lb, J.ub with
    | some a, some b => some (a - b)
    | _, _ => ⊥
  ub := match I.ub, J.lb with
    | some a, some b => some (a - b)
    | _, _ => ⊤

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Interval/Variant71836d093e9635a325c4deeda3c5ddb152f85a9523106eb12269ba2709625e94.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Interval/Variant71836d093e9635a325c4deeda3c5ddb152f85a9523106eb12269ba2709625e94.lean#L246).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bce9f7c6c02c47ee6ee90ebab54923b406521de9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
