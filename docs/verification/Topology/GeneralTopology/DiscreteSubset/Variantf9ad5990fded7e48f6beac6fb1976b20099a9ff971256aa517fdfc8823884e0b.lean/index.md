# Verification target: GRWTSK.Topology.GeneralTopology.DiscreteSubset.Variantf9ad5990fded7e48f6beac6fb1976b20099a9ff971256aa517fdfc8823884e0b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "519b71a188b964b6240c09241cd1d599fa5803ab",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/DiscreteSubset/Variantf9ad5990fded7e48f6beac6fb1976b20099a9ff971256aa517fdfc8823884e0b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/DiscreteSubset/Variantf9ad5990fded7e48f6beac6fb1976b20099a9ff971256aa517fdfc8823884e0b.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/DiscreteSubset/Variantf9ad5990fded7e48f6beac6fb1976b20099a9ff971256aa517fdfc8823884e0b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `519b71a188b964b6240c09241cd1d599fa5803ab`.

Source path: `GRWTSK/Topology/GeneralTopology/DiscreteSubset/Variantf9ad5990fded7e48f6beac6fb1976b20099a9ff971256aa517fdfc8823884e0b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/DiscreteSubset/Variantf9ad5990fded7e48f6beac6fb1976b20099a9ff971256aa517fdfc8823884e0b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.TautoSet` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Constructions` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Subset` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Separation.Basic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [tendsto_cofinite_cocompact_iff](../../../../../mathematics/Topology/GeneralTopology/DiscreteSubset/Variantf9ad5990fded7e48f6beac6fb1976b20099a9ff971256aa517fdfc8823884e0b.lean/declarations/tendsto-cofinite-cocompact-iff--3dd4252c0975c7f803024391.md) | 47 | `result-track:3dd4252c0975c7f8030243919951a3b9447a1cafbc93efa565d4747d2397577c` |
| 2 | `lemma` | [Continuous.discrete_of_tendsto_cofinite_cocompact](../../../../../mathematics/Topology/GeneralTopology/DiscreteSubset/Variantf9ad5990fded7e48f6beac6fb1976b20099a9ff971256aa517fdfc8823884e0b.lean/declarations/continuous-discrete-of-tendsto-cofinite-cocompact--b6561642c6db59c3d80cc57a.md) | 55 | `result-track:b6561642c6db59c3d80cc57a02319ffd790903bf0bb9053eee203108ca68d1c1` |
| 3 | `lemma` | [tendsto_cofinite_cocompact_of_discrete](../../../../../mathematics/Topology/GeneralTopology/DiscreteSubset/Variantf9ad5990fded7e48f6beac6fb1976b20099a9ff971256aa517fdfc8823884e0b.lean/declarations/tendsto-cofinite-cocompact-of-discrete--9487b45081637436a4bd4f54.md) | 65 | `result-track:9487b45081637436a4bd4f54282fce0433115910eac6ad3fa18a21d11a15c09f` |
| 4 | `lemma` | [IsClosed.tendsto_coe_cofinite_of_discreteTopology](../../../../../mathematics/Topology/GeneralTopology/DiscreteSubset/Variantf9ad5990fded7e48f6beac6fb1976b20099a9ff971256aa517fdfc8823884e0b.lean/declarations/isclosed-tendsto-coe-cofinite-of-discretetopology--a9b7693c5a931b07bf8d954c.md) | 71 | `result-track:a9b7693c5a931b07bf8d954cd437f87182790ab886eb624f54e129e73fd49172` |
| 5 | `lemma` | [IsClosed.tendsto_coe_cofinite_iff](../../../../../mathematics/Topology/GeneralTopology/DiscreteSubset/Variantf9ad5990fded7e48f6beac6fb1976b20099a9ff971256aa517fdfc8823884e0b.lean/declarations/isclosed-tendsto-coe-cofinite-iff--6d2745d8273ed0fb494bdbc1.md) | 76 | `result-track:6d2745d8273ed0fb494bdbc1fb0eb33fc61e5e73cea9d28bc53ac840b4843a4c` |
| 6 | `theorem` | [isClosed_and_discrete_iff](../../../../../mathematics/Topology/GeneralTopology/DiscreteSubset/Variantf9ad5990fded7e48f6beac6fb1976b20099a9ff971256aa517fdfc8823884e0b.lean/declarations/isclosed-and-discrete-iff--38bfd811e9bd69caef1dcdfa.md) | 90 | `result-track:38bfd811e9bd69caef1dcdfa4dcc58786b69a6ca31f35bff95051673960fc44a` |
| 7 | `def` | [Filter.codiscreteWithin](../../../../../mathematics/Topology/GeneralTopology/DiscreteSubset/Variantf9ad5990fded7e48f6beac6fb1976b20099a9ff971256aa517fdfc8823884e0b.lean/declarations/filter-codiscretewithin--7fc91eb3e78cda9f339da3a6.md) | 103 | `declaration-track:7fc91eb3e78cda9f339da3a6dbd1d0b517cfbba55430b5115ceaecaa98664e61` |
| 8 | `lemma` | [mem_codiscreteWithin](../../../../../mathematics/Topology/GeneralTopology/DiscreteSubset/Variantf9ad5990fded7e48f6beac6fb1976b20099a9ff971256aa517fdfc8823884e0b.lean/declarations/mem-codiscretewithin--37b989a74b94cd258965cbcd.md) | 105 | `result-track:37b989a74b94cd258965cbcd46a1fea949e5ae8a526b4bb2e60e119cebeb46a3` |
| 9 | `lemma` | [mem_codiscreteWithin_accPt](../../../../../mathematics/Topology/GeneralTopology/DiscreteSubset/Variantf9ad5990fded7e48f6beac6fb1976b20099a9ff971256aa517fdfc8823884e0b.lean/declarations/mem-codiscretewithin-accpt--928c546f30918ff5dba5449b.md) | 112 | `result-track:928c546f30918ff5dba5449b445fa9b3f65e3d715ee226b066cd0810acd720dd` |
| 10 | `theorem` | [Filter.self_mem_codiscreteWithin](../../../../../mathematics/Topology/GeneralTopology/DiscreteSubset/Variantf9ad5990fded7e48f6beac6fb1976b20099a9ff971256aa517fdfc8823884e0b.lean/declarations/filter-self-mem-codiscretewithin--b35192ed9873da42107106ad.md) | 118 | `result-track:b35192ed9873da42107106adc1122499699524c8c640937898fc327be5b00172` |
| 11 | `lemma` | [Filter.codiscreteWithin.mono](../../../../../mathematics/Topology/GeneralTopology/DiscreteSubset/Variantf9ad5990fded7e48f6beac6fb1976b20099a9ff971256aa517fdfc8823884e0b.lean/declarations/filter-codiscretewithin-mono--6e1abe6bedcdf2fc81503ee2.md) | 122 | `result-track:6e1abe6bedcdf2fc81503ee24bee02ce8918698d258a457dcc7405d8728e9cd6` |
| 12 | `theorem` | [discreteTopology_of_codiscreteWithin](../../../../../mathematics/Topology/GeneralTopology/DiscreteSubset/Variantf9ad5990fded7e48f6beac6fb1976b20099a9ff971256aa517fdfc8823884e0b.lean/declarations/discretetopology-of-codiscretewithin--f05c2c199540df5f776f094e.md) | 128 | `result-track:f05c2c199540df5f776f094ebcc053dedc6d18b462506f02a76ff90791a6f368` |
| 13 | `lemma` | [codiscreteWithin_iff_locallyEmptyComplementWithin](../../../../../mathematics/Topology/GeneralTopology/DiscreteSubset/Variantf9ad5990fded7e48f6beac6fb1976b20099a9ff971256aa517fdfc8823884e0b.lean/declarations/codiscretewithin-iff-locallyemptycomplementwithin--454746a317e2824fc43d6809.md) | 139 | `result-track:454746a317e2824fc43d6809fb11be7db68a9c4813f373c895957870c68f49bf` |
| 14 | `theorem` | [isClosed_sdiff_of_codiscreteWithin](../../../../../mathematics/Topology/GeneralTopology/DiscreteSubset/Variantf9ad5990fded7e48f6beac6fb1976b20099a9ff971256aa517fdfc8823884e0b.lean/declarations/isclosed-sdiff-of-codiscretewithin--fbdeaf05873b7931331cab3a.md) | 148 | `result-track:fbdeaf05873b7931331cab3a708b51c0bc6587daef51d255136570dfecda4e6e` |
| 15 | `theorem` | [nhdsNE_of_nhdsNE_sdiff_finite](../../../../../mathematics/Topology/GeneralTopology/DiscreteSubset/Variantf9ad5990fded7e48f6beac6fb1976b20099a9ff971256aa517fdfc8823884e0b.lean/declarations/nhdsne-of-nhdsne-sdiff-finite--55bb2af83880988831b1d6e2.md) | 167 | `result-track:55bb2af83880988831b1d6e247f5de1798e6e04fd5d1073572f1c0ec326f3120` |
| 16 | `theorem` | [codiscreteWithin_iff_locallyFiniteComplementWithin](../../../../../mathematics/Topology/GeneralTopology/DiscreteSubset/Variantf9ad5990fded7e48f6beac6fb1976b20099a9ff971256aa517fdfc8823884e0b.lean/declarations/codiscretewithin-iff-locallyfinitecomplementwithin--f55fcec522848e8059b2a481.md) | 184 | `result-track:f55fcec522848e8059b2a4818b8f04fa22b6996fedf665427468ba0faa16a900` |
| 17 | `def` | [Filter.codiscrete](../../../../../mathematics/Topology/GeneralTopology/DiscreteSubset/Variantf9ad5990fded7e48f6beac6fb1976b20099a9ff971256aa517fdfc8823884e0b.lean/declarations/filter-codiscrete--9f1c6fdd77ea3a291900bb64.md) | 205 | `declaration-track:9f1c6fdd77ea3a291900bb64d6c0b6bd05abeedc6b32d93bf7a967828cf020ea` |
| 18 | `lemma` | [mem_codiscrete](../../../../../mathematics/Topology/GeneralTopology/DiscreteSubset/Variantf9ad5990fded7e48f6beac6fb1976b20099a9ff971256aa517fdfc8823884e0b.lean/declarations/mem-codiscrete--f39de67e13114b7fd2ea46fb.md) | 207 | `result-track:f39de67e13114b7fd2ea46fbe64601130d960c98a8fba1e4bec5fc063e135e83` |
| 19 | `lemma` | [mem_codiscrete_accPt](../../../../../mathematics/Topology/GeneralTopology/DiscreteSubset/Variantf9ad5990fded7e48f6beac6fb1976b20099a9ff971256aa517fdfc8823884e0b.lean/declarations/mem-codiscrete-accpt--61af09b6d17a043d7ec780b7.md) | 211 | `result-track:61af09b6d17a043d7ec780b7e03650a287885c18ad1892a44cc5d59220b812ec` |
| 20 | `lemma` | [mem_codiscrete'](../../../../../mathematics/Topology/GeneralTopology/DiscreteSubset/Variantf9ad5990fded7e48f6beac6fb1976b20099a9ff971256aa517fdfc8823884e0b.lean/declarations/mem-codiscrete--6c7cd272f52781e3dfd9ef60.md) | 215 | `result-track:6c7cd272f52781e3dfd9ef6072e15bd07be9d0cf5da191fc00b2af009780c0fd` |
| 21 | `lemma` | [mem_codiscrete_subtype_iff_mem_codiscreteWithin](../../../../../mathematics/Topology/GeneralTopology/DiscreteSubset/Variantf9ad5990fded7e48f6beac6fb1976b20099a9ff971256aa517fdfc8823884e0b.lean/declarations/mem-codiscrete-subtype-iff-mem-codiscretewithin--2a233d547b144de0ed4e62a9.md) | 219 | `result-track:2a233d547b144de0ed4e62a920ba6dae7a0c813f208774929a2b8736f48cbaac` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
