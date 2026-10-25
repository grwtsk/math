# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Defs.Variantd835f9cf2f1994c317b5417ba1924e989ade46c319f830d1af0239e33465497e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5269779bcbefa6f2ff02dcc82bc37ffe7a598a5f",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variantd835f9cf2f1994c317b5417ba1924e989ade46c319f830d1af0239e33465497e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variantd835f9cf2f1994c317b5417ba1924e989ade46c319f830d1af0239e33465497e.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variantd835f9cf2f1994c317b5417ba1924e989ade46c319f830d1af0239e33465497e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5269779bcbefa6f2ff02dcc82bc37ffe7a598a5f`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variantd835f9cf2f1994c317b5417ba1924e989ade46c319f830d1af0239e33465497e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variantd835f9cf2f1994c317b5417ba1924e989ade46c319f830d1af0239e33465497e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.AdaptationNote` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Attr.Register` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Lemma` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Eqns` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.TypeStar` — import line 15; external provider; requires a separately pinned dependency.
- `Batteries.Logic` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [flip_def](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variantd835f9cf2f1994c317b5417ba1924e989ade46c319f830d1af0239e33465497e.lean/declarations/flip-def--5306f64dd10af95c197e3bec.md) | 31 | `result-track:5306f64dd10af95c197e3bec7c81ec7aa14207231794b94cc9f7cb86a751128b` |
| 2 | `def` | [dcomp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variantd835f9cf2f1994c317b5417ba1924e989ade46c319f830d1af0239e33465497e.lean/declarations/dcomp--8fd758ad886fc9eef06e7150.md) | 43 | `declaration-track:8fd758ad886fc9eef06e715089b1e0d811161d98a5566bd3e3110e9aa87842d1` |
| 3 | `abbrev` | [onFun](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variantd835f9cf2f1994c317b5417ba1924e989ade46c319f830d1af0239e33465497e.lean/declarations/onfun--7b7a2d80f751879244cb42cb.md) | 51 | `declaration-track:7b7a2d80f751879244cb42cb507edb03d34dad3421780f184484ade7c00d6b33` |
| 4 | `abbrev` | [swap](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variantd835f9cf2f1994c317b5417ba1924e989ade46c319f830d1af0239e33465497e.lean/declarations/swap--e073a730a0bf5451ae5a2c3f.md) | 58 | `declaration-track:e073a730a0bf5451ae5a2c3ffb9bc1bfa3ddbcadfb3cbf3f95ca6444e04f3371` |
| 5 | `theorem` | [swap_def](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variantd835f9cf2f1994c317b5417ba1924e989ade46c319f830d1af0239e33465497e.lean/declarations/swap-def--494fac60cfa5c5f91bd3df23.md) | 60 | `result-track:494fac60cfa5c5f91bd3df23e5121638ec2867edc01966f0d9dc77f8ff421676` |
| 6 | `theorem` | [id_comp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variantd835f9cf2f1994c317b5417ba1924e989ade46c319f830d1af0239e33465497e.lean/declarations/id-comp--5973960a6fd20bc6248c3f6e.md) | 63 | `result-track:5973960a6fd20bc6248c3f6e77cf54b718d6fbb1551b912d21580c0753831355` |
| 7 | `theorem` | [comp_id](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variantd835f9cf2f1994c317b5417ba1924e989ade46c319f830d1af0239e33465497e.lean/declarations/comp-id--4dfd9d326d1cc15c0d3075c5.md) | 66 | `result-track:4dfd9d326d1cc15c0d3075c5be892c86c7ebb9a64ca2ce9b0254605eded72d1f` |
| 8 | `theorem` | [comp_assoc](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variantd835f9cf2f1994c317b5417ba1924e989ade46c319f830d1af0239e33465497e.lean/declarations/comp-assoc--0195703d15f4a9084239bf19.md) | 68 | `result-track:0195703d15f4a9084239bf19af05887823e78df9d12b912602c7a627f6fe873e` |
| 9 | `def` | [Injective](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variantd835f9cf2f1994c317b5417ba1924e989ade46c319f830d1af0239e33465497e.lean/declarations/injective--1abbf8b621ed60c26b029944.md) | 72 | `declaration-track:1abbf8b621ed60c26b029944ab8528f57fdb53839443bd234185475f14ba31f8` |
| 10 | `theorem` | [Injective.comp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variantd835f9cf2f1994c317b5417ba1924e989ade46c319f830d1af0239e33465497e.lean/declarations/injective-comp--5388beff0b33bc041e6e6a8d.md) | 75 | `result-track:5388beff0b33bc041e6e6a8dcbecee32a3c89fddae33d4fa4ccfcbfdeb06693f` |
| 11 | `def` | [Surjective](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variantd835f9cf2f1994c317b5417ba1924e989ade46c319f830d1af0239e33465497e.lean/declarations/surjective--0856aa76442391fe3bef9151.md) | 80 | `declaration-track:0856aa76442391fe3bef9151a2be167778c73ddafe98ca99792877d8b6004720` |
| 12 | `theorem` | [Surjective.comp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variantd835f9cf2f1994c317b5417ba1924e989ade46c319f830d1af0239e33465497e.lean/declarations/surjective-comp--70b3413e16f68fdc2650a909.md) | 83 | `result-track:70b3413e16f68fdc2650a9094cb95a2f1e8259262a920e2f20be0d6e65c25ec9` |
| 13 | `def` | [Bijective](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variantd835f9cf2f1994c317b5417ba1924e989ade46c319f830d1af0239e33465497e.lean/declarations/bijective--fc3c4004bafdf7ff4cc4bc59.md) | 90 | `declaration-track:fc3c4004bafdf7ff4cc4bc599cb6a06d431ab79583314b57418997b2ba45ec87` |
| 14 | `theorem` | [Bijective.comp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variantd835f9cf2f1994c317b5417ba1924e989ade46c319f830d1af0239e33465497e.lean/declarations/bijective-comp--8151000adfd220bdd89fe212.md) | 93 | `result-track:8151000adfd220bdd89fe212ab2c2e43edd2e00cfd1177587044e5a708de0800` |
| 15 | `def` | [LeftInverse](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variantd835f9cf2f1994c317b5417ba1924e989ade46c319f830d1af0239e33465497e.lean/declarations/leftinverse--5c38a4647a9a64ced4fbc837.md) | 97 | `declaration-track:5c38a4647a9a64ced4fbc837ada18d33d10e66dfaf18e9800bc6f5421e0e132d` |
| 16 | `def` | [HasLeftInverse](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variantd835f9cf2f1994c317b5417ba1924e989ade46c319f830d1af0239e33465497e.lean/declarations/hasleftinverse--3711da67194d85daf18879a4.md) | 101 | `declaration-track:3711da67194d85daf18879a4993d6783d086caa3a01baa332becbdbc4fc70c9a` |
| 17 | `def` | [RightInverse](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variantd835f9cf2f1994c317b5417ba1924e989ade46c319f830d1af0239e33465497e.lean/declarations/rightinverse--aa77ebaea350c9cd9bdaa73b.md) | 105 | `declaration-track:aa77ebaea350c9cd9bdaa73b392e941c554768635e8354f411f738e2040c1800` |
| 18 | `def` | [HasRightInverse](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variantd835f9cf2f1994c317b5417ba1924e989ade46c319f830d1af0239e33465497e.lean/declarations/hasrightinverse--a269c4f2de62e9efbec25b3b.md) | 109 | `declaration-track:a269c4f2de62e9efbec25b3b6883de79b2b05fcc6d5b53185347a56d4f790076` |
| 19 | `theorem` | [LeftInverse.injective](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variantd835f9cf2f1994c317b5417ba1924e989ade46c319f830d1af0239e33465497e.lean/declarations/leftinverse-injective--ceff9bb2c1d8192eff37994b.md) | 112 | `result-track:ceff9bb2c1d8192eff37994bd0888c8a39983a32fce69705f019e09f4858a09f` |
| 20 | `theorem` | [HasLeftInverse.injective](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variantd835f9cf2f1994c317b5417ba1924e989ade46c319f830d1af0239e33465497e.lean/declarations/hasleftinverse-injective--60fbfe18092361de065acdf0.md) | 119 | `result-track:60fbfe18092361de065acdf054f70c4d03b118bd27fab61a40a1865415d84f4f` |
| 21 | `theorem` | [rightInverse_of_injective_of_leftInverse](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variantd835f9cf2f1994c317b5417ba1924e989ade46c319f830d1af0239e33465497e.lean/declarations/rightinverse-of-injective-of-leftinverse--525abc7e7c68dde431a78b16.md) | 122 | `result-track:525abc7e7c68dde431a78b16a37d4f6851176ab48b15bcb84b5b78f23d71d380` |
| 22 | `theorem` | [RightInverse.surjective](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variantd835f9cf2f1994c317b5417ba1924e989ade46c319f830d1af0239e33465497e.lean/declarations/rightinverse-surjective--cd9cd6b40deb5134273dde3a.md) | 127 | `result-track:cd9cd6b40deb5134273dde3abfde4ba7a4b379840fe11516a6e43b6f0aa0e61b` |
| 23 | `theorem` | [HasRightInverse.surjective](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variantd835f9cf2f1994c317b5417ba1924e989ade46c319f830d1af0239e33465497e.lean/declarations/hasrightinverse-surjective--f2a0fb6c221d6180f88bfd7c.md) | 130 | `result-track:f2a0fb6c221d6180f88bfd7c01470ee1de5875bdee40006d9a431931bc8e122b` |
| 24 | `theorem` | [leftInverse_of_surjective_of_rightInverse](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variantd835f9cf2f1994c317b5417ba1924e989ade46c319f830d1af0239e33465497e.lean/declarations/leftinverse-of-surjective-of-rightinverse--b377aea9c8cdf8288ef1c010.md) | 133 | `result-track:b377aea9c8cdf8288ef1c01007fb788c19df6b5d8d89337502c6d406334ebf5f` |
| 25 | `theorem` | [injective_id](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variantd835f9cf2f1994c317b5417ba1924e989ade46c319f830d1af0239e33465497e.lean/declarations/injective-id--56d0131c3217341cc11ff3ea.md) | 141 | `result-track:56d0131c3217341cc11ff3eaa074a5e0185733a63465968742fb5015cb602cf0` |
| 26 | `theorem` | [surjective_id](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variantd835f9cf2f1994c317b5417ba1924e989ade46c319f830d1af0239e33465497e.lean/declarations/surjective-id--998187e068bd14a4b1648eb5.md) | 143 | `result-track:998187e068bd14a4b1648eb555d3307c5a60a782c417081503e20bb75eed5718` |
| 27 | `theorem` | [bijective_id](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variantd835f9cf2f1994c317b5417ba1924e989ade46c319f830d1af0239e33465497e.lean/declarations/bijective-id--70ebb625ebd26d36a36b1b5c.md) | 145 | `result-track:70ebb625ebd26d36a36b1b5cb9eef5db021ca82838dd44629da5e37054167b1c` |
| 28 | `theorem` | [Injective.eq_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variantd835f9cf2f1994c317b5417ba1924e989ade46c319f830d1af0239e33465497e.lean/declarations/injective-eq-iff--924bc4c391b4798fef506d09.md) | 150 | `result-track:924bc4c391b4798fef506d092d576b754cbe1adeab1939fd0cf70dd160e3a47d` |
| 29 | `theorem` | [Injective.beq_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variantd835f9cf2f1994c317b5417ba1924e989ade46c319f830d1af0239e33465497e.lean/declarations/injective-beq-eq--ecec2b381bbfc2b5793e0bf6.md) | 153 | `result-track:ecec2b381bbfc2b5793e0bf6c4f42ebfa7b303ec4bd71816835642e6548f4504` |
| 30 | `theorem` | [Injective.eq_iff'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variantd835f9cf2f1994c317b5417ba1924e989ade46c319f830d1af0239e33465497e.lean/declarations/injective-eq-iff--45d98572a5e8c78a85208b39.md) | 157 | `result-track:45d98572a5e8c78a85208b39b52fedf900badd8cc1b10ecbec69d8fe3531f57e` |
| 31 | `theorem` | [Injective.ne](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variantd835f9cf2f1994c317b5417ba1924e989ade46c319f830d1af0239e33465497e.lean/declarations/injective-ne--fd1cab73da8eebb009ed6731.md) | 160 | `result-track:fd1cab73da8eebb009ed67319c29d9e98f20568ccf335c783ed5540d25df7c8d` |
| 32 | `theorem` | [Injective.ne_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variantd835f9cf2f1994c317b5417ba1924e989ade46c319f830d1af0239e33465497e.lean/declarations/injective-ne-iff--2b8788a6be03991b2dc15e7c.md) | 163 | `result-track:2b8788a6be03991b2dc15e7cc68fde9941b7bdcfecdabcc19c23b595dfe39cd3` |
| 33 | `theorem` | [Injective.ne_iff'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variantd835f9cf2f1994c317b5417ba1924e989ade46c319f830d1af0239e33465497e.lean/declarations/injective-ne-iff--bf33965dea830dc8fe6d9109.md) | 166 | `result-track:bf33965dea830dc8fe6d9109e48171da80173d0a05b84a4db8d4acf6be4ac5bf` |
| 34 | `theorem` | [LeftInverse.id](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variantd835f9cf2f1994c317b5417ba1924e989ade46c319f830d1af0239e33465497e.lean/declarations/leftinverse-id--cc5356fe2df71f25970f4761.md) | 175 | `result-track:cc5356fe2df71f25970f47618955029b19d24161ec700cdb5d06f1cb4e085391` |
| 35 | `theorem` | [RightInverse.id](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variantd835f9cf2f1994c317b5417ba1924e989ade46c319f830d1af0239e33465497e.lean/declarations/rightinverse-id--c5af05169ec6b553841ca18f.md) | 178 | `result-track:c5af05169ec6b553841ca18ff91f79ec6bdac93e755a5ed7fae9d3931c2fcec7` |
| 36 | `def` | [IsFixedPt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variantd835f9cf2f1994c317b5417ba1924e989ade46c319f830d1af0239e33465497e.lean/declarations/isfixedpt--7bfa7b7427c073cb5048dad1.md) | 182 | `declaration-track:7bfa7b7427c073cb5048dad1e60db9a5f01887e1b76b04ef4d289ad098b95b70` |
| 37 | `def` | [map](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variantd835f9cf2f1994c317b5417ba1924e989ade46c319f830d1af0239e33465497e.lean/declarations/map--ed0209b14c724737b411252c.md) | 192 | `declaration-track:ed0209b14c724737b411252cc8727502e5a0983f45d77ac332baabcad7af99f9` |
| 38 | `lemma` | [map_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variantd835f9cf2f1994c317b5417ba1924e989ade46c319f830d1af0239e33465497e.lean/declarations/map-apply--54efbf4e92a314c3e522cf4a.md) | 195 | `result-track:54efbf4e92a314c3e522cf4adf5ae94736911bde79431999cbf6e60b27db8ff0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
