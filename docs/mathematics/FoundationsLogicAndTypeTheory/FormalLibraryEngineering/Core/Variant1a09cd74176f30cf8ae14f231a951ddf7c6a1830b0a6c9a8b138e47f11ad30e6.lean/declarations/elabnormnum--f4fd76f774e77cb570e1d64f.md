# elabNormNum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:21f42c9d05eab299431bba99f4e7185eb1318aaf6f7bd7bb255bdcc660780b48",
  "kind": "def",
  "lexical_name": "elabNormNum",
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
  "slug": "elabnormnum--f4fd76f774e77cb570e1d64f",
  "source": {
    "blob": "451946edc44216b6277edaa771118ff15de9799e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 312,
    "line": 273,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant1a09cd74176f30cf8ae14f231a951ddf7c6a1830b0a6c9a8b138e47f11ad30e6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f4fd76f774e77cb570e1d64fe6eb941c5717848f6efd3f7727b6334476cac1a0",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant1a09cd74176f30cf8ae14f231a951ddf7c6a1830b0a6c9a8b138e47f11ad30e6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:21f42c9d05eab299431bba99f4e7185eb1318aaf6f7bd7bb255bdcc660780b48`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 273–312.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
def elabNormNum (cfg args loc : Syntax) (simpOnly := false) (useSimp := true) :
    TacticM Unit := withMainContext do
  let (ctx, simprocs) ← getSimpContext cfg args (!useSimp || simpOnly)
  let loc := expandOptLocation loc
  transformAtNondepPropLocation (fun e ctx ↦ deriveSimp ctx simprocs useSimp e) "norm_num" loc
    (ifUnchanged := .silent) (mayCloseGoalFromHyp := true) ctx

end Meta.NormNum

namespace Tactic
open Lean.Parser.Tactic Meta.NormNum

/--
`norm_num` normalizes numerical expressions in the goal. By default, it supports the operations
`+` `-` `*` `/` `⁻¹` `^` and `%` over types with (at least) an `AddMonoidWithOne` instance, such as
`ℕ`, `ℤ`, `ℚ`, `ℝ`, `ℂ`. In addition to evaluating numerical expressions, `norm_num` will use `simp`
to simplify the goal. If the goal has the form `A = B`, `A ≠ B`, `A < B` or `A ≤ B`, where `A` and
`B` are numerical expressions, `norm_num` will try to close it. It also has a relatively simple
primality prover (available if you import `Mathlib.Tactic.NormNum.Prime`).

This tactic is extensible. Extensions can allow `norm_num` to evaluate more kinds of expressions, or
to prove more kinds of propositions (such as, primality of natural numbers). See the `@[norm_num]`
attribute for further information on extending `norm_num`.

* `norm_num at l` normalizes at location(s) `l`.
* `norm_num [h1, ...]` adds the arguments `h1, ...` to the `simp` set in addition to the default
  `simp` set. All options for `simp` arguments are supported, in particular `←`, `↑` and `↓`.
* `norm_num only` does not use the default `simp` set for simplification. `norm_num only [h1, ...]`
  uses only the arguments `h1, ...` in addition to the routines tagged `@[norm_num]`.
  `norm_num only` still performs post-processing steps, like `simp only`, use `norm_num1` if you
  exclusively want to normalize numerical expressions.
* `norm_num (config := cfg)` uses `cfg` as configuration for `simp` calls (see the `simp` tactic for
  further details).

Examples:
```lean
example : 43 ≤ 74 + (33 : ℤ) := by norm_num
example : ¬ (7-2)/(2*3) ≥ (1:ℝ) + 2/(3^2) := by norm_num
```
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant1a09cd74176f30cf8ae14f231a951ddf7c6a1830b0a6c9a8b138e47f11ad30e6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant1a09cd74176f30cf8ae14f231a951ddf7c6a1830b0a6c9a8b138e47f11ad30e6.lean#L273).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `451946edc44216b6277edaa771118ff15de9799e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
