# nextStackDepth

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d6d4beef05119387900efc9a6ba510d01e478361ede2d1d3686cac55c930737b",
  "kind": "def",
  "lexical_name": "nextStackDepth",
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
  "slug": "nextstackdepth--ea6c10aa712841f46e9dbbe1",
  "source": {
    "blob": "1031ef61768556191b4d9ab0462df7b8d339b28b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 90,
    "line": 62,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FixedProgramInterpreter/Variant2a841839c5ea83070e970887250bcb30d0fe3001f6588aa99f7f8ee86058c753.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ea6c10aa712841f46e9dbbe19fd3085f2ec3b520cd88ce3deec3f60bdd7b3401",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FixedProgramInterpreter/Variant2a841839c5ea83070e970887250bcb30d0fe3001f6588aa99f7f8ee86058c753.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d6d4beef05119387900efc9a6ba510d01e478361ede2d1d3686cac55c930737b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 62–90.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def nextStackDepth : Operation → Nat → Option Nat
  | .pushFalse, depth
  | .pushTrue, depth
  | .readSelf, depth
  | .readConst _, depth
  | .indexBit _, depth => some (depth + 1)
  | .not, 0 => none
  | .not, depth + 1 => some (depth + 1)
  | .xor, 0 | .xor, 1 => none
  | .xor, depth + 2 => some (depth + 1)
  | .and, 0 | .and, 1 => none
  | .and, depth + 2 => some (depth + 1)
  | .or, 0 | .or, 1 => none
  | .or, depth + 2 => some (depth + 1)
  | .eq, 0 | .eq, 1 => none
  | .eq, depth + 2 => some (depth + 1)
  | .dup, 0 => none
  | .dup, depth + 1 => some (depth + 2)
  | .swap, 0 | .swap, 1 => none
  | .swap, depth + 2 => some (depth + 2)
  | .drop, 0 => none
  | .drop, depth + 1 => some depth
  | .return, _ => none

/--
Execute one non-return operation.  The head of the list is the top of stack;
binary instructions pop the right operand before the left operand, matching
the decoded profile (the present Boolean binary operations are commutative).
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FixedProgramInterpreter/Variant2a841839c5ea83070e970887250bcb30d0fe3001f6588aa99f7f8ee86058c753.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FixedProgramInterpreter/Variant2a841839c5ea83070e970887250bcb30d0fe3001f6588aa99f7f8ee86058c753.lean#L62).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1031ef61768556191b4d9ab0462df7b8d339b28b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
