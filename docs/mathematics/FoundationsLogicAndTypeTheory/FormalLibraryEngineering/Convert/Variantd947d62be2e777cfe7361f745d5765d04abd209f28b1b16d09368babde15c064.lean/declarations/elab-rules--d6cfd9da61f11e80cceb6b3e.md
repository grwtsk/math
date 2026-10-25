# Anonymous elab_rules

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a1adb9bf11e2c53a15c78f06a38446bad41ab4183b5cd285a8564758c48ea9dc",
  "kind": "elab_rules",
  "lexical_name": null,
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
  "slug": "elab-rules--d6cfd9da61f11e80cceb6b3e",
  "source": {
    "blob": "b35c65e59e9488a9feec82326159671aba98b03b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 349,
    "line": 305,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Convert/Variantd947d62be2e777cfe7361f745d5765d04abd209f28b1b16d09368babde15c064.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d6cfd9da61f11e80cceb6b3e01a07cfb910200218f0a6b6668da91f9b8955eb6",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Convert/Variantd947d62be2e777cfe7361f745d5765d04abd209f28b1b16d09368babde15c064.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `elab_rules` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a1adb9bf11e2c53a15c78f06a38446bad41ab4183b5cd285a8564758c48ea9dc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 305–349.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
elab_rules : tactic
| `(tactic| convert_to $[!%$expensive]? $cfg $[←%$sym]? $newType $[using $n]?
    $[with $ps?*]? $[$loc?:location]?) => do
  let n : ℕ := n |>.map (·.getNat) |>.getD 1
  let config ← Convert.elabConfig expensive.isSome cfg
  let patterns := (ps?.getD #[]).toList
  withLocation (expandOptLocation (mkOptionalNode loc?))
    (atLocal := fun fvarId ↦ do
      let (e, gs) ← elabTermForConvert newType (← inferType (← fvarId.getType))
      liftMetaTactic fun g ↦ do
        let (g', gs') ← g.convertLocalDecl fvarId e sym.isSome n config patterns
        return (gs' ++ (g' :: gs)))
    (atTarget := do
      let expectedType ← mkFreshExprMVar (mkSort (← getLevel (← getMainTarget)))
      let (e, gs) ← elabTermForConvert (← `((id ?_ : $newType))) expectedType
      liftMetaTactic fun g ↦
        return (← g.convert e sym.isSome n config patterns) ++ gs)
    (failed := fun _ ↦ throwError "convert_to failed")

/--
`ac_change t` on a goal `⊢ t'` changes the goal to `⊢ t` and adds new goals for proving the equality
`t' = t` using congruence, then tries proving these goals by associativity and commutativity. The
goals are created like `congr!` would.
In other words, `ac_change t` is like `convert_to t` followed by `ac_refl`.

Like `refine e`, any holes (`?_` or `?x`) in `t` that are not solved by unification are converted
into new goals, using the hole's name, if any, as the goal case name.
Like `congr!`, `convert_to` introduces variables while applying congruence rules. These can be
pattern-matched, like `rintro` would, using the `with` keyword.

* `ac_change! t` uses default transparency, rather than reducible, when solving side goals.
* `ac_change t using n`, where `n` is a positive numeral, controls the depth with which congruence
  is applied. For example, if the main goal is `⊢ Prime ((a * b + 1) + c)`,
  then `ac_change Prime ((1 + a * b) + c) using 2` solves the side goals, and
  `ac_change Prime ((1 + a * b) + c) using 3` (or more) results in two (impossible) goals
  `⊢ 1 = a * b` and `⊢ a * b = 1`.
  The default value for `n` is 1.

Example:
```lean
example (a b c d e f g N : ℕ) : (a + b) + (c + d) + (e + f) + g ≤ N := by
  ac_change a + d + e + f + c + g + b ≤ _
  -- ⊢ a + d + e + f + c + g + b ≤ N
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

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Convert/Variantd947d62be2e777cfe7361f745d5765d04abd209f28b1b16d09368babde15c064.lean#L305).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b35c65e59e9488a9feec82326159671aba98b03b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
