# congrHash

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:35b554f709162b599a1330357cce9d6e1edba5b55b759edbd1026bd7761904e7",
  "kind": "def",
  "lexical_name": "congrHash",
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
  "slug": "congrhash--02e67573b3886ff1f1e42dea",
  "source": {
    "blob": "7611e81d5fd7ed4d854ff760fa7d113b4fc42c6f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 635,
    "line": 585,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Types/Varianta6693ff328279b616d189b8258cb48230c3e3672279f4b58c7c8fe8692b17c5f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:02e67573b3886ff1f1e42deae903afdc0fee116165f7fcb5641b7e0ad5e0c3d9",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Types/Varianta6693ff328279b616d189b8258cb48230c3e3672279f4b58c7c8fe8692b17c5f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:35b554f709162b599a1330357cce9d6e1edba5b55b759edbd1026bd7761904e7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 585–635.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def congrHash (enodes : ENodeMap) (e : Expr) : UInt64 :=
  if let .forallE _ d b _ := e then
    mixHash (hashRoot enodes d) (hashRoot enodes b)
  else match_expr e with
  | Grind.nestedProof p _ => hashRoot enodes p
  | Grind.nestedDecidable p _ => mixHash 13 (hashRoot enodes p)
  | Eq _ lhs rhs => goEq lhs rhs
  | _ =>
    match e with
    | .app f a =>
      if useFunCC' enodes e then
        mixHash (hashRoot enodes f) (hashRoot enodes a)
      else
        go f (hashRoot enodes a)
    | _ => hashRoot enodes e
where
  goEq (lhs rhs : Expr) : UInt64 :=
    let h₁ := hashRoot enodes lhs
    let h₂ := hashRoot enodes rhs
    if h₁ > h₂ then mixHash h₂ h₁ else mixHash h₁ h₂
  go (e : Expr) (r : UInt64) : UInt64 :=
    match e with
    | .app f a => go f (mixHash r (hashRoot enodes a))
    | _ => mixHash r (hashRoot enodes e)

/-!
**Note**: `congrHash` and `isCongruent` must satisfy the `BEq`/`Hashable` invariant for
`PHashSet`: if `isCongruent e₁ e₂` returns `true`, then `congrHash e₁ == congrHash e₂`.

When `funCC = true`, `congrHash` hashes only the immediate function and argument:
`mixHash (hashRoot f) (hashRoot a)`. When `funCC = false`, it recursively decomposes all
application layers. These produce fundamentally different hash values, so `isCongruent` must
require matching `funCC` flags. Here is the scenario that leads to a nondeterministic crash
if mismatched flags are allowed:

1. `e₁` (with `funCC = true`) is inserted into the congruence table.
2. `e₂` (with `funCC = false`) is inserted. Its hash is computed using the non-`funCC` path.
3. Because `hashRoot` uses pointer addresses (`ptrAddrUnsafe`), the two different hash
   computations can accidentally collide, placing `e₂` in the same bucket as `e₁`.
4. `isCongruent e₁ e₂` is called. If it used only `e₁`'s `funCC` flag (the old behavior),
   the `funCC` comparison path could declare them congruent even when they have different
   numbers of top-level arguments.
5. `addCongrTable` calls `pushEqHEq e₂ e₁ congrPlaceholderProof`, where `e₂` is the new
   node with `funCC = false`.
6. During proof reconstruction, `mkCongrProof e₂ e₁` checks `useFunCC e₂ = false`, enters
   the standard (non-`funCC`) proof path, and hits `assert! rhs.getAppNumArgs == numArgs`
   because `e₁` and `e₂` have different argument counts.

This was observed as a nondeterministic crash in Mathlib (e.g., at `Analysis/ODE/PicardLindelof.lean`).
-/
/-- Returns `true` if `e₁` and `e₂` are congruent modulo the equivalence classes in `enodes`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Types/Varianta6693ff328279b616d189b8258cb48230c3e3672279f4b58c7c8fe8692b17c5f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Types/Varianta6693ff328279b616d189b8258cb48230c3e3672279f4b58c7c8fe8692b17c5f.lean#L585).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7611e81d5fd7ed4d854ff760fa7d113b4fc42c6f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
