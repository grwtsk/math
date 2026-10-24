# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ToInt.Variantb7f1f31ec442ddaf452dddc10d61391d91b9d6286b3302f2c0973abb730f9828

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a13a6a0c38a95284fb2762f85fc7b372d1d3fb4e",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToInt/Variantb7f1f31ec442ddaf452dddc10d61391d91b9d6286b3302f2c0973abb730f9828.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToInt/Variantb7f1f31ec442ddaf452dddc10d61391d91b9d6286b3302f2c0973abb730f9828.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToInt/Variantb7f1f31ec442ddaf452dddc10d61391d91b9d6286b3302f2c0973abb730f9828.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a13a6a0c38a95284fb2762f85fc7b372d1d3fb4e`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToInt/Variantb7f1f31ec442ddaf452dddc10d61391d91b9d6286b3302f2c0973abb730f9828.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToInt/Variantb7f1f31ec442ddaf452dddc10d61391d91b9d6286b3302f2c0973abb730f9828.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Std.Data.String.ToNat` — import line 20; external provider; requires a separately pinned dependency.
- `Init.Data.String.Lemmas.Pattern.TakeDrop.Basic` — import line 21; external provider; requires a separately pinned dependency.
- `Init.Data.String.Lemmas.Pattern.TakeDrop.Char` — import line 22; external provider; requires a separately pinned dependency.
- `Init.Data.Int.ToString` — import line 23; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [toInt?_eq_some_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToInt/Variantb7f1f31ec442ddaf452dddc10d61391d91b9d6286b3302f2c0973abb730f9828.lean/declarations/toint-eq-some-iff--f754fda327d45940e69d21c5.md) | 32 | `result-track:f754fda327d45940e69d21c59cce0979c87a59e5d76f8ccd62104d835b09f20d` |
| 2 | `theorem` | [isSome_toInt?](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToInt/Variantb7f1f31ec442ddaf452dddc10d61391d91b9d6286b3302f2c0973abb730f9828.lean/declarations/issome-toint--d492684c8eb7ecbf02e6fb07.md) | 52 | `result-track:d492684c8eb7ecbf02e6fb07a85aec357a9c5371a123aa9ad93b28380970a8c9` |
| 3 | `theorem` | [isInt_of_toInt?_eq_some](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToInt/Variantb7f1f31ec442ddaf452dddc10d61391d91b9d6286b3302f2c0973abb730f9828.lean/declarations/isint-of-toint-eq-some--932938af778b7112ff9c719b.md) | 56 | `result-track:932938af778b7112ff9c719b59be6096f4e93111e7a5b4f72e0e2cb39195e06f` |
| 4 | `theorem` | [toInt?_eq_none_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToInt/Variantb7f1f31ec442ddaf452dddc10d61391d91b9d6286b3302f2c0973abb730f9828.lean/declarations/toint-eq-none-iff--aa198d1c0537375ce6c5954f.md) | 60 | `result-track:aa198d1c0537375ce6c5954f4be52be936e82030ff4516179669333b5c5f53aa` |
| 5 | `theorem` | [toInt?_eq_none](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToInt/Variantb7f1f31ec442ddaf452dddc10d61391d91b9d6286b3302f2c0973abb730f9828.lean/declarations/toint-eq-none--5249542e970fb8e3982cfda8.md) | 63 | `result-track:5249542e970fb8e3982cfda8c0d674c953736199a6641ae889690d72b4e04336` |
| 6 | `theorem` | [isInt_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToInt/Variantb7f1f31ec442ddaf452dddc10d61391d91b9d6286b3302f2c0973abb730f9828.lean/declarations/isint-iff--392104f57806cf4c6585be97.md) | 66 | `result-track:392104f57806cf4c6585be9755fb42b149e12f6fca89bb6b22e6b6ade3882748` |
| 7 | `theorem` | [isInt_of_isNat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToInt/Variantb7f1f31ec442ddaf452dddc10d61391d91b9d6286b3302f2c0973abb730f9828.lean/declarations/isint-of-isnat--7ff65d1687f03e76e35a073c.md) | 78 | `result-track:7ff65d1687f03e76e35a073cc6f6125936bfd0713754931685618ca965d151df` |
| 8 | `theorem` | [toInt?_eq_toNat?_of_startsWith_eq_false](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToInt/Variantb7f1f31ec442ddaf452dddc10d61391d91b9d6286b3302f2c0973abb730f9828.lean/declarations/toint-eq-tonat-of-startswith-eq-false--0dfbd1123b918b286682b13e.md) | 81 | `result-track:0dfbd1123b918b286682b13eed9fe98425d82a182c4ab128db314ccb32732bb1` |
| 9 | `theorem` | [toInt?_eq_of_eq_minus_append](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToInt/Variantb7f1f31ec442ddaf452dddc10d61391d91b9d6286b3302f2c0973abb730f9828.lean/declarations/toint-eq-of-eq-minus-append--481090014d5237919ac0e2db.md) | 86 | `result-track:481090014d5237919ac0e2db9b3cb4140e9b566598fc6261dc729fb3618a5053` |
| 10 | `theorem` | [toInt?_eq_some_of_toNat?_eq_some](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToInt/Variantb7f1f31ec442ddaf452dddc10d61391d91b9d6286b3302f2c0973abb730f9828.lean/declarations/toint-eq-some-of-tonat-eq-some--d9f0f066f034081e8403a79a.md) | 93 | `result-track:d9f0f066f034081e8403a79a82d9081e21133d287169cd774adfca90c0ae7fc0` |
| 11 | `theorem` | [toInt?_congr](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToInt/Variantb7f1f31ec442ddaf452dddc10d61391d91b9d6286b3302f2c0973abb730f9828.lean/declarations/toint-congr--72c737f4542092f4f8e8ab41.md) | 97 | `result-track:72c737f4542092f4f8e8ab41951c54ad43f3f7bdd7da860fffdbab30fc84949f` |
| 12 | `theorem` | [isInt_congr](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToInt/Variantb7f1f31ec442ddaf452dddc10d61391d91b9d6286b3302f2c0973abb730f9828.lean/declarations/isint-congr--a136985c2aaa64b0a974b524.md) | 100 | `result-track:a136985c2aaa64b0a974b524abb5591fd442b4a60c55b20edcf9eb00e2b1da18` |
| 13 | `theorem` | [isInt_toSlice](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToInt/Variantb7f1f31ec442ddaf452dddc10d61391d91b9d6286b3302f2c0973abb730f9828.lean/declarations/isint-toslice--7de2932fa65817a56e3f83fb.md) | 106 | `result-track:7de2932fa65817a56e3f83fb2ebd4846a08e24017073d55bb8b277480b0d4d37` |
| 14 | `theorem` | [isInt_comp_toSlice](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToInt/Variantb7f1f31ec442ddaf452dddc10d61391d91b9d6286b3302f2c0973abb730f9828.lean/declarations/isint-comp-toslice--ba69a443f2a0e1de0b258b83.md) | 110 | `result-track:ba69a443f2a0e1de0b258b836dd08deaaea4cdbfd8f9e7b6b637a5c3cba09965` |
| 15 | `theorem` | [toInt?_toSlice](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToInt/Variantb7f1f31ec442ddaf452dddc10d61391d91b9d6286b3302f2c0973abb730f9828.lean/declarations/toint-toslice--de57f82d9ce3b92f4d3fc987.md) | 114 | `result-track:de57f82d9ce3b92f4d3fc98799b7f442d9b1e32016dbf4f4e4fca503341d2ad9` |
| 16 | `theorem` | [toInt?_comp_toSlice](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToInt/Variantb7f1f31ec442ddaf452dddc10d61391d91b9d6286b3302f2c0973abb730f9828.lean/declarations/toint-comp-toslice--ffb765dbf4c2ce5a23133c4e.md) | 118 | `result-track:ffb765dbf4c2ce5a23133c4e452491eae690f7dda652bcba4677c478f66d3c1e` |
| 17 | `theorem` | [Slice.isInt_copy](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToInt/Variantb7f1f31ec442ddaf452dddc10d61391d91b9d6286b3302f2c0973abb730f9828.lean/declarations/slice-isint-copy--9daaeabb610b14e45697924a.md) | 122 | `result-track:9daaeabb610b14e45697924a7a18e234048af0527082519e2d79cd486668aede` |
| 18 | `theorem` | [Slice.isInt_comp_copy](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToInt/Variantb7f1f31ec442ddaf452dddc10d61391d91b9d6286b3302f2c0973abb730f9828.lean/declarations/slice-isint-comp-copy--fb637e8518eca8902778694d.md) | 126 | `result-track:fb637e8518eca8902778694da782a8c94807142c19538b1db93c749b7c1ccdff` |
| 19 | `theorem` | [Slice.toInt?_copy](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToInt/Variantb7f1f31ec442ddaf452dddc10d61391d91b9d6286b3302f2c0973abb730f9828.lean/declarations/slice-toint-copy--291bc5855ef5cedcab72028f.md) | 130 | `result-track:291bc5855ef5cedcab72028f7785e25bfe31f3cae9db501fa1408cacb8f3e774` |
| 20 | `theorem` | [Slice.toInt?_comp_copy](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToInt/Variantb7f1f31ec442ddaf452dddc10d61391d91b9d6286b3302f2c0973abb730f9828.lean/declarations/slice-toint-comp-copy--56a4fc3a1cfb18692690e7be.md) | 134 | `result-track:56a4fc3a1cfb18692690e7be9e9b44ff5a0db637f79288e33bf5e074178b3fd2` |
| 21 | `theorem` | [toInt?_eq_some_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToInt/Variantb7f1f31ec442ddaf452dddc10d61391d91b9d6286b3302f2c0973abb730f9828.lean/declarations/toint-eq-some-iff--2f0e8d739989563691048a3a.md) | 137 | `result-track:2f0e8d739989563691048a3a87b9093dda1286f80bda067f3573da143ea2fa9e` |
| 22 | `theorem` | [isSome_toInt?](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToInt/Variantb7f1f31ec442ddaf452dddc10d61391d91b9d6286b3302f2c0973abb730f9828.lean/declarations/issome-toint--161419cb7e6ea14177e235e2.md) | 142 | `result-track:161419cb7e6ea14177e235e24b717203d195ec173c4fe1fbe5c990bca1beb2e0` |
| 23 | `theorem` | [isInt_of_toInt?_eq_some](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToInt/Variantb7f1f31ec442ddaf452dddc10d61391d91b9d6286b3302f2c0973abb730f9828.lean/declarations/isint-of-toint-eq-some--19f9da7c7b8f3bc071be93a2.md) | 145 | `result-track:19f9da7c7b8f3bc071be93a2c510b199f464192d5d3daa552b190ba9f0bf5ac6` |
| 24 | `theorem` | [toInt?_eq_none_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToInt/Variantb7f1f31ec442ddaf452dddc10d61391d91b9d6286b3302f2c0973abb730f9828.lean/declarations/toint-eq-none-iff--e671d88d5980ce665e598cd7.md) | 149 | `result-track:e671d88d5980ce665e598cd73c66f916d6bda1155107d5f35d14ee6c560b0608` |
| 25 | `theorem` | [toInt?_eq_none](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToInt/Variantb7f1f31ec442ddaf452dddc10d61391d91b9d6286b3302f2c0973abb730f9828.lean/declarations/toint-eq-none--f042dc4e3e224ee392c52206.md) | 152 | `result-track:f042dc4e3e224ee392c522060e9a70773543e4ea841a56a516b78494da5f76dd` |
| 26 | `theorem` | [isInt_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToInt/Variantb7f1f31ec442ddaf452dddc10d61391d91b9d6286b3302f2c0973abb730f9828.lean/declarations/isint-iff--9753d8d1f3758ab209b0e1aa.md) | 155 | `result-track:9753d8d1f3758ab209b0e1aa4214ab218214e4b594c8c1b96091bcb91e51c91f` |
| 27 | `theorem` | [isInt_of_isNat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToInt/Variantb7f1f31ec442ddaf452dddc10d61391d91b9d6286b3302f2c0973abb730f9828.lean/declarations/isint-of-isnat--f45129ecdeb3919a112b577e.md) | 159 | `result-track:f45129ecdeb3919a112b577e8747b86a5a880c3d648ff71ab4ab2b50105eaf9f` |
| 28 | `theorem` | [toInt?_eq_toNat?_of_startsWith_eq_false](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToInt/Variantb7f1f31ec442ddaf452dddc10d61391d91b9d6286b3302f2c0973abb730f9828.lean/declarations/toint-eq-tonat-of-startswith-eq-false--ca64b122fde6217a3ed45cfe.md) | 162 | `result-track:ca64b122fde6217a3ed45cfea07d8182b7e36afe6c69db0f595d97c17438e7ca` |
| 29 | `theorem` | [toInt?_minus_append](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToInt/Variantb7f1f31ec442ddaf452dddc10d61391d91b9d6286b3302f2c0973abb730f9828.lean/declarations/toint-minus-append--0d61e5a864dabc97962d6f53.md) | 168 | `result-track:0d61e5a864dabc97962d6f53c68dbb8598faa6a70cfded520967b9f6dedf9359` |
| 30 | `theorem` | [toInt?_eq_some_of_toNat?_eq_some](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToInt/Variantb7f1f31ec442ddaf452dddc10d61391d91b9d6286b3302f2c0973abb730f9828.lean/declarations/toint-eq-some-of-tonat-eq-some--3f8c8b9d9be30b54a88e2125.md) | 173 | `result-track:3f8c8b9d9be30b54a88e212515f532f3c46db9c8bc646f2642d4340d29f5c163` |
| 31 | `theorem` | [Nat.toInt?_repr](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToInt/Variantb7f1f31ec442ddaf452dddc10d61391d91b9d6286b3302f2c0973abb730f9828.lean/declarations/nat-toint-repr--a28bfeff5b98037f2408a178.md) | 180 | `result-track:a28bfeff5b98037f2408a17873445b64822841d0eb780150dac82049d315fa7c` |
| 32 | `theorem` | [Nat.isInt_repr](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToInt/Variantb7f1f31ec442ddaf452dddc10d61391d91b9d6286b3302f2c0973abb730f9828.lean/declarations/nat-isint-repr--9200f03beb0bcba878b2dd15.md) | 184 | `result-track:9200f03beb0bcba878b2dd150aacee7865a5f2fc505360a74fa9fecc00daf897` |
| 33 | `theorem` | [toInt?_repr](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToInt/Variantb7f1f31ec442ddaf452dddc10d61391d91b9d6286b3302f2c0973abb730f9828.lean/declarations/toint-repr--394d2f2891cafd534a993cde.md) | 190 | `result-track:394d2f2891cafd534a993cdede3e96007e5348ed7651a3791deab36af4cc100f` |
| 34 | `theorem` | [isInt_repr](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToInt/Variantb7f1f31ec442ddaf452dddc10d61391d91b9d6286b3302f2c0973abb730f9828.lean/declarations/isint-repr--073964465dec669a0123969d.md) | 195 | `result-track:073964465dec669a0123969d8a8be94cfaebb3c48f22c11bb1f249a5b9739db7` |
| 35 | `theorem` | [repr_injective](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToInt/Variantb7f1f31ec442ddaf452dddc10d61391d91b9d6286b3302f2c0973abb730f9828.lean/declarations/repr-injective--c1999f533dc08025f9f5c0bd.md) | 198 | `result-track:c1999f533dc08025f9f5c0bde39bf1c93c4af0f2268c1b09d439e6274d74abd1` |
| 36 | `theorem` | [repr_inj](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToInt/Variantb7f1f31ec442ddaf452dddc10d61391d91b9d6286b3302f2c0973abb730f9828.lean/declarations/repr-inj--4df5f088e8f17c7ef5c277bc.md) | 202 | `result-track:4df5f088e8f17c7ef5c277bc5420ed49dac4b67f4700362b4d95b8fe07634ab6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
