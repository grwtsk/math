# NNRat.castRec

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5d59a2733790e306511e91178beca68a8adee8c11d1aeb7f45b3206badd83d5a",
  "kind": "def",
  "lexical_name": "NNRat.castRec",
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
  "slug": "nnrat-castrec--aeeff30e96f067e8301b0072",
  "source": {
    "blob": "c7cfb7246b4896ec3fc910efbfdeb50261baddeb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 74,
    "line": 67,
    "path": "GRWTSK/Algebra/Defs/Variant341e5bbbc77690b9cce20dd460d0a4c22138beea4ed9e10cc100c4d4a2db6152.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:aeeff30e96f067e8301b00722a62c898ed0434d35ffa1c389ef1ea974c95369e",
  "verification": {
    "reference": "docs/verification/Algebra/Defs/Variant341e5bbbc77690b9cce20dd460d0a4c22138beea4ed9e10cc100c4d4a2db6152.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5d59a2733790e306511e91178beca68a8adee8c11d1aeb7f45b3206badd83d5a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 67–74.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def NNRat.castRec [NatCast K] [Div K] (q : ℚ≥0) : K := q.num / q.den

/-- The default definition of the coercion `ℚ → K` for a division ring `K`.

`↑q : K` is defined as `(q.num : K) / (q.den : K)`.

Do not use this directly (instances of `DivisionRing` are allowed to override that default for
better definitional properties). Instead, use the coercion. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Defs/Variant341e5bbbc77690b9cce20dd460d0a4c22138beea4ed9e10cc100c4d4a2db6152.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Defs/Variant341e5bbbc77690b9cce20dd460d0a4c22138beea4ed9e10cc100c4d4a2db6152.lean#L67).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c7cfb7246b4896ec3fc910efbfdeb50261baddeb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
