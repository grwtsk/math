# Verification target: GRWTSK.Topology.GeneralTopology.Hom.Variant68c2fc390d1432ef05e6c8f78bc4031a28198f7065aa9e9d9516c96112c0aff2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d56877b276e21becfaae28db72d31db56a327439",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Hom/Variant68c2fc390d1432ef05e6c8f78bc4031a28198f7065aa9e9d9516c96112c0aff2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Hom/Variant68c2fc390d1432ef05e6c8f78bc4031a28198f7065aa9e9d9516c96112c0aff2.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Hom/Variant68c2fc390d1432ef05e6c8f78bc4031a28198f7065aa9e9d9516c96112c0aff2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d56877b276e21becfaae28db72d31db56a327439`.

Source path: `GRWTSK/Topology/GeneralTopology/Hom/Variant68c2fc390d1432ef05e6c8f78bc4031a28198f7065aa9e9d9516c96112c0aff2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Hom/Variant68c2fc390d1432ef05e6c8f78bc4031a28198f7065aa9e9d9516c96112c0aff2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Bornology.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [LocallyBoundedMap](../../../../../mathematics/Topology/GeneralTopology/Hom/Variant68c2fc390d1432ef05e6c8f78bc4031a28198f7065aa9e9d9516c96112c0aff2.lean/declarations/locallyboundedmap--8796943dff2e99dabfb2a6d0.md) | 41 | `declaration-track:8796943dff2e99dabfb2a6d0cdbe1557dce522510668d61f164662efdf881f0b` |
| 2 | `class` | [LocallyBoundedMapClass](../../../../../mathematics/Topology/GeneralTopology/Hom/Variant68c2fc390d1432ef05e6c8f78bc4031a28198f7065aa9e9d9516c96112c0aff2.lean/declarations/locallyboundedmapclass--6c2d5b26a261ac642cf9ead0.md) | 54 | `declaration-track:6c2d5b26a261ac642cf9ead0f2cce20695cc5a026ac2dcf09ce2880b097e263d` |
| 3 | `theorem` | [IsBounded.image](../../../../../mathematics/Topology/GeneralTopology/Hom/Variant68c2fc390d1432ef05e6c8f78bc4031a28198f7065aa9e9d9516c96112c0aff2.lean/declarations/isbounded-image--77ab1432819f74ecf709b3fa.md) | 65 | `result-track:77ab1432819f74ecf709b3fa3323edab8f8ec42d59a1b7b845161366eb3e0674` |
| 4 | `def` | [LocallyBoundedMapClass.toLocallyBoundedMap](../../../../../mathematics/Topology/GeneralTopology/Hom/Variant68c2fc390d1432ef05e6c8f78bc4031a28198f7065aa9e9d9516c96112c0aff2.lean/declarations/locallyboundedmapclass-tolocallyboundedmap--d72520d424d048d12cfbbaab.md) | 74 | `declaration-track:d72520d424d048d12cfbbaabba1e5878c4a6f596232a0fb2fdd1d3918f9e270e` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Hom/Variant68c2fc390d1432ef05e6c8f78bc4031a28198f7065aa9e9d9516c96112c0aff2.lean/declarations/instance--f8293e815d19e1b16f12a576.md) | 79 | `declaration-track:f8293e815d19e1b16f12a576e66d4782543a14941b12a30447b95d76b81aa0e5` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Hom/Variant68c2fc390d1432ef05e6c8f78bc4031a28198f7065aa9e9d9516c96112c0aff2.lean/declarations/instance--87f2dec21b3b08a11effef79.md) | 87 | `declaration-track:87f2dec21b3b08a11effef79852795c9577c963133c963ed28a65966715bb32a` |
| 7 | `theorem` | [ext](../../../../../mathematics/Topology/GeneralTopology/Hom/Variant68c2fc390d1432ef05e6c8f78bc4031a28198f7065aa9e9d9516c96112c0aff2.lean/declarations/ext--97325435572fde122cfb98f4.md) | 105 | `result-track:97325435572fde122cfb98f4c179909eb8c00d426239b5a1c0223f76785c0641` |
| 8 | `def` | [copy](../../../../../mathematics/Topology/GeneralTopology/Hom/Variant68c2fc390d1432ef05e6c8f78bc4031a28198f7065aa9e9d9516c96112c0aff2.lean/declarations/copy--c18d2055ca206ab07888d0be.md) | 111 | `declaration-track:c18d2055ca206ab07888d0be348814143718ca8229ca9cca1bddda330210d68b` |
| 9 | `theorem` | [coe_copy](../../../../../mathematics/Topology/GeneralTopology/Hom/Variant68c2fc390d1432ef05e6c8f78bc4031a28198f7065aa9e9d9516c96112c0aff2.lean/declarations/coe-copy--87ee20fdf8e3575541ec6d06.md) | 116 | `result-track:87ee20fdf8e3575541ec6d06f3e3e66aad5d7ad08e72b7611e55048a04889ce3` |
| 10 | `theorem` | [copy_eq](../../../../../mathematics/Topology/GeneralTopology/Hom/Variant68c2fc390d1432ef05e6c8f78bc4031a28198f7065aa9e9d9516c96112c0aff2.lean/declarations/copy-eq--2af8ed4e360ac2ed2cae5be4.md) | 120 | `result-track:2af8ed4e360ac2ed2cae5be49748871efeb164481bfe99594457ea98508215c3` |
| 11 | `def` | [ofMapBounded](../../../../../mathematics/Topology/GeneralTopology/Hom/Variant68c2fc390d1432ef05e6c8f78bc4031a28198f7065aa9e9d9516c96112c0aff2.lean/declarations/ofmapbounded--98e990afb303b2c5f954efb8.md) | 126 | `declaration-track:98e990afb303b2c5f954efb8301625b2cfaf356e4ecd97f862500e4a0329749e` |
| 12 | `theorem` | [coe_ofMapBounded](../../../../../mathematics/Topology/GeneralTopology/Hom/Variant68c2fc390d1432ef05e6c8f78bc4031a28198f7065aa9e9d9516c96112c0aff2.lean/declarations/coe-ofmapbounded--a1306d7644b240140bc138be.md) | 133 | `result-track:a1306d7644b240140bc138be68119a0be30deaa3a8adc4ea23675b54726d8925` |
| 13 | `theorem` | [ofMapBounded_apply](../../../../../mathematics/Topology/GeneralTopology/Hom/Variant68c2fc390d1432ef05e6c8f78bc4031a28198f7065aa9e9d9516c96112c0aff2.lean/declarations/ofmapbounded-apply--fdbe5f5165611b4c2279b726.md) | 138 | `result-track:fdbe5f5165611b4c2279b72647e04d56aa9d96c58c9dd40518f0e624a1202296` |
| 14 | `def` | [id](../../../../../mathematics/Topology/GeneralTopology/Hom/Variant68c2fc390d1432ef05e6c8f78bc4031a28198f7065aa9e9d9516c96112c0aff2.lean/declarations/id--fb43f7fe44b89e4b8c264598.md) | 145 | `declaration-track:fb43f7fe44b89e4b8c2645986bcf8f66ef32d927c3d037fd853105b4fd5964c5` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Hom/Variant68c2fc390d1432ef05e6c8f78bc4031a28198f7065aa9e9d9516c96112c0aff2.lean/declarations/instance--f57dd38d749aeac72d26f74f.md) | 149 | `declaration-track:f57dd38d749aeac72d26f74f7dd4d0bae1e866e4118675a30f57ee8dbf5aa5fb` |
| 16 | `theorem` | [coe_id](../../../../../mathematics/Topology/GeneralTopology/Hom/Variant68c2fc390d1432ef05e6c8f78bc4031a28198f7065aa9e9d9516c96112c0aff2.lean/declarations/coe-id--161767002d200ab976b8fae8.md) | 153 | `result-track:161767002d200ab976b8fae8c62f83e077066c89ba2b2706b5648f89097bd67a` |
| 17 | `theorem` | [id_apply](../../../../../mathematics/Topology/GeneralTopology/Hom/Variant68c2fc390d1432ef05e6c8f78bc4031a28198f7065aa9e9d9516c96112c0aff2.lean/declarations/id-apply--4bdd2bc102c597d9e26c0b7b.md) | 160 | `result-track:4bdd2bc102c597d9e26c0b7b803bdb186b4760be74761b0b5ba1c49fbb19e44c` |
| 18 | `def` | [comp](../../../../../mathematics/Topology/GeneralTopology/Hom/Variant68c2fc390d1432ef05e6c8f78bc4031a28198f7065aa9e9d9516c96112c0aff2.lean/declarations/comp--61f63f3e7dafda38214a0392.md) | 165 | `declaration-track:61f63f3e7dafda38214a039265872398e004a2914efe13db3a69e6c49fb7e60a` |
| 19 | `theorem` | [coe_comp](../../../../../mathematics/Topology/GeneralTopology/Hom/Variant68c2fc390d1432ef05e6c8f78bc4031a28198f7065aa9e9d9516c96112c0aff2.lean/declarations/coe-comp--aa78b778d7fc155c319fc3a3.md) | 173 | `result-track:aa78b778d7fc155c319fc3a34306633322bb958204d73099bb9bb87dabb53f0e` |
| 20 | `theorem` | [comp_apply](../../../../../mathematics/Topology/GeneralTopology/Hom/Variant68c2fc390d1432ef05e6c8f78bc4031a28198f7065aa9e9d9516c96112c0aff2.lean/declarations/comp-apply--14f6956668ca500b5f09f09f.md) | 178 | `result-track:14f6956668ca500b5f09f09f9ec75349b951dd3a8492adac4eacad9718b48f6c` |
| 21 | `theorem` | [comp_assoc](../../../../../mathematics/Topology/GeneralTopology/Hom/Variant68c2fc390d1432ef05e6c8f78bc4031a28198f7065aa9e9d9516c96112c0aff2.lean/declarations/comp-assoc--3d3ba1977a0820925d9054c4.md) | 184 | `result-track:3d3ba1977a0820925d9054c4abc0c266387c6fdc16e5fa65f1d6a6bdc04d54ef` |
| 22 | `theorem` | [comp_id](../../../../../mathematics/Topology/GeneralTopology/Hom/Variant68c2fc390d1432ef05e6c8f78bc4031a28198f7065aa9e9d9516c96112c0aff2.lean/declarations/comp-id--ed0934a7c71f21994cc43f80.md) | 190 | `result-track:ed0934a7c71f21994cc43f804a4b61ca017f8bbbde6d413e362493cf365b0fcb` |
| 23 | `theorem` | [id_comp](../../../../../mathematics/Topology/GeneralTopology/Hom/Variant68c2fc390d1432ef05e6c8f78bc4031a28198f7065aa9e9d9516c96112c0aff2.lean/declarations/id-comp--e532457a1b559770ba41b444.md) | 195 | `result-track:e532457a1b559770ba41b4442142972b78d864a0d75a24847dd18582d2cec2c3` |
| 24 | `theorem` | [cancel_right](../../../../../mathematics/Topology/GeneralTopology/Hom/Variant68c2fc390d1432ef05e6c8f78bc4031a28198f7065aa9e9d9516c96112c0aff2.lean/declarations/cancel-right--0ca0f46f155893e8afa71060.md) | 199 | `result-track:0ca0f46f155893e8afa710603d1c89a931589f2fe2cac03649bfb0767ab1ab57` |
| 25 | `theorem` | [cancel_left](../../../../../mathematics/Topology/GeneralTopology/Hom/Variant68c2fc390d1432ef05e6c8f78bc4031a28198f7065aa9e9d9516c96112c0aff2.lean/declarations/cancel-left--6883c8e456dc9e6688e47a5e.md) | 205 | `result-track:6883c8e456dc9e6688e47a5e490d976990a66dae435b8d14e639a77ce193000d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
