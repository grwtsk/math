# Verification target: GRWTSK.Algebra.Abs.Variantfcc873fe40d757e00afe8a705e85a75ac0f9202b0f361465e080a428f42e481a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a10623931f148b40b4181b4a79772332b22a68b3",
  "lexical_observation_count": 66,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Abs/Variantfcc873fe40d757e00afe8a705e85a75ac0f9202b0f361465e080a428f42e481a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Abs/Variantfcc873fe40d757e00afe8a705e85a75ac0f9202b0f361465e080a428f42e481a.lean/index.md) · [Full source](../../../../mathematics/Algebra/Abs/Variantfcc873fe40d757e00afe8a705e85a75ac0f9202b0f361465e080a428f42e481a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a10623931f148b40b4181b4a79772332b22a68b3`.

Source path: `GRWTSK/Algebra/Abs/Variantfcc873fe40d757e00afe8a705e85a75ac0f9202b0f361465e080a428f42e481a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Abs/Variantfcc873fe40d757e00afe8a705e85a75ac0f9202b0f361465e080a428f42e481a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Abs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Group.OrderIso` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Order.MinMax` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Abs/Variantfcc873fe40d757e00afe8a705e85a75ac0f9202b0f361465e080a428f42e481a.lean/declarations/instance--8029a8d02d62c9a8e5a0ecd5.md) | 36 | `declaration-track:8029a8d02d62c9a8e5a0ecd5bb37df9ff33002c6c89a5f2b8c7f58a85b60a396` |
| 2 | `theorem` | [abs_eq_sup_inv](../../../../mathematics/Algebra/Abs/Variantfcc873fe40d757e00afe8a705e85a75ac0f9202b0f361465e080a428f42e481a.lean/declarations/abs-eq-sup-inv--85919a8b9280b2ea45ed1c7f.md) | 42 | `result-track:85919a8b9280b2ea45ed1c7f37d5dc3585bb8e85d0b0dd05d90f6979766880cf` |
| 3 | `theorem` | [abs_eq_max_neg](../../../../mathematics/Algebra/Abs/Variantfcc873fe40d757e00afe8a705e85a75ac0f9202b0f361465e080a428f42e481a.lean/declarations/abs-eq-max-neg--4b08ca5f58b7309714c533ac.md) | 49 | `result-track:4b08ca5f58b7309714c533ac4449c3a6be18ce337cb61a42020ad27d46461b35` |
| 4 | `theorem` | [abs_choice](../../../../mathematics/Algebra/Abs/Variantfcc873fe40d757e00afe8a705e85a75ac0f9202b0f361465e080a428f42e481a.lean/declarations/abs-choice--acbd16ae1d7f6c6f66ea3bed.md) | 53 | `result-track:acbd16ae1d7f6c6f66ea3bedb8b4d55338a37f7bd822af32bbc5d0f1211acf3e` |
| 5 | `theorem` | [abs_le'](../../../../mathematics/Algebra/Abs/Variantfcc873fe40d757e00afe8a705e85a75ac0f9202b0f361465e080a428f42e481a.lean/declarations/abs-le--1eafb1dbe5f6a4d2de32f717.md) | 57 | `result-track:1eafb1dbe5f6a4d2de32f7172d7821ff3c3b5e19d9fa4d4b50eea797191ed152` |
| 6 | `theorem` | [le_abs](../../../../mathematics/Algebra/Abs/Variantfcc873fe40d757e00afe8a705e85a75ac0f9202b0f361465e080a428f42e481a.lean/declarations/le-abs--713e9d637c68ed4c04479e74.md) | 61 | `result-track:713e9d637c68ed4c04479e74dcc549dce9f7b1f277ea630544488cf89b8b6bd8` |
| 7 | `theorem` | [le_abs_self](../../../../mathematics/Algebra/Abs/Variantfcc873fe40d757e00afe8a705e85a75ac0f9202b0f361465e080a428f42e481a.lean/declarations/le-abs-self--969625c3f5e58e0c3619c09e.md) | 65 | `result-track:969625c3f5e58e0c3619c09e1f10cefba41caa85ef099d397537d340784ef541` |
| 8 | `theorem` | [neg_le_abs_self](../../../../mathematics/Algebra/Abs/Variantfcc873fe40d757e00afe8a705e85a75ac0f9202b0f361465e080a428f42e481a.lean/declarations/neg-le-abs-self--1c6c6798852706061a4579b2.md) | 69 | `result-track:1c6c6798852706061a4579b2e4b9209b2920bf18da2f1ef10206d9aeca42586f` |
| 9 | `theorem` | [lt_abs](../../../../mathematics/Algebra/Abs/Variantfcc873fe40d757e00afe8a705e85a75ac0f9202b0f361465e080a428f42e481a.lean/declarations/lt-abs--7d8ea4c40aa52f45cfa698bf.md) | 73 | `result-track:7d8ea4c40aa52f45cfa698bfe38fd97779dae1690787567356eb9941707ace7e` |
| 10 | `theorem` | [abs_le_abs](../../../../mathematics/Algebra/Abs/Variantfcc873fe40d757e00afe8a705e85a75ac0f9202b0f361465e080a428f42e481a.lean/declarations/abs-le-abs--f24dae3c313264282606a62c.md) | 77 | `result-track:f24dae3c313264282606a62c1006b0c47ed2da6f8dbe75ba887f5ee543a08da9` |
| 11 | `theorem` | [abs_by_cases](../../../../mathematics/Algebra/Abs/Variantfcc873fe40d757e00afe8a705e85a75ac0f9202b0f361465e080a428f42e481a.lean/declarations/abs-by-cases--3dd8011b625a35c6478dd820.md) | 81 | `result-track:3dd8011b625a35c6478dd8201d8058f439c3e11af85276daa95c5a9496cf2c0b` |
| 12 | `theorem` | [abs_neg](../../../../mathematics/Algebra/Abs/Variantfcc873fe40d757e00afe8a705e85a75ac0f9202b0f361465e080a428f42e481a.lean/declarations/abs-neg--ce2675530c2e0a9643f53830.md) | 92 | `result-track:ce2675530c2e0a9643f538308b570e4f8ba9fc62806f818718f22e3353f75e3a` |
| 13 | `theorem` | [eq_or_eq_neg_of_abs_eq](../../../../mathematics/Algebra/Abs/Variantfcc873fe40d757e00afe8a705e85a75ac0f9202b0f361465e080a428f42e481a.lean/declarations/eq-or-eq-neg-of-abs-eq--4305399aa2cec93a50e6f864.md) | 95 | `result-track:4305399aa2cec93a50e6f864d3c4b6a92db0b209422b5ec2f633177bbd2aedd1` |
| 14 | `theorem` | [abs_eq_abs](../../../../mathematics/Algebra/Abs/Variantfcc873fe40d757e00afe8a705e85a75ac0f9202b0f361465e080a428f42e481a.lean/declarations/abs-eq-abs--13a7dc8cfec3010f7dc4f0a9.md) | 99 | `result-track:13a7dc8cfec3010f7dc4f0a9e94524ab64d595e0db729c1002e9e00a5600629f` |
| 15 | `theorem` | [abs_sub_comm](../../../../mathematics/Algebra/Abs/Variantfcc873fe40d757e00afe8a705e85a75ac0f9202b0f361465e080a428f42e481a.lean/declarations/abs-sub-comm--054c64009a6c9a4d09953dcb.md) | 107 | `result-track:054c64009a6c9a4d09953dcbea5c1b49b4194df6dcb83bf9a119d24d8c2fed37` |
| 16 | `theorem` | [abs_of_nonneg](../../../../mathematics/Algebra/Abs/Variantfcc873fe40d757e00afe8a705e85a75ac0f9202b0f361465e080a428f42e481a.lean/declarations/abs-of-nonneg--a2411aaac632d6a828e8efb6.md) | 115 | `result-track:a2411aaac632d6a828e8efb6f2edb8f63c8ac749293f77b3a23763143a48e27e` |
| 17 | `theorem` | [abs_of_pos](../../../../mathematics/Algebra/Abs/Variantfcc873fe40d757e00afe8a705e85a75ac0f9202b0f361465e080a428f42e481a.lean/declarations/abs-of-pos--1965adf449ebd77a950019a0.md) | 119 | `result-track:1965adf449ebd77a950019a0c222ef854b8615b8657403063777d0e1dcd3e463` |
| 18 | `theorem` | [abs_of_nonpos](../../../../mathematics/Algebra/Abs/Variantfcc873fe40d757e00afe8a705e85a75ac0f9202b0f361465e080a428f42e481a.lean/declarations/abs-of-nonpos--87b58e563eaa17e66b905f1b.md) | 123 | `result-track:87b58e563eaa17e66b905f1bba5a9fdf7df9d113a66d2be62e10b1d6d0ceb0f4` |
| 19 | `theorem` | [abs_of_neg](../../../../mathematics/Algebra/Abs/Variantfcc873fe40d757e00afe8a705e85a75ac0f9202b0f361465e080a428f42e481a.lean/declarations/abs-of-neg--8caa9de41a68679e61c9b5f5.md) | 127 | `result-track:8caa9de41a68679e61c9b5f53d246d77c41b201c1fcee4398b916b43430d053b` |
| 20 | `theorem` | [abs_le_abs_of_nonneg](../../../../mathematics/Algebra/Abs/Variantfcc873fe40d757e00afe8a705e85a75ac0f9202b0f361465e080a428f42e481a.lean/declarations/abs-le-abs-of-nonneg--233f2c7d46323e82ff60f67a.md) | 131 | `result-track:233f2c7d46323e82ff60f67af665549af65721276c9282db2287f9f199622fe7` |
| 21 | `theorem` | [abs_zero](../../../../mathematics/Algebra/Abs/Variantfcc873fe40d757e00afe8a705e85a75ac0f9202b0f361465e080a428f42e481a.lean/declarations/abs-zero--f2a52925a2ba1e926eb3c366.md) | 136 | `result-track:f2a52925a2ba1e926eb3c36618ee6d5d1b4172cc50dd4fd5dcf0e965f9895c14` |
| 22 | `theorem` | [abs_pos](../../../../mathematics/Algebra/Abs/Variantfcc873fe40d757e00afe8a705e85a75ac0f9202b0f361465e080a428f42e481a.lean/declarations/abs-pos--59aa4860cc98388ec6f5e8d1.md) | 141 | `result-track:59aa4860cc98388ec6f5e8d1d941b14ef07fb395d1d4f43c50de194f99e6db6b` |
| 23 | `theorem` | [abs_pos_of_pos](../../../../mathematics/Algebra/Abs/Variantfcc873fe40d757e00afe8a705e85a75ac0f9202b0f361465e080a428f42e481a.lean/declarations/abs-pos-of-pos--f497534a8fdf7a7b04a7fe63.md) | 148 | `result-track:f497534a8fdf7a7b04a7fe63d6ba822a705cef02fa78d0d42785165f343d2274` |
| 24 | `theorem` | [abs_pos_of_neg](../../../../mathematics/Algebra/Abs/Variantfcc873fe40d757e00afe8a705e85a75ac0f9202b0f361465e080a428f42e481a.lean/declarations/abs-pos-of-neg--602223bf86241c95c6c97c26.md) | 152 | `result-track:602223bf86241c95c6c97c261845abdc351da6fdb4969d45d9796f3ab7ef0e1a` |
| 25 | `theorem` | [neg_abs_le_self](../../../../mathematics/Algebra/Abs/Variantfcc873fe40d757e00afe8a705e85a75ac0f9202b0f361465e080a428f42e481a.lean/declarations/neg-abs-le-self--e9dd818eda34774efde00bd9.md) | 156 | `result-track:e9dd818eda34774efde00bd9e1e2539deacae9d8db5f6db880201df8f5dcbf04` |
| 26 | `theorem` | [add_abs_nonneg](../../../../mathematics/Algebra/Abs/Variantfcc873fe40d757e00afe8a705e85a75ac0f9202b0f361465e080a428f42e481a.lean/declarations/add-abs-nonneg--7986473d39e46cb3786fb9f8.md) | 167 | `result-track:7986473d39e46cb3786fb9f8dc65959230fd436af911728a2e2c5c254b95715d` |
| 27 | `theorem` | [neg_abs_le_neg](../../../../mathematics/Algebra/Abs/Variantfcc873fe40d757e00afe8a705e85a75ac0f9202b0f361465e080a428f42e481a.lean/declarations/neg-abs-le-neg--cb775292c59aacb4bb4e9ef1.md) | 173 | `result-track:cb775292c59aacb4bb4e9ef129240e63057c311271aa494fd51684cabeb3d621` |
| 28 | `theorem` | [abs_nonneg](../../../../mathematics/Algebra/Abs/Variantfcc873fe40d757e00afe8a705e85a75ac0f9202b0f361465e080a428f42e481a.lean/declarations/abs-nonneg--8772f60457826ef1efe129e6.md) | 177 | `result-track:8772f60457826ef1efe129e64ad46783bc2697cfff4f48869f8d8792eb481eba` |
| 29 | `theorem` | [abs_abs](../../../../mathematics/Algebra/Abs/Variantfcc873fe40d757e00afe8a705e85a75ac0f9202b0f361465e080a428f42e481a.lean/declarations/abs-abs--9ae1be51a2d77d356ff3f0aa.md) | 183 | `result-track:9ae1be51a2d77d356ff3f0aa070b440b159bcb433f3373dea91abb112942863e` |
| 30 | `theorem` | [abs_eq_zero](../../../../mathematics/Algebra/Abs/Variantfcc873fe40d757e00afe8a705e85a75ac0f9202b0f361465e080a428f42e481a.lean/declarations/abs-eq-zero--539673c01aa26b2f3a31257e.md) | 188 | `result-track:539673c01aa26b2f3a31257ea4a7a8c8c14d1f344e184f8a992239cd657f02e4` |
| 31 | `theorem` | [abs_nonpos_iff](../../../../mathematics/Algebra/Abs/Variantfcc873fe40d757e00afe8a705e85a75ac0f9202b0f361465e080a428f42e481a.lean/declarations/abs-nonpos-iff--f23cbafdb324eed64a3df5f1.md) | 193 | `result-track:f23cbafdb324eed64a3df5f120c7eae4df347a7e52cad94a336b7f276c7241bb` |
| 32 | `theorem` | [abs_le_abs_of_nonpos](../../../../mathematics/Algebra/Abs/Variantfcc873fe40d757e00afe8a705e85a75ac0f9202b0f361465e080a428f42e481a.lean/declarations/abs-le-abs-of-nonpos--a9d64ff1b16b0db3dc578ef0.md) | 199 | `result-track:a9d64ff1b16b0db3dc578ef08a10eccc0d99747d13299b384ac9d373d2e66321` |
| 33 | `theorem` | [abs_lt](../../../../mathematics/Algebra/Abs/Variantfcc873fe40d757e00afe8a705e85a75ac0f9202b0f361465e080a428f42e481a.lean/declarations/abs-lt--69f4ee2ba0653a3c8201ee21.md) | 204 | `result-track:69f4ee2ba0653a3c8201ee213a67dbe7f620c3e221ab4c5cd34093e820f92952` |
| 34 | `theorem` | [neg_lt_of_abs_lt](../../../../mathematics/Algebra/Abs/Variantfcc873fe40d757e00afe8a705e85a75ac0f9202b0f361465e080a428f42e481a.lean/declarations/neg-lt-of-abs-lt--0464e0a8ab10f2f697b815ae.md) | 208 | `result-track:0464e0a8ab10f2f697b815ae94e9035e531d93a214426980c0e39e097aa667d3` |
| 35 | `theorem` | [lt_of_abs_lt](../../../../mathematics/Algebra/Abs/Variantfcc873fe40d757e00afe8a705e85a75ac0f9202b0f361465e080a428f42e481a.lean/declarations/lt-of-abs-lt--590a637d8d049b2319c5e249.md) | 212 | `result-track:590a637d8d049b2319c5e249da457d779596384cd70e02fbf2ae8bf3f2d790ce` |
| 36 | `theorem` | [max_sub_min_eq_abs'](../../../../mathematics/Algebra/Abs/Variantfcc873fe40d757e00afe8a705e85a75ac0f9202b0f361465e080a428f42e481a.lean/declarations/max-sub-min-eq-abs--acc4713cc88c067967021974.md) | 216 | `result-track:acc4713cc88c067967021974ce5fd573dbd5972173f997c897457907c6311705` |
| 37 | `theorem` | [max_sub_min_eq_abs](../../../../mathematics/Algebra/Abs/Variantfcc873fe40d757e00afe8a705e85a75ac0f9202b0f361465e080a428f42e481a.lean/declarations/max-sub-min-eq-abs--dbbf36c868503b6b94c112c7.md) | 224 | `result-track:dbbf36c868503b6b94c112c7ba96b52f07faa7f75b2cee38fe790f8d0d9ec099` |
| 38 | `example` | [(anonymous)](../../../../mathematics/Algebra/Abs/Variantfcc873fe40d757e00afe8a705e85a75ac0f9202b0f361465e080a428f42e481a.lean/declarations/example--cae87a0ea9f9cfb1255bd0ec.md) | 240 | `declaration-track:cae87a0ea9f9cfb1255bd0ece8f966690840fcd51291a3c5093ef88f897857bc` |
| 39 | `theorem` | [abs_le](../../../../mathematics/Algebra/Abs/Variantfcc873fe40d757e00afe8a705e85a75ac0f9202b0f361465e080a428f42e481a.lean/declarations/abs-le--769734f49a31fc2103a87f8c.md) | 242 | `result-track:769734f49a31fc2103a87f8c6f60a7b4e475e48d6b1b934c649d99645e69e741` |
| 40 | `theorem` | [le_abs'](../../../../mathematics/Algebra/Abs/Variantfcc873fe40d757e00afe8a705e85a75ac0f9202b0f361465e080a428f42e481a.lean/declarations/le-abs--98b0c6f8eb6b2f2ce024e06f.md) | 245 | `result-track:98b0c6f8eb6b2f2ce024e06fe6b45a6f02d269e0a9ac142999a5697ed4d5f69b` |
| 41 | `theorem` | [neg_le_of_abs_le](../../../../mathematics/Algebra/Abs/Variantfcc873fe40d757e00afe8a705e85a75ac0f9202b0f361465e080a428f42e481a.lean/declarations/neg-le-of-abs-le--1af457f900e5e8b3ad4501fd.md) | 248 | `result-track:1af457f900e5e8b3ad4501fda7b1fca326d95663da97724b89e17792b2678841` |
| 42 | `theorem` | [le_of_abs_le](../../../../mathematics/Algebra/Abs/Variantfcc873fe40d757e00afe8a705e85a75ac0f9202b0f361465e080a428f42e481a.lean/declarations/le-of-abs-le--0ea3879a9fddf105e8e092cf.md) | 252 | `result-track:0ea3879a9fddf105e8e092cfcb8371a4def0a50708e1f16d343c75604523fac1` |
| 43 | `theorem` | [apply_abs_le_mul_of_one_le'](../../../../mathematics/Algebra/Abs/Variantfcc873fe40d757e00afe8a705e85a75ac0f9202b0f361465e080a428f42e481a.lean/declarations/apply-abs-le-mul-of-one-le--9052be05ddbb8fad974c2614.md) | 257 | `result-track:9052be05ddbb8fad974c26144637e9ade7d80e40bd93612cb61e92d58545bea3` |
| 44 | `theorem` | [apply_abs_le_mul_of_one_le](../../../../mathematics/Algebra/Abs/Variantfcc873fe40d757e00afe8a705e85a75ac0f9202b0f361465e080a428f42e481a.lean/declarations/apply-abs-le-mul-of-one-le--999a14b634192026ef9f8b07.md) | 266 | `result-track:999a14b634192026ef9f8b0714434df078e0f1d9b5e4ced89278a1139d24dccf` |
| 45 | `theorem` | [abs_add](../../../../mathematics/Algebra/Abs/Variantfcc873fe40d757e00afe8a705e85a75ac0f9202b0f361465e080a428f42e481a.lean/declarations/abs-add--55402c5ba01a1eb23d613d39.md) | 274 | `result-track:55402c5ba01a1eb23d613d39ba088b0e726d0a0b24a864075813e122db915bb4` |
| 46 | `theorem` | [abs_add'](../../../../mathematics/Algebra/Abs/Variantfcc873fe40d757e00afe8a705e85a75ac0f9202b0f361465e080a428f42e481a.lean/declarations/abs-add--7edef5f99208696faf3a3616.md) | 281 | `result-track:7edef5f99208696faf3a36162d527087e748bf55cc5a6a21f88b74538dbc82d8` |
| 47 | `theorem` | [abs_sub](../../../../mathematics/Algebra/Abs/Variantfcc873fe40d757e00afe8a705e85a75ac0f9202b0f361465e080a428f42e481a.lean/declarations/abs-sub--efe06af2994ace8a121f4a80.md) | 284 | `result-track:efe06af2994ace8a121f4a8090b20d2be89df9a901cc4087abebc9a30a0ad5c4` |
| 48 | `theorem` | [abs_sub_le_iff](../../../../mathematics/Algebra/Abs/Variantfcc873fe40d757e00afe8a705e85a75ac0f9202b0f361465e080a428f42e481a.lean/declarations/abs-sub-le-iff--66c2cfb74ff2aba6e9fd23a5.md) | 289 | `result-track:66c2cfb74ff2aba6e9fd23a51ba0d2637da2a431f755bc313188fd1c74ba3a9c` |
| 49 | `theorem` | [abs_sub_lt_iff](../../../../mathematics/Algebra/Abs/Variantfcc873fe40d757e00afe8a705e85a75ac0f9202b0f361465e080a428f42e481a.lean/declarations/abs-sub-lt-iff--122d5f5685e8ed0fec290923.md) | 293 | `result-track:122d5f5685e8ed0fec2909238fe7115f265033a96f6e2638729c8d6d10c5175e` |
| 50 | `theorem` | [sub_le_of_abs_sub_le_left](../../../../mathematics/Algebra/Abs/Variantfcc873fe40d757e00afe8a705e85a75ac0f9202b0f361465e080a428f42e481a.lean/declarations/sub-le-of-abs-sub-le-left--d7ddde0640d891cd45f6e57f.md) | 297 | `result-track:d7ddde0640d891cd45f6e57fb8342ba18650df3d6c5693270639592474eb604c` |
| 51 | `theorem` | [sub_le_of_abs_sub_le_right](../../../../mathematics/Algebra/Abs/Variantfcc873fe40d757e00afe8a705e85a75ac0f9202b0f361465e080a428f42e481a.lean/declarations/sub-le-of-abs-sub-le-right--112ff513e6061f4bd75801d1.md) | 301 | `result-track:112ff513e6061f4bd75801d1df124d763f6199c22648015a0823d916ab2e21a5` |
| 52 | `theorem` | [sub_lt_of_abs_sub_lt_left](../../../../mathematics/Algebra/Abs/Variantfcc873fe40d757e00afe8a705e85a75ac0f9202b0f361465e080a428f42e481a.lean/declarations/sub-lt-of-abs-sub-lt-left--afb13c6b4c70e56d6cf33a30.md) | 305 | `result-track:afb13c6b4c70e56d6cf33a30e6f37b679cebd00e62bc21454fc3203cbbc5e7b9` |
| 53 | `theorem` | [sub_lt_of_abs_sub_lt_right](../../../../mathematics/Algebra/Abs/Variantfcc873fe40d757e00afe8a705e85a75ac0f9202b0f361465e080a428f42e481a.lean/declarations/sub-lt-of-abs-sub-lt-right--c68c192d2295235a65cbb538.md) | 309 | `result-track:c68c192d2295235a65cbb538b16ab65a11d283a91d875a0fd991d11d39b13452` |
| 54 | `theorem` | [abs_sub_abs_le_abs_sub](../../../../mathematics/Algebra/Abs/Variantfcc873fe40d757e00afe8a705e85a75ac0f9202b0f361465e080a428f42e481a.lean/declarations/abs-sub-abs-le-abs-sub--4160b32b192c983d197afd0d.md) | 313 | `result-track:4160b32b192c983d197afd0dabc914960d4dbcf41fc10193fafdf0e2a7ed1f32` |
| 55 | `theorem` | [abs_abs_sub_abs_le_abs_sub](../../../../mathematics/Algebra/Abs/Variantfcc873fe40d757e00afe8a705e85a75ac0f9202b0f361465e080a428f42e481a.lean/declarations/abs-abs-sub-abs-le-abs-sub--f606e8c2220c56254e354232.md) | 320 | `result-track:f606e8c2220c56254e354232f52cff655a042ac4e2d7e5cdb894853ba51821f5` |
| 56 | `theorem` | [abs_eq](../../../../mathematics/Algebra/Abs/Variantfcc873fe40d757e00afe8a705e85a75ac0f9202b0f361465e080a428f42e481a.lean/declarations/abs-eq--d2e72b550b5de4eb307b1e64.md) | 325 | `result-track:d2e72b550b5de4eb307b1e64df1d9a49900368e9a53a7fae1de3f5454835878a` |
| 57 | `theorem` | [abs_le_max_abs_abs](../../../../mathematics/Algebra/Abs/Variantfcc873fe40d757e00afe8a705e85a75ac0f9202b0f361465e080a428f42e481a.lean/declarations/abs-le-max-abs-abs--c2ced37b65a0631bd3e331b6.md) | 330 | `result-track:c2ced37b65a0631bd3e331b6a989a911381063d213941022d84ec5192c0bba7c` |
| 58 | `theorem` | [min_abs_abs_le_abs_max](../../../../mathematics/Algebra/Abs/Variantfcc873fe40d757e00afe8a705e85a75ac0f9202b0f361465e080a428f42e481a.lean/declarations/min-abs-abs-le-abs-max--e9a576549f683ca37933ab26.md) | 336 | `result-track:e9a576549f683ca37933ab26f21ce475ee7c382ca4f2dc9d9d13dfc7c319cb87` |
| 59 | `theorem` | [min_abs_abs_le_abs_min](../../../../mathematics/Algebra/Abs/Variantfcc873fe40d757e00afe8a705e85a75ac0f9202b0f361465e080a428f42e481a.lean/declarations/min-abs-abs-le-abs-min--9472cf17fb5cd9575c45bba3.md) | 341 | `result-track:9472cf17fb5cd9575c45bba30921dccb9c4c3e8718e95b601a37b063b6859471` |
| 60 | `theorem` | [abs_max_le_max_abs_abs](../../../../mathematics/Algebra/Abs/Variantfcc873fe40d757e00afe8a705e85a75ac0f9202b0f361465e080a428f42e481a.lean/declarations/abs-max-le-max-abs-abs--5370144ddf44de1cfadcbb6f.md) | 346 | `result-track:5370144ddf44de1cfadcbb6f8d61ed31bb0c25754ed506b66e8bbbe3e5ff6a4c` |
| 61 | `theorem` | [abs_min_le_max_abs_abs](../../../../mathematics/Algebra/Abs/Variantfcc873fe40d757e00afe8a705e85a75ac0f9202b0f361465e080a428f42e481a.lean/declarations/abs-min-le-max-abs-abs--31a67c5786497dae8e81c021.md) | 351 | `result-track:31a67c5786497dae8e81c021cf2a1020c4612fc8ba6469372d887dfaf3baba55` |
| 62 | `theorem` | [eq_of_abs_sub_eq_zero](../../../../mathematics/Algebra/Abs/Variantfcc873fe40d757e00afe8a705e85a75ac0f9202b0f361465e080a428f42e481a.lean/declarations/eq-of-abs-sub-eq-zero--2965c9618095a19481e65d7f.md) | 356 | `result-track:2965c9618095a19481e65d7f960d94be43aa58f2ab1512e132e2a1e706cd5435` |
| 63 | `theorem` | [abs_sub_le](../../../../mathematics/Algebra/Abs/Variantfcc873fe40d757e00afe8a705e85a75ac0f9202b0f361465e080a428f42e481a.lean/declarations/abs-sub-le--3597ab15afcacf69ecae23eb.md) | 360 | `result-track:3597ab15afcacf69ecae23ebfb0f7df95df83e0f48519cd69953299917b9b9a7` |
| 64 | `theorem` | [abs_add_three](../../../../mathematics/Algebra/Abs/Variantfcc873fe40d757e00afe8a705e85a75ac0f9202b0f361465e080a428f42e481a.lean/declarations/abs-add-three--ae47957ac15fd5d888b1bf57.md) | 366 | `result-track:ae47957ac15fd5d888b1bf5799e766d8e573f85d6204e9ddea134e7698be8f09` |
| 65 | `theorem` | [dist_bdd_within_interval](../../../../mathematics/Algebra/Abs/Variantfcc873fe40d757e00afe8a705e85a75ac0f9202b0f361465e080a428f42e481a.lean/declarations/dist-bdd-within-interval--bd65e5859e01d3857c591fa2.md) | 370 | `result-track:bd65e5859e01d3857c591fa2bd78397faf52b13c5122bd78f2a7b57c172f2eb7` |
| 66 | `theorem` | [eq_of_abs_sub_nonpos](../../../../mathematics/Algebra/Abs/Variantfcc873fe40d757e00afe8a705e85a75ac0f9202b0f361465e080a428f42e481a.lean/declarations/eq-of-abs-sub-nonpos--8c7b44495f231cd2ea1c248e.md) | 375 | `result-track:8c7b44495f231cd2ea1c248ecc54c59ed13129883292054173464072974ac0a9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
