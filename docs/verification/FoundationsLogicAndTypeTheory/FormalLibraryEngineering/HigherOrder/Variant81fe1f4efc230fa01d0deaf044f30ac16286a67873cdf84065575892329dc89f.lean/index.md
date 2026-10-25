# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.HigherOrder.Variant81fe1f4efc230fa01d0deaf044f30ac16286a67873cdf84065575892329dc89f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "da7b5e9053bb3c10fe1c39cad2bc19521bf24b2e",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HigherOrder/Variant81fe1f4efc230fa01d0deaf044f30ac16286a67873cdf84065575892329dc89f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HigherOrder/Variant81fe1f4efc230fa01d0deaf044f30ac16286a67873cdf84065575892329dc89f.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HigherOrder/Variant81fe1f4efc230fa01d0deaf044f30ac16286a67873cdf84065575892329dc89f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `da7b5e9053bb3c10fe1c39cad2bc19521bf24b2e`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HigherOrder/Variant81fe1f4efc230fa01d0deaf044f30ac16286a67873cdf84065575892329dc89f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HigherOrder/Variant81fe1f4efc230fa01d0deaf044f30ac16286a67873cdf84065575892329dc89f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Elab.Term` — import line 11; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Apply` — import line 12; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Assumption` — import line 13; external provider; requires a separately pinned dependency.
- `Lean.Meta.MatchUtil` — import line 14; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Intro` — import line 15; external provider; requires a separately pinned dependency.
- `Lean.Elab.DeclarationRange` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Attr.Register` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HigherOrder/Variant81fe1f4efc230fa01d0deaf044f30ac16286a67873cdf84065575892329dc89f.lean/declarations/syntax--9a9cdaaf79ecaae21599083e.md) | 34 | `declaration-track:9a9cdaaf79ecaae21599083ef68519b4f586a3ed40fff5e60a90a95d83947ab2` |
| 2 | `def` | [mkComp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HigherOrder/Variant81fe1f4efc230fa01d0deaf044f30ac16286a67873cdf84065575892329dc89f.lean/declarations/mkcomp--1925324ca670ca0731697307.md) | 42 | `declaration-track:1925324ca670ca073169730789e3a372d64e87a53eb3a6abdec228ff80ea3af5` |
| 3 | `def` | [mkHigherOrderType](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HigherOrder/Variant81fe1f4efc230fa01d0deaf044f30ac16286a67873cdf84065575892329dc89f.lean/declarations/mkhigherordertype--c7bd3a82319a99d89c9398c5.md) | 61 | `declaration-track:c7bd3a82319a99d89c9398c5e6606a2616854d8f6ec43f795e91c75325755f95` |
| 4 | `def` | [higherOrderGetParam](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HigherOrder/Variant81fe1f4efc230fa01d0deaf044f30ac16286a67873cdf84065575892329dc89f.lean/declarations/higherordergetparam--2534308ae9d5371990de67d4.md) | 76 | `declaration-track:2534308ae9d5371990de67d46e0dfbe3c8edf6643d1eff10826a5d09e4c38130` |
| 5 | `initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HigherOrder/Variant81fe1f4efc230fa01d0deaf044f30ac16286a67873cdf84065575892329dc89f.lean/declarations/initialize--49494523bd78b8888082c5de.md) | 119 | `declaration-track:49494523bd78b8888082c5de2766ba0e46f059d7fd194de45fec386681ca03de` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
