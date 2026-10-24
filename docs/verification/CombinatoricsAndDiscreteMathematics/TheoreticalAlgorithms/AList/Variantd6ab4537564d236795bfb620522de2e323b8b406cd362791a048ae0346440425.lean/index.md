# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.AList.Variantd6ab4537564d236795bfb620522de2e323b8b406cd362791a048ae0346440425

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bb5e777a91dc558162d1e70aee6e0ac0d7eae07d",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AList/Variantd6ab4537564d236795bfb620522de2e323b8b406cd362791a048ae0346440425.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AList/Variantd6ab4537564d236795bfb620522de2e323b8b406cd362791a048ae0346440425.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AList/Variantd6ab4537564d236795bfb620522de2e323b8b406cd362791a048ae0346440425.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bb5e777a91dc558162d1e70aee6e0ac0d7eae07d`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AList/Variantd6ab4537564d236795bfb620522de2e323b8b406cd362791a048ae0346440425.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AList/Variantd6ab4537564d236795bfb620522de2e323b8b406cd362791a048ae0346440425.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finsupp.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.List.AList` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [toAList](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AList/Variantd6ab4537564d236795bfb620522de2e323b8b406cd362791a048ae0346440425.lean/declarations/toalist--284bc367d7f61dfa49af9e86.md) | 37 | `declaration-track:284bc367d7f61dfa49af9e860498ae08d19d03b99e01a91f67845aa96fa24d4e` |
| 2 | `theorem` | [toAList_keys_toFinset](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AList/Variantd6ab4537564d236795bfb620522de2e323b8b406cd362791a048ae0346440425.lean/declarations/toalist-keys-tofinset--90ee29d0b9583d4d5619ac7d.md) | 49 | `result-track:90ee29d0b9583d4d5619ac7dee05b4509f407f00b688e676b63998e51a3b13e3` |
| 3 | `theorem` | [mem_toAlist](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AList/Variantd6ab4537564d236795bfb620522de2e323b8b406cd362791a048ae0346440425.lean/declarations/mem-toalist--a7c833f33157498cba7f37c6.md) | 56 | `result-track:a7c833f33157498cba7f37c6aa1afccfacb4148b013baf3db7c453518536d1c7` |
| 4 | `def` | [lookupFinsupp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AList/Variantd6ab4537564d236795bfb620522de2e323b8b406cd362791a048ae0346440425.lean/declarations/lookupfinsupp--aff34c42dde39dd0f042ff36.md) | 70 | `declaration-track:aff34c42dde39dd0f042ff3640fbbd4fd09a0d9a7cdd4fed5a6ebba6ff741002` |
| 5 | `theorem` | [lookupFinsupp_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AList/Variantd6ab4537564d236795bfb620522de2e323b8b406cd362791a048ae0346440425.lean/declarations/lookupfinsupp-apply--f33d23e6abdd2e793e44618f.md) | 85 | `result-track:f33d23e6abdd2e793e44618f54dea4c0234d7371b858f37653a2eeb74d57986c` |
| 6 | `theorem` | [lookupFinsupp_support](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AList/Variantd6ab4537564d236795bfb620522de2e323b8b406cd362791a048ae0346440425.lean/declarations/lookupfinsupp-support--eab47933b084e07f277421b5.md) | 92 | `result-track:eab47933b084e07f277421b52ee3be0675b075f8c0cba4781521bffa0ba06045` |
| 7 | `theorem` | [lookupFinsupp_eq_iff_of_ne_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AList/Variantd6ab4537564d236795bfb620522de2e323b8b406cd362791a048ae0346440425.lean/declarations/lookupfinsupp-eq-iff-of-ne-zero--df123ac187bd5d1839194b06.md) | 100 | `result-track:df123ac187bd5d1839194b069982535aeb6a26d89aaec5d10e48de6c3ea7d906` |
| 8 | `theorem` | [lookupFinsupp_eq_zero_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AList/Variantd6ab4537564d236795bfb620522de2e323b8b406cd362791a048ae0346440425.lean/declarations/lookupfinsupp-eq-zero-iff--78a6b76ce68e36784634ffcf.md) | 106 | `result-track:78a6b76ce68e36784634ffcf2f07d52a4018985be796d5206f0bebc29e61c474` |
| 9 | `theorem` | [empty_lookupFinsupp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AList/Variantd6ab4537564d236795bfb620522de2e323b8b406cd362791a048ae0346440425.lean/declarations/empty-lookupfinsupp--ebc8e00f4b6e23333c48dfba.md) | 113 | `result-track:ebc8e00f4b6e23333c48dfbae2912dfa3be3c4b9873cdc4acac3f4865fceef0a` |
| 10 | `theorem` | [insert_lookupFinsupp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AList/Variantd6ab4537564d236795bfb620522de2e323b8b406cd362791a048ae0346440425.lean/declarations/insert-lookupfinsupp--c7273ff3c92568cef12d451e.md) | 120 | `result-track:c7273ff3c92568cef12d451e8a67a81e3aa3c11257de4a4f80362489cf0c96ef` |
| 11 | `theorem` | [singleton_lookupFinsupp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AList/Variantd6ab4537564d236795bfb620522de2e323b8b406cd362791a048ae0346440425.lean/declarations/singleton-lookupfinsupp--079440d8b220b95d84e96a03.md) | 127 | `result-track:079440d8b220b95d84e96a03a9661db8bb376060bf261f42968ac750afcfadf7` |
| 12 | `theorem` | [_root_.GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ToAList.Variant8e16108c73998d3745ad77cba7ed647c39daca9e4665b4edf0e1099c76025dde.Finsupp.toAList_lookupFinsupp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AList/Variantd6ab4537564d236795bfb620522de2e323b8b406cd362791a048ae0346440425.lean/declarations/root-grwtsk-combinatoricsanddiscretemathematics-theoreticalalgorithms-to--fa2d5def835d90e0c2830228.md) | 135 | `result-track:fa2d5def835d90e0c283022843b8669b7a547854bf200b0495e382710755c8e9` |
| 13 | `theorem` | [lookupFinsupp_surjective](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AList/Variantd6ab4537564d236795bfb620522de2e323b8b406cd362791a048ae0346440425.lean/declarations/lookupfinsupp-surjective--2372b6c403fdd00d2957ed1d.md) | 146 | `result-track:2372b6c403fdd00d2957ed1d2e549f909196f02c8a2b2502ad0e101c1fadfd12` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
