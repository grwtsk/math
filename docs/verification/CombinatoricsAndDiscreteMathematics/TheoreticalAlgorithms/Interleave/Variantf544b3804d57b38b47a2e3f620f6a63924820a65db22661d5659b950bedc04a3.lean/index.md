# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Interleave.Variantf544b3804d57b38b47a2e3f620f6a63924820a65db22661d5659b950bedc04a3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ced47711b408d5c510320d432fb9f2ad44030234",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Interleave/Variantf544b3804d57b38b47a2e3f620f6a63924820a65db22661d5659b950bedc04a3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Interleave/Variantf544b3804d57b38b47a2e3f620f6a63924820a65db22661d5659b950bedc04a3.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Interleave/Variantf544b3804d57b38b47a2e3f620f6a63924820a65db22661d5659b950bedc04a3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ced47711b408d5c510320d432fb9f2ad44030234`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Interleave/Variantf544b3804d57b38b47a2e3f620f6a63924820a65db22661d5659b950bedc04a3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Interleave/Variantf544b3804d57b38b47a2e3f620f6a63924820a65db22661d5659b950bedc04a3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [interleave](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Interleave/Variantf544b3804d57b38b47a2e3f620f6a63924820a65db22661d5659b950bedc04a3.lean/declarations/interleave--b0e859af0a201b461456a53f.md) | 41 | `declaration-track:b0e859af0a201b461456a53f85f2d1832e338f9a3894a23d1f2a6a4d222a2fdb` |
| 2 | `theorem` | [nil_interleave](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Interleave/Variantf544b3804d57b38b47a2e3f620f6a63924820a65db22661d5659b950bedc04a3.lean/declarations/nil-interleave--b1a158a7d168861736a06617.md) | 46 | `result-track:b1a158a7d168861736a0661768c297a042903e69d1973315b5cd7e1b14bf140f` |
| 3 | `theorem` | [interleave_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Interleave/Variantf544b3804d57b38b47a2e3f620f6a63924820a65db22661d5659b950bedc04a3.lean/declarations/interleave-nil--9c4629e9138a15a4d4c58f56.md) | 49 | `result-track:9c4629e9138a15a4d4c58f56dd443239a4154d8c1d149607889eaa8ae770b8ba` |
| 4 | `theorem` | [cons_interleave](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Interleave/Variantf544b3804d57b38b47a2e3f620f6a63924820a65db22661d5659b950bedc04a3.lean/declarations/cons-interleave--4047a903ff959af0b90058e0.md) | 52 | `result-track:4047a903ff959af0b90058e094330bdc9590462f174dd33fa930dc810da92c01` |
| 5 | `theorem` | [interleave_perm_append](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Interleave/Variantf544b3804d57b38b47a2e3f620f6a63924820a65db22661d5659b950bedc04a3.lean/declarations/interleave-perm-append--efa125c0e4f101f44ed082e6.md) | 55 | `result-track:efa125c0e4f101f44ed082e66a5beba7e1e7cbd9439193bd5e04673f42299863` |
| 6 | `theorem` | [interleave_eq_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Interleave/Variantf544b3804d57b38b47a2e3f620f6a63924820a65db22661d5659b950bedc04a3.lean/declarations/interleave-eq-nil--3809f0ad85d95ea2457910ba.md) | 62 | `result-track:3809f0ad85d95ea2457910baffd3ac8ae018b675aa8647bc06844268bf5865cf` |
| 7 | `theorem` | [Perm.interleave](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Interleave/Variantf544b3804d57b38b47a2e3f620f6a63924820a65db22661d5659b950bedc04a3.lean/declarations/perm-interleave--5c6a0f2e0d54c7f0eb78b986.md) | 65 | `result-track:5c6a0f2e0d54c7f0eb78b986f6f47daeffc2dfcf47701c4506c7656c64590391` |
| 8 | `theorem` | [length_interleave](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Interleave/Variantf544b3804d57b38b47a2e3f620f6a63924820a65db22661d5659b950bedc04a3.lean/declarations/length-interleave--9f6071cdbbd5fc6894c5bf07.md) | 69 | `result-track:9f6071cdbbd5fc6894c5bf079944832be2dc2965ca5dd745caf5b5c1d17c44ff` |
| 9 | `theorem` | [countP_interleave](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Interleave/Variantf544b3804d57b38b47a2e3f620f6a63924820a65db22661d5659b950bedc04a3.lean/declarations/countp-interleave--4cb36e14dab9f76c85cc296b.md) | 72 | `result-track:4cb36e14dab9f76c85cc296b0d965b32c43482cd43a27ae6da27f24e24dfc809` |
| 10 | `theorem` | [count_interleave](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Interleave/Variantf544b3804d57b38b47a2e3f620f6a63924820a65db22661d5659b950bedc04a3.lean/declarations/count-interleave--b394007c75d44c960f7a5609.md) | 76 | `result-track:b394007c75d44c960f7a560905055833fe7bdc222b54c629f838eb6269a75fa1` |
| 11 | `theorem` | [interleave_append_append_of_length_eq_length](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Interleave/Variantf544b3804d57b38b47a2e3f620f6a63924820a65db22661d5659b950bedc04a3.lean/declarations/interleave-append-append-of-length-eq-length--89b9e3d51069d84fc9c09db5.md) | 80 | `result-track:89b9e3d51069d84fc9c09db5ffb5bea888f60d9ba23171323ebddb3ba3515767` |
| 12 | `theorem` | [interleave_append_append_of_length_eq_length_add_one](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Interleave/Variantf544b3804d57b38b47a2e3f620f6a63924820a65db22661d5659b950bedc04a3.lean/declarations/interleave-append-append-of-length-eq-length-add-one--d6811188bbadb21f2c09ef49.md) | 86 | `result-track:d6811188bbadb21f2c09ef49057ebca31f7f5ddd22fae1406ae09affead74db7` |
| 13 | `theorem` | [interleave_append_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Interleave/Variantf544b3804d57b38b47a2e3f620f6a63924820a65db22661d5659b950bedc04a3.lean/declarations/interleave-append-left--1271af4462b0872eaa2b1b0f.md) | 91 | `result-track:1271af4462b0872eaa2b1b0ff71a64dbc274219739ae20ff7559b822d6f36f4c` |
| 14 | `theorem` | [interleave_append_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Interleave/Variantf544b3804d57b38b47a2e3f620f6a63924820a65db22661d5659b950bedc04a3.lean/declarations/interleave-append-right--1813ea1a2f769367575b4bf9.md) | 97 | `result-track:1813ea1a2f769367575b4bf90be48a660ce6f689346a051f2737299e54c0fc53` |
| 15 | `theorem` | [interleave_flatten_flatten_of_length_eq_length](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Interleave/Variantf544b3804d57b38b47a2e3f620f6a63924820a65db22661d5659b950bedc04a3.lean/declarations/interleave-flatten-flatten-of-length-eq-length--06d58348aed8e1ad6ff3abe8.md) | 104 | `result-track:06d58348aed8e1ad6ff3abe8677909cb937775f163aee786bce1a1d8dc096ec8` |
| 16 | `theorem` | [reverse_interleave_of_length_eq_length](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Interleave/Variantf544b3804d57b38b47a2e3f620f6a63924820a65db22661d5659b950bedc04a3.lean/declarations/reverse-interleave-of-length-eq-length--4fedb8796f078bab2c984165.md) | 115 | `result-track:4fedb8796f078bab2c984165ab81900ae12fd6f971fad0f8d60dadccfd8eabcf` |
| 17 | `theorem` | [reverse_interleave_of_length_eq_length_add_one](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Interleave/Variantf544b3804d57b38b47a2e3f620f6a63924820a65db22661d5659b950bedc04a3.lean/declarations/reverse-interleave-of-length-eq-length-add-one--24ce1866e122ef93cd8e18b5.md) | 121 | `result-track:24ce1866e122ef93cd8e18b5358a58d262030b5bd1f5167fbd3fdcf4897d8445` |
| 18 | `theorem` | [interleave_ofFn_ofFn_even](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Interleave/Variantf544b3804d57b38b47a2e3f620f6a63924820a65db22661d5659b950bedc04a3.lean/declarations/interleave-offn-offn-even--3b1d7e853f284196ea40e457.md) | 127 | `result-track:3b1d7e853f284196ea40e457b4d8a538216f0778f8d4dd12cf6d9fd96e029c1a` |
| 19 | `theorem` | [interleave_ofFn_ofFn_odd](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Interleave/Variantf544b3804d57b38b47a2e3f620f6a63924820a65db22661d5659b950bedc04a3.lean/declarations/interleave-offn-offn-odd--bb1bf0276f5ca1d95dbad22d.md) | 134 | `result-track:bb1bf0276f5ca1d95dbad22d01f166d06d0f7652b16d260a69013ad5a708f70d` |
| 20 | `theorem` | [right_sublist_interleave](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Interleave/Variantf544b3804d57b38b47a2e3f620f6a63924820a65db22661d5659b950bedc04a3.lean/declarations/right-sublist-interleave--563052a060ea0302c4bdf8a0.md) | 142 | `result-track:563052a060ea0302c4bdf8a0b07ad5df04e01924b044eb79106caa4c8a1f9154` |
| 21 | `theorem` | [left_sublist_interleave](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Interleave/Variantf544b3804d57b38b47a2e3f620f6a63924820a65db22661d5659b950bedc04a3.lean/declarations/left-sublist-interleave--ff59ac4873483258e8c95b50.md) | 149 | `result-track:ff59ac4873483258e8c95b504d345a60302d37e613bacc8a4f6493fd8d973826` |
| 22 | `theorem` | [IsPrefix.interleave](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Interleave/Variantf544b3804d57b38b47a2e3f620f6a63924820a65db22661d5659b950bedc04a3.lean/declarations/isprefix-interleave--e3c9c660868a65c5fbe057d1.md) | 151 | `result-track:e3c9c660868a65c5fbe057d1493240fe86723eec5e964f4b8a3aa75121500590` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
