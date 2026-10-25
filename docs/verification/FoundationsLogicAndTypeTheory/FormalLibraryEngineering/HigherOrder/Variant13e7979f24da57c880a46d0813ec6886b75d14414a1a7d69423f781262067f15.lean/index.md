# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.HigherOrder.Variant13e7979f24da57c880a46d0813ec6886b75d14414a1a7d69423f781262067f15

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "938503856afae6ad7fca14a7abdf16d731604345",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HigherOrder/Variant13e7979f24da57c880a46d0813ec6886b75d14414a1a7d69423f781262067f15.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HigherOrder/Variant13e7979f24da57c880a46d0813ec6886b75d14414a1a7d69423f781262067f15.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HigherOrder/Variant13e7979f24da57c880a46d0813ec6886b75d14414a1a7d69423f781262067f15.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `938503856afae6ad7fca14a7abdf16d731604345`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HigherOrder/Variant13e7979f24da57c880a46d0813ec6886b75d14414a1a7d69423f781262067f15.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HigherOrder/Variant13e7979f24da57c880a46d0813ec6886b75d14414a1a7d69423f781262067f15.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Elab.Term` — import line 6; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Apply` — import line 7; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Assumption` — import line 8; external provider; requires a separately pinned dependency.
- `Lean.Meta.MatchUtil` — import line 9; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Intro` — import line 10; external provider; requires a separately pinned dependency.
- `Lean.Elab.DeclarationRange` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Attr.Register` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HigherOrder/Variant13e7979f24da57c880a46d0813ec6886b75d14414a1a7d69423f781262067f15.lean/declarations/syntax--c451a3db50ce7a62156cd33a.md) | 26 | `declaration-track:c451a3db50ce7a62156cd33a874cd528a1bb1d3ecb596f49f51f9e5b0d9aadb2` |
| 2 | `def` | [mkComp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HigherOrder/Variant13e7979f24da57c880a46d0813ec6886b75d14414a1a7d69423f781262067f15.lean/declarations/mkcomp--39f54c0b314c84118597195c.md) | 34 | `declaration-track:39f54c0b314c84118597195c4ece652fc4e42eba7b4f9dc6db758f8bbc4bbbf4` |
| 3 | `def` | [mkHigherOrderType](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HigherOrder/Variant13e7979f24da57c880a46d0813ec6886b75d14414a1a7d69423f781262067f15.lean/declarations/mkhigherordertype--6d340da6a020acf36fda466d.md) | 53 | `declaration-track:6d340da6a020acf36fda466dcdc668734dbef56e7e961001072f966697e2f6a0` |
| 4 | `def` | [higherOrderGetParam](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HigherOrder/Variant13e7979f24da57c880a46d0813ec6886b75d14414a1a7d69423f781262067f15.lean/declarations/higherordergetparam--e3ce8f06887309c6c6b270b0.md) | 68 | `declaration-track:e3ce8f06887309c6c6b270b06fbe7fc504d76c60087c893fe1564a6a3873b85e` |
| 5 | `initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HigherOrder/Variant13e7979f24da57c880a46d0813ec6886b75d14414a1a7d69423f781262067f15.lean/declarations/initialize--2ce65155fbcbfcd7ca1bf88f.md) | 111 | `declaration-track:2ce65155fbcbfcd7ca1bf88f764f0dc52417549d40c7ccb28ec2f2a6cb5ed10e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
