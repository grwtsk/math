# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Injective.Variant713a9be2e7a0f9cc2ab76fa645be0ef2824287916e69a86178116fc880c7e5b5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8b3a0dd95002b9346ad6a5ea89ae5b62cb0109a3",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Injective/Variant713a9be2e7a0f9cc2ab76fa645be0ef2824287916e69a86178116fc880c7e5b5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Injective/Variant713a9be2e7a0f9cc2ab76fa645be0ef2824287916e69a86178116fc880c7e5b5.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Injective/Variant713a9be2e7a0f9cc2ab76fa645be0ef2824287916e69a86178116fc880c7e5b5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8b3a0dd95002b9346ad6a5ea89ae5b62cb0109a3`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Injective/Variant713a9be2e7a0f9cc2ab76fa645be0ef2824287916e69a86178116fc880c7e5b5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Injective/Variant713a9be2e7a0f9cc2ab76fa645be0ef2824287916e69a86178116fc880c7e5b5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.Tactic.Refl` — import line 9; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Assumption` — import line 10; external provider; requires a separately pinned dependency.
- `Lean.Meta.SameCtorUtils` — import line 11; external provider; requires a separately pinned dependency.
- `Init.Omega` — import line 12; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Injection` — import line 13; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Simp.Attr` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mkAnd?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Injective/Variant713a9be2e7a0f9cc2ab76fa645be0ef2824287916e69a86178116fc880c7e5b5.lean/declarations/mkand--45eff1142a05c8035b1a2c2e.md) | 18 | `declaration-track:45eff1142a05c8035b1a2c2e1ee7b6a405c301885d7b6635bf39b72abd08cada` |
| 2 | `def` | [elimOptParam](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Injective/Variant713a9be2e7a0f9cc2ab76fa645be0ef2824287916e69a86178116fc880c7e5b5.lean/declarations/elimoptparam--f9a56e467de3110cd144eca1.md) | 27 | `declaration-track:f9a56e467de3110cd144eca1c1a548d45b8163b811c3abc0e00f0504c8c0042d` |
| 3 | `def` | [mkEqs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Injective/Variant713a9be2e7a0f9cc2ab76fa645be0ef2824287916e69a86178116fc880c7e5b5.lean/declarations/mkeqs--089191924492fb50cb2e91df.md) | 34 | `declaration-track:089191924492fb50cb2e91df1be4130c4acdb1cdb24804921151576284c2f3ed` |
| 4 | `def` | [mkInjectiveTheoremTypeCore?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Injective/Variant713a9be2e7a0f9cc2ab76fa645be0ef2824287916e69a86178116fc880c7e5b5.lean/declarations/mkinjectivetheoremtypecore--e4650e63139a8d7b1a6ef61c.md) | 44 | `declaration-track:e4650e63139a8d7b1a6ef61c9a583c7d819c96083674cbcd1e3daeb4b78ad137` |
| 5 | `def` | [mkInjectiveTheoremType?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Injective/Variant713a9be2e7a0f9cc2ab76fa645be0ef2824287916e69a86178116fc880c7e5b5.lean/declarations/mkinjectivetheoremtype--51ed0f8f5cac47d8e324bc10.md) | 79 | `declaration-track:51ed0f8f5cac47d8e324bc10937fc4320e3b74db4ae9015e2956daad46fcc7db` |
| 6 | `def` | [injTheoremFailureHeader](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Injective/Variant713a9be2e7a0f9cc2ab76fa645be0ef2824287916e69a86178116fc880c7e5b5.lean/declarations/injtheoremfailureheader--50f68a022ef401a3a76e0e20.md) | 82 | `declaration-track:50f68a022ef401a3a76e0e207c703540ec5a3db7f3ba9a1b037e41d744886afa` |
| 7 | `def` | [throwInjectiveTheoremFailure](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Injective/Variant713a9be2e7a0f9cc2ab76fa645be0ef2824287916e69a86178116fc880c7e5b5.lean/declarations/throwinjectivetheoremfailure--43d5f9e1da36d68e68d58843.md) | 85 | `declaration-track:43d5f9e1da36d68e68d58843ef034b48c7502d10f1355013853ab27342e19416` |
| 8 | `def` | [splitAndAssumption](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Injective/Variant713a9be2e7a0f9cc2ab76fa645be0ef2824287916e69a86178116fc880c7e5b5.lean/declarations/splitandassumption--78963de9047aa468f7317338.md) | 88 | `declaration-track:78963de9047aa468f7317338653ab12ae0614f08649d1eb8c6ca4a4a77e4a40c` |
| 9 | `def` | [solveEqOfCtorEq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Injective/Variant713a9be2e7a0f9cc2ab76fa645be0ef2824287916e69a86178116fc880c7e5b5.lean/declarations/solveeqofctoreq--e88d27bddbcfb896851cd431.md) | 93 | `declaration-track:e88d27bddbcfb896851cd431c5d22a41b01fa111eff21a1ee0cb5be8b4c45558` |
| 10 | `def` | [mkInjectiveTheoremValue](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Injective/Variant713a9be2e7a0f9cc2ab76fa645be0ef2824287916e69a86178116fc880c7e5b5.lean/declarations/mkinjectivetheoremvalue--152e4dd22a23ffcafca29341.md) | 99 | `declaration-track:152e4dd22a23ffcafca29341af9df4b45fe44303733f820543282d12787e9d51` |
| 11 | `def` | [mkInjectiveTheoremNameFor](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Injective/Variant713a9be2e7a0f9cc2ab76fa645be0ef2824287916e69a86178116fc880c7e5b5.lean/declarations/mkinjectivetheoremnamefor--15185e21716bfd152f0e1cd4.md) | 105 | `declaration-track:15185e21716bfd152f0e1cd4efe0a091e968db499d8e4e1feb444484bca8a439` |
| 12 | `def` | [mkInjectiveTheorem](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Injective/Variant713a9be2e7a0f9cc2ab76fa645be0ef2824287916e69a86178116fc880c7e5b5.lean/declarations/mkinjectivetheorem--7f2b7b1a227f64fda2876211.md) | 108 | `declaration-track:7f2b7b1a227f64fda287621188179138a86baae8e01d2882266680ca26c29d69` |
| 13 | `def` | [mkInjectiveEqTheoremNameFor](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Injective/Variant713a9be2e7a0f9cc2ab76fa645be0ef2824287916e69a86178116fc880c7e5b5.lean/declarations/mkinjectiveeqtheoremnamefor--53486dc0b0162bd9a276f287.md) | 122 | `declaration-track:53486dc0b0162bd9a276f287cc005718e7673149334189b9852582902af653c6` |
| 14 | `def` | [mkInjectiveEqTheoremType?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Injective/Variant713a9be2e7a0f9cc2ab76fa645be0ef2824287916e69a86178116fc880c7e5b5.lean/declarations/mkinjectiveeqtheoremtype--75e652c54267e26345f65d1f.md) | 125 | `declaration-track:75e652c54267e26345f65d1fe907f8d4d4833dc9850b6b901e3474172300ace9` |
| 15 | `def` | [andProjections](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Injective/Variant713a9be2e7a0f9cc2ab76fa645be0ef2824287916e69a86178116fc880c7e5b5.lean/declarations/andprojections--20676e2ec72e4f1e52173549.md) | 132 | `declaration-track:20676e2ec72e4f1e52173549d658825ecfb080e82bb7ae1b22fa6a7380ea5fe1` |
| 16 | `def` | [mkInjectiveEqTheoremValue](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Injective/Variant713a9be2e7a0f9cc2ab76fa645be0ef2824287916e69a86178116fc880c7e5b5.lean/declarations/mkinjectiveeqtheoremvalue--c2ede9330743a6cef893bbc5.md) | 143 | `declaration-track:c2ede9330743a6cef893bbc5cd3e1a06a3c224e1cda3a4630e485d540b969ea6` |
| 17 | `def` | [mkInjectiveEqTheorem](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Injective/Variant713a9be2e7a0f9cc2ab76fa645be0ef2824287916e69a86178116fc880c7e5b5.lean/declarations/mkinjectiveeqtheorem--96d284357e6a83e307032551.md) | 165 | `declaration-track:96d284357e6a83e307032551df58e1c340d5301fa59e86d647395d9f879b632f` |
| 18 | `def` | [mkInjectiveTheorems](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Injective/Variant713a9be2e7a0f9cc2ab76fa645be0ef2824287916e69a86178116fc880c7e5b5.lean/declarations/mkinjectivetheorems--670962bc52fcb43bee125e59.md) | 187 | `declaration-track:670962bc52fcb43bee125e5984f944f6edc178350967252eae09e004638f0c3c` |
| 19 | `builtin_initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Injective/Variant713a9be2e7a0f9cc2ab76fa645be0ef2824287916e69a86178116fc880c7e5b5.lean/declarations/builtin-initialize--150b5ac92a4c23c01d3be744.md) | 205 | `declaration-track:150b5ac92a4c23c01d3be744810437275b52969ce1c2767194914035d56f1a26` |
| 20 | `def` | [getCtorAppIndices?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Injective/Variant713a9be2e7a0f9cc2ab76fa645be0ef2824287916e69a86178116fc880c7e5b5.lean/declarations/getctorappindices--6336558e15b82acfa7b27666.md) | 208 | `declaration-track:6336558e15b82acfa7b27666290fb58e229bd9d75c065ff9740ad2fd4d614732` |
| 21 | `structure` | [MkHInjTypeResult](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Injective/Variant713a9be2e7a0f9cc2ab76fa645be0ef2824287916e69a86178116fc880c7e5b5.lean/declarations/mkhinjtyperesult--b861ae35d9889c0cb91b6841.md) | 216 | `declaration-track:b861ae35d9889c0cb91b6841b38ac735d16d3792f4fe35d86786fa6dba37fee5` |
| 22 | `def` | [mkHInjType?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Injective/Variant713a9be2e7a0f9cc2ab76fa645be0ef2824287916e69a86178116fc880c7e5b5.lean/declarations/mkhinjtype--d87dbb4c9b67c820974dc754.md) | 221 | `declaration-track:d87dbb4c9b67c820974dc75472babba7c5db16f7ea8e6565efe6480ca502a0ad` |
| 23 | `def` | [failedToGenHInj](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Injective/Variant713a9be2e7a0f9cc2ab76fa645be0ef2824287916e69a86178116fc880c7e5b5.lean/declarations/failedtogenhinj--eccbe8489243dc0ed0245ba2.md) | 254 | `declaration-track:eccbe8489243dc0ed0245ba2dc0dc7cf061915fe967423d02a4790333ae1d530` |
| 24 | `def` | [mkHInjectiveTheoremValue?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Injective/Variant713a9be2e7a0f9cc2ab76fa645be0ef2824287916e69a86178116fc880c7e5b5.lean/declarations/mkhinjectivetheoremvalue--9bde7fd9a85e88e5159e6648.md) | 257 | `declaration-track:9bde7fd9a85e88e5159e6648cdd6de562935b309d21f01c3918b9a9f93dfd7ef` |
| 25 | `def` | [hinjSuffix](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Injective/Variant713a9be2e7a0f9cc2ab76fa645be0ef2824287916e69a86178116fc880c7e5b5.lean/declarations/hinjsuffix--61d840489e5bda244044e552.md) | 280 | `declaration-track:61d840489e5bda244044e5521ba16efbd5f2d30b4b90f2679b5a5e446bd89701` |
| 26 | `def` | [mkHInjectiveTheoremNameFor](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Injective/Variant713a9be2e7a0f9cc2ab76fa645be0ef2824287916e69a86178116fc880c7e5b5.lean/declarations/mkhinjectivetheoremnamefor--93aa9e40e2c74bb0ddbf3a4d.md) | 282 | `declaration-track:93aa9e40e2c74bb0ddbf3a4d173639847075d380103b7c0260b3525c0d98e04f` |
| 27 | `def` | [mkHInjectiveTheorem?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Injective/Variant713a9be2e7a0f9cc2ab76fa645be0ef2824287916e69a86178116fc880c7e5b5.lean/declarations/mkhinjectivetheorem--c7592bbe90ded8de48c0b4b8.md) | 285 | `declaration-track:c7592bbe90ded8de48c0b4b83ebac26bafedc09771e9085d06cc83b60c90f01a` |
| 28 | `builtin_initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Injective/Variant713a9be2e7a0f9cc2ab76fa645be0ef2824287916e69a86178116fc880c7e5b5.lean/declarations/builtin-initialize--de316dd519c079079d399134.md) | 290 | `declaration-track:de316dd519c079079d399134c9a45f72fbfe6840cdd3eb746734cff2261b327f` |
| 29 | `builtin_initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Injective/Variant713a9be2e7a0f9cc2ab76fa645be0ef2824287916e69a86178116fc880c7e5b5.lean/declarations/builtin-initialize--68c021dd723b136d04e6cb7a.md) | 295 | `declaration-track:68c021dd723b136d04e6cb7ad5d76b0c89a05f0ea2250177499d9c6261afc6f9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
