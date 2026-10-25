# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Conv.Variantbc1eb0318c1e4d167e561089e12eb8e8f84494cd07b4854883c839d3ccd78b5a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "18f28852cef840c810540b1de765d7de33d39a67",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Conv/Variantbc1eb0318c1e4d167e561089e12eb8e8f84494cd07b4854883c839d3ccd78b5a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Conv/Variantbc1eb0318c1e4d167e561089e12eb8e8f84494cd07b4854883c839d3ccd78b5a.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Conv/Variantbc1eb0318c1e4d167e561089e12eb8e8f84494cd07b4854883c839d3ccd78b5a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `18f28852cef840c810540b1de765d7de33d39a67`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Conv/Variantbc1eb0318c1e4d167e561089e12eb8e8f84494cd07b4854883c839d3ccd78b5a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Conv/Variantbc1eb0318c1e4d167e561089e12eb8e8f84494cd07b4854883c839d3ccd78b5a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.Widget.SelectPanelUtils` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.String.Defs` — import line 12; external provider; requires a separately pinned dependency.
- `Batteries.Tactic.Lint` — import line 13; external provider; requires a separately pinned dependency.
- `Batteries.Lean.Position` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [SolveReturn](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Conv/Variantbc1eb0318c1e4d167e561089e12eb8e8f84494cd07b4854883c839d3ccd78b5a.lean/declarations/solvereturn--40482179fc5f7fdd9bf98198.md) | 29 | `declaration-track:40482179fc5f7fdd9bf98198a10b77d589fc400458c08cf2237554e934eb58fb` |
| 2 | `def` | [solveLevel](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Conv/Variantbc1eb0318c1e4d167e561089e12eb8e8f84494cd07b4854883c839d3ccd78b5a.lean/declarations/solvelevel--410a7053006ee462b986da84.md) | 34 | `declaration-track:410a7053006ee462b986da84bdea19e6b3ac56e460752c8a624d058dfc46113e` |
| 3 | `def` | [insertEnter](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Conv/Variantbc1eb0318c1e4d167e561089e12eb8e8f84494cd07b4854883c839d3ccd78b5a.lean/declarations/insertenter--07ecd5f276f1d0de47d54f6a.md) | 97 | `declaration-track:07ecd5f276f1d0de47d54f6aacd1033f33040f194905240e3cb2052be0adf7c8` |
| 4 | `def` | [ConvSelectionPanel.rpc](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Conv/Variantbc1eb0318c1e4d167e561089e12eb8e8f84494cd07b4854883c839d3ccd78b5a.lean/declarations/convselectionpanel-rpc--0315524539437942f8908c35.md) | 131 | `declaration-track:0315524539437942f8908c3520645042e98980bd5037bddb257d1e4326ab3a6c` |
| 5 | `def` | [ConvSelectionPanel](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Conv/Variantbc1eb0318c1e4d167e561089e12eb8e8f84494cd07b4854883c839d3ccd78b5a.lean/declarations/convselectionpanel--4f1374c33a989d8f79ac3226.md) | 138 | `declaration-track:4f1374c33a989d8f79ac3226fbefb244de86c39848eea257fa4f896b6923d21e` |
| 6 | `elab` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Conv/Variantbc1eb0318c1e4d167e561089e12eb8e8f84494cd07b4854883c839d3ccd78b5a.lean/declarations/elab--3e2c8e96b33996d295ec409d.md) | 144 | `declaration-track:3e2c8e96b33996d295ec409d7fbe323fefb10b260512d276bb0ff43cc88b1a55` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
