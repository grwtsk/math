# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Permutation.Variantcf0e878c0c1fa26256564f2013e4f6094b578ca352e9d85c57cd7c3b1b9bae33

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "288a366a1cf1e769f0cf622ae1fb645bf54ca157",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Permutation/Variantcf0e878c0c1fa26256564f2013e4f6094b578ca352e9d85c57cd7c3b1b9bae33.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Permutation/Variantcf0e878c0c1fa26256564f2013e4f6094b578ca352e9d85c57cd7c3b1b9bae33.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Permutation/Variantcf0e878c0c1fa26256564f2013e4f6094b578ca352e9d85c57cd7c3b1b9bae33.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `288a366a1cf1e769f0cf622ae1fb645bf54ca157`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Permutation/Variantcf0e878c0c1fa26256564f2013e4f6094b578ca352e9d85c57cd7c3b1b9bae33.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Permutation/Variantcf0e878c0c1fa26256564f2013e4f6094b578ca352e9d85c57cd7c3b1b9bae33.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.List.Join` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [permutationsAux2_fst](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Permutation/Variantcf0e878c0c1fa26256564f2013e4f6094b578ca352e9d85c57cd7c3b1b9bae33.lean/declarations/permutationsaux2-fst--c1ead07302e28cf0aa7ff7bb.md) | 62 | `result-track:c1ead07302e28cf0aa7ff7bb00f8a93212c673730f619dfcc5f60e9e6fc2eefd` |
| 2 | `theorem` | [permutationsAux2_snd_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Permutation/Variantcf0e878c0c1fa26256564f2013e4f6094b578ca352e9d85c57cd7c3b1b9bae33.lean/declarations/permutationsaux2-snd-nil--6f1d30f225c2621fd195b2e1.md) | 69 | `result-track:6f1d30f225c2621fd195b2e1b9fbdf89505bddd8ecd8a05463318e84b332157e` |
| 3 | `theorem` | [permutationsAux2_snd_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Permutation/Variantcf0e878c0c1fa26256564f2013e4f6094b578ca352e9d85c57cd7c3b1b9bae33.lean/declarations/permutationsaux2-snd-cons--3bf328e7f114e8a24ecb4c15.md) | 75 | `result-track:3bf328e7f114e8a24ecb4c15dc67383dfdb3eea2b89cba577224feb69ef080ff` |
| 4 | `theorem` | [permutationsAux2_append](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Permutation/Variantcf0e878c0c1fa26256564f2013e4f6094b578ca352e9d85c57cd7c3b1b9bae33.lean/declarations/permutationsaux2-append--9169d0d1097641aead8f0158.md) | 83 | `result-track:9169d0d1097641aead8f01581f9344250031cd5c3783c8905bf8b6f07f783d27` |
| 5 | `theorem` | [permutationsAux2_comp_append](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Permutation/Variantcf0e878c0c1fa26256564f2013e4f6094b578ca352e9d85c57cd7c3b1b9bae33.lean/declarations/permutationsaux2-comp-append--3217412718c7751fb73934be.md) | 89 | `result-track:3217412718c7751fb73934bebf6fbe62c72f5d105b3fbaadd2585f375cdd8bce` |
| 6 | `theorem` | [map_permutationsAux2'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Permutation/Variantcf0e878c0c1fa26256564f2013e4f6094b578ca352e9d85c57cd7c3b1b9bae33.lean/declarations/map-permutationsaux2--1f34a8990ab406532ba44d9d.md) | 96 | `result-track:1f34a8990ab406532ba44d9d33493c744fe482511666cb39c8e7d7b9ca75d775` |
| 7 | `theorem` | [map_permutationsAux2](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Permutation/Variantcf0e878c0c1fa26256564f2013e4f6094b578ca352e9d85c57cd7c3b1b9bae33.lean/declarations/map-permutationsaux2--a5654330c074d80b04998490.md) | 110 | `result-track:a5654330c074d80b049984904e35e507fc895119ccd5de70b9333d91187bad38` |
| 8 | `theorem` | [permutationsAux2_snd_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Permutation/Variantcf0e878c0c1fa26256564f2013e4f6094b578ca352e9d85c57cd7c3b1b9bae33.lean/declarations/permutationsaux2-snd-eq--22835b002c4247d8fd5ad3ba.md) | 126 | `result-track:22835b002c4247d8fd5ad3babf9e29a3c41a459ac8c9b74bedfa862e08c7ffe0` |
| 9 | `theorem` | [map_map_permutationsAux2](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Permutation/Variantcf0e878c0c1fa26256564f2013e4f6094b578ca352e9d85c57cd7c3b1b9bae33.lean/declarations/map-map-permutationsaux2--7bf2549c85bf5f032f2824ab.md) | 132 | `result-track:7bf2549c85bf5f032f2824ab6fb4c0030f07379e1af06c60cb82e0a0e56b31ae` |
| 10 | `theorem` | [map_map_permutations'Aux](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Permutation/Variantcf0e878c0c1fa26256564f2013e4f6094b578ca352e9d85c57cd7c3b1b9bae33.lean/declarations/map-map-permutations-aux--d99b407351cedf70dbc0991d.md) | 138 | `result-track:d99b407351cedf70dbc0991d25d682fd3e40fb7cce7aa37b785f39e0b7b550d3` |
| 11 | `theorem` | [permutations'Aux_eq_permutationsAux2](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Permutation/Variantcf0e878c0c1fa26256564f2013e4f6094b578ca352e9d85c57cd7c3b1b9bae33.lean/declarations/permutations-aux-eq-permutationsaux2--37f5ef17035c76b8354e279a.md) | 143 | `result-track:37f5ef17035c76b8354e279a8c61fdae65aabf4b0af09b6b77222f49988af35e` |
| 12 | `theorem` | [mem_permutationsAux2](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Permutation/Variantcf0e878c0c1fa26256564f2013e4f6094b578ca352e9d85c57cd7c3b1b9bae33.lean/declarations/mem-permutationsaux2--352c8942be215cd0cd947ac1.md) | 151 | `result-track:352c8942be215cd0cd947ac177b98a88ca80e3e3873f0619a99c3f3bc63d934f` |
| 13 | `theorem` | [mem_permutationsAux2'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Permutation/Variantcf0e878c0c1fa26256564f2013e4f6094b578ca352e9d85c57cd7c3b1b9bae33.lean/declarations/mem-permutationsaux2--496148558ec8280e1d88b403.md) | 169 | `result-track:496148558ec8280e1d88b4036365023763cc3601817e4a2a8f7bf32c02c75f51` |
| 14 | `theorem` | [length_permutationsAux2](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Permutation/Variantcf0e878c0c1fa26256564f2013e4f6094b578ca352e9d85c57cd7c3b1b9bae33.lean/declarations/length-permutationsaux2--18bfa446d24d7b39cc765948.md) | 175 | `result-track:18bfa446d24d7b39cc765948f255ec4073dd0e3359483c4faa224d26f1533fb3` |
| 15 | `theorem` | [foldr_permutationsAux2](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Permutation/Variantcf0e878c0c1fa26256564f2013e4f6094b578ca352e9d85c57cd7c3b1b9bae33.lean/declarations/foldr-permutationsaux2--fdcd1e06111b5677c139c077.md) | 180 | `result-track:fdcd1e06111b5677c139c07769de9100089bd2335757561c2dc461d8330957a9` |
| 16 | `theorem` | [mem_foldr_permutationsAux2](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Permutation/Variantcf0e878c0c1fa26256564f2013e4f6094b578ca352e9d85c57cd7c3b1b9bae33.lean/declarations/mem-foldr-permutationsaux2--22bab86f7957ea1cf82056e0.md) | 189 | `result-track:22bab86f7957ea1cf82056e0ca05f6c5e5c082cc15762f130c54a0b7d68c6fa6` |
| 17 | `theorem` | [length_foldr_permutationsAux2](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Permutation/Variantcf0e878c0c1fa26256564f2013e4f6094b578ca352e9d85c57cd7c3b1b9bae33.lean/declarations/length-foldr-permutationsaux2--e8e290afb82ef9e7eda143b0.md) | 203 | `result-track:e8e290afb82ef9e7eda143b0448874aa42eb0577b39054a53a92ec59f861b355` |
| 18 | `theorem` | [length_foldr_permutationsAux2'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Permutation/Variantcf0e878c0c1fa26256564f2013e4f6094b578ca352e9d85c57cd7c3b1b9bae33.lean/declarations/length-foldr-permutationsaux2--38f51b01dcae7f54c2bb1126.md) | 209 | `result-track:38f51b01dcae7f54c2bb112679d0b86dfdd39a6d69ffe62fe9dee62a647dc719` |
| 19 | `theorem` | [permutationsAux_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Permutation/Variantcf0e878c0c1fa26256564f2013e4f6094b578ca352e9d85c57cd7c3b1b9bae33.lean/declarations/permutationsaux-nil--915f2e004d60cab075c6806f.md) | 221 | `result-track:915f2e004d60cab075c6806fa9b786a4fa5ac43d9464376380c127158ef53517` |
| 20 | `theorem` | [permutationsAux_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Permutation/Variantcf0e878c0c1fa26256564f2013e4f6094b578ca352e9d85c57cd7c3b1b9bae33.lean/declarations/permutationsaux-cons--497c4d15fb0b56ced89e5faf.md) | 226 | `result-track:497c4d15fb0b56ced89e5faf306b00fa1c28125c255726c6bb33d4a48fcc62f3` |
| 21 | `theorem` | [permutations_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Permutation/Variantcf0e878c0c1fa26256564f2013e4f6094b578ca352e9d85c57cd7c3b1b9bae33.lean/declarations/permutations-nil--150a13ed2fc01a5f5bffaa88.md) | 234 | `result-track:150a13ed2fc01a5f5bffaa8808fb8aec782348de8933bbcd31cc1ca490a18ff7` |
| 22 | `theorem` | [map_permutationsAux](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Permutation/Variantcf0e878c0c1fa26256564f2013e4f6094b578ca352e9d85c57cd7c3b1b9bae33.lean/declarations/map-permutationsaux--5d93a95ae9b7e28d2e56826e.md) | 238 | `result-track:5d93a95ae9b7e28d2e56826e3e9ab93891ec08c074c9e3aca29a972237b7f2f3` |
| 23 | `theorem` | [map_permutations](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Permutation/Variantcf0e878c0c1fa26256564f2013e4f6094b578ca352e9d85c57cd7c3b1b9bae33.lean/declarations/map-permutations--263de43ca721d58d3b1fd115.md) | 247 | `result-track:263de43ca721d58d3b1fd1155502f66ceace0a2c24edf1fda455e91dd530cd1f` |
| 24 | `theorem` | [map_permutations'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Permutation/Variantcf0e878c0c1fa26256564f2013e4f6094b578ca352e9d85c57cd7c3b1b9bae33.lean/declarations/map-permutations--368cdaeb021431de4ceca0f5.md) | 252 | `result-track:368cdaeb021431de4ceca0f567f64c024586d743c952d8005750f5a13628cb8f` |
| 25 | `theorem` | [permutationsAux_append](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Permutation/Variantcf0e878c0c1fa26256564f2013e4f6094b578ca352e9d85c57cd7c3b1b9bae33.lean/declarations/permutationsaux-append--7e83ee0df3e488ebeb74ffbd.md) | 257 | `result-track:7e83ee0df3e488ebeb74ffbdbef31dff8e96dc3bb40145b86d112eabca929a19` |
| 26 | `theorem` | [permutations_append](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Permutation/Variantcf0e878c0c1fa26256564f2013e4f6094b578ca352e9d85c57cd7c3b1b9bae33.lean/declarations/permutations-append--e8cb69ae0ff27beb4a33ee61.md) | 270 | `result-track:e8cb69ae0ff27beb4a33ee61c3f08b0b7897b8097d305635a3af91c53a673f88` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
