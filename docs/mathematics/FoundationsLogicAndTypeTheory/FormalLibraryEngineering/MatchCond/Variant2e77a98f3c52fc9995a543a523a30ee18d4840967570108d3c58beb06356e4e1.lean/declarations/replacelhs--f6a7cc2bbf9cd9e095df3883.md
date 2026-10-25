# replaceLhs?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:194625abdebd820c931f0516ce30a32caa19456065efb63cbd1a46342435c137",
  "kind": "def",
  "lexical_name": "replaceLhs?",
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
  "slug": "replacelhs--f6a7cc2bbf9cd9e095df3883",
  "source": {
    "blob": "2f1dee0c977f65769276c38be385990525ad6f92",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 168,
    "line": 115,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MatchCond/Variant2e77a98f3c52fc9995a543a523a30ee18d4840967570108d3c58beb06356e4e1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f6a7cc2bbf9cd9e095df3883095e7f8ce88453bf3fe090f0b3f625ffca785f14",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MatchCond/Variant2e77a98f3c52fc9995a543a523a30ee18d4840967570108d3c58beb06356e4e1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:194625abdebd820c931f0516ce30a32caa19456065efb63cbd1a46342435c137`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 115–168.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
private def replaceLhs? (e : Expr) (lhsNew : Expr) (ty? : Option Expr) : Option Expr :=
  match_expr e with
  | f@Eq α lhs rhs => if lhs.hasLooseBVars then none else some (mkApp3 f α lhsNew rhs)
  | f@HEq _ lhs β rhs => if lhs.hasLooseBVars then none else some (mkApp4 f ty?.get! lhsNew β rhs)
  | _ => none

/--
Given `e` a `match`-expression condition, returns the left-hand side
of the ground equations, **and** function application that abstracts the left-hand sides.
As an example, assume we have a `match`-expression condition `C₁` of the form
```
Grind.MatchCond (∀ y₁ y₂ y₃, t = .mk₁ y₁ → s = .mk₂ y₂ y₃ → False)
```
then the result returned by this function is
```
(#[t, s], (fun x₁ x₂ => (∀ y₁ y₂ y₃, x₁ = .mk₁ y₁ → x₂ = .mk₂ y₂ y₃ → False)) t s)
```
Note that the returned expression is definitionally equal to `C₁`.
We use this expression to detect whether two different `match`-expression conditions are
congruent.
For example, suppose we also have the `match`-expression `C₂` of the form
```
Grind.MatchCond (∀ y₁ y₂ y₃, a = .mk₁ y₁ → b = .mk₂ y₂ y₃ → False)
```
This function would return
```
(#[a, b], (fun x₁ x₂ => (∀ y₁ y₂ y₃, x₁ = .mk₁ y₁ → x₂ = .mk₂ y₂ y₃ → False)) a b)
```
Note that the lambda abstraction is identical to the first one. Let's call it `l`.
Thus, we can write the two pairs above as
- `(#[t, s], l t s)`
- `(#[a, b], l a b)`
Moreover, `C₁` is definitionally equal to `l t s`, and `C₂` is definitionally equal to `l a b`.
Then, if `grind` infers that `t = a` and `s = b`, it will detect that `l t s` and `l a b` are
equal by congruence, and consequently `C₁` is equal to `C₂`.

Gruesome details for heterogeneous equalities.

When pattern matching on indexing families, the generated conditions often use heterogeneous equalities. Here is an example:
```
(∀ (x : Vec α 0), n = 0 → as ≍ Vec.nil → bs ≍ x → False)
```
In this case, it is not sufficient to abstract the left-hand side. We also have
to abstract its type. The following is produced in this case.
```
(#[n, Vec α n, as, Vec α n, bs],
 (fun (x_0 : Nat) (ty_1 : Type u_1) (x_1 : ty_1) (ty_2 : Type u_1) (x_2 : ty_2) =>
    ∀ (x : Vec α 0), x_0 = 0 → x_1 ≍ Vec.nil → x_2 ≍ x → False)
 n (Vec α n) as (Vec α n) bs)
```
The example makes it clear why this is needed, `as` and `bs` depend on `n`.
Note that we can abstract the type without introducing type errors because
heterogeneous equality is used for `as` and `bs`.
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MatchCond/Variant2e77a98f3c52fc9995a543a523a30ee18d4840967570108d3c58beb06356e4e1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MatchCond/Variant2e77a98f3c52fc9995a543a523a30ee18d4840967570108d3c58beb06356e4e1.lean#L115).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2f1dee0c977f65769276c38be385990525ad6f92` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
