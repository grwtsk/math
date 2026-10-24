# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Erase.Variantc751519e5bc9fe7d1d9b7fecaee1bfa1fdb8c31a8bc66257be8fb5acab833910

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0c0315bbde25469a705260ee823709867c50afc3",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Erase/Variantc751519e5bc9fe7d1d9b7fecaee1bfa1fdb8c31a8bc66257be8fb5acab833910.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Erase/Variantc751519e5bc9fe7d1d9b7fecaee1bfa1fdb8c31a8bc66257be8fb5acab833910.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Erase/Variantc751519e5bc9fe7d1d9b7fecaee1bfa1fdb8c31a8bc66257be8fb5acab833910.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0c0315bbde25469a705260ee823709867c50afc3`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Erase/Variantc751519e5bc9fe7d1d9b7fecaee1bfa1fdb8c31a8bc66257be8fb5acab833910.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Erase/Variantc751519e5bc9fe7d1d9b7fecaee1bfa1fdb8c31a8bc66257be8fb5acab833910.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Array.Erase` — import line 16; external provider; requires a separately pinned dependency.
- `Init.Data.Vector.Lemmas` — import line 17; external provider; requires a separately pinned dependency.
- `Init.Omega` — import line 18; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [eraseIdx_eq_take_drop_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Erase/Variantc751519e5bc9fe7d1d9b7fecaee1bfa1fdb8c31a8bc66257be8fb5acab833910.lean/declarations/eraseidx-eq-take-drop-succ--bd1ab63bc5084030c124637d.md) | 38 | `result-track:bd1ab63bc5084030c124637d9333f6c87f3c4f13ef77bfbdaa0e8852aa26a3ca` |
| 2 | `theorem` | [getElem?_eraseIdx](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Erase/Variantc751519e5bc9fe7d1d9b7fecaee1bfa1fdb8c31a8bc66257be8fb5acab833910.lean/declarations/getelem-eraseidx--3ebbb723e208f1b511166ff9.md) | 47 | `result-track:3ebbb723e208f1b511166ff95209ea268b6a46bd5d4e2aa640a8629bb0046c3f` |
| 3 | `theorem` | [getElem?_eraseIdx_of_lt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Erase/Variantc751519e5bc9fe7d1d9b7fecaee1bfa1fdb8c31a8bc66257be8fb5acab833910.lean/declarations/getelem-eraseidx-of-lt--2502e2436ecb30929df6aff1.md) | 52 | `result-track:2502e2436ecb30929df6aff1828551a684d36cb8f48f601d9538f79f46b4888a` |
| 4 | `theorem` | [getElem?_eraseIdx_of_ge](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Erase/Variantc751519e5bc9fe7d1d9b7fecaee1bfa1fdb8c31a8bc66257be8fb5acab833910.lean/declarations/getelem-eraseidx-of-ge--711a54856fbd36d599c07252.md) | 57 | `result-track:711a54856fbd36d599c0725284c0ea6dd8357ec46ae48cb52577b35153491695` |
| 5 | `theorem` | [getElem_eraseIdx](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Erase/Variantc751519e5bc9fe7d1d9b7fecaee1bfa1fdb8c31a8bc66257be8fb5acab833910.lean/declarations/getelem-eraseidx--aebe77f5618ac0d7d51cfb00.md) | 65 | `result-track:aebe77f5618ac0d7d51cfb007dead79c38ab59bb1e5a139891868e6700850a8e` |
| 6 | `theorem` | [mem_of_mem_eraseIdx](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Erase/Variantc751519e5bc9fe7d1d9b7fecaee1bfa1fdb8c31a8bc66257be8fb5acab833910.lean/declarations/mem-of-mem-eraseidx--3d827cb7ee7e89b926b46f85.md) | 71 | `result-track:3d827cb7ee7e89b926b46f85dac5f398cd082c6fd676f6c5b294946e65875185` |
| 7 | `theorem` | [eraseIdx_append_of_lt_size](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Erase/Variantc751519e5bc9fe7d1d9b7fecaee1bfa1fdb8c31a8bc66257be8fb5acab833910.lean/declarations/eraseidx-append-of-lt-size--7deaeb2be902e542e243861e.md) | 77 | `result-track:7deaeb2be902e542e243861eabfea2634e1e5351fa0ba959b48b7bf75ca0f420` |
| 8 | `theorem` | [eraseIdx_append_of_length_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Erase/Variantc751519e5bc9fe7d1d9b7fecaee1bfa1fdb8c31a8bc66257be8fb5acab833910.lean/declarations/eraseidx-append-of-length-le--fbe5868e1ecfd28069276820.md) | 84 | `result-track:fbe5868e1ecfd280692768207f03c1673c2ef564ffd13d6b62a24ed8d8e45ccb` |
| 9 | `theorem` | [eraseIdx_append](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Erase/Variantc751519e5bc9fe7d1d9b7fecaee1bfa1fdb8c31a8bc66257be8fb5acab833910.lean/declarations/eraseidx-append--aaf4fae366ac8bd8d76b22c2.md) | 92 | `result-track:aaf4fae366ac8bd8d76b22c2a71651490454a4a5babf8e0754e9eec11bb1c851` |
| 10 | `theorem` | [eraseIdx_cast](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Erase/Variantc751519e5bc9fe7d1d9b7fecaee1bfa1fdb8c31a8bc66257be8fb5acab833910.lean/declarations/eraseidx-cast--5e4952d1bc31a9e852681e0d.md) | 100 | `result-track:5e4952d1bc31a9e852681e0ded42b79031e8f8215b316843ff185b6186afb02b` |
| 11 | `theorem` | [eraseIdx_replicate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Erase/Variantc751519e5bc9fe7d1d9b7fecaee1bfa1fdb8c31a8bc66257be8fb5acab833910.lean/declarations/eraseidx-replicate--2d3b2098040ff5f457cb971c.md) | 106 | `result-track:2d3b2098040ff5f457cb971c37a7d47bd0416dfc33b311e107b86fb41ad91235` |
| 12 | `theorem` | [mem_eraseIdx_iff_getElem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Erase/Variantc751519e5bc9fe7d1d9b7fecaee1bfa1fdb8c31a8bc66257be8fb5acab833910.lean/declarations/mem-eraseidx-iff-getelem--042593dcdd7d8d1c8fe06b37.md) | 111 | `result-track:042593dcdd7d8d1c8fe06b378ab19889bfe50d6cf99e9722c88c74b92cdabae4` |
| 13 | `theorem` | [mem_eraseIdx_iff_getElem?](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Erase/Variantc751519e5bc9fe7d1d9b7fecaee1bfa1fdb8c31a8bc66257be8fb5acab833910.lean/declarations/mem-eraseidx-iff-getelem--70c1241c4a3d7bdaef3877fe.md) | 115 | `result-track:70c1241c4a3d7bdaef3877fe8ee22922804f440fee3107d668dc2ee7e8a3e581` |
| 14 | `theorem` | [getElem_eraseIdx_of_lt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Erase/Variantc751519e5bc9fe7d1d9b7fecaee1bfa1fdb8c31a8bc66257be8fb5acab833910.lean/declarations/getelem-eraseidx-of-lt--d3c16fe8e80121aba2c714f2.md) | 119 | `result-track:d3c16fe8e80121aba2c714f2cdf8f0b943524dd80726101d7d46f76780d51337` |
| 15 | `theorem` | [getElem_eraseIdx_of_ge](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Erase/Variantc751519e5bc9fe7d1d9b7fecaee1bfa1fdb8c31a8bc66257be8fb5acab833910.lean/declarations/getelem-eraseidx-of-ge--e4c8dce4fabec6fed5fc664a.md) | 124 | `result-track:e4c8dce4fabec6fed5fc664a37256eed3ef01264c6463b530848f9ec545d9467` |
| 16 | `theorem` | [eraseIdx_set_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Erase/Variantc751519e5bc9fe7d1d9b7fecaee1bfa1fdb8c31a8bc66257be8fb5acab833910.lean/declarations/eraseidx-set-eq--5a8bd5689c05c3d93598d18e.md) | 129 | `result-track:5a8bd5689c05c3d93598d18e8118fa816d1b2cda1c668f71b2384a974cf53d52` |
| 17 | `theorem` | [eraseIdx_set_lt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Erase/Variantc751519e5bc9fe7d1d9b7fecaee1bfa1fdb8c31a8bc66257be8fb5acab833910.lean/declarations/eraseidx-set-lt--30d017500bc37b84ac69e3dd.md) | 134 | `result-track:30d017500bc37b84ac69e3dd68481a6771c3c1115c085e7ca4b995025620851d` |
| 18 | `theorem` | [eraseIdx_set_gt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Erase/Variantc751519e5bc9fe7d1d9b7fecaee1bfa1fdb8c31a8bc66257be8fb5acab833910.lean/declarations/eraseidx-set-gt--76316bf6a1b2bc9ba7bb43dc.md) | 139 | `result-track:76316bf6a1b2bc9ba7bb43dc2a76a3eff91cb8536cf708b1f97644a6e57dc3d9` |
| 19 | `theorem` | [eraseIdx_set](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Erase/Variantc751519e5bc9fe7d1d9b7fecaee1bfa1fdb8c31a8bc66257be8fb5acab833910.lean/declarations/eraseidx-set--7ef796a86463db64a1d52273.md) | 145 | `result-track:7ef796a86463db64a1d522739de3c3dd04505c8bbac0bec290f0484ff520139f` |
| 20 | `theorem` | [set_eraseIdx_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Erase/Variantc751519e5bc9fe7d1d9b7fecaee1bfa1fdb8c31a8bc66257be8fb5acab833910.lean/declarations/set-eraseidx-le--c11dc5a2b8b5e6d640b93be2.md) | 159 | `result-track:c11dc5a2b8b5e6d640b93be2778a502c5e4ff2c6f99c45e8ad43bc18e33a180d` |
| 21 | `theorem` | [set_eraseIdx_gt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Erase/Variantc751519e5bc9fe7d1d9b7fecaee1bfa1fdb8c31a8bc66257be8fb5acab833910.lean/declarations/set-eraseidx-gt--caf8c9e7447cb9df733c4dd1.md) | 165 | `result-track:caf8c9e7447cb9df733c4dd1ce19941bed7f583ee5ccfaa4ff3c7ce8fb289df3` |
| 22 | `theorem` | [set_eraseIdx](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Erase/Variantc751519e5bc9fe7d1d9b7fecaee1bfa1fdb8c31a8bc66257be8fb5acab833910.lean/declarations/set-eraseidx--b5659a61f508ca762653e842.md) | 171 | `result-track:b5659a61f508ca762653e842fedff5349429ed482bb3352db338454d0e15b71b` |
| 23 | `theorem` | [set_getElem_succ_eraseIdx_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Erase/Variantc751519e5bc9fe7d1d9b7fecaee1bfa1fdb8c31a8bc66257be8fb5acab833910.lean/declarations/set-getelem-succ-eraseidx-succ--38c09be6a6ab96fd324251bd.md) | 183 | `result-track:38c09be6a6ab96fd324251bd5600b9c629b186082b81d2d4231b3ac7044da773` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
