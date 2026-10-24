# Verification target: GRWTSK.Topology.GeneralTopology.Hom.Variant15cace5750b1cf491442542bd5df8e7329d4e9257f1c7dcde838ea6f42cd2683

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "276549f0864ad0c7e629bb188cc47247efa38b1c",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Hom/Variant15cace5750b1cf491442542bd5df8e7329d4e9257f1c7dcde838ea6f42cd2683.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Hom/Variant15cace5750b1cf491442542bd5df8e7329d4e9257f1c7dcde838ea6f42cd2683.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Hom/Variant15cace5750b1cf491442542bd5df8e7329d4e9257f1c7dcde838ea6f42cd2683.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `276549f0864ad0c7e629bb188cc47247efa38b1c`.

Source path: `GRWTSK/Topology/GeneralTopology/Hom/Variant15cace5750b1cf491442542bd5df8e7329d4e9257f1c7dcde838ea6f42cd2683.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Hom/Variant15cace5750b1cf491442542bd5df8e7329d4e9257f1c7dcde838ea6f42cd2683.lean.json)

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
| 1 | `structure` | [LocallyBoundedMap](../../../../../mathematics/Topology/GeneralTopology/Hom/Variant15cace5750b1cf491442542bd5df8e7329d4e9257f1c7dcde838ea6f42cd2683.lean/declarations/locallyboundedmap--e926cff0d7b87b5da831fcfd.md) | 39 | `declaration-track:e926cff0d7b87b5da831fcfd3691fdba173ad29b1e6360cb668d159e95d263c0` |
| 2 | `class` | [LocallyBoundedMapClass](../../../../../mathematics/Topology/GeneralTopology/Hom/Variant15cace5750b1cf491442542bd5df8e7329d4e9257f1c7dcde838ea6f42cd2683.lean/declarations/locallyboundedmapclass--4bc71bf3848e4123d0b7c846.md) | 51 | `declaration-track:4bc71bf3848e4123d0b7c8463ae79d5efe719d3c9410e7f6f3468fb655b9622e` |
| 3 | `theorem` | [Bornology.IsBounded.image](../../../../../mathematics/Topology/GeneralTopology/Hom/Variant15cace5750b1cf491442542bd5df8e7329d4e9257f1c7dcde838ea6f42cd2683.lean/declarations/bornology-isbounded-image--6cc5eca8ec5d652eebbd3b72.md) | 63 | `result-track:6cc5eca8ec5d652eebbd3b7296093fc7c416aa641718cc8d580e7cb46a05fbd5` |
| 4 | `def` | [LocallyBoundedMapClass.toLocallyBoundedMap](../../../../../mathematics/Topology/GeneralTopology/Hom/Variant15cace5750b1cf491442542bd5df8e7329d4e9257f1c7dcde838ea6f42cd2683.lean/declarations/locallyboundedmapclass-tolocallyboundedmap--f66611cbce5594868c0b423c.md) | 71 | `declaration-track:f66611cbce5594868c0b423cb0a70906eb19d72008a0f3cdc3e87c5e8efba595` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Hom/Variant15cace5750b1cf491442542bd5df8e7329d4e9257f1c7dcde838ea6f42cd2683.lean/declarations/instance--256fc15f89224b4f78bc912e.md) | 76 | `declaration-track:256fc15f89224b4f78bc912e69ab5b211fead08facf687814dc14a06996575c0` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Hom/Variant15cace5750b1cf491442542bd5df8e7329d4e9257f1c7dcde838ea6f42cd2683.lean/declarations/instance--5c5fe03ec251352b637a07bb.md) | 84 | `declaration-track:5c5fe03ec251352b637a07bbb5ad8b72fd6e21fb42c713c74a4bbd305be655ff` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Hom/Variant15cace5750b1cf491442542bd5df8e7329d4e9257f1c7dcde838ea6f42cd2683.lean/declarations/instance--219646f019505cf95ef96a82.md) | 91 | `declaration-track:219646f019505cf95ef96a82b980987df9dd950dc44c44dc634a7b534ed4aa5f` |
| 8 | `theorem` | [ext](../../../../../mathematics/Topology/GeneralTopology/Hom/Variant15cace5750b1cf491442542bd5df8e7329d4e9257f1c7dcde838ea6f42cd2683.lean/declarations/ext--e7fd8036dc2e57839c699064.md) | 95 | `result-track:e7fd8036dc2e57839c699064ca4d6249b03d2f86a848b4f42fadd3e700ad8286` |
| 9 | `def` | [copy](../../../../../mathematics/Topology/GeneralTopology/Hom/Variant15cace5750b1cf491442542bd5df8e7329d4e9257f1c7dcde838ea6f42cd2683.lean/declarations/copy--71ff22ba90aa3677e10c7e83.md) | 100 | `declaration-track:71ff22ba90aa3677e10c7e83970ca6f643d57cfc02ff39a1e9c753146796db59` |
| 10 | `theorem` | [coe_copy](../../../../../mathematics/Topology/GeneralTopology/Hom/Variant15cace5750b1cf491442542bd5df8e7329d4e9257f1c7dcde838ea6f42cd2683.lean/declarations/coe-copy--a7d94e0828c321b51771c249.md) | 104 | `result-track:a7d94e0828c321b51771c24969af5b68ed085225ae973e87be303a39ed29798b` |
| 11 | `theorem` | [copy_eq](../../../../../mathematics/Topology/GeneralTopology/Hom/Variant15cace5750b1cf491442542bd5df8e7329d4e9257f1c7dcde838ea6f42cd2683.lean/declarations/copy-eq--0975e2c535984881de03d2c3.md) | 107 | `result-track:0975e2c535984881de03d2c3096e05396f7ea6f0cb6de94e032464660f295380` |
| 12 | `def` | [ofMapBounded](../../../../../mathematics/Topology/GeneralTopology/Hom/Variant15cace5750b1cf491442542bd5df8e7329d4e9257f1c7dcde838ea6f42cd2683.lean/declarations/ofmapbounded--27f9e28bf3170353f07c3d05.md) | 112 | `declaration-track:27f9e28bf3170353f07c3d0538ed6f5478266fe47ec9a143cd47ba12ad94c174` |
| 13 | `theorem` | [coe_ofMapBounded](../../../../../mathematics/Topology/GeneralTopology/Hom/Variant15cace5750b1cf491442542bd5df8e7329d4e9257f1c7dcde838ea6f42cd2683.lean/declarations/coe-ofmapbounded--bede8e98fb96b18eb4abaec8.md) | 117 | `result-track:bede8e98fb96b18eb4abaec8af86ae67e8ae51ddb78a472b1453e51b145da571` |
| 14 | `theorem` | [ofMapBounded_apply](../../../../../mathematics/Topology/GeneralTopology/Hom/Variant15cace5750b1cf491442542bd5df8e7329d4e9257f1c7dcde838ea6f42cd2683.lean/declarations/ofmapbounded-apply--3cf5def74d5408f1d2b76487.md) | 121 | `result-track:3cf5def74d5408f1d2b7648720d34c5994d72b2a2757475ff5528a28bc0900df` |
| 15 | `def` | [id](../../../../../mathematics/Topology/GeneralTopology/Hom/Variant15cace5750b1cf491442542bd5df8e7329d4e9257f1c7dcde838ea6f42cd2683.lean/declarations/id--a1b1a1719297c949f387b0da.md) | 127 | `declaration-track:a1b1a1719297c949f387b0da3427cc7ce36ea50584203a31cd5983d2664c81e2` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Hom/Variant15cace5750b1cf491442542bd5df8e7329d4e9257f1c7dcde838ea6f42cd2683.lean/declarations/instance--f94c925cd514aed2c2424828.md) | 130 | `declaration-track:f94c925cd514aed2c24248282354470754d8f51cbce1effe183e106a71d70b61` |
| 17 | `theorem` | [coe_id](../../../../../mathematics/Topology/GeneralTopology/Hom/Variant15cace5750b1cf491442542bd5df8e7329d4e9257f1c7dcde838ea6f42cd2683.lean/declarations/coe-id--78cbd577bb4e0ffaf5f7403d.md) | 134 | `result-track:78cbd577bb4e0ffaf5f7403d648284107f247181ec1a3a497d52f2d0a4244d44` |
| 18 | `theorem` | [id_apply](../../../../../mathematics/Topology/GeneralTopology/Hom/Variant15cace5750b1cf491442542bd5df8e7329d4e9257f1c7dcde838ea6f42cd2683.lean/declarations/id-apply--4bcb85cd0908091f0786d667.md) | 140 | `result-track:4bcb85cd0908091f0786d667c4b8a562bda3c9f88ab152d88d2bdf0861cf5347` |
| 19 | `def` | [comp](../../../../../mathematics/Topology/GeneralTopology/Hom/Variant15cace5750b1cf491442542bd5df8e7329d4e9257f1c7dcde838ea6f42cd2683.lean/declarations/comp--a54d0d91844a6bac26f26f54.md) | 144 | `declaration-track:a54d0d91844a6bac26f26f54152d2e66f6a45caff18e4327efff8371c72c8f9d` |
| 20 | `theorem` | [coe_comp](../../../../../mathematics/Topology/GeneralTopology/Hom/Variant15cace5750b1cf491442542bd5df8e7329d4e9257f1c7dcde838ea6f42cd2683.lean/declarations/coe-comp--f2cc698edd09031d61f1f836.md) | 150 | `result-track:f2cc698edd09031d61f1f8362f78796f299b907fd046ca650bb1dbc8b31cec29` |
| 21 | `theorem` | [comp_apply](../../../../../mathematics/Topology/GeneralTopology/Hom/Variant15cace5750b1cf491442542bd5df8e7329d4e9257f1c7dcde838ea6f42cd2683.lean/declarations/comp-apply--51ab1470edf90faf34bffbc9.md) | 154 | `result-track:51ab1470edf90faf34bffbc938c9ee95da94d7024f918aac27c70166b63ebfac` |
| 22 | `theorem` | [comp_assoc](../../../../../mathematics/Topology/GeneralTopology/Hom/Variant15cace5750b1cf491442542bd5df8e7329d4e9257f1c7dcde838ea6f42cd2683.lean/declarations/comp-assoc--2becf4babe0940e6faddcffb.md) | 159 | `result-track:2becf4babe0940e6faddcffbe5fa27ad66cb36e2144aaaff7d55c9db508cad62` |
| 23 | `theorem` | [comp_id](../../../../../mathematics/Topology/GeneralTopology/Hom/Variant15cace5750b1cf491442542bd5df8e7329d4e9257f1c7dcde838ea6f42cd2683.lean/declarations/comp-id--ca694f2aa7eb215ff7158944.md) | 164 | `result-track:ca694f2aa7eb215ff7158944ff927d7dbdd8f8dd3fca4453d7ae958f51a5ce79` |
| 24 | `theorem` | [id_comp](../../../../../mathematics/Topology/GeneralTopology/Hom/Variant15cace5750b1cf491442542bd5df8e7329d4e9257f1c7dcde838ea6f42cd2683.lean/declarations/id-comp--79c77e42fb2e18cf47ccb23d.md) | 168 | `result-track:79c77e42fb2e18cf47ccb23d5e9703f8d428188e6872a85ac475a23a210af820` |
| 25 | `theorem` | [cancel_right](../../../../../mathematics/Topology/GeneralTopology/Hom/Variant15cace5750b1cf491442542bd5df8e7329d4e9257f1c7dcde838ea6f42cd2683.lean/declarations/cancel-right--8d16ac74d387f6d290c2471a.md) | 172 | `result-track:8d16ac74d387f6d290c2471a2a0162546eed0d359e120d8e7231df7aa06af95b` |
| 26 | `theorem` | [cancel_left](../../../../../mathematics/Topology/GeneralTopology/Hom/Variant15cace5750b1cf491442542bd5df8e7329d4e9257f1c7dcde838ea6f42cd2683.lean/declarations/cancel-left--dd017eaa3a988b235ae1f0c1.md) | 177 | `result-track:dd017eaa3a988b235ae1f0c15bddd3bec2b1cfa07126890b6213c4d937e0d35e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
