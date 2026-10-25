# Anonymous elab_rules

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:27741e407b00076e5a0aaecbf2a6e8311b5b834c4da32f1080381d25adb8a83d",
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
  "slug": "elab-rules--f19cc4b956c9b99638bdfed6",
  "source": {
    "blob": "b35c65e59e9488a9feec82326159671aba98b03b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 293,
    "line": 256,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Convert/Variantd947d62be2e777cfe7361f745d5765d04abd209f28b1b16d09368babde15c064.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f19cc4b956c9b99638bdfed6b2883ceae613cbd418d59bf50630a0b33d5d22dd",
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

Occurrence: `declaration:27741e407b00076e5a0aaecbf2a6e8311b5b834c4da32f1080381d25adb8a83d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 256–293.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
elab_rules : tactic
| `(tactic| convert $[!%$expensive]? $cfg $[←%$sym]? $term $[using $n]? $[with $ps?*]?) =>
  withMainContext do
    let config ← Convert.elabConfig expensive.isSome cfg
    let patterns := (ps?.getD #[]).toList
    let expectedType ← mkFreshExprMVar (mkSort (← getLevel (← getMainTarget)))
    let (e, gs) ← elabTermForConvert term expectedType
    liftMetaTactic fun g ↦
      return (← g.convert e sym.isSome (n.map (·.getNat)) config patterns) ++ gs

/--
`convert_to t` on a goal `⊢ t'` changes the goal to `⊢ t` and adds new goals for proving the
equality `t' = t` using congruence. The goals are created like `congr!` would.
Any remaining congruence goals come before the main goal.
Like `refine e`, any holes (`?_` or `?x`) in `t` that are not solved by unification are converted
into new goals, using the hole's name, if any, as the goal case name.
Like `congr!`, `convert_to` introduces variables while applying congruence rules. These can be
pattern-matched, like `rintro` would, using the `with` keyword.

`convert e`, where `e` is a term of type `t`, uses `e` to close the new main goal. In other words,
`convert e` works like `convert_to t; refine e`. Both tactics use the same options.

* `convert_to! t` uses default transparency, rather than reducible, when solving side goals.
* `convert_to ty at h` changes the type of the local hypothesis `h` to `ty`. If later local
  hypotheses or the goal depend on `h`, then `convert_to t at h` may leave a copy of `h`.
* `convert_to ← t` creates equality goals in the opposite direction (with the original goal type on
  the right).
* `convert_to t using n`, where `n` is a positive numeral, controls the depth with which congruence
  is applied. For example, if the main goal is `⊢ Prime (n + n + 1)`,
  then `convert_to Prime (2 * n + 1) using 2` results in one goal, `⊢ n + n = 2 * n`, and
  `convert_to Prime (2 * n + 1) using 3` (or more) results in two (impossible) goals
  `⊢ HAdd.hAdd = HMul.hMul` and `⊢ n = 2`.
  The default value for `n` is 1.
* `convert_to t with x ⟨y₁, y₂⟩ (z₁ | z₂)` names or pattern-matches the variables introduced by
  congruence rules, like `rintro x ⟨y₁, y₂⟩ (z₁ | z₂)` would.
* `convert_to (config := cfg) t` uses the configuration options in `cfg` to control the congruence
  rules (see `Congr!.Config`).
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Convert/Variantd947d62be2e777cfe7361f745d5765d04abd209f28b1b16d09368babde15c064.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Convert/Variantd947d62be2e777cfe7361f745d5765d04abd209f28b1b16d09368babde15c064.lean#L256).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b35c65e59e9488a9feec82326159671aba98b03b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
