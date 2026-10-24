# FormulaTree.toStrictPolish

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:02245dcccacf6c29885445bca487127647f42624460c853e00576d429c8b848b",
  "kind": "def",
  "lexical_name": "FormulaTree.toStrictPolish",
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
  "slug": "formulatree-tostrictpolish--db0ebec5343bb935787c0932",
  "source": {
    "blob": "039f2a9bbc4a3d12a5a1060d787a3ec815c0105c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 98,
    "line": 77,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Polish/Variant8766cf9ce5d5b6f5590ac3323d0db0494d1900ba6822b419663c26fa7b761a01.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:db0ebec5343bb935787c09323a2b468f7ed1dff5813d4d2cf1f01b760ca1f56e",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Polish/Variant8766cf9ce5d5b6f5590ac3323d0db0494d1900ba6822b419663c26fa7b761a01.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:02245dcccacf6c29885445bca487127647f42624460c853e00576d429c8b848b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 77–98.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def FormulaTree.toStrictPolish : FormulaTree α → List (Prefix.StrictToken α)
  | .var a => [.atom a]
  | .falsum => [.zero]
  | .truth => [.one]
  | .neg p => .op .N :: FormulaTree.toStrictPolish p
  | .conj p q =>
      .op .K :: (FormulaTree.toStrictPolish p ++ FormulaTree.toStrictPolish q)
  | .disj p q =>
      .op .A :: (FormulaTree.toStrictPolish p ++ FormulaTree.toStrictPolish q)
  | .impl p q =>
      .op .C :: (FormulaTree.toStrictPolish p ++ FormulaTree.toStrictPolish q)
  | .eqv p q =>
      .op .E :: (FormulaTree.toStrictPolish p ++ FormulaTree.toStrictPolish q)
  | .nand p q =>
      .op .D :: (FormulaTree.toStrictPolish p ++ FormulaTree.toStrictPolish q)

/--
Fuel-bounded parser for strict Polish notation.

The fuel prevents non-termination on malformed streams. Use `fromStrictPolish?`
for the public parser.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Polish/Variant8766cf9ce5d5b6f5590ac3323d0db0494d1900ba6822b419663c26fa7b761a01.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Polish/Variant8766cf9ce5d5b6f5590ac3323d0db0494d1900ba6822b419663c26fa7b761a01.lean#L77).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `039f2a9bbc4a3d12a5a1060d787a3ec815c0105c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
