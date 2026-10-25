# isPropFormer

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:191c49711225861702e1190e26ef9e899a993e8ee8c82a2dabc2995def5cca76",
  "kind": "def",
  "lexical_name": "isPropFormer",
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
  "slug": "ispropformer--e4da5d8a2c4016faceffe452",
  "source": {
    "blob": "50f0880b90c1ff68cda4e891e1a6e1f1490170db",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 129,
    "line": 61,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variant66faec7a6974d2ab29b302a06ceed44d5af1c40f009ac700a088eec6c1f8d0ae.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e4da5d8a2c4016faceffe452188739f651f7b458021b88a09673163195dba77b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variant66faec7a6974d2ab29b302a06ceed44d5af1c40f009ac700a088eec6c1f8d0ae.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:191c49711225861702e1190e26ef9e899a993e8ee8c82a2dabc2995def5cca76`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 61–129.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
def isPropFormer (e : Expr) : MetaM Bool := do
  isPropFormerType (← Meta.inferType e)

/-!
The code generator uses a format based on A-normal form.
This normal form uses many let-expressions and it is very convenient for
applying compiler transformations. However, it creates a few issues
in a dependently typed programming language.

- Many casts are needed.
- It is too expensive to ensure we are not losing typeability when creating join points
  and simplifying let-values
- It may not be possible to create a join point because the resulting expression is
  not type correct. For example, suppose we are trying to create a join point for
  making the following `match` terminal.
  ```
  let x := match a with | true => b | false => c;
  k[x]
  ```
  and want to transform this code into
  ```
  let jp := fun x => k[x]
  match a with
  | true => jp b
  | false => jp c
  ```
  where `jp` is a new join point (i.e., a local function that is always fully applied and
  tail recursive). In many examples in the Lean code-base, we have to skip this transformation
  because it produces a type-incorrect term. Recall that types/propositions in `k[x]` may rely on
  the fact that `x` is definitionally equal to `match a with ...` before the creation of
  the join point.

Thus, in the first code generator pass, we convert types into a `LCNFType` (Lean Compiler Normal Form Type).
The method `toLCNFType` produces a type with the following properties:

- All constants occurring in the result type are inductive datatypes.
- The arguments of type formers are type formers, or `◾`. We use `◾` to denote erased information.
- All type definitions are expanded. If reduction gets stuck, it is replaced with `◾`.

Remark: you can view `◾` occurring in a type position as the "any type".
Remark: in our runtime, `◾` is represented as `box(0)`.

The goal is to preserve as much information as possible and avoid the problems described above.
Then, we don't have `let x := v; ...` in LCNF code when `x` is a type former.
If the user provides a `let x := v; ...` where x is a type former, we can always expand it when
converting into LCNF.
Thus, given a `let x := v, ...` in occurring in LCNF, we know `x` cannot occur in any type since it is
not a type former.

We try to preserve type information because they unlock new optimizations, and we can type check
the result produced by each code generator step.


Below, we provide some example programs and their erased variants:
-- 1. Source type: `f: (n: Nat) -> (tupleN Nat n)`.
      LCNF type: `f: Nat -> ◾`.
      We convert the return type `(tupleN Nat n) to `◾`, since we cannot reduce
      `(tupleN Nat n)` to a term of the form `(InductiveTy ...)`.

-- 2. Source type: `f: (n: Nat) (fin: Fin n) -> (tupleN Nat fin)`.
      LCNF type: `f: Nat -> Fin ◾ -> ◾`.
      Since `(Fin n)` has dependency on `n`, we erase the `n` to get the
      type `(Fin ◾)`.
-/

open Meta in
/--
Convert a Lean type into a LCNF type used by the code generator.
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variant66faec7a6974d2ab29b302a06ceed44d5af1c40f009ac700a088eec6c1f8d0ae.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variant66faec7a6974d2ab29b302a06ceed44d5af1c40f009ac700a088eec6c1f8d0ae.lean#L61).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `50f0880b90c1ff68cda4e891e1a6e1f1490170db` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
