# PatternElabException

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7a9dc1f16c6ffff225670712207b1be0b515ef5b87fe1f5736983b572f6adec5",
  "kind": "structure",
  "lexical_name": "PatternElabException",
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
  "slug": "patternelabexception--0806e832608cbbef7f8d1975",
  "source": {
    "blob": "4df90954a89531a08e5cf1aac0d9095d7a7009ca",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 292,
    "line": 242,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Match/Variant265619dfc38c223d2395bac98ce23dd6375f5f7892ce8613c80471aa87ee26d6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0806e832608cbbef7f8d1975de73138f4c793780ff0dcbed88a9b59dc8f8fd0b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Match/Variant265619dfc38c223d2395bac98ce23dd6375f5f7892ce8613c80471aa87ee26d6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7a9dc1f16c6ffff225670712207b1be0b515ef5b87fe1f5736983b572f6adec5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 242–292.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
structure PatternElabException where
  ex          : Exception
  patternIdx  : Nat -- Discriminant that sh
  pathToIndex : List Nat -- Path to the problematic inductive type index that produced the type mismatch

/--
  This method is part of the "discriminant refinement" procedure. It in invoked when the
  type of the `pattern` does not match the expected type. The expected type is based on the
  motive computed using the `match` discriminants.
  It tries to compute a path to an index of the discriminant type.
  For example, suppose the user has written
  ```
  inductive Mem (a : α) : List α → Prop where
    | head {as} : Mem a (a::as)
    | tail {as} : Mem a as → Mem a (a'::as)

  infix:50 " ∈ " => Mem

  example (a b : Nat) (h : a ∈ [b]) : b = a :=
  match h with
  | Mem.head => rfl
  ```
  The motive for the match is `a ∈ [b] → b = a`, and get a type mismatch between the type
  of `Mem.head` and `a ∈ [b]`. This procedure return the path `[2, 1]` to the index `b`.
  We use it to produce the following refinement
  ```
  example (a b : Nat) (h : a ∈ [b]) : b = a :=
  match b, h with
  | _, Mem.head => rfl
  ```
  which produces the new motive `(x : Nat) →  a ∈ [x] → x = a`
  After this refinement step, the `match` is elaborated successfully.

  This method relies on the fact that the dependent pattern matcher compiler solves equations
  between indices of indexed inductive families.
  The following kinds of equations are supported by this compiler:
  - `x = t`
  - `t = x`
  - `ctor ... = ctor ...`

  where `x` is a free variable, `t` is an arbitrary term, and `ctor` is constructor.
  Our procedure ensures that "information" is not lost, and will *not* succeed in an
  example such as
  ```
  example (a b : Nat) (f : Nat → Nat) (h : f a ∈ [f b]) : f b = f a :=
    match h with
    | Mem.head => rfl
  ```
  and will not add `f b` as a new discriminant. We may add an option in the future to
  enable this more liberal form of refinement.
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Match/Variant265619dfc38c223d2395bac98ce23dd6375f5f7892ce8613c80471aa87ee26d6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Match/Variant265619dfc38c223d2395bac98ce23dd6375f5f7892ce8613c80471aa87ee26d6.lean#L242).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4df90954a89531a08e5cf1aac0d9095d7a7009ca` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
