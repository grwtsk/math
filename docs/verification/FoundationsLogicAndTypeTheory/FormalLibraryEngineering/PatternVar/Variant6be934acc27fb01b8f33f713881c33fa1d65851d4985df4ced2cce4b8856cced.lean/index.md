# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PatternVar.Variant6be934acc27fb01b8f33f713881c33fa1d65851d4985df4ced2cce4b8856cced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d668088481e4fa5d2d3b1100b1d548dcc1752f20",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PatternVar/Variant6be934acc27fb01b8f33f713881c33fa1d65851d4985df4ced2cce4b8856cced.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PatternVar/Variant6be934acc27fb01b8f33f713881c33fa1d65851d4985df4ced2cce4b8856cced.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PatternVar/Variant6be934acc27fb01b8f33f713881c33fa1d65851d4985df4ced2cce4b8856cced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d668088481e4fa5d2d3b1100b1d548dcc1752f20`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PatternVar/Variant6be934acc27fb01b8f33f713881c33fa1d65851d4985df4ced2cce4b8856cced.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PatternVar/Variant6be934acc27fb01b8f33f713881c33fa1d65851d4985df4ced2cce4b8856cced.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Nat.Internal.Linear` — import line 17; external provider; requires a separately pinned dependency.
- `Init.Omega` — import line 18; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [PatternVar](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PatternVar/Variant6be934acc27fb01b8f33f713881c33fa1d65851d4985df4ced2cce4b8856cced.lean/declarations/patternvar--d0b99e05bb820ad3182bc25a.md) | 29 | `declaration-track:d0b99e05bb820ad3182bc25a2ca2af8b2d6c10a396cba48385c2d3bc3b817130` |
| 2 | `structure` | [State](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PatternVar/Variant6be934acc27fb01b8f33f713881c33fa1d65851d4985df4ced2cce4b8856cced.lean/declarations/state--d23e700021b9bd82b1b58206.md) | 55 | `declaration-track:d23e700021b9bd82b1b5820662574a66f8587f3da9ad14779cd02345b2245b22` |
| 3 | `abbrev` | [M](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PatternVar/Variant6be934acc27fb01b8f33f713881c33fa1d65851d4985df4ced2cce4b8856cced.lean/declarations/m--eafe4a39ec11858e9fde158a.md) | 62 | `declaration-track:eafe4a39ec11858e9fde158ad2976b87663953eea3d22e1e0d28826caebd3fa5` |
| 4 | `def` | [throwCtorExpected](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PatternVar/Variant6be934acc27fb01b8f33f713881c33fa1d65851d4985df4ced2cce4b8856cced.lean/declarations/throwctorexpected--255432fa80188e59e36b8207.md) | 64 | `declaration-track:255432fa80188e59e36b820739f83440809edc6cc86a6b60af43a68bf5ea69ad` |
| 5 | `def` | [throwInvalidPattern](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PatternVar/Variant6be934acc27fb01b8f33f713881c33fa1d65851d4985df4ced2cce4b8856cced.lean/declarations/throwinvalidpattern--73ea55181e708dbd449c1469.md) | 90 | `declaration-track:73ea55181e708dbd449c1469e10c0c2c96c3fabd2e509b1b514ef9da05a14189` |
| 6 | `structure` | [Context](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PatternVar/Variant6be934acc27fb01b8f33f713881c33fa1d65851d4985df4ced2cce4b8856cced.lean/declarations/context--f5c21a07e9c0751e74810473.md) | 103 | `declaration-track:f5c21a07e9c0751e7481047391f9be045ef556356ee637391ba2608b81b7975b` |
| 7 | `def` | [throwInvalidNamedArgs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PatternVar/Variant6be934acc27fb01b8f33f713881c33fa1d65851d4985df4ced2cce4b8856cced.lean/declarations/throwinvalidnamedargs--ae74994ae78cb7326bcb315a.md) | 116 | `declaration-track:ae74994ae78cb7326bcb315a4ff5ee02c570b2801e4d4e6bc7d9ae05c962d09d` |
| 8 | `def` | [isDone](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PatternVar/Variant6be934acc27fb01b8f33f713881c33fa1d65851d4985df4ced2cce4b8856cced.lean/declarations/isdone--f7145f164598e7e5f5cd43cc.md) | 140 | `declaration-track:f7145f164598e7e5f5cd43cc2d18ee6661be4d08ae67cf81acf22e57db332fa0` |
| 9 | `def` | [getNextParam](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PatternVar/Variant6be934acc27fb01b8f33f713881c33fa1d65851d4985df4ced2cce4b8856cced.lean/declarations/getnextparam--2b0aaaadffd835749ac44986.md) | 143 | `declaration-track:2b0aaaadffd835749ac44986bd2133d3fd9371b6d02909aff6f5ce94b442ea76` |
| 10 | `def` | [throwWrongArgCount](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PatternVar/Variant6be934acc27fb01b8f33f713881c33fa1d65851d4985df4ced2cce4b8856cced.lean/declarations/throwwrongargcount--08e9068ffa1b4997f6ee1a38.md) | 148 | `declaration-track:08e9068ffa1b4997f6ee1a3814cb3cd7f3cf7692e5f853673a5d2097b9ed4aa2` |
| 11 | `def` | [finalize](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PatternVar/Variant6be934acc27fb01b8f33f713881c33fa1d65851d4985df4ced2cce4b8856cced.lean/declarations/finalize--f8927c7f59aa81b93d34e1b0.md) | 176 | `declaration-track:f8927c7f59aa81b93d34e1b0663e3664d4969b852bca30ea3a291db574157336` |
| 12 | `def` | [isNextArgAccessible](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PatternVar/Variant6be934acc27fb01b8f33f713881c33fa1d65851d4985df4ced2cce4b8856cced.lean/declarations/isnextargaccessible--246805ff8aedc738b4fce835.md) | 186 | `declaration-track:246805ff8aedc738b4fce83588952fd18b98719d7f81dca57b16c8407f2ea341` |
| 13 | `def` | [processVar](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PatternVar/Variant6be934acc27fb01b8f33f713881c33fa1d65851d4985df4ced2cce4b8856cced.lean/declarations/processvar--c74e5967265e1eff230f998e.md) | 198 | `declaration-track:c74e5967265e1eff230f998eb3eaba3cb0348a9988dd0fb4c40e77afc67ff643` |
| 14 | `def` | [samePatternsVariables](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PatternVar/Variant6be934acc27fb01b8f33f713881c33fa1d65851d4985df4ced2cce4b8856cced.lean/declarations/samepatternsvariables--4be4080544b998005af081d5.md) | 209 | `declaration-track:4be4080544b998005af081d5d34126b46e158d0040f2a57ec0dfdd878c53fe01` |
| 15 | `def` | [collect](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PatternVar/Variant6be934acc27fb01b8f33f713881c33fa1d65851d4985df4ced2cce4b8856cced.lean/declarations/collect--d2329dc258629b7b6124ff0c.md) | 219 | `declaration-track:d2329dc258629b7b6124ff0c40a4e33d7d456733460fba4b0a2e241b594e4f6c` |
| 16 | `def` | [main](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PatternVar/Variant6be934acc27fb01b8f33f713881c33fa1d65851d4985df4ced2cce4b8856cced.lean/declarations/main--2e996076ae899f9ebca201b8.md) | 428 | `declaration-track:2e996076ae899f9ebca201b84e5370c9bed5277640f4a2b64bb504546f1ad6a0` |
| 17 | `def` | [collectPatternVars](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PatternVar/Variant6be934acc27fb01b8f33f713881c33fa1d65851d4985df4ced2cce4b8856cced.lean/declarations/collectpatternvars--38edde2cc2f7687068094ce6.md) | 440 | `declaration-track:38edde2cc2f7687068094ce664820cc613d425cc660ad8c17fe7bd43f9676a91` |
| 18 | `def` | [getPatternVars](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PatternVar/Variant6be934acc27fb01b8f33f713881c33fa1d65851d4985df4ced2cce4b8856cced.lean/declarations/getpatternvars--1c0f8b92ad5c53846b755de9.md) | 448 | `declaration-track:1c0f8b92ad5c53846b755de956ea9f0439a39f55be984e28d83ca97e0b55c187` |
| 19 | `def` | [getPatternsVars](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PatternVar/Variant6be934acc27fb01b8f33f713881c33fa1d65851d4985df4ced2cce4b8856cced.lean/declarations/getpatternsvars--87f40ba0797595a1f587d9ff.md) | 457 | `declaration-track:87f40ba0797595a1f587d9ffa84ac25b3c5aadea0e5f936a15413fbdb974b4f2` |
| 20 | `def` | [getPatternVarNames](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PatternVar/Variant6be934acc27fb01b8f33f713881c33fa1d65851d4985df4ced2cce4b8856cced.lean/declarations/getpatternvarnames--8e4ec510ac3bbe742b6291e0.md) | 464 | `declaration-track:8e4ec510ac3bbe742b6291e0e616eb8a03b36a1329b31cdc1e2adaec6bd979be` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
