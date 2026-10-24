# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Basic.Variant51d32bfc6a8d37ec0bc2111761b1cdb4fedb9041bccd5d871386a9716e0da2c9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b610e84281b8fda464d6034dadfcd0fceb016846",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant51d32bfc6a8d37ec0bc2111761b1cdb4fedb9041bccd5d871386a9716e0da2c9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant51d32bfc6a8d37ec0bc2111761b1cdb4fedb9041bccd5d871386a9716e0da2c9.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant51d32bfc6a8d37ec0bc2111761b1cdb4fedb9041bccd5d871386a9716e0da2c9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b610e84281b8fda464d6034dadfcd0fceb016846`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant51d32bfc6a8d37ec0bc2111761b1cdb4fedb9041bccd5d871386a9716e0da2c9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant51d32bfc6a8d37ec0bc2111761b1cdb4fedb9041bccd5d871386a9716e0da2c9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Set.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Monotonicity.Attr` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [SetLike](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant51d32bfc6a8d37ec0bc2111761b1cdb4fedb9041bccd5d871386a9716e0da2c9.lean/declarations/setlike--765a6d74d12147815a4ba783.md) | 96 | `declaration-track:765a6d74d12147815a4ba7834b16a00e90dadbf36832860ef1290c838b47ee85` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant51d32bfc6a8d37ec0bc2111761b1cdb4fedb9041bccd5d871386a9716e0da2c9.lean/declarations/instance--483d78140532bc9997c2de98.md) | 108 | `declaration-track:483d78140532bc9997c2de988841d6ed8ce11f6909bdf7d5964b6686cc7dea3d` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant51d32bfc6a8d37ec0bc2111761b1cdb4fedb9041bccd5d871386a9716e0da2c9.lean/declarations/instance--f38763c9602737abea59330c.md) | 110 | `declaration-track:f38763c9602737abea59330c70c42406a57e7c8ac681ae99230447583204522b` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant51d32bfc6a8d37ec0bc2111761b1cdb4fedb9041bccd5d871386a9716e0da2c9.lean/declarations/instance--2f14ef3063dacad98b282af4.md) | 113 | `declaration-track:2f14ef3063dacad98b282af4c0a0a24f075247e9a4aa18d606e4aa8e7407ae1c` |
| 5 | `theorem` | [coe_sort_coe](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant51d32bfc6a8d37ec0bc2111761b1cdb4fedb9041bccd5d871386a9716e0da2c9.lean/declarations/coe-sort-coe--cb48781ac8c93a3e57f8c164.md) | 119 | `result-track:cb48781ac8c93a3e57f8c1644a86a184aae3a9a33bbc01ae3f391c4e2678e679` |
| 6 | `theorem` | [«exists»](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant51d32bfc6a8d37ec0bc2111761b1cdb4fedb9041bccd5d871386a9716e0da2c9.lean/declarations/exists--e70729f65deb4410a6357079.md) | 125 | `result-track:e70729f65deb4410a63570798e0086019c4fbe80e09bc8a9b393c842f17b2874` |
| 7 | `theorem` | [«forall»](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant51d32bfc6a8d37ec0bc2111761b1cdb4fedb9041bccd5d871386a9716e0da2c9.lean/declarations/forall--a2c226cf4bf0c7ef85fe4d0d.md) | 129 | `result-track:a2c226cf4bf0c7ef85fe4d0d08c6d1b1ff0d5153dd59f58d4ae7965ecf2af089` |
| 8 | `theorem` | [coe_injective](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant51d32bfc6a8d37ec0bc2111761b1cdb4fedb9041bccd5d871386a9716e0da2c9.lean/declarations/coe-injective--ef6b2de790aa4717c467892d.md) | 133 | `result-track:ef6b2de790aa4717c467892d392554984924dfca2a2dcec9aceb640f0c80d35a` |
| 9 | `theorem` | [coe_set_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant51d32bfc6a8d37ec0bc2111761b1cdb4fedb9041bccd5d871386a9716e0da2c9.lean/declarations/coe-set-eq--ba5932da3bd23e32c8d4ef0f.md) | 138 | `result-track:ba5932da3bd23e32c8d4ef0f240fefcb89adf7b2582ef7ff0be120c123d3244c` |
| 10 | `theorem` | [ext'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant51d32bfc6a8d37ec0bc2111761b1cdb4fedb9041bccd5d871386a9716e0da2c9.lean/declarations/ext--e7fd2c6fd87be1c85f56cbee.md) | 142 | `result-track:e7fd2c6fd87be1c85f56cbeeb73773f730724615dfa38886987548f06cb50fd8` |
| 11 | `theorem` | [ext'_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant51d32bfc6a8d37ec0bc2111761b1cdb4fedb9041bccd5d871386a9716e0da2c9.lean/declarations/ext-iff--bd5ce2422fa1effe2d282f75.md) | 146 | `result-track:bd5ce2422fa1effe2d282f7524a3cb4a7c62a478528c7add956e8ebdce04a26c` |
| 12 | `theorem` | [ext](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant51d32bfc6a8d37ec0bc2111761b1cdb4fedb9041bccd5d871386a9716e0da2c9.lean/declarations/ext--850452268dd12f4c2faa6fbb.md) | 151 | `result-track:850452268dd12f4c2faa6fbbca88731d04041c1346319213deb4ed3e9f8688ca` |
| 13 | `theorem` | [ext_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant51d32bfc6a8d37ec0bc2111761b1cdb4fedb9041bccd5d871386a9716e0da2c9.lean/declarations/ext-iff--b78632336e04dfd869059066.md) | 155 | `result-track:b78632336e04dfd8690590667df755b4618c5bbb773752b6b95f27fd0a983f2a` |
| 14 | `theorem` | [mem_coe](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant51d32bfc6a8d37ec0bc2111761b1cdb4fedb9041bccd5d871386a9716e0da2c9.lean/declarations/mem-coe--2229868acd063dc0570e2a63.md) | 160 | `result-track:2229868acd063dc0570e2a63d25fcd6cb855ab7463359a504f7ae371a76c83ff` |
| 15 | `theorem` | [coe_eq_coe](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant51d32bfc6a8d37ec0bc2111761b1cdb4fedb9041bccd5d871386a9716e0da2c9.lean/declarations/coe-eq-coe--5e34afdee84e415d8c9e999e.md) | 165 | `result-track:5e34afdee84e415d8c9e999e963e7a08ff22e51cd418cd7f124de52c9883c6ee` |
| 16 | `theorem` | [coe_mem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant51d32bfc6a8d37ec0bc2111761b1cdb4fedb9041bccd5d871386a9716e0da2c9.lean/declarations/coe-mem--11a5a7f4f519fd06ca7ce131.md) | 173 | `result-track:11a5a7f4f519fd06ca7ce1314ecab80e2b89eba9f3c93bb65b0bc7e6117d73b9` |
| 17 | `theorem` | [eta](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant51d32bfc6a8d37ec0bc2111761b1cdb4fedb9041bccd5d871386a9716e0da2c9.lean/declarations/eta--14f4cdd5ca41a0389605564e.md) | 178 | `result-track:14f4cdd5ca41a0389605564eba5e53c07764093a94ecf3d0751f1fcdc79623a3` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant51d32bfc6a8d37ec0bc2111761b1cdb4fedb9041bccd5d871386a9716e0da2c9.lean/declarations/instance--62c5a955282e36e4c7885a32.md) | 181 | `declaration-track:62c5a955282e36e4c7885a32fd3931f56e9361bdfa505d7e87b5c7b8ed95551d` |
| 19 | `theorem` | [le_def](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant51d32bfc6a8d37ec0bc2111761b1cdb4fedb9041bccd5d871386a9716e0da2c9.lean/declarations/le-def--92abc78a7a5436593cec555b.md) | 185 | `result-track:92abc78a7a5436593cec555b8813d0df1f7e0c2a530abf364fb7de90866b7cdb` |
| 20 | `theorem` | [coe_subset_coe](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant51d32bfc6a8d37ec0bc2111761b1cdb4fedb9041bccd5d871386a9716e0da2c9.lean/declarations/coe-subset-coe--f779dc424200b80f4197d919.md) | 190 | `result-track:f779dc424200b80f4197d9198229fb9e94098dd09275c78749ba97e3f9a75078` |
| 21 | `theorem` | [coe_mono](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant51d32bfc6a8d37ec0bc2111761b1cdb4fedb9041bccd5d871386a9716e0da2c9.lean/declarations/coe-mono--0582fa4ea36de097d0db6ac5.md) | 195 | `result-track:0582fa4ea36de097d0db6ac57afad0e866ca1ba3688117a5fe6bcbcb847c50fd` |
| 22 | `theorem` | [coe_ssubset_coe](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant51d32bfc6a8d37ec0bc2111761b1cdb4fedb9041bccd5d871386a9716e0da2c9.lean/declarations/coe-ssubset-coe--f172b79dee85e29b8fb652ff.md) | 199 | `result-track:f172b79dee85e29b8fb652ff6383666ebc8ef01359a2b777c8655b284019ebd3` |
| 23 | `theorem` | [coe_strictMono](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant51d32bfc6a8d37ec0bc2111761b1cdb4fedb9041bccd5d871386a9716e0da2c9.lean/declarations/coe-strictmono--88e67c68a4a16273d152350f.md) | 204 | `result-track:88e67c68a4a16273d152350f4c9ed2f5791c23a9b9339e53519eb57276b53268` |
| 24 | `theorem` | [not_le_iff_exists](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant51d32bfc6a8d37ec0bc2111761b1cdb4fedb9041bccd5d871386a9716e0da2c9.lean/declarations/not-le-iff-exists--1eea669217faceff017dbe4b.md) | 207 | `result-track:1eea669217faceff017dbe4bc6dfadee0fddad6ca3feca6054e58249b673c448` |
| 25 | `theorem` | [exists_of_lt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant51d32bfc6a8d37ec0bc2111761b1cdb4fedb9041bccd5d871386a9716e0da2c9.lean/declarations/exists-of-lt--0ae8abe49ea2c4fc4cca5065.md) | 211 | `result-track:0ae8abe49ea2c4fc4cca506553c1be03d2f97d15923154be297a5205d982babe` |
| 26 | `theorem` | [lt_iff_le_and_exists](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant51d32bfc6a8d37ec0bc2111761b1cdb4fedb9041bccd5d871386a9716e0da2c9.lean/declarations/lt-iff-le-and-exists--93f1de5b5c9e45f367f1d443.md) | 215 | `result-track:93f1de5b5c9e45f367f1d44360dd9cf20aa1d7ee6a744ac60ab26af68d2e82ea` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
