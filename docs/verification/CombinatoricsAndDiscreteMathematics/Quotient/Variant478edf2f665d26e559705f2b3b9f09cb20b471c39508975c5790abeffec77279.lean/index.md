# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Quotient.Variant478edf2f665d26e559705f2b3b9f09cb20b471c39508975c5790abeffec77279

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "133f7dce79707e810ec73cd6da7e98ded5815e1f",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Quotient/Variant478edf2f665d26e559705f2b3b9f09cb20b471c39508975c5790abeffec77279.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Quotient/Variant478edf2f665d26e559705f2b3b9f09cb20b471c39508975c5790abeffec77279.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Quotient/Variant478edf2f665d26e559705f2b3b9f09cb20b471c39508975c5790abeffec77279.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `133f7dce79707e810ec73cd6da7e98ded5815e1f`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Quotient/Variant478edf2f665d26e559705f2b3b9f09cb20b471c39508975c5790abeffec77279.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Quotient/Variant478edf2f665d26e559705f2b3b9f09cb20b471c39508975c5790abeffec77279.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.List.Pi` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Defs` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [listChoice](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Quotient/Variant478edf2f665d26e559705f2b3b9f09cb20b471c39508975c5790abeffec77279.lean/declarations/listchoice--7364fbde4ae3ecfabc7cbe1e.md) | 37 | `declaration-track:7364fbde4ae3ecfabc7cbe1e2676d6af5ff8b97e3db10e04b88049034cc51415` |
| 2 | `theorem` | [listChoice_mk](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Quotient/Variant478edf2f665d26e559705f2b3b9f09cb20b471c39508975c5790abeffec77279.lean/declarations/listchoice-mk--db7486241a4aade352598bc1.md) | 45 | `result-track:db7486241a4aade352598bc1f8c93cf64c30e222a0ced91b81c2375e70dc4376` |
| 3 | `lemma` | [list_ind](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Quotient/Variant478edf2f665d26e559705f2b3b9f09cb20b471c39508975c5790abeffec77279.lean/declarations/list-ind--4f1f40bd19427081d1d66344.md) | 55 | `result-track:4f1f40bd19427081d1d6634418dcfda6b605c3a5830d74ca21c2c13cd345f6e2` |
| 4 | `lemma` | [ind_fintype_pi](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Quotient/Variant478edf2f665d26e559705f2b3b9f09cb20b471c39508975c5790abeffec77279.lean/declarations/ind-fintype-pi--152a1ad961057a8cfd76ffc9.md) | 75 | `result-track:152a1ad961057a8cfd76ffc9a1a415a65941e4f79220290a4203e99a486a3599` |
| 5 | `lemma` | [induction_on_fintype_pi](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Quotient/Variant478edf2f665d26e559705f2b3b9f09cb20b471c39508975c5790abeffec77279.lean/declarations/induction-on-fintype-pi--fa730807b2dd3caace4bb518.md) | 86 | `result-track:fa730807b2dd3caace4bb5180918f5e972cb264bfb8a310ad2c2e9278f2b6652` |
| 6 | `def` | [finChoice](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Quotient/Variant478edf2f665d26e559705f2b3b9f09cb20b471c39508975c5790abeffec77279.lean/declarations/finchoice--0648db9301a6539499152988.md) | 94 | `declaration-track:0648db9301a65394991529881b0cd3b525e2e8b90c68b4959d2db783c6335566` |
| 7 | `theorem` | [finChoice_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Quotient/Variant478edf2f665d26e559705f2b3b9f09cb20b471c39508975c5790abeffec77279.lean/declarations/finchoice-eq--8d2ab75e63fcc31e562208c4.md) | 105 | `result-track:8d2ab75e63fcc31e562208c47e3c75f7c6a56207e46c686286dfbda8ec02fbcc` |
| 8 | `lemma` | [eval_finChoice](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Quotient/Variant478edf2f665d26e559705f2b3b9f09cb20b471c39508975c5790abeffec77279.lean/declarations/eval-finchoice--2ec0263eb8a27bb951ff9c13.md) | 112 | `result-track:2ec0263eb8a27bb951ff9c132ecb0b2c1978a2b36a93b242a6ec87903058b95f` |
| 9 | `def` | [finLiftOn](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Quotient/Variant478edf2f665d26e559705f2b3b9f09cb20b471c39508975c5790abeffec77279.lean/declarations/finlifton--d0288787e2455c5a2fc6e4b6.md) | 117 | `declaration-track:d0288787e2455c5a2fc6e4b6fc0a1f3e666f8b1f455f76350d3a183574bdebe9` |
| 10 | `lemma` | [finLiftOn_empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Quotient/Variant478edf2f665d26e559705f2b3b9f09cb20b471c39508975c5790abeffec77279.lean/declarations/finlifton-empty--4be596f683437b159b3ac3bf.md) | 122 | `result-track:4be596f683437b159b3ac3bf862a14150f9b6c4842a2ffd166b840a3826024bc` |
| 11 | `lemma` | [finLiftOn_mk](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Quotient/Variant478edf2f665d26e559705f2b3b9f09cb20b471c39508975c5790abeffec77279.lean/declarations/finlifton-mk--39df26d5ae80d376b26914fd.md) | 130 | `result-track:39df26d5ae80d376b26914fdcf78796e27becc83855e0c7e2cc1cca922b491cb` |
| 12 | `def` | [finChoiceEquiv](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Quotient/Variant478edf2f665d26e559705f2b3b9f09cb20b471c39508975c5790abeffec77279.lean/declarations/finchoiceequiv--f14e1110b817652f50b22d19.md) | 139 | `declaration-track:f14e1110b817652f50b22d19bfcd8915a241d53439a45bc447b12a1367515722` |
| 13 | `def` | [finHRecOn](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Quotient/Variant478edf2f665d26e559705f2b3b9f09cb20b471c39508975c5790abeffec77279.lean/declarations/finhrecon--8606e9215fe7c46fcf919cf9.md) | 153 | `declaration-track:8606e9215fe7c46fcf919cf9b6a6b22cc7350173d33b803a1ae2efa2f0749687` |
| 14 | `def` | [finRecOn](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Quotient/Variant478edf2f665d26e559705f2b3b9f09cb20b471c39508975c5790abeffec77279.lean/declarations/finrecon--398c3c1bb36d4ceafb612c24.md) | 162 | `declaration-track:398c3c1bb36d4ceafb612c2405739d9a346aec6378705ff3693d5d739d7837e5` |
| 15 | `lemma` | [finHRecOn_mk](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Quotient/Variant478edf2f665d26e559705f2b3b9f09cb20b471c39508975c5790abeffec77279.lean/declarations/finhrecon-mk--cd44158f7303b2a59f9a22d2.md) | 171 | `result-track:cd44158f7303b2a59f9a22d2e89dcee4af005b9a655584f70637a87846d270e9` |
| 16 | `lemma` | [finRecOn_mk](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Quotient/Variant478edf2f665d26e559705f2b3b9f09cb20b471c39508975c5790abeffec77279.lean/declarations/finrecon-mk--e09cfcd30b4ae2174fab2187.md) | 180 | `result-track:e09cfcd30b4ae2174fab2187f152ddc281a5fb50287b58b867a455476d67ba8a` |
| 17 | `def` | [finChoice](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Quotient/Variant478edf2f665d26e559705f2b3b9f09cb20b471c39508975c5790abeffec77279.lean/declarations/finchoice--4f13e18b317284b662888589.md) | 195 | `declaration-track:4f13e18b317284b662888589aa39eb918b78ec1e1466536fc67ce3f32b33120a` |
| 18 | `theorem` | [finChoice_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Quotient/Variant478edf2f665d26e559705f2b3b9f09cb20b471c39508975c5790abeffec77279.lean/declarations/finchoice-eq--58ea1bc9205253b51cb428ce.md) | 198 | `result-track:58ea1bc9205253b51cb428ce606d8a6c13fb6da234ed2a6483ac80392d3479e0` |
| 19 | `def` | [finLiftOn](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Quotient/Variant478edf2f665d26e559705f2b3b9f09cb20b471c39508975c5790abeffec77279.lean/declarations/finlifton--10a65ed6af279554bd88cdb5.md) | 202 | `declaration-track:10a65ed6af279554bd88cdb58c52ffa67c486565da16847413becc2efcdf5b7a` |
| 20 | `lemma` | [finLiftOn_empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Quotient/Variant478edf2f665d26e559705f2b3b9f09cb20b471c39508975c5790abeffec77279.lean/declarations/finlifton-empty--fbf8898d9aa9936cd7bfc1d2.md) | 206 | `result-track:fbf8898d9aa9936cd7bfc1d29103655f0e76749f00ccbd8b429f7d73df8bad64` |
| 21 | `lemma` | [finLiftOn_mk](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Quotient/Variant478edf2f665d26e559705f2b3b9f09cb20b471c39508975c5790abeffec77279.lean/declarations/finlifton-mk--9965c59e8bc67159820f42ce.md) | 211 | `result-track:9965c59e8bc67159820f42ceeba714c67466c820ea0f56352280ed6e0a95eb8e` |
| 22 | `def` | [finChoiceEquiv](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Quotient/Variant478edf2f665d26e559705f2b3b9f09cb20b471c39508975c5790abeffec77279.lean/declarations/finchoiceequiv--17bffc99e9afb24f37d07f05.md) | 217 | `declaration-track:17bffc99e9afb24f37d07f0531a755f3b14064cc31c354f992b4044558fedee1` |
| 23 | `def` | [finRecOn](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Quotient/Variant478edf2f665d26e559705f2b3b9f09cb20b471c39508975c5790abeffec77279.lean/declarations/finrecon--4b07917e883143c21d199f65.md) | 225 | `declaration-track:4b07917e883143c21d199f65180625a2fe6d34e24b5bc1620e89b3fec6299403` |
| 24 | `lemma` | [finRecOn_mk](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Quotient/Variant478edf2f665d26e559705f2b3b9f09cb20b471c39508975c5790abeffec77279.lean/declarations/finrecon-mk--90f9d37d2f6dc78fa1f8fcab.md) | 233 | `result-track:90f9d37d2f6dc78fa1f8fcab40d07bf6f818797b53a331a1ec182480dc468ad1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
