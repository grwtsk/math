# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Core.Variantd0c25609b98fa3eb360c1b63cfb49c011ac8ac5465f40f527f8308f86278a079

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1bca8cc5caaa3d03f0cf8aec450079f68c678083",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variantd0c25609b98fa3eb360c1b63cfb49c011ac8ac5465f40f527f8308f86278a079.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variantd0c25609b98fa3eb360c1b63cfb49c011ac8ac5465f40f527f8308f86278a079.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variantd0c25609b98fa3eb360c1b63cfb49c011ac8ac5465f40f527f8308f86278a079.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1bca8cc5caaa3d03f0cf8aec450079f68c678083`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variantd0c25609b98fa3eb360c1b63cfb49c011ac8ac5465f40f527f8308f86278a079.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variantd0c25609b98fa3eb360c1b63cfb49c011ac8ac5465f40f527f8308f86278a079.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.FunProp.Theorems` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FunProp.ToBatteries` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FunProp.Types` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Lean.Expr.Basic` — import line 9; external provider; requires a separately pinned dependency.
- `Batteries.Tactic.Exact` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [synthesizeInstance](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variantd0c25609b98fa3eb360c1b63cfb49c011ac8ac5465f40f527f8308f86278a079.lean/declarations/synthesizeinstance--edd3b4f6483a73cfb153b345.md) | 25 | `declaration-track:edd3b4f6483a73cfb153b345aa96957acb497e6e522c288a561a0bad1be75f47` |
| 2 | `def` | [synthesizeArgs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variantd0c25609b98fa3eb360c1b63cfb49c011ac8ac5465f40f527f8308f86278a079.lean/declarations/synthesizeargs--cee90f8ac47b0de447a6ff90.md) | 44 | `declaration-track:cee90f8ac47b0de447a6ff908577e13ee1a3e2a4eff8f18a1826065f8b60e2c7` |
| 3 | `def` | [tryTheoremCore](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variantd0c25609b98fa3eb360c1b63cfb49c011ac8ac5465f40f527f8308f86278a079.lean/declarations/trytheoremcore--d859b7fbd5bedd30bc844738.md) | 101 | `declaration-track:d859b7fbd5bedd30bc8447389440573f60bf04e40186ad214baffa7236e7ca81` |
| 4 | `def` | [tryTheoremWithHint?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variantd0c25609b98fa3eb360c1b63cfb49c011ac8ac5465f40f527f8308f86278a079.lean/declarations/trytheoremwithhint--1ff317ee4ca96265b389d3f1.md) | 119 | `declaration-track:1ff317ee4ca96265b389d3f1ccbdb6e868309f282fa649b84e255b6fee1e46b6` |
| 5 | `def` | [tryTheorem?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variantd0c25609b98fa3eb360c1b63cfb49c011ac8ac5465f40f527f8308f86278a079.lean/declarations/trytheorem--a4fdfc97fefde617fe597ebd.md) | 158 | `declaration-track:a4fdfc97fefde617fe597ebd452549ef6abf12d1b1135249f26da099be99411c` |
| 6 | `def` | [applyIdRule](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variantd0c25609b98fa3eb360c1b63cfb49c011ac8ac5465f40f527f8308f86278a079.lean/declarations/applyidrule--7f5173ccce16f7526dc4859f.md) | 168 | `declaration-track:7f5173ccce16f7526dc4859fe6f2d7e12e1ca88c02ced0c1ab6c24fe50aa0e50` |
| 7 | `def` | [applyConstRule](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variantd0c25609b98fa3eb360c1b63cfb49c011ac8ac5465f40f527f8308f86278a079.lean/declarations/applyconstrule--9984a1b2d5cc48cc5b3d000b.md) | 188 | `declaration-track:9984a1b2d5cc48cc5b3d000b1f37b1a97f982963ef0303bd19b6f40afc867aa0` |
| 8 | `def` | [applyApplyRule](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variantd0c25609b98fa3eb360c1b63cfb49c011ac8ac5465f40f527f8308f86278a079.lean/declarations/applyapplyrule--43219298981d81526b563d97.md) | 208 | `declaration-track:43219298981d81526b563d9738b012383158787cfe35f2633393c75cc34830cd` |
| 9 | `def` | [applyCompRule](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variantd0c25609b98fa3eb360c1b63cfb49c011ac8ac5465f40f527f8308f86278a079.lean/declarations/applycomprule--ca6bea6b4ae5b645527dcb6c.md) | 224 | `declaration-track:ca6bea6b4ae5b645527dcb6caf5a9229f9922b555bb79e338f7f9b7d6c42f6a5` |
| 10 | `def` | [applyPiRule](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variantd0c25609b98fa3eb360c1b63cfb49c011ac8ac5465f40f527f8308f86278a079.lean/declarations/applypirule--1a501a37c7e32403ebaca8ef.md) | 247 | `declaration-track:1a501a37c7e32403ebaca8efed2469bfcfa671ccb971eb89722709cc656bfd39` |
| 11 | `def` | [letCase](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variantd0c25609b98fa3eb360c1b63cfb49c011ac8ac5465f40f527f8308f86278a079.lean/declarations/letcase--014d408c94cc32e8a54ad99d.md) | 272 | `declaration-track:014d408c94cc32e8a54ad99d529b31169720f237d7487aa58f8834062a107465` |
| 12 | `def` | [applyMorRules](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variantd0c25609b98fa3eb360c1b63cfb49c011ac8ac5465f40f527f8308f86278a079.lean/declarations/applymorrules--4ff5e77800504b3275bfabe5.md) | 314 | `declaration-track:4ff5e77800504b3275bfabe5f5f178c617152c8349b96dd152ebc3ca9ef24fa9` |
| 13 | `def` | [applyTransitionRules](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variantd0c25609b98fa3eb360c1b63cfb49c011ac8ac5465f40f527f8308f86278a079.lean/declarations/applytransitionrules--ad00a86f29943de59b1be152.md) | 340 | `declaration-track:ad00a86f29943de59b1be15261e9271c435cab66dd10a7ec509a858889c21ad5` |
| 14 | `def` | [removeArgRule](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variantd0c25609b98fa3eb360c1b63cfb49c011ac8ac5465f40f527f8308f86278a079.lean/declarations/removeargrule--18332309dac637ab074edd32.md) | 364 | `declaration-track:18332309dac637ab074edd322cd02693cb9558dc8e489e01c7f76e6b87971cc1` |
| 15 | `def` | [bvarAppCase](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variantd0c25609b98fa3eb360c1b63cfb49c011ac8ac5465f40f527f8308f86278a079.lean/declarations/bvarappcase--405ac9b4c79c5140681ebea6.md) | 382 | `declaration-track:405ac9b4c79c5140681ebea6b9c26963142ff60dc45fa17546c6011b3179094f` |
| 16 | `def` | [getDeclTheorems](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variantd0c25609b98fa3eb360c1b63cfb49c011ac8ac5465f40f527f8308f86278a079.lean/declarations/getdecltheorems--d81bf680eceaa6a4328b4e08.md) | 396 | `declaration-track:d81bf680eceaa6a4328b4e08944ff0292144fe16ec97b64824966e6d0c9793ce` |
| 17 | `def` | [getLocalTheorems](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variantd0c25609b98fa3eb360c1b63cfb49c011ac8ac5465f40f527f8308f86278a079.lean/declarations/getlocaltheorems--829498ee9ecf4b0ee97a14a4.md) | 416 | `declaration-track:829498ee9ecf4b0ee97a14a42f4c46f459f210c8b3295f6ee32f8f453a548813` |
| 18 | `def` | [tryTheorems](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variantd0c25609b98fa3eb360c1b63cfb49c011ac8ac5465f40f527f8308f86278a079.lean/declarations/trytheorems--f95c1d17528f4361b919e3fc.md) | 467 | `declaration-track:f95c1d17528f4361b919e3fc5b7617d2fa37276f5342a343a2d7360c564e0906` |
| 19 | `def` | [fvarAppCase](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variantd0c25609b98fa3eb360c1b63cfb49c011ac8ac5465f40f527f8308f86278a079.lean/declarations/fvarappcase--14d478499f42fb20e12d206f.md) | 523 | `declaration-track:14d478499f42fb20e12d206f30b6a83df581313c99af4ffb602d494661181d8c` |
| 20 | `def` | [constAppCase](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variantd0c25609b98fa3eb360c1b63cfb49c011ac8ac5465f40f527f8308f86278a079.lean/declarations/constappcase--5abccbf2bbb037fc226ebc71.md) | 559 | `declaration-track:5abccbf2bbb037fc226ebc7125652081bcde0991663a14a33bb558c2164a6f2c` |
| 21 | `def` | [cacheResult](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variantd0c25609b98fa3eb360c1b63cfb49c011ac8ac5465f40f527f8308f86278a079.lean/declarations/cacheresult--89a094a67ee9ce2340d80cd8.md) | 609 | `declaration-track:89a094a67ee9ce2340d80cd80c8c5ac8c533912d1fa93f50b9fd652eb100d22c` |
| 22 | `def` | [cacheFailure](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variantd0c25609b98fa3eb360c1b63cfb49c011ac8ac5465f40f527f8308f86278a079.lean/declarations/cachefailure--c6629a5b1dda9949759d1864.md) | 614 | `declaration-track:c6629a5b1dda9949759d18644fe8d4b1f9859017064af847a2298ab3809edeba` |
| 23 | `def` | [funProp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variantd0c25609b98fa3eb360c1b63cfb49c011ac8ac5465f40f527f8308f86278a079.lean/declarations/funprop--e9557fb49b80ed643a25eb7d.md) | 620 | `declaration-track:e9557fb49b80ed643a25eb7db8b3f2693215a4e1a263ca6ee39522ade8b3947c` |
| 24 | `def` | [main](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variantd0c25609b98fa3eb360c1b63cfb49c011ac8ac5465f40f527f8308f86278a079.lean/declarations/main--b46a68029f8bc518f44cda99.md) | 657 | `declaration-track:b46a68029f8bc518f44cda990d7ece39e4bb92ba7bac569ca8a471bd3bbd0c8f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
