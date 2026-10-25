# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Theorems.Variantcce1f8b2bccc27045fa8813f882bcd1185a1250c51cd4a4b746155d70343a904

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7165bc5338a6e29e7ac57157e95249b188b51851",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Theorems/Variantcce1f8b2bccc27045fa8813f882bcd1185a1250c51cd4a4b746155d70343a904.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Theorems/Variantcce1f8b2bccc27045fa8813f882bcd1185a1250c51cd4a4b746155d70343a904.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Theorems/Variantcce1f8b2bccc27045fa8813f882bcd1185a1250c51cd4a4b746155d70343a904.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7165bc5338a6e29e7ac57157e95249b188b51851`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Theorems/Variantcce1f8b2bccc27045fa8813f882bcd1185a1250c51cd4a4b746155d70343a904.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Theorems/Variantcce1f8b2bccc27045fa8813f882bcd1185a1250c51cd4a4b746155d70343a904.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.FunProp.Decl` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FunProp.Types` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FunProp.FunctionData` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Lean.Meta.RefinedDiscrTree` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Lean.Meta.RefinedDiscrTree.Lookup` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [LambdaTheoremArgs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Theorems/Variantcce1f8b2bccc27045fa8813f882bcd1185a1250c51cd4a4b746155d70343a904.lean/declarations/lambdatheoremargs--14f2f4ca3cb7e034ed904d92.md) | 32 | `declaration-track:14f2f4ca3cb7e034ed904d928c9e8e7abeef8eb8be3a1c86cb22e68c73ccbc9d` |
| 2 | `inductive` | [LambdaTheoremType](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Theorems/Variantcce1f8b2bccc27045fa8813f882bcd1185a1250c51cd4a4b746155d70343a904.lean/declarations/lambdatheoremtype--2a62544a8080c7f109a2cf4f.md) | 49 | `declaration-track:2a62544a8080c7f109a2cf4fa260b26253bf38fa19f21a3e73b1c5f1ecc23ced` |
| 3 | `def` | [LambdaTheoremArgs.type](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Theorems/Variantcce1f8b2bccc27045fa8813f882bcd1185a1250c51cd4a4b746155d70343a904.lean/declarations/lambdatheoremargs-type--74dc368e1a1e70b4805721dd.md) | 63 | `declaration-track:74dc368e1a1e70b4805721dda976042b27efed672476bdfa35f1838002a1a63b` |
| 4 | `def` | [detectLambdaTheoremArgs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Theorems/Variantcce1f8b2bccc27045fa8813f882bcd1185a1250c51cd4a4b746155d70343a904.lean/declarations/detectlambdatheoremargs--746b8842ce6eaf94895da649.md) | 72 | `declaration-track:746b8842ce6eaf94895da64900c0cc4132902d07d11139a569b3e61c83631388` |
| 5 | `structure` | [LambdaTheorem](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Theorems/Variantcce1f8b2bccc27045fa8813f882bcd1185a1250c51cd4a4b746155d70343a904.lean/declarations/lambdatheorem--ae01787388509d553b447739.md) | 97 | `declaration-track:ae01787388509d553b4477397155e5ee90b7089a9492a5fd926f76eef83aa0fd` |
| 6 | `structure` | [LambdaTheorems](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Theorems/Variantcce1f8b2bccc27045fa8813f882bcd1185a1250c51cd4a4b746155d70343a904.lean/declarations/lambdatheorems--51f45f0f3f3f933f698190f6.md) | 107 | `declaration-track:51f45f0f3f3f933f698190f6a796c1c7dd7dda758cd8410fdf56eca856a51335` |
| 7 | `def` | [LambdaTheorem.getProof](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Theorems/Variantcce1f8b2bccc27045fa8813f882bcd1185a1250c51cd4a4b746155d70343a904.lean/declarations/lambdatheorem-getproof--34dd3733d3d2d541c47e10be.md) | 114 | `declaration-track:34dd3733d3d2d541c47e10be42eb552c701bfba45998d7fe5e8b46be0c3a699a` |
| 8 | `abbrev` | [LambdaTheoremsExt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Theorems/Variantcce1f8b2bccc27045fa8813f882bcd1185a1250c51cd4a4b746155d70343a904.lean/declarations/lambdatheoremsext--33ca74e73b560d69ffbefb6e.md) | 118 | `declaration-track:33ca74e73b560d69ffbefb6ea65119fc0791da0611a0d62d306337bb4ef88702` |
| 9 | `initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Theorems/Variantcce1f8b2bccc27045fa8813f882bcd1185a1250c51cd4a4b746155d70343a904.lean/declarations/initialize--a1b938363282dd7ce2612fa2.md) | 121 | `declaration-track:a1b938363282dd7ce2612fa24a7ea105571d8db9f6a7fb08278c2fdfeb1893a5` |
| 10 | `def` | [getLambdaTheorems](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Theorems/Variantcce1f8b2bccc27045fa8813f882bcd1185a1250c51cd4a4b746155d70343a904.lean/declarations/getlambdatheorems--88aab81337125d590f70e7cb.md) | 132 | `declaration-track:88aab81337125d590f70e7cbcacbef0b4b82c5eb2a1ae60a393f92f975d77843` |
| 11 | `inductive` | [TheoremForm](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Theorems/Variantcce1f8b2bccc27045fa8813f882bcd1185a1250c51cd4a4b746155d70343a904.lean/declarations/theoremform--a49abfced5f5fed634561c77.md) | 151 | `declaration-track:a49abfced5f5fed634561c770e28a705e865d86d9ff0db5af65cc8b5dde7256c` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Theorems/Variantcce1f8b2bccc27045fa8813f882bcd1185a1250c51cd4a4b746155d70343a904.lean/declarations/instance--0244e985d7a4e36b5bf16ae6.md) | 156 | `declaration-track:0244e985d7a4e36b5bf16ae62b793e9f719ccf3ae3e07c03400d7f91949f739f` |
| 13 | `structure` | [FunctionTheorem](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Theorems/Variantcce1f8b2bccc27045fa8813f882bcd1185a1250c51cd4a4b746155d70343a904.lean/declarations/functiontheorem--8303171e1c01fcd59b3579ac.md) | 160 | `declaration-track:8303171e1c01fcd59b3579ac14f83527b39dbc1154ab449f9a4b2ead9bd8636b` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Theorems/Variantcce1f8b2bccc27045fa8813f882bcd1185a1250c51cd4a4b746155d70343a904.lean/declarations/instance--b356c4f78f998c7e29106c69.md) | 177 | `declaration-track:b356c4f78f998c7e29106c69523aa3aba76999a0c576c812739e9fe988cf426d` |
| 15 | `structure` | [FunctionTheorems](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Theorems/Variantcce1f8b2bccc27045fa8813f882bcd1185a1250c51cd4a4b746155d70343a904.lean/declarations/functiontheorems--b90c590d84e991404d473e0a.md) | 181 | `declaration-track:b90c590d84e991404d473e0a111fb6cab442ee217ff1eda39704a42ecaa9bc85` |
| 16 | `def` | [FunctionTheorem.getProof](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Theorems/Variantcce1f8b2bccc27045fa8813f882bcd1185a1250c51cd4a4b746155d70343a904.lean/declarations/functiontheorem-getproof--82235641d79777251540a3c6.md) | 189 | `declaration-track:82235641d79777251540a3c66e882ba9ec4adcadc072ff19b705d8fea68ba4d0` |
| 17 | `abbrev` | [FunctionTheoremsExt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Theorems/Variantcce1f8b2bccc27045fa8813f882bcd1185a1250c51cd4a4b746155d70343a904.lean/declarations/functiontheoremsext--6a4420b37915bf018b29a341.md) | 196 | `declaration-track:6a4420b37915bf018b29a341a08a14c02556abb32c9f61f953fe1181a0496840` |
| 18 | `initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Theorems/Variantcce1f8b2bccc27045fa8813f882bcd1185a1250c51cd4a4b746155d70343a904.lean/declarations/initialize--2bf03732e671e3ce364711ec.md) | 199 | `declaration-track:2bf03732e671e3ce364711ec74a6a6a49b472e5f43849788b86814abd4367d38` |
| 19 | `def` | [getTheoremsForFunction](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Theorems/Variantcce1f8b2bccc27045fa8813f882bcd1185a1250c51cd4a4b746155d70343a904.lean/declarations/gettheoremsforfunction--132b366f6bde1c0f8dd9a3f8.md) | 215 | `declaration-track:132b366f6bde1c0f8dd9a3f82480bda578e2b895ce678a6c90ebe101e48c9768` |
| 20 | `structure` | [GeneralTheorem](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Theorems/Variantcce1f8b2bccc27045fa8813f882bcd1185a1250c51cd4a4b746155d70343a904.lean/declarations/generaltheorem--f3e99939f0b637836608eeae.md) | 224 | `declaration-track:f3e99939f0b637836608eeaef33fc5f8a2ba6ebb802c9b29a0c7251c7feac8dd` |
| 21 | `def` | [GeneralTheorem.getProof](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Theorems/Variantcce1f8b2bccc27045fa8813f882bcd1185a1250c51cd4a4b746155d70343a904.lean/declarations/generaltheorem-getproof--fa6532fc2bdcc36b79715081.md) | 236 | `declaration-track:fa6532fc2bdcc36b79715081c6ab3fbd0b6b0b40cc745b4d4e2cc950b9a0ab28` |
| 22 | `structure` | [GeneralTheorems](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Theorems/Variantcce1f8b2bccc27045fa8813f882bcd1185a1250c51cd4a4b746155d70343a904.lean/declarations/generaltheorems--efb12098dc3f723dadd41fad.md) | 240 | `declaration-track:efb12098dc3f723dadd41fad4ae60903e8e09302ca82ab54cc8607b1cb69396f` |
| 23 | `abbrev` | [GeneralTheoremsExt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Theorems/Variantcce1f8b2bccc27045fa8813f882bcd1185a1250c51cd4a4b746155d70343a904.lean/declarations/generaltheoremsext--c11961ffd4e190d676ccec7f.md) | 246 | `declaration-track:c11961ffd4e190d676ccec7f6db36dff7193982674815d192499ad1d58c503c8` |
| 24 | `initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Theorems/Variantcce1f8b2bccc27045fa8813f882bcd1185a1250c51cd4a4b746155d70343a904.lean/declarations/initialize--e1f920871c1eb109f496fac6.md) | 249 | `declaration-track:e1f920871c1eb109f496fac621588225795ec7fd4e5ae15118f8eedd7f920c94` |
| 25 | `def` | [getTransitionTheorems](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Theorems/Variantcce1f8b2bccc27045fa8813f882bcd1185a1250c51cd4a4b746155d70343a904.lean/declarations/gettransitiontheorems--0a419cbdb8d77ba110f46ec5.md) | 261 | `declaration-track:0a419cbdb8d77ba110f46ec5716675eed0189072b1824929917437438825d068` |
| 26 | `initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Theorems/Variantcce1f8b2bccc27045fa8813f882bcd1185a1250c51cd4a4b746155d70343a904.lean/declarations/initialize--bac18f8b3364379a08f920cf.md) | 269 | `declaration-track:bac18f8b3364379a08f920cf1706f336f25e7b40803ed0bd0994e23ede48749e` |
| 27 | `def` | [getMorphismTheorems](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Theorems/Variantcce1f8b2bccc27045fa8813f882bcd1185a1250c51cd4a4b746155d70343a904.lean/declarations/getmorphismtheorems--dc41dbadd58eac16c6a079bb.md) | 282 | `declaration-track:dc41dbadd58eac16c6a079bb1af48a37c8932c285e902be540632751b4147c80` |
| 28 | `inductive` | [Theorem](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Theorems/Variantcce1f8b2bccc27045fa8813f882bcd1185a1250c51cd4a4b746155d70343a904.lean/declarations/theorem--ce2deccc22ded002a364f463.md) | 324 | `declaration-track:ce2deccc22ded002a364f463d5fd426540734661cf334bad4e46c9c93c2f52ea` |
| 29 | `def` | [getTheoremFromConst](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Theorems/Variantcce1f8b2bccc27045fa8813f882bcd1185a1250c51cd4a4b746155d70343a904.lean/declarations/gettheoremfromconst--2228dcc15a083cbc40faf186.md) | 333 | `declaration-track:2228dcc15a083cbc40faf1864ce1371333d53f39e7e0c0d725149f648505053a` |
| 30 | `def` | [addTheorem](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Theorems/Variantcce1f8b2bccc27045fa8813f882bcd1185a1250c51cd4a4b746155d70343a904.lean/declarations/addtheorem--350eb8edac47ccd1ecbe4453.md) | 394 | `declaration-track:350eb8edac47ccd1ecbe44537e5664e4e2b507c5fe14f71d88b3ba659a58a3bf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
