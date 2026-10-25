# Lean.MVarId.congrN!

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:60896b9e7be08fd151518bddf911f2851f92a4b295498c2c422f3904163d8053",
  "kind": "def",
  "lexical_name": "Lean.MVarId.congrN!",
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
  "slug": "lean-mvarid-congrn--a28824b46cac137db5d15f1b",
  "source": {
    "blob": "bec234e045917543be9f273d1029e9a940519432",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 772,
    "line": 717,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrExclamation/Variant2a14413b4a0ceb16a99b37a600b0347b4791c6987ebca538f2ff03ce3b59fe73.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a28824b46cac137db5d15f1b2f9d93c3a69de4fa9144cba6d7bb873a22f59bbc",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrExclamation/Variant2a14413b4a0ceb16a99b37a600b0347b4791c6987ebca538f2ff03ce3b59fe73.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:60896b9e7be08fd151518bddf911f2851f92a4b295498c2c422f3904163d8053`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 717–772.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Lean.MVarId.congrN! (mvarId : MVarId)
    (depth? : Option Nat := none) (config : Congr!.Config := {})
    (patterns : List (TSyntax `rintroPat) := []) :
    MetaM (List MVarId) := do
  let ty ← withReducible <| mvarId.getType'
  -- A reasonably large yet practically bounded default recursion depth.
  let defaultDepth := min 1000000 (8 * (1 + ty.approxDepth.toNat))
  let depth := depth?.getD defaultDepth
  let (_, s) ← go depth depth mvarId |>.run {goals := #[], patterns := patterns}
  return s.goals.toList
where
  post (mvarId : MVarId) : CongrMetaM Unit := do
    for mvarId in ← mvarId.introsClean do
      if let some mvarId ← mvarId.postCongr! config then
        modify (fun s => {s with goals := s.goals.push mvarId})
      else
        trace[congr!] "Dispatched goal by post-processing step."
  go (depth : Nat) (n : Nat) (mvarId : MVarId) : CongrMetaM Unit := do
    for mvarId in ← mvarId.introsClean do
      if let some mvarId ← withTransparency config.preTransparency <|
                              mvarId.preCongr! config.closePre then
        match n with
          | 0 =>
            trace[congr!] "At level {depth - n}, doing post-processing. {mvarId}"
            post mvarId
          | n + 1 =>
            trace[congr!] "At level {depth - n}, trying congrCore!. {mvarId}"
            if let some mvarIds ← mvarId.congrCore! config then
              mvarIds.forM (go depth n)
            else
              post mvarId

namespace Congr!

declare_config_elab elabConfig Config

/--
`congr!` tries to prove the main goal by repeatedly applying congruence rules. For example, on a
goal of the form `⊢ f a1 a2 ... = f b1 b2 ...`, `congr!` will make new goals `⊢ a1 = b1`,
`⊢ a2 = b2`, ...

`congr!` is a more powerful version of the `congr` tactic that uses congruence lemmas (tagged with
`@[congr]`), reflexivity rules (tagged with `@[refl]`) and proof discharging strategies. The full
list of congruence proof strategies is documented in the module `Mathlib.Tactic.CongrExclamation`.
The `congr!` tactic is used by the `convert` and `convert_to` tactics.

* `congr! n`, where `n` is a positive numeral, controls the depth with which congruence is
  applied. For example, if the main goal is `n + n + 1 = 2 * n + 1`, then `congr! 1` results in one
  goal, `⊢ n + n = 2 * n`, and `congr! 2` (or more) results in two (impossible) goals
  `⊢ HAdd.hAdd = HMul.hMul` and `⊢ n = 2`.
  By default, the depth is unlimited.
* `congr! with x ⟨y₁, y₂⟩ (z₁ | z₂)` names or pattern-matches the variables introduced by
  congruence rules, like `rintro x ⟨y₁, y₂⟩ (z₁ | z₂)` would.
* `congr! (config := cfg)` uses the configuration options in `cfg` to control the congruence
  rules (see `Congr!.Config`).
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrExclamation/Variant2a14413b4a0ceb16a99b37a600b0347b4791c6987ebca538f2ff03ce3b59fe73.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrExclamation/Variant2a14413b4a0ceb16a99b37a600b0347b4791c6987ebca538f2ff03ce3b59fe73.lean#L717).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bec234e045917543be9f273d1029e9a940519432` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
