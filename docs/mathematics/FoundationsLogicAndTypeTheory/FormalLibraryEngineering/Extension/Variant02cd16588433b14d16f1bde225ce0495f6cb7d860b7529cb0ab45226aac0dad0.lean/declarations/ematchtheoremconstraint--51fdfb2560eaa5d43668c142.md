# EMatchTheoremConstraint

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:565d9d91d9466e37599e9b8b71cfd55174d24c0ff6303d50d55a446ff946612b",
  "kind": "inductive",
  "lexical_name": "EMatchTheoremConstraint",
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
  "slug": "ematchtheoremconstraint--51fdfb2560eaa5d43668c142",
  "source": {
    "blob": "d5a18956b4cd79b7c20119d7306314af4a4424eb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 112,
    "line": 55,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Extension/Variant02cd16588433b14d16f1bde225ce0495f6cb7d860b7529cb0ab45226aac0dad0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:51fdfb2560eaa5d43668c142e9b7b07e206ca78236c3207d705255487646d1cd",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Extension/Variant02cd16588433b14d16f1bde225ce0495f6cb7d860b7529cb0ab45226aac0dad0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:565d9d91d9466e37599e9b8b71cfd55174d24c0ff6303d50d55a446ff946612b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–112.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
inductive EMatchTheoremConstraint where
  | /--
    A constraint of the form `lhs =/= rhs`.
    The `lhs` is one of the bound variables, and the `rhs` an abstract term that must not be definitionally
    equal to a term `t` assigned to `lhs`. -/
    notDefEq  (lhs : Nat) (rhs : CnstrRHS)
  | /--
    A constraint of the form `lhs =?= rhs`.
    The `lhs` is one of the bound variables, and the `rhs` an abstract term that must be definitionally
    equal to a term `t` assigned to `lhs`. -/
    defEq  (lhs : Nat) (rhs : CnstrRHS)
  | /--
    A constraint of the form `size lhs < n`. The `lhs` is one of the bound variables.
    The size is computed ignoring implicit terms, but sharing is not taken into account.
    -/
    sizeLt (lhs : Nat) (n : Nat)
  | /--
    A constraint of the form `depth lhs < n`. The `lhs` is one of the bound variables.
    The depth is computed in constant time using the `approxDepth` field attached to expressions.
    -/
    depthLt (lhs : Nat) (n : Nat)
  | /--
    Instantiates the theorem only if its generation is less than `n`
    -/
    genLt (n : Nat)
  | /--
    Constraints of the form `is_ground x`. Instantiates the theorem only if
    `x` is ground term.
    -/
    isGround (bvarIdx : Nat)
  | /--
    Constraints of the form `is_value x` and `is_strict_value x`.
    A value is defined as
    - A constructor fully applied to value arguments.
    - A literal: numerals, strings, etc.
    - A lambda. In the strict case, lambdas are not considered.
    -/
    isValue (bvarIdx : Nat) (strict : Bool)
  | /--
    Instantiates the theorem only if less than `n` instances have been generated for this theorem.
    -/
    maxInsts (n : Nat)
  | /--
    It instructs `grind` to postpone the instantiation of the theorem until `e` is known to be `true`.
    -/
    guard (e : Expr)
  | /--
    Similar to `guard`, but checks whether `e` is implied by asserting `¬e`.
    -/
    check (e : Expr)
  | /--
    Constraints of the form `not_value x` and `not_strict_value x`.
    They are the negations of `is_value x` and `is_strict_value x`.
    -/
    notValue (bvarIdx : Nat) (strict : Bool)
  deriving Inhabited, Repr, BEq

/-- A theorem for heuristic instantiation based on E-matching. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Extension/Variant02cd16588433b14d16f1bde225ce0495f6cb7d860b7529cb0ab45226aac0dad0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Extension/Variant02cd16588433b14d16f1bde225ce0495f6cb7d860b7529cb0ab45226aac0dad0.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d5a18956b4cd79b7c20119d7306314af4a4424eb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
