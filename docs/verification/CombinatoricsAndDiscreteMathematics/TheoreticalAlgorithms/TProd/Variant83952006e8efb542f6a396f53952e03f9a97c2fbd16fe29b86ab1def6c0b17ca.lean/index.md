# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.TProd.Variant83952006e8efb542f6a396f53952e03f9a97c2fbd16fe29b86ab1def6c0b17ca

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fc8fecc935fa372921cf8dfa542aef8fd9f00a4c",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TProd/Variant83952006e8efb542f6a396f53952e03f9a97c2fbd16fe29b86ab1def6c0b17ca.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TProd/Variant83952006e8efb542f6a396f53952e03f9a97c2fbd16fe29b86ab1def6c0b17ca.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TProd/Variant83952006e8efb542f6a396f53952e03f9a97c2fbd16fe29b86ab1def6c0b17ca.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fc8fecc935fa372921cf8dfa542aef8fd9f00a4c`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TProd/Variant83952006e8efb542f6a396f53952e03f9a97c2fbd16fe29b86ab1def6c0b17ca.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TProd/Variant83952006e8efb542f6a396f53952e03f9a97c2fbd16fe29b86ab1def6c0b17ca.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.List.Nodup` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Prod` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [TProd](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TProd/Variant83952006e8efb542f6a396f53952e03f9a97c2fbd16fe29b86ab1def6c0b17ca.lean/declarations/tprod--152cd754557dc722f88cf384.md) | 46 | `declaration-track:152cd754557dc722f88cf38431d5487af1245d79903013098bc814799be2acff` |
| 2 | `def` | [mk](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TProd/Variant83952006e8efb542f6a396f53952e03f9a97c2fbd16fe29b86ab1def6c0b17ca.lean/declarations/mk--02e4851f4920dd3204f342ed.md) | 54 | `declaration-track:02e4851f4920dd3204f342edc8ba6e85e53847bbfd137dd7012a63b60271bb93` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TProd/Variant83952006e8efb542f6a396f53952e03f9a97c2fbd16fe29b86ab1def6c0b17ca.lean/declarations/instance--6e22603bc208fcb18d41c70a.md) | 58 | `declaration-track:6e22603bc208fcb18d41c70a9a388efff3d50c4914859acd57bcf84ecec36c1f` |
| 4 | `theorem` | [fst_mk](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TProd/Variant83952006e8efb542f6a396f53952e03f9a97c2fbd16fe29b86ab1def6c0b17ca.lean/declarations/fst-mk--dfe43f0e65b20c0f4a3b6ef1.md) | 62 | `result-track:dfe43f0e65b20c0f4a3b6ef1afada766efc4d5fca102300126616402c3b88fce` |
| 5 | `theorem` | [snd_mk](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TProd/Variant83952006e8efb542f6a396f53952e03f9a97c2fbd16fe29b86ab1def6c0b17ca.lean/declarations/snd-mk--407d68c34e6aee5abfcb7b17.md) | 66 | `result-track:407d68c34e6aee5abfcb7b17bb3ef379e9e592c876e3a30558b002a349d36865` |
| 6 | `def` | [elim](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TProd/Variant83952006e8efb542f6a396f53952e03f9a97c2fbd16fe29b86ab1def6c0b17ca.lean/declarations/elim--21af8370f9cd5b355296f202.md) | 74 | `declaration-track:21af8370f9cd5b355296f202be15a76bb4d1c13d6b65ae8e96129051fb2c33b6` |
| 7 | `theorem` | [elim_self](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TProd/Variant83952006e8efb542f6a396f53952e03f9a97c2fbd16fe29b86ab1def6c0b17ca.lean/declarations/elim-self--67d8b5c069c799db457872b7.md) | 82 | `result-track:67d8b5c069c799db457872b72110e0af26c8e85fd1d0de43c66c616b6a648a15` |
| 8 | `theorem` | [elim_of_ne](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TProd/Variant83952006e8efb542f6a396f53952e03f9a97c2fbd16fe29b86ab1def6c0b17ca.lean/declarations/elim-of-ne--cc989739253e0b97f2a6fdeb.md) | 85 | `result-track:cc989739253e0b97f2a6fdeb2a95bf71f05c4cf12e8e444b237e2d7df3e6916e` |
| 9 | `theorem` | [elim_of_mem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TProd/Variant83952006e8efb542f6a396f53952e03f9a97c2fbd16fe29b86ab1def6c0b17ca.lean/declarations/elim-of-mem--9965f6a3ffca93a917dddac5.md) | 89 | `result-track:9965f6a3ffca93a917dddac591b559ba1bc37d06ee3a0407fe8a904069e4b2e4` |
| 10 | `theorem` | [elim_mk](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TProd/Variant83952006e8efb542f6a396f53952e03f9a97c2fbd16fe29b86ab1def6c0b17ca.lean/declarations/elim-mk--b38711dcab030e115347e3f8.md) | 95 | `result-track:b38711dcab030e115347e3f8675cc72b6a897d2f8aa0561af2c690cb657fc901` |
| 11 | `theorem` | [ext](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TProd/Variant83952006e8efb542f6a396f53952e03f9a97c2fbd16fe29b86ab1def6c0b17ca.lean/declarations/ext--16b9023a8e9444f77ea3c1fa.md) | 103 | `result-track:16b9023a8e9444f77ea3c1fa9cebdaf46e7cb47d225c7c14a7ce43396e87271c` |
| 12 | `def` | [elim'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TProd/Variant83952006e8efb542f6a396f53952e03f9a97c2fbd16fe29b86ab1def6c0b17ca.lean/declarations/elim--28bb72f225c39f7ab7dc3bf2.md) | 116 | `declaration-track:28bb72f225c39f7ab7dc3bf2164005550b82c33444b5f679c53fc66a14cf8bd2` |
| 13 | `theorem` | [mk_elim](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TProd/Variant83952006e8efb542f6a396f53952e03f9a97c2fbd16fe29b86ab1def6c0b17ca.lean/declarations/mk-elim--b628b13829f28989332bd3fa.md) | 119 | `result-track:b628b13829f28989332bd3fa70e2ee8ccd051ffe1131c73967b0f647c00f1f7f` |
| 14 | `def` | [piEquivTProd](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TProd/Variant83952006e8efb542f6a396f53952e03f9a97c2fbd16fe29b86ab1def6c0b17ca.lean/declarations/piequivtprod--032597053e359e2926a36ad2.md) | 123 | `declaration-track:032597053e359e2926a36ad21d45056c7054d1c993be581ab5d4ae0600a53198` |
| 15 | `def` | [tprod](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TProd/Variant83952006e8efb542f6a396f53952e03f9a97c2fbd16fe29b86ab1def6c0b17ca.lean/declarations/tprod--c02c39d2cd1c1dcb717861d7.md) | 136 | `declaration-track:c02c39d2cd1c1dcb717861d7273063aee58cf2a3f0afabd8d5848ccb64f0cd78` |
| 16 | `theorem` | [mk_preimage_tprod](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TProd/Variant83952006e8efb542f6a396f53952e03f9a97c2fbd16fe29b86ab1def6c0b17ca.lean/declarations/mk-preimage-tprod--c0cab81c29f8fb71b08703ea.md) | 140 | `result-track:c0cab81c29f8fb71b08703ea09d621bb9a88518f324035018da4df8034054828` |
| 17 | `theorem` | [elim_preimage_pi](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TProd/Variant83952006e8efb542f6a396f53952e03f9a97c2fbd16fe29b86ab1def6c0b17ca.lean/declarations/elim-preimage-pi--8277c30a53166f75977df980.md) | 155 | `result-track:8277c30a53166f75977df9808a4545b16ed3a9e9e14a8decfcc6c055b828c0d4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
