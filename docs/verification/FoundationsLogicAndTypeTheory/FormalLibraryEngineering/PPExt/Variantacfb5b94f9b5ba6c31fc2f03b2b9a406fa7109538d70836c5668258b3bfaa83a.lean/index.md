# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PPExt.Variantacfb5b94f9b5ba6c31fc2f03b2b9a406fa7109538d70836c5668258b3bfaa83a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "51fe5793e2c100e876fe8dd72dfa58aeea5f431b",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PPExt/Variantacfb5b94f9b5ba6c31fc2f03b2b9a406fa7109538d70836c5668258b3bfaa83a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PPExt/Variantacfb5b94f9b5ba6c31fc2f03b2b9a406fa7109538d70836c5668258b3bfaa83a.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PPExt/Variantacfb5b94f9b5ba6c31fc2f03b2b9a406fa7109538d70836c5668258b3bfaa83a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `51fe5793e2c100e876fe8dd72dfa58aeea5f431b`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PPExt/Variantacfb5b94f9b5ba6c31fc2f03b2b9a406fa7109538d70836c5668258b3bfaa83a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PPExt/Variantacfb5b94f9b5ba6c31fc2f03b2b9a406fa7109538d70836c5668258b3bfaa83a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Format.Macro` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [PrettyPrinter.InfoPerPos](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PPExt/Variantacfb5b94f9b5ba6c31fc2f03b2b9a406fa7109538d70836c5668258b3bfaa83a.lean/declarations/prettyprinter-infoperpos--566fc1cee182f41ff7697304.md) | 32 | `declaration-track:566fc1cee182f41ff76973045cdd6351574cf83d107e48ff34d1b1b3e5082358` |
| 2 | `structure` | [FormatWithInfos](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PPExt/Variantacfb5b94f9b5ba6c31fc2f03b2b9a406fa7109538d70836c5668258b3bfaa83a.lean/declarations/formatwithinfos--a2ac57778c0ba8d90c5b7450.md) | 37 | `declaration-track:a2ac57778c0ba8d90c5b7450df18e77d701567f0df6e526edfabfb913798c06b` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PPExt/Variantacfb5b94f9b5ba6c31fc2f03b2b9a406fa7109538d70836c5668258b3bfaa83a.lean/declarations/instance--784845aa47cbea4fcd048909.md) | 40 | `declaration-track:784845aa47cbea4fcd048909e62454ba4a66e917cda7fd4ef9ed1395305a6a88` |
| 4 | `structure` | [PPFns](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PPExt/Variantacfb5b94f9b5ba6c31fc2f03b2b9a406fa7109538d70836c5668258b3bfaa83a.lean/declarations/ppfns--f8b8692a2d585dc9a3a54d77.md) | 43 | `declaration-track:f8b8692a2d585dc9a3a54d77dcd3643014fb62d4d8eab6a77eb0014e9cbd23fb` |
| 5 | `def` | [formatRawTerm](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PPExt/Variantacfb5b94f9b5ba6c31fc2f03b2b9a406fa7109538d70836c5668258b3bfaa83a.lean/declarations/formatrawterm--47d480763ff7ef7d67a23db0.md) | 51 | `declaration-track:47d480763ff7ef7d67a23db08e7fe845833dc0423868c5cffb1eb039780b87c9` |
| 6 | `def` | [formatRawGoal](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PPExt/Variantacfb5b94f9b5ba6c31fc2f03b2b9a406fa7109538d70836c5668258b3bfaa83a.lean/declarations/formatrawgoal--cbbbb2fb95d81a2398fe8361.md) | 54 | `declaration-track:cbbbb2fb95d81a2398fe83612ec5ade092f9ca64048edea5f4eaf50786ef6c21` |
| 7 | `builtin_initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PPExt/Variantacfb5b94f9b5ba6c31fc2f03b2b9a406fa7109538d70836c5668258b3bfaa83a.lean/declarations/builtin-initialize--46e5f7dcd6b6a087a7503f2a.md) | 57 | `declaration-track:46e5f7dcd6b6a087a7503f2a3cb94748ddf66cd3cb9473f216437f56ec161f69` |
| 8 | `builtin_initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PPExt/Variantacfb5b94f9b5ba6c31fc2f03b2b9a406fa7109538d70836c5668258b3bfaa83a.lean/declarations/builtin-initialize--2cdc061fbb88a3c72daa9457.md) | 66 | `declaration-track:2cdc061fbb88a3c72daa9457125f59796a6bb0bf43194e61ac8a2ecb8c132191` |
| 9 | `def` | [ppExprWithInfos](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PPExt/Variantacfb5b94f9b5ba6c31fc2f03b2b9a406fa7109538d70836c5668258b3bfaa83a.lean/declarations/ppexprwithinfos--c3abe0f64f325e1cf3004037.md) | 69 | `declaration-track:c3abe0f64f325e1cf3004037ad038fb3e98bea73397fbc21834ddd487cc28b28` |
| 10 | `def` | [ppConstNameWithInfos](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PPExt/Variantacfb5b94f9b5ba6c31fc2f03b2b9a406fa7109538d70836c5668258b3bfaa83a.lean/declarations/ppconstnamewithinfos--edf84e87e64289a555cfe2a0.md) | 82 | `declaration-track:edf84e87e64289a555cfe2a061b99730ac8f19d3d9e6a01f698b2a2c62858687` |
| 11 | `def` | [ppTerm](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PPExt/Variantacfb5b94f9b5ba6c31fc2f03b2b9a406fa7109538d70836c5668258b3bfaa83a.lean/declarations/ppterm--670adab875433bf646afbd84.md) | 91 | `declaration-track:670adab875433bf646afbd841f3bcb09db0cca2f745883e8fe4b2aeee40280c6` |
| 12 | `def` | [ppLevel](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PPExt/Variantacfb5b94f9b5ba6c31fc2f03b2b9a406fa7109538d70836c5668258b3bfaa83a.lean/declarations/pplevel--663c75576bab392435b79fc7.md) | 103 | `declaration-track:663c75576bab392435b79fc792cff95e7bee469bdc0213a939aa029806f6960d` |
| 13 | `def` | [ppGoal](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PPExt/Variantacfb5b94f9b5ba6c31fc2f03b2b9a406fa7109538d70836c5668258b3bfaa83a.lean/declarations/ppgoal--1275b47482dbed4936872e97.md) | 112 | `declaration-track:1275b47482dbed4936872e978b8dfb40ccba96a7ab720233e984668334d5d0c5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
