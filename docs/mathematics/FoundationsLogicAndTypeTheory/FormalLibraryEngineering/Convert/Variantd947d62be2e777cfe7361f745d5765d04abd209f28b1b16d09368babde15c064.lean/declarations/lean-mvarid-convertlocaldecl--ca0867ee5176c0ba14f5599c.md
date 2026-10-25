# Lean.MVarId.convertLocalDecl

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5defc300bb6999eb59facf256c704cdefa611faecefdc7d46a36ca72298f4023",
  "kind": "def",
  "lexical_name": "Lean.MVarId.convertLocalDecl",
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
  "slug": "lean-mvarid-convertlocaldecl--ca0867ee5176c0ba14f5599c",
  "source": {
    "blob": "b35c65e59e9488a9feec82326159671aba98b03b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 228,
    "line": 164,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Convert/Variantd947d62be2e777cfe7361f745d5765d04abd209f28b1b16d09368babde15c064.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ca0867ee5176c0ba14f5599c1f1ba7101c816bc58ff4783c843eeadfb7833648",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Convert/Variantd947d62be2e777cfe7361f745d5765d04abd209f28b1b16d09368babde15c064.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5defc300bb6999eb59facf256c704cdefa611faecefdc7d46a36ca72298f4023`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 164–228.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
def Lean.MVarId.convertLocalDecl (g : MVarId) (fvarId : FVarId) (typeNew : Expr) (symm : Bool)
    (depth : Option Nat := none) (config : Congr!.Config := {})
    (patterns : List (TSyntax `rintroPat) := []) :
    MetaM (MVarId × List MVarId) := g.withContext do
  let typeOld ← fvarId.getType
  let v ← mkFreshExprMVar (← mkAppM ``Eq
    (if symm then #[typeNew, typeOld] else #[typeOld, typeNew]))
  let pf ← if symm then mkEqSymm v else pure v
  let res ← g.replaceLocalDecl fvarId typeNew pf
  let gs ← v.mvarId!.congrN! depth config patterns
  return (res.mvarId, gs)

namespace Mathlib.Tactic

/--
`convert e`, where the term `e` is inferred to have type `t`, replaces the main goal `⊢ t'` with new
goals for proving the equality `t' = t` using congruence. The goals are created like `congr!` would.
Like `refine e`, any holes (`?_` or `?x`) in `e` that are not solved by unification are converted
into new goals, using the hole's name, if any, as the goal case name.
Like `congr!`, `convert` introduces variables while applying congruence rules. These can be
pattern-matched, like `rintro` would, using the `with` keyword.

See also `convert_to t`, where `t` specifies the expected type, instead of a proof term of type `t`.
In other words, `convert_to t` works like `convert (?_ : t)`. Both tactics use the same options.

* `convert! e` uses default transparency, rather than reducible, when solving side goals, and
  it tries to apply congruence even if the two expressions do not have the same head constant.
* `convert ← e` creates equality goals in the opposite direction (with the goal type on the right).
* `convert e using n`, where `n` is a numeral, controls the depth with which congruence is
  applied. For example, if the main goal is `⊢ Prime (n + n + 1)` and `e : Prime (2 * n + 1)`, then
  `convert e using 2` results in one goal, `⊢ n + n = 2 * n`, and `convert e using 3` (or more)
  results in two (impossible) goals `⊢ HAdd.hAdd = HMul.hMul` and `⊢ n = 2`.
  By default, the depth is unlimited.
* `convert e with x ⟨y₁, y₂⟩ (z₁ | z₂)` names or pattern-matches the variables introduced by
  congruence rules, like `rintro x ⟨y₁, y₂⟩ (z₁ | z₂)` would.
* `convert (config := cfg) e` uses the configuration options in `cfg` to control the congruence
  rules (see `Congr!.Config`).

Examples:

```lean
example {n : ℕ} (e : Prime (2 * n + 1)) :
    Prime (n + n + 1) := by
  convert e
  -- One goal: ⊢ n + n = 2 * n
  ring

-- `convert` can fail where `exact` succeeds.
def p (n : ℕ) := True
example (h : p 0) : p 1 := by
  fail_if_success
    convert h -- fails, left-over goal 1 = 0
    done
  exact h -- succeeds

-- `convert with` names introduced variables.
example (p q : Nat → Prop) (h : ∀ ε > 0, p ε) :
    ∀ ε > 0, q ε := by
  convert h with ε hε
  -- Goal now looks like:
  -- hε : ε > 0
  -- ⊢ q ε ↔ p ε
  sorry
```
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Convert/Variantd947d62be2e777cfe7361f745d5765d04abd209f28b1b16d09368babde15c064.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Convert/Variantd947d62be2e777cfe7361f745d5765d04abd209f28b1b16d09368babde15c064.lean#L164).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b35c65e59e9488a9feec82326159671aba98b03b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
