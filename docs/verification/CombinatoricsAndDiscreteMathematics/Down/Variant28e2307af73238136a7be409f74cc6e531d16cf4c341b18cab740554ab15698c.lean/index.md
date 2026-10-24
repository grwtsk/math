# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Down.Variant28e2307af73238136a7be409f74cc6e531d16cf4c341b18cab740554ab15698c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3fb917ec1cb0575bd6b693f37e279c3270ac072f",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Down/Variant28e2307af73238136a7be409f74cc6e531d16cf4c341b18cab740554ab15698c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Down/Variant28e2307af73238136a7be409f74cc6e531d16cf4c341b18cab740554ab15698c.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Down/Variant28e2307af73238136a7be409f74cc6e531d16cf4c341b18cab740554ab15698c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3fb917ec1cb0575bd6b693f37e279c3270ac072f`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Down/Variant28e2307af73238136a7be409f74cc6e531d16cf4c341b18cab740554ab15698c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Down/Variant28e2307af73238136a7be409f74cc6e531d16cf4c341b18cab740554ab15698c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Card` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [nonMemberSubfamily](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Down/Variant28e2307af73238136a7be409f74cc6e531d16cf4c341b18cab740554ab15698c.lean/declarations/nonmembersubfamily--5192decfbafed24eceb58665.md) | 53 | `declaration-track:5192decfbafed24eceb58665d07bf7f3b0c4ee3c3880c51a18916e13990b4487` |
| 2 | `def` | [memberSubfamily](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Down/Variant28e2307af73238136a7be409f74cc6e531d16cf4c341b18cab740554ab15698c.lean/declarations/membersubfamily--dd970abe15a7c1f15f2952d6.md) | 59 | `declaration-track:dd970abe15a7c1f15f2952d6db3f8680597118ae88b04954c35e90433f7af351` |
| 3 | `theorem` | [mem_nonMemberSubfamily](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Down/Variant28e2307af73238136a7be409f74cc6e531d16cf4c341b18cab740554ab15698c.lean/declarations/mem-nonmembersubfamily--068b3e647b0195d3007b32c8.md) | 64 | `result-track:068b3e647b0195d3007b32c8a00664e0b4d6f78b90f9e0b16a5eefce33f5925b` |
| 4 | `theorem` | [mem_memberSubfamily](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Down/Variant28e2307af73238136a7be409f74cc6e531d16cf4c341b18cab740554ab15698c.lean/declarations/mem-membersubfamily--bca434bf8622635f550c2321.md) | 69 | `result-track:bca434bf8622635f550c23219d8eb91886cb6adc130bc23d951a7ed526c722fc` |
| 5 | `theorem` | [nonMemberSubfamily_inter](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Down/Variant28e2307af73238136a7be409f74cc6e531d16cf4c341b18cab740554ab15698c.lean/declarations/nonmembersubfamily-inter--c7504fc60d91b480116594bc.md) | 77 | `result-track:c7504fc60d91b480116594bc5239f52d5c5948b562a78ccde570e4c6c5f8bd14` |
| 6 | `theorem` | [memberSubfamily_inter](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Down/Variant28e2307af73238136a7be409f74cc6e531d16cf4c341b18cab740554ab15698c.lean/declarations/membersubfamily-inter--1892fc10701df36ba798f899.md) | 82 | `result-track:1892fc10701df36ba798f89982a5a99b02179b26b970b050a1e91056615ac638` |
| 7 | `theorem` | [nonMemberSubfamily_union](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Down/Variant28e2307af73238136a7be409f74cc6e531d16cf4c341b18cab740554ab15698c.lean/declarations/nonmembersubfamily-union--0d42768e1464c5ef572e86e4.md) | 89 | `result-track:0d42768e1464c5ef572e86e4b9a269101ed500f9434a1875d4f16d51594b2f4d` |
| 8 | `theorem` | [memberSubfamily_union](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Down/Variant28e2307af73238136a7be409f74cc6e531d16cf4c341b18cab740554ab15698c.lean/declarations/membersubfamily-union--67a2ca42dc97cc0a1d4a9667.md) | 94 | `result-track:67a2ca42dc97cc0a1d4a9667048aeff48c64d878cdfd86f914a364cccc97cc76` |
| 9 | `theorem` | [card_memberSubfamily_add_card_nonMemberSubfamily](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Down/Variant28e2307af73238136a7be409f74cc6e531d16cf4c341b18cab740554ab15698c.lean/declarations/card-membersubfamily-add-card-nonmembersubfamily--e4e97dfeac339df0e5bc77f8.md) | 99 | `result-track:e4e97dfeac339df0e5bc77f8741e22925830ba020fbd24a2c4df7dc29a1ce85e` |
| 10 | `theorem` | [memberSubfamily_union_nonMemberSubfamily](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Down/Variant28e2307af73238136a7be409f74cc6e531d16cf4c341b18cab740554ab15698c.lean/declarations/membersubfamily-union-nonmembersubfamily--af7774f6a22a71d428abd238.md) | 107 | `result-track:af7774f6a22a71d428abd238c436b8e4ca72800c93e24fb784fe30389bad9938` |
| 11 | `theorem` | [memberSubfamily_memberSubfamily](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Down/Variant28e2307af73238136a7be409f74cc6e531d16cf4c341b18cab740554ab15698c.lean/declarations/membersubfamily-membersubfamily--b9a2e7badb286e60799334a3.md) | 122 | `result-track:b9a2e7badb286e60799334a3165a54d6c299af5a444268dfa463a7ba71805e76` |
| 12 | `theorem` | [memberSubfamily_nonMemberSubfamily](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Down/Variant28e2307af73238136a7be409f74cc6e531d16cf4c341b18cab740554ab15698c.lean/declarations/membersubfamily-nonmembersubfamily--3ef8ae09b9be937ca35f66c9.md) | 128 | `result-track:3ef8ae09b9be937ca35f66c92da2bbc919f84701dcce278f1961a1648d2a1a8c` |
| 13 | `theorem` | [nonMemberSubfamily_memberSubfamily](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Down/Variant28e2307af73238136a7be409f74cc6e531d16cf4c341b18cab740554ab15698c.lean/declarations/nonmembersubfamily-membersubfamily--3db10838303bd75d2a04f9a6.md) | 134 | `result-track:3db10838303bd75d2a04f9a6ebc91aa5f39a2680ee76f8191dcbd53def3f93d1` |
| 14 | `theorem` | [nonMemberSubfamily_nonMemberSubfamily](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Down/Variant28e2307af73238136a7be409f74cc6e531d16cf4c341b18cab740554ab15698c.lean/declarations/nonmembersubfamily-nonmembersubfamily--a5d74cea0a500c7aad715e73.md) | 141 | `result-track:a5d74cea0a500c7aad715e735102e4b750d0e18841240ece70f0e4f00eb8b4e9` |
| 15 | `def` | [compression](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Down/Variant28e2307af73238136a7be409f74cc6e531d16cf4c341b18cab740554ab15698c.lean/declarations/compression--90b758861a7929ca0847f7c6.md) | 156 | `declaration-track:90b758861a7929ca0847f7c68b6ac8dcede8a9b5ffede8e27503dd5687a6ff5e` |
| 16 | `theorem` | [mem_compression](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Down/Variant28e2307af73238136a7be409f74cc6e531d16cf4c341b18cab740554ab15698c.lean/declarations/mem-compression--1cd18e2eed799802d096b4e5.md) | 172 | `result-track:1cd18e2eed799802d096b4e510c16d939109de7ce63c86f6032b8fd79fe58d92` |
| 17 | `theorem` | [erase_mem_compression](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Down/Variant28e2307af73238136a7be409f74cc6e531d16cf4c341b18cab740554ab15698c.lean/declarations/erase-mem-compression--61a462bc3769a2e210220f7e.md) | 182 | `result-track:61a462bc3769a2e210220f7e087ccd1be4b569382d69ec20af212e9ca75cae33` |
| 18 | `theorem` | [erase_mem_compression_of_mem_compression](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Down/Variant28e2307af73238136a7be409f74cc6e531d16cf4c341b18cab740554ab15698c.lean/declarations/erase-mem-compression-of-mem-compression--05b74d550d49e31a5dcffa14.md) | 189 | `result-track:05b74d550d49e31a5dcffa14b53773f5a6ab65a5182bace39d30dc4a5f5b7ccc` |
| 19 | `theorem` | [mem_compression_of_insert_mem_compression](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Down/Variant28e2307af73238136a7be409f74cc6e531d16cf4c341b18cab740554ab15698c.lean/declarations/mem-compression-of-insert-mem-compression--3de81fe7e16a6e5324f58ee0.md) | 195 | `result-track:3de81fe7e16a6e5324f58ee023207170eb184f888d31702c0192cd6587b9fdb7` |
| 20 | `theorem` | [compression_idem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Down/Variant28e2307af73238136a7be409f74cc6e531d16cf4c341b18cab740554ab15698c.lean/declarations/compression-idem--5883280b611076912e2f19f8.md) | 204 | `result-track:5883280b611076912e2f19f8a99a08fd2bee2291aa00fc6b74833c8968be53eb` |
| 21 | `theorem` | [card_compression](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Down/Variant28e2307af73238136a7be409f74cc6e531d16cf4c341b18cab740554ab15698c.lean/declarations/card-compression--1b368b6e0be06df52070cfe1.md) | 214 | `result-track:1b368b6e0be06df52070cfe1c1f2a612e1d121b1a0c078b74872af6d70bfe669` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
