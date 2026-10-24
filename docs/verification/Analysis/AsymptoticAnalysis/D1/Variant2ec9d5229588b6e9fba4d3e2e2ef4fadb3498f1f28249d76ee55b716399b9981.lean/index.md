# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.D1.Variant2ec9d5229588b6e9fba4d3e2e2ef4fadb3498f1f28249d76ee55b716399b9981

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9e457cd652649fe9d66c7b561b2fa80e2a99b145",
  "lexical_observation_count": 40,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/D1/Variant2ec9d5229588b6e9fba4d3e2e2ef4fadb3498f1f28249d76ee55b716399b9981.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/D1/Variant2ec9d5229588b6e9fba4d3e2e2ef4fadb3498f1f28249d76ee55b716399b9981.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/D1/Variant2ec9d5229588b6e9fba4d3e2e2ef4fadb3498f1f28249d76ee55b716399b9981.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9e457cd652649fe9d66c7b561b2fa80e2a99b145`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/D1/Variant2ec9d5229588b6e9fba4d3e2e2ef4fadb3498f1f28249d76ee55b716399b9981.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/D1/Variant2ec9d5229588b6e9fba4d3e2e2ef4fadb3498f1f28249d76ee55b716399b9981.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.XiPrime.Defs` — import line 23; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecificLimits.Normed` — import line 24; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Group.FunctionSeries` — import line 25; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Integrals.Basic` — import line 26; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [D1coeff_pos](../../../../../mathematics/Analysis/AsymptoticAnalysis/D1/Variant2ec9d5229588b6e9fba4d3e2e2ef4fadb3498f1f28249d76ee55b716399b9981.lean/declarations/d1coeff-pos--84a276618c4e8eeabd002e71.md) | 38 | `result-track:84a276618c4e8eeabd002e71feef7ef4c1ba1481de9a4a7710e3a7ff7f5664c4` |
| 2 | `theorem` | [D1coeff_nonneg](../../../../../mathematics/Analysis/AsymptoticAnalysis/D1/Variant2ec9d5229588b6e9fba4d3e2e2ef4fadb3498f1f28249d76ee55b716399b9981.lean/declarations/d1coeff-nonneg--56592c61c783727999cdfd8e.md) | 41 | `result-track:56592c61c783727999cdfd8e7a15b38cdfb79f4083eeb3faf3a593a191a6e27b` |
| 3 | `theorem` | [D1coeff_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/D1/Variant2ec9d5229588b6e9fba4d3e2e2ef4fadb3498f1f28249d76ee55b716399b9981.lean/declarations/d1coeff-zero--bdb49da38ce89bf769fcb61b.md) | 43 | `result-track:bdb49da38ce89bf769fcb61b33bb797c21610ab4a5b18035030e3f667ae158f8` |
| 4 | `theorem` | [D1coeff_succ](../../../../../mathematics/Analysis/AsymptoticAnalysis/D1/Variant2ec9d5229588b6e9fba4d3e2e2ef4fadb3498f1f28249d76ee55b716399b9981.lean/declarations/d1coeff-succ--4d5746e47192d1032cf42cd9.md) | 47 | `result-track:4d5746e47192d1032cf42cd92e000d98c4f1e80fccd3b7c5f1c90a6a068f2766` |
| 5 | `theorem` | [D1coeff_succ_le_third](../../../../../mathematics/Analysis/AsymptoticAnalysis/D1/Variant2ec9d5229588b6e9fba4d3e2e2ef4fadb3498f1f28249d76ee55b716399b9981.lean/declarations/d1coeff-succ-le-third--cd51040a052aafed6c434f1b.md) | 65 | `result-track:cd51040a052aafed6c434f1b67a694b038a127649520a02072b29c6b296a2484` |
| 6 | `theorem` | [D1coeff_succ_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/D1/Variant2ec9d5229588b6e9fba4d3e2e2ef4fadb3498f1f28249d76ee55b716399b9981.lean/declarations/d1coeff-succ-le--f80dd544025c89d035bcfcc4.md) | 77 | `result-track:f80dd544025c89d035bcfcc48fea01a3b10b9f74682a3426285775c7c9620975` |
| 7 | `theorem` | [D1coeff_tail_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/D1/Variant2ec9d5229588b6e9fba4d3e2e2ef4fadb3498f1f28249d76ee55b716399b9981.lean/declarations/d1coeff-tail-le--37303dd5287f8c4ef5ae53c6.md) | 86 | `result-track:37303dd5287f8c4ef5ae53c66b398321e6d3bb71f26a00a007eee7b39fa00e85` |
| 8 | `theorem` | [D1coeff_nine](../../../../../mathematics/Analysis/AsymptoticAnalysis/D1/Variant2ec9d5229588b6e9fba4d3e2e2ef4fadb3498f1f28249d76ee55b716399b9981.lean/declarations/d1coeff-nine--849ae2182a0cb92a4f672b42.md) | 98 | `result-track:849ae2182a0cb92a4f672b42b6d4ba3e2049d269339df1a8b9df9462d47b9aea` |
| 9 | `theorem` | [D1coeff_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/D1/Variant2ec9d5229588b6e9fba4d3e2e2ef4fadb3498f1f28249d76ee55b716399b9981.lean/declarations/d1coeff-le--5185c10e001c09a5cd9ae570.md) | 102 | `result-track:5185c10e001c09a5cd9ae5702c2c51a4d5fa4bb22d7e5f4cf52c3ed39dd53a59` |
| 10 | `def` | [D1term](../../../../../mathematics/Analysis/AsymptoticAnalysis/D1/Variant2ec9d5229588b6e9fba4d3e2e2ef4fadb3498f1f28249d76ee55b716399b9981.lean/declarations/d1term--5801bae031e48803780c92a5.md) | 125 | `declaration-track:5801bae031e48803780c92a5a4ecf8e08235eb0480b092930d85d51066d6a775` |
| 11 | `theorem` | [norm_D1term_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/D1/Variant2ec9d5229588b6e9fba4d3e2e2ef4fadb3498f1f28249d76ee55b716399b9981.lean/declarations/norm-d1term-le--be69f8656407b0c05c62f434.md) | 127 | `result-track:be69f8656407b0c05c62f434fead709ecde8ae97307c8ca75604faccb5e36496` |
| 12 | `theorem` | [summable_D1coeff_mul_pow](../../../../../mathematics/Analysis/AsymptoticAnalysis/D1/Variant2ec9d5229588b6e9fba4d3e2e2ef4fadb3498f1f28249d76ee55b716399b9981.lean/declarations/summable-d1coeff-mul-pow--6a58e6228d6386bb2680365e.md) | 134 | `result-track:6a58e6228d6386bb2680365e3fa82ebb56458845d59a37e8f6f6562035995941` |
| 13 | `theorem` | [summable_D1term](../../../../../mathematics/Analysis/AsymptoticAnalysis/D1/Variant2ec9d5229588b6e9fba4d3e2e2ef4fadb3498f1f28249d76ee55b716399b9981.lean/declarations/summable-d1term--005ae5e584febb9a0682c613.md) | 154 | `result-track:005ae5e584febb9a0682c61314008834fe741b85638dc7e051fb1b9cc3d6e474` |
| 14 | `theorem` | [D1_eq_tsum_D1term](../../../../../mathematics/Analysis/AsymptoticAnalysis/D1/Variant2ec9d5229588b6e9fba4d3e2e2ef4fadb3498f1f28249d76ee55b716399b9981.lean/declarations/d1-eq-tsum-d1term--decc0b6975ebd54bc40e6e09.md) | 157 | `result-track:decc0b6975ebd54bc40e6e0980a36d56756d4f8cbb14ca56c46973a85c3aee9e` |
| 15 | `theorem` | [continuousOn_D1_Icc](../../../../../mathematics/Analysis/AsymptoticAnalysis/D1/Variant2ec9d5229588b6e9fba4d3e2e2ef4fadb3498f1f28249d76ee55b716399b9981.lean/declarations/continuouson-d1-icc--59215b8b1d47ff419028829c.md) | 160 | `result-track:59215b8b1d47ff419028829c319be1b270f0fe8de52631501c6bebfb7286766f` |
| 16 | `theorem` | [continuous_D1](../../../../../mathematics/Analysis/AsymptoticAnalysis/D1/Variant2ec9d5229588b6e9fba4d3e2e2ef4fadb3498f1f28249d76ee55b716399b9981.lean/declarations/continuous-d1--7a0a077b7d55c589cd6c02a8.md) | 171 | `result-track:7a0a077b7d55c589cd6c02a8a1ab67e446263cc9f388a9646828a87d18228070` |
| 17 | `theorem` | [continuousOn_D1](../../../../../mathematics/Analysis/AsymptoticAnalysis/D1/Variant2ec9d5229588b6e9fba4d3e2e2ef4fadb3498f1f28249d76ee55b716399b9981.lean/declarations/continuouson-d1--ff30d75f87541b8717a71b82.md) | 180 | `result-track:ff30d75f87541b8717a71b82b0a0ff76c7cde66de140de1e16d8519089d33a9f` |
| 18 | `theorem` | [D1trunc_eq](../../../../../mathematics/Analysis/AsymptoticAnalysis/D1/Variant2ec9d5229588b6e9fba4d3e2e2ef4fadb3498f1f28249d76ee55b716399b9981.lean/declarations/d1trunc-eq--d5b3719a267973753f75e940.md) | 184 | `result-track:d5b3719a267973753f75e94067953a214e1330992cb084f189b1cf0d9bfa87cf` |
| 19 | `theorem` | [D1_eq_trunc_add_tail](../../../../../mathematics/Analysis/AsymptoticAnalysis/D1/Variant2ec9d5229588b6e9fba4d3e2e2ef4fadb3498f1f28249d76ee55b716399b9981.lean/declarations/d1-eq-trunc-add-tail--123d7be3d5d8b9c0bd0db700.md) | 188 | `result-track:123d7be3d5d8b9c0bd0db70040733910b8da9fe57e85a96a21de33b3ebdccccf` |
| 20 | `theorem` | [D1term_nonneg](../../../../../mathematics/Analysis/AsymptoticAnalysis/D1/Variant2ec9d5229588b6e9fba4d3e2e2ef4fadb3498f1f28249d76ee55b716399b9981.lean/declarations/d1term-nonneg--4d6272083f874fec48739edf.md) | 193 | `result-track:4d6272083f874fec48739edf45683e640e069d7544eef1a7f7ce4a876aaee241` |
| 21 | `theorem` | [D1tail_nonneg](../../../../../mathematics/Analysis/AsymptoticAnalysis/D1/Variant2ec9d5229588b6e9fba4d3e2e2ef4fadb3498f1f28249d76ee55b716399b9981.lean/declarations/d1tail-nonneg--5e9359209ce21a7dd13189f1.md) | 196 | `result-track:5e9359209ce21a7dd13189f130696ddbfdddd063668445ca83bf51d12c650945` |
| 22 | `theorem` | [D1trunc_le_D1](../../../../../mathematics/Analysis/AsymptoticAnalysis/D1/Variant2ec9d5229588b6e9fba4d3e2e2ef4fadb3498f1f28249d76ee55b716399b9981.lean/declarations/d1trunc-le-d1--6283599848854be1753ed43f.md) | 200 | `result-track:6283599848854be1753ed43ff3eb6e08d573a077f0099a991f3e913ca0cf19d3` |
| 23 | `theorem` | [D1trunc_one](../../../../../mathematics/Analysis/AsymptoticAnalysis/D1/Variant2ec9d5229588b6e9fba4d3e2e2ef4fadb3498f1f28249d76ee55b716399b9981.lean/declarations/d1trunc-one--8f5cf898d4976909ac0e8571.md) | 205 | `result-track:8f5cf898d4976909ac0e8571b069a5bff5648839b0952a7b812abb6e8039fb6d` |
| 24 | `theorem` | [D1_nonneg](../../../../../mathematics/Analysis/AsymptoticAnalysis/D1/Variant2ec9d5229588b6e9fba4d3e2e2ef4fadb3498f1f28249d76ee55b716399b9981.lean/declarations/d1-nonneg--2c3a7f1b349cc69185e9b4a7.md) | 210 | `result-track:2c3a7f1b349cc69185e9b4a7fdf1c17de4ca6f3e7aaed37e2a8796747bbd56f6` |
| 25 | `theorem` | [D1_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/D1/Variant2ec9d5229588b6e9fba4d3e2e2ef4fadb3498f1f28249d76ee55b716399b9981.lean/declarations/d1-zero--ecd2ab0b7e891551062892ec.md) | 215 | `result-track:ecd2ab0b7e891551062892ec71fd7428059dd1d75cb4035e79477b1e776dace0` |
| 26 | `def` | [eps9](../../../../../mathematics/Analysis/AsymptoticAnalysis/D1/Variant2ec9d5229588b6e9fba4d3e2e2ef4fadb3498f1f28249d76ee55b716399b9981.lean/declarations/eps9--49369e2ead5b37e862c4dfdf.md) | 220 | `declaration-track:49369e2ead5b37e862c4dfdf62b073da1c745d008f106ab848fe9c4e486b3c33` |
| 27 | `theorem` | [eps9_eq](../../../../../mathematics/Analysis/AsymptoticAnalysis/D1/Variant2ec9d5229588b6e9fba4d3e2e2ef4fadb3498f1f28249d76ee55b716399b9981.lean/declarations/eps9-eq--95242b9e8fd80662a15c7f94.md) | 222 | `result-track:95242b9e8fd80662a15c7f94e3e6563de5c86754940048f745977ef3f1e900c5` |
| 28 | `theorem` | [eps9_pos](../../../../../mathematics/Analysis/AsymptoticAnalysis/D1/Variant2ec9d5229588b6e9fba4d3e2e2ef4fadb3498f1f28249d76ee55b716399b9981.lean/declarations/eps9-pos--41aeb93a4f760a066485c10f.md) | 225 | `result-track:41aeb93a4f760a066485c10fcbaf9d8238d3bf960ea7ea5793853d3ee9041585` |
| 29 | `theorem` | [eps9_lt](../../../../../mathematics/Analysis/AsymptoticAnalysis/D1/Variant2ec9d5229588b6e9fba4d3e2e2ef4fadb3498f1f28249d76ee55b716399b9981.lean/declarations/eps9-lt--a7f2830195b9f72a6b67fd41.md) | 228 | `result-track:a7f2830195b9f72a6b67fd4174b55b132b8b5b5de584b9f4caae7f1e11f8448a` |
| 30 | `theorem` | [D1tail9_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/D1/Variant2ec9d5229588b6e9fba4d3e2e2ef4fadb3498f1f28249d76ee55b716399b9981.lean/declarations/d1tail9-le--fe730266e1a3aa2dd022861d.md) | 231 | `result-track:fe730266e1a3aa2dd022861de6c465fe126b077262cd1e154f1e2bc4b0297096` |
| 31 | `theorem` | [D1_le_D1trunc9_add](../../../../../mathematics/Analysis/AsymptoticAnalysis/D1/Variant2ec9d5229588b6e9fba4d3e2e2ef4fadb3498f1f28249d76ee55b716399b9981.lean/declarations/d1-le-d1trunc9-add--66a9a42cbbe688c9313b1554.md) | 249 | `result-track:66a9a42cbbe688c9313b1554433f2b3f3363a68dfcc405fd1c0eee7ee97859d4` |
| 32 | `theorem` | [D1_mem_Icc](../../../../../mathematics/Analysis/AsymptoticAnalysis/D1/Variant2ec9d5229588b6e9fba4d3e2e2ef4fadb3498f1f28249d76ee55b716399b9981.lean/declarations/d1-mem-icc--a9ba192342aeabe2e78f83cf.md) | 253 | `result-track:a9ba192342aeabe2e78f83cf7445748f410bd46499cdf5eef496ee0fa70b1284` |
| 33 | `theorem` | [continuous_D1trunc](../../../../../mathematics/Analysis/AsymptoticAnalysis/D1/Variant2ec9d5229588b6e9fba4d3e2e2ef4fadb3498f1f28249d76ee55b716399b9981.lean/declarations/continuous-d1trunc--db730cf541d47f56ef342bd8.md) | 258 | `result-track:db730cf541d47f56ef342bd849be0888263accd04e0b8f89cb17e168285bb2d3` |
| 34 | `theorem` | [summable_D1coeff](../../../../../mathematics/Analysis/AsymptoticAnalysis/D1/Variant2ec9d5229588b6e9fba4d3e2e2ef4fadb3498f1f28249d76ee55b716399b9981.lean/declarations/summable-d1coeff--07d85da0b0e2196ea65b8e30.md) | 263 | `result-track:07d85da0b0e2196ea65b8e30fc2c126ce3e0604201b57c0dfca7ce0c678834dd` |
| 35 | `theorem` | [tendsto_D1coeff_tail](../../../../../mathematics/Analysis/AsymptoticAnalysis/D1/Variant2ec9d5229588b6e9fba4d3e2e2ef4fadb3498f1f28249d76ee55b716399b9981.lean/declarations/tendsto-d1coeff-tail--073613502bc4f61b18582c67.md) | 268 | `result-track:073613502bc4f61b18582c67015770cb5af12675c165a9a78e9f7623d195047e` |
| 36 | `theorem` | [D1tail_le_coeff_tail](../../../../../mathematics/Analysis/AsymptoticAnalysis/D1/Variant2ec9d5229588b6e9fba4d3e2e2ef4fadb3498f1f28249d76ee55b716399b9981.lean/declarations/d1tail-le-coeff-tail--5f2beb0cc4978a5e436f3f59.md) | 272 | `result-track:5f2beb0cc4978a5e436f3f590a5f6813b96f53f19efb315a17806444db96f952` |
| 37 | `theorem` | [abs_D1_sub_D1trunc_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/D1/Variant2ec9d5229588b6e9fba4d3e2e2ef4fadb3498f1f28249d76ee55b716399b9981.lean/declarations/abs-d1-sub-d1trunc-le--271d31a1bc6ef093426b5e2b.md) | 283 | `result-track:271d31a1bc6ef093426b5e2bf70ba251575d17879f61b5e521c2f59bf410cd99` |
| 38 | `theorem` | [integral_D1term](../../../../../mathematics/Analysis/AsymptoticAnalysis/D1/Variant2ec9d5229588b6e9fba4d3e2e2ef4fadb3498f1f28249d76ee55b716399b9981.lean/declarations/integral-d1term--8e82949bd1d4396abe9f5c27.md) | 289 | `result-track:8e82949bd1d4396abe9f5c27a85b223458bb6a60550e9def2e944d1e7eeedbf4` |
| 39 | `theorem` | [integral_D1trunc](../../../../../mathematics/Analysis/AsymptoticAnalysis/D1/Variant2ec9d5229588b6e9fba4d3e2e2ef4fadb3498f1f28249d76ee55b716399b9981.lean/declarations/integral-d1trunc--cf9cbaad74bae91bfaffac60.md) | 301 | `result-track:cf9cbaad74bae91bfaffac602be9c2e1b076e0f44bd7fcbead9884eb34c838b4` |
| 40 | `theorem` | [abs_integral_D1_sub_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/D1/Variant2ec9d5229588b6e9fba4d3e2e2ef4fadb3498f1f28249d76ee55b716399b9981.lean/declarations/abs-integral-d1-sub-le--16898afb5c520bfd7af45316.md) | 321 | `result-track:16898afb5c520bfd7af453165e7e9f73af9c58d1014f374d151a6e85f6c791e9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
