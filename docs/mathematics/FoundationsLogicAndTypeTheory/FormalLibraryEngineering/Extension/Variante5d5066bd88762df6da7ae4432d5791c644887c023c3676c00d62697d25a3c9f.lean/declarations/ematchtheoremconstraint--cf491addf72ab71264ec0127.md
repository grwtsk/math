# EMatchTheoremConstraint

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a08c65e35e9d9daf72f26c7754b04d2a5f024cdbf0325d261b319db5c591a5ed",
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
  "slug": "ematchtheoremconstraint--cf491addf72ab71264ec0127",
  "source": {
    "blob": "ade2b829ae70b67e4417bff44f59221e4c95c4af",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 120,
    "line": 63,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Extension/Variante5d5066bd88762df6da7ae4432d5791c644887c023c3676c00d62697d25a3c9f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cf491addf72ab71264ec012712def42c2d94f6eb1febca225cef7d7c9930f422",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Extension/Variante5d5066bd88762df6da7ae4432d5791c644887c023c3676c00d62697d25a3c9f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a08c65e35e9d9daf72f26c7754b04d2a5f024cdbf0325d261b319db5c591a5ed`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 63–120.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Extension/Variante5d5066bd88762df6da7ae4432d5791c644887c023c3676c00d62697d25a3c9f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Extension/Variante5d5066bd88762df6da7ae4432d5791c644887c023c3676c00d62697d25a3c9f.lean#L63).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ade2b829ae70b67e4417bff44f59221e4c95c4af` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
