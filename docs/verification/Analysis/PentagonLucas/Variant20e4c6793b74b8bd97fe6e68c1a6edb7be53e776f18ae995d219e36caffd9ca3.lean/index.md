# Verification target: GRWTSK.Analysis.PentagonLucas.Variant20e4c6793b74b8bd97fe6e68c1a6edb7be53e776f18ae995d219e36caffd9ca3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8a5823140c25e661c7d3858db5109737283b4323",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/PentagonLucas/Variant20e4c6793b74b8bd97fe6e68c1a6edb7be53e776f18ae995d219e36caffd9ca3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/PentagonLucas/Variant20e4c6793b74b8bd97fe6e68c1a6edb7be53e776f18ae995d219e36caffd9ca3.lean/index.md) · [Full source](../../../../mathematics/Analysis/PentagonLucas/Variant20e4c6793b74b8bd97fe6e68c1a6edb7be53e776f18ae995d219e36caffd9ca3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8a5823140c25e661c7d3858db5109737283b4323`.

Source path: `GRWTSK/Analysis/PentagonLucas/Variant20e4c6793b74b8bd97fe6e68c1a6edb7be53e776f18ae995d219e36caffd9ca3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/PentagonLucas/Variant20e4c6793b74b8bd97fe6e68c1a6edb7be53e776f18ae995d219e36caffd9ca3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Real.GoldenRatio` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [α](../../../../mathematics/Analysis/PentagonLucas/Variant20e4c6793b74b8bd97fe6e68c1a6edb7be53e776f18ae995d219e36caffd9ca3.lean/declarations/anonymous--6a1659db972897d3282d664c.md) | 45 | `declaration-track:6a1659db972897d3282d664ccea594e0befff5df90783d6b0a3370dd3bc3a3de` |
| 2 | `def` | [β](../../../../mathematics/Analysis/PentagonLucas/Variant20e4c6793b74b8bd97fe6e68c1a6edb7be53e776f18ae995d219e36caffd9ca3.lean/declarations/anonymous--e7f3dfcf5b7fe75ca7ce5e98.md) | 48 | `declaration-track:e7f3dfcf5b7fe75ca7ce5e9808d602301e8cac53dcd384b933e292404b8c52b7` |
| 3 | `def` | [pentagonSeq](../../../../mathematics/Analysis/PentagonLucas/Variant20e4c6793b74b8bd97fe6e68c1a6edb7be53e776f18ae995d219e36caffd9ca3.lean/declarations/pentagonseq--4b538de49e6492b07944352b.md) | 53 | `declaration-track:4b538de49e6492b07944352b927d4b06f80de75eec4ce884fa6b9a18bf33d1d4` |
| 4 | `theorem` | [pentagonSeq_zero](../../../../mathematics/Analysis/PentagonLucas/Variant20e4c6793b74b8bd97fe6e68c1a6edb7be53e776f18ae995d219e36caffd9ca3.lean/declarations/pentagonseq-zero--9bfa931ff533cd77a622872a.md) | 58 | `result-track:9bfa931ff533cd77a622872a9c4ebc882fe44c58f8b47ec8bb8c46dc7eb8b8f0` |
| 5 | `theorem` | [pentagonSeq_one](../../../../mathematics/Analysis/PentagonLucas/Variant20e4c6793b74b8bd97fe6e68c1a6edb7be53e776f18ae995d219e36caffd9ca3.lean/declarations/pentagonseq-one--318016c4781c66cea56e71ff.md) | 62 | `result-track:318016c4781c66cea56e71ffe83d968d752fd66036f2ee076ed26b918e81bf3b` |
| 6 | `theorem` | [pentagonSeq_two](../../../../mathematics/Analysis/PentagonLucas/Variant20e4c6793b74b8bd97fe6e68c1a6edb7be53e776f18ae995d219e36caffd9ca3.lean/declarations/pentagonseq-two--831736b205b86f0e3accf227.md) | 67 | `result-track:831736b205b86f0e3accf22719a261550e054be7c91d260339e7a8e7d5c64fc9` |
| 7 | `theorem` | [pentagonSeq_product](../../../../mathematics/Analysis/PentagonLucas/Variant20e4c6793b74b8bd97fe6e68c1a6edb7be53e776f18ae995d219e36caffd9ca3.lean/declarations/pentagonseq-product--5060ce8b510e081d591f6846.md) | 78 | `result-track:5060ce8b510e081d591f6846b4a4493ba92d966c8a8be97d329290188dbbd19f` |
| 8 | `theorem` | [pentagonSeq_recurrence](../../../../mathematics/Analysis/PentagonLucas/Variant20e4c6793b74b8bd97fe6e68c1a6edb7be53e776f18ae995d219e36caffd9ca3.lean/declarations/pentagonseq-recurrence--cbfe9ea86fec4c32d8bef348.md) | 91 | `result-track:cbfe9ea86fec4c32d8bef348029b60f5d18720354b55ad82dc5497c3a61a2f4f` |
| 9 | `theorem` | [cos_pi_div_five_eq_goldenRatio_div_two](../../../../mathematics/Analysis/PentagonLucas/Variant20e4c6793b74b8bd97fe6e68c1a6edb7be53e776f18ae995d219e36caffd9ca3.lean/declarations/cos-pi-div-five-eq-goldenratio-div-two--4cfecc088448b70857b3b042.md) | 100 | `result-track:4cfecc088448b70857b3b042792654ea861e0d0f4ba9d2c34fd022b885a45d15` |
| 10 | `theorem` | [sin_pi_div_ten](../../../../mathematics/Analysis/PentagonLucas/Variant20e4c6793b74b8bd97fe6e68c1a6edb7be53e776f18ae995d219e36caffd9ca3.lean/declarations/sin-pi-div-ten--85026f2a55c8a56c105faea8.md) | 108 | `result-track:85026f2a55c8a56c105faea8844e3639bf143004967cd64a973e7fbd9e785345` |
| 11 | `theorem` | [two_sin_pi_div_ten_eq_inv_goldenRatio](../../../../mathematics/Analysis/PentagonLucas/Variant20e4c6793b74b8bd97fe6e68c1a6edb7be53e776f18ae995d219e36caffd9ca3.lean/declarations/two-sin-pi-div-ten-eq-inv-goldenratio--d70a1e7f1237448d940ab8b0.md) | 139 | `result-track:d70a1e7f1237448d940ab8b0292bd0aed0a83fb843ea1f98b8a977061a6cd640` |
| 12 | `theorem` | [β_eq_inv_goldenRatio](../../../../mathematics/Analysis/PentagonLucas/Variant20e4c6793b74b8bd97fe6e68c1a6edb7be53e776f18ae995d219e36caffd9ca3.lean/declarations/eq-inv-goldenratio--fa28998cd899ee22cefbc021.md) | 147 | `result-track:fa28998cd899ee22cefbc0216ec7b7c332ecc4e55143694b3969072665f38140` |
| 13 | `theorem` | [α_eq](../../../../mathematics/Analysis/PentagonLucas/Variant20e4c6793b74b8bd97fe6e68c1a6edb7be53e776f18ae995d219e36caffd9ca3.lean/declarations/eq--936e9a1cbcda7e65060d81e2.md) | 151 | `result-track:936e9a1cbcda7e65060d81e2356285594a42adbd0826b87dcbbacc12aecd4c6d` |
| 14 | `theorem` | [pentagonSeq_recurrence'](../../../../mathematics/Analysis/PentagonLucas/Variant20e4c6793b74b8bd97fe6e68c1a6edb7be53e776f18ae995d219e36caffd9ca3.lean/declarations/pentagonseq-recurrence--61adc8a9104637f8c236978f.md) | 157 | `result-track:61adc8a9104637f8c236978f864aa54021f8ad0cb13de3249735690f3790ac33` |
| 15 | `theorem` | [β_lt_one](../../../../mathematics/Analysis/PentagonLucas/Variant20e4c6793b74b8bd97fe6e68c1a6edb7be53e776f18ae995d219e36caffd9ca3.lean/declarations/lt-one--0207a44097e022216d02c030.md) | 166 | `result-track:0207a44097e022216d02c030d0983b3578f74166f075bd9effe73e708006612f` |
| 16 | `theorem` | [β_pos](../../../../mathematics/Analysis/PentagonLucas/Variant20e4c6793b74b8bd97fe6e68c1a6edb7be53e776f18ae995d219e36caffd9ca3.lean/declarations/pos--f5fb952614a401969caaff2d.md) | 170 | `result-track:f5fb952614a401969caaff2dd5ec93b0e51c3df05fe03cbe4913eedc28aedde9` |
| 17 | `theorem` | [α_is_root_char_poly](../../../../mathematics/Analysis/PentagonLucas/Variant20e4c6793b74b8bd97fe6e68c1a6edb7be53e776f18ae995d219e36caffd9ca3.lean/declarations/is-root-char-poly--fcf7d02e5f5e779f0c49b74c.md) | 177 | `result-track:fcf7d02e5f5e779f0c49b74c9de849c97873c13e7e87d8ba72f059b5501ee2fb` |
| 18 | `theorem` | [β_is_root_char_poly](../../../../mathematics/Analysis/PentagonLucas/Variant20e4c6793b74b8bd97fe6e68c1a6edb7be53e776f18ae995d219e36caffd9ca3.lean/declarations/is-root-char-poly--bc871a1233e6565174d18836.md) | 180 | `result-track:bc871a1233e6565174d1883660b197742cf5f8a7f6e4bb6c431dac9c164e128d` |
| 19 | `def` | [pentagonSeqU](../../../../mathematics/Analysis/PentagonLucas/Variant20e4c6793b74b8bd97fe6e68c1a6edb7be53e776f18ae995d219e36caffd9ca3.lean/declarations/pentagonsequ--b684a4c9006e2c35f6f40d25.md) | 186 | `declaration-track:b684a4c9006e2c35f6f40d258fbe02c2dfdf6993c39718d7dd6e1937ad6ab506` |
| 20 | `theorem` | [pentagonSeqU_zero](../../../../mathematics/Analysis/PentagonLucas/Variant20e4c6793b74b8bd97fe6e68c1a6edb7be53e776f18ae995d219e36caffd9ca3.lean/declarations/pentagonsequ-zero--761681871a732f2631c776f6.md) | 188 | `result-track:761681871a732f2631c776f6645c511c2703fd1eec5ac265067d5284db7cf7ca` |
| 21 | `theorem` | [pentagonSeqU_one](../../../../mathematics/Analysis/PentagonLucas/Variant20e4c6793b74b8bd97fe6e68c1a6edb7be53e776f18ae995d219e36caffd9ca3.lean/declarations/pentagonsequ-one--61f0fab4c9bf77b29794d8d4.md) | 191 | `result-track:61f0fab4c9bf77b29794d8d4b84a04092e331773c290b0b23c5b08bab717dfe9` |
| 22 | `theorem` | [pentagonSeqU_recurrence](../../../../mathematics/Analysis/PentagonLucas/Variant20e4c6793b74b8bd97fe6e68c1a6edb7be53e776f18ae995d219e36caffd9ca3.lean/declarations/pentagonsequ-recurrence--282742409b280c6a93ada3f7.md) | 194 | `result-track:282742409b280c6a93ada3f7320d8e213d6514deb4c3bb7a73708b30a972a754` |
| 23 | `theorem` | [alpha_pow_eq](../../../../mathematics/Analysis/PentagonLucas/Variant20e4c6793b74b8bd97fe6e68c1a6edb7be53e776f18ae995d219e36caffd9ca3.lean/declarations/alpha-pow-eq--fcc1e4ef0f951775d208f9d5.md) | 200 | `result-track:fcc1e4ef0f951775d208f9d562bf56a56e14a6ddf9c1a47078b7d80f471c3444` |
| 24 | `theorem` | [beta_pow_eq](../../../../mathematics/Analysis/PentagonLucas/Variant20e4c6793b74b8bd97fe6e68c1a6edb7be53e776f18ae995d219e36caffd9ca3.lean/declarations/beta-pow-eq--bc349c53dc29899da2224026.md) | 205 | `result-track:bc349c53dc29899da2224026f95e3fb3f276406038f10f8249332177338c71e1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
