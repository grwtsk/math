# Verification target: GRWTSK.Analysis.ENNRealLog.Variant8779d415c11837a195ecf5f57997dc43d5739ad26dd68e0750dbe5eb414d2570

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2650117bb4b3e1afd202a93a3fab7728283d1e48",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/ENNRealLog/Variant8779d415c11837a195ecf5f57997dc43d5739ad26dd68e0750dbe5eb414d2570.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/ENNRealLog/Variant8779d415c11837a195ecf5f57997dc43d5739ad26dd68e0750dbe5eb414d2570.lean/index.md) · [Full source](../../../../mathematics/Analysis/ENNRealLog/Variant8779d415c11837a195ecf5f57997dc43d5739ad26dd68e0750dbe5eb414d2570.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2650117bb4b3e1afd202a93a3fab7728283d1e48`.

Source path: `GRWTSK/Analysis/ENNRealLog/Variant8779d415c11837a195ecf5f57997dc43d5739ad26dd68e0750dbe5eb414d2570.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/ENNRealLog/Variant8779d415c11837a195ecf5f57997dc43d5739ad26dd68e0750dbe5eb414d2570.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Pow.NNReal` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.EReal.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [log](../../../../mathematics/Analysis/ENNRealLog/Variant8779d415c11837a195ecf5f57997dc43d5739ad26dd68e0750dbe5eb414d2570.lean/declarations/log--56a638728616e26a55366e48.md) | 50 | `declaration-track:56a638728616e26a55366e4836e54ddf11f848bc07db0492718aa1d4c64adc3e` |
| 2 | `lemma` | [log_zero](../../../../mathematics/Analysis/ENNRealLog/Variant8779d415c11837a195ecf5f57997dc43d5739ad26dd68e0750dbe5eb414d2570.lean/declarations/log-zero--bf8a868a1b74d88809c4f72c.md) | 55 | `result-track:bf8a868a1b74d88809c4f72cb274826979a5722a69fe2b3608fccc1b7ff9255d` |
| 3 | `lemma` | [log_one](../../../../mathematics/Analysis/ENNRealLog/Variant8779d415c11837a195ecf5f57997dc43d5739ad26dd68e0750dbe5eb414d2570.lean/declarations/log-one--28d4af95b414e53821a60037.md) | 56 | `result-track:28d4af95b414e53821a600373e0eb7ec3d88a37fd89220921707cc17da44201c` |
| 4 | `lemma` | [log_top](../../../../mathematics/Analysis/ENNRealLog/Variant8779d415c11837a195ecf5f57997dc43d5739ad26dd68e0750dbe5eb414d2570.lean/declarations/log-top--6f1e6cf0cb974a91da64fdf6.md) | 57 | `result-track:6f1e6cf0cb974a91da64fdf66cda282bc2046c59cc224b5ff202f233b6cb13ed` |
| 5 | `lemma` | [log_ofReal](../../../../mathematics/Analysis/ENNRealLog/Variant8779d415c11837a195ecf5f57997dc43d5739ad26dd68e0750dbe5eb414d2570.lean/declarations/log-ofreal--8735c238a6e8948de9b06f09.md) | 60 | `result-track:8735c238a6e8948de9b06f09ffdf11b88d1d69fdbf9737c63d5d06c64c5e39a5` |
| 6 | `lemma` | [log_ofReal_of_pos](../../../../mathematics/Analysis/ENNRealLog/Variant8779d415c11837a195ecf5f57997dc43d5739ad26dd68e0750dbe5eb414d2570.lean/declarations/log-ofreal-of-pos--fc942de07541916d3543afe1.md) | 67 | `result-track:fc942de07541916d3543afe1ad13a67f4cbb6ea38b73f28a60e23e37f313958e` |
| 7 | `theorem` | [log_pos_real](../../../../mathematics/Analysis/ENNRealLog/Variant8779d415c11837a195ecf5f57997dc43d5739ad26dd68e0750dbe5eb414d2570.lean/declarations/log-pos-real--f79bc433df7e8fb633c168da.md) | 70 | `result-track:f79bc433df7e8fb633c168daaa296c7d330bb3b8551f91f5f2b27158cd3b512e` |
| 8 | `theorem` | [log_pos_real'](../../../../mathematics/Analysis/ENNRealLog/Variant8779d415c11837a195ecf5f57997dc43d5739ad26dd68e0750dbe5eb414d2570.lean/declarations/log-pos-real--f7d324fc80845472a2c7199c.md) | 73 | `result-track:f7d324fc80845472a2c7199c07ddfc5a7e3f28fda2261fc1994a1b7ddaa2d9f7` |
| 9 | `theorem` | [log_of_nnreal](../../../../mathematics/Analysis/ENNRealLog/Variant8779d415c11837a195ecf5f57997dc43d5739ad26dd68e0750dbe5eb414d2570.lean/declarations/log-of-nnreal--317f190c12847ac554963b45.md) | 77 | `result-track:317f190c12847ac554963b45b8c209f066c3dd542f952e2d306c442f2c27a0a8` |
| 10 | `theorem` | [log_strictMono](../../../../mathematics/Analysis/ENNRealLog/Variant8779d415c11837a195ecf5f57997dc43d5739ad26dd68e0750dbe5eb414d2570.lean/declarations/log-strictmono--2150ddd88bba7f434134fc18.md) | 85 | `result-track:2150ddd88bba7f434134fc18144cf5642f68a9856ff825fad17de184d462b784` |
| 11 | `theorem` | [log_monotone](../../../../mathematics/Analysis/ENNRealLog/Variant8779d415c11837a195ecf5f57997dc43d5739ad26dd68e0750dbe5eb414d2570.lean/declarations/log-monotone--806583ba0e02f30f797cea81.md) | 90 | `result-track:806583ba0e02f30f797cea819337f2e14affe370f15db4c3f0018acc1925c42c` |
| 12 | `theorem` | [log_injective](../../../../mathematics/Analysis/ENNRealLog/Variant8779d415c11837a195ecf5f57997dc43d5739ad26dd68e0750dbe5eb414d2570.lean/declarations/log-injective--67e6f9add8505aa0093c2d78.md) | 92 | `result-track:67e6f9add8505aa0093c2d78a336ab6513584facdb55467eb8847403d94327c0` |
| 13 | `theorem` | [log_surjective](../../../../mathematics/Analysis/ENNRealLog/Variant8779d415c11837a195ecf5f57997dc43d5739ad26dd68e0750dbe5eb414d2570.lean/declarations/log-surjective--e19cfa36a7483dc5cea6d61e.md) | 94 | `result-track:e19cfa36a7483dc5cea6d61e2c5ccebd8746945a33b1c07b4c0f63e34aed1a33` |
| 14 | `theorem` | [log_bijective](../../../../mathematics/Analysis/ENNRealLog/Variant8779d415c11837a195ecf5f57997dc43d5739ad26dd68e0750dbe5eb414d2570.lean/declarations/log-bijective--e442f8dec4a1a4b0864bc7ab.md) | 101 | `result-track:e442f8dec4a1a4b0864bc7ab82dcba02968cf87da426e0b6c13f4ba7a496002e` |
| 15 | `theorem` | [log_eq_iff](../../../../mathematics/Analysis/ENNRealLog/Variant8779d415c11837a195ecf5f57997dc43d5739ad26dd68e0750dbe5eb414d2570.lean/declarations/log-eq-iff--5aaabe87570a2395ffad2f7d.md) | 104 | `result-track:5aaabe87570a2395ffad2f7d1ba16257cd6c95519c56173caa5e09442d0aa4cd` |
| 16 | `theorem` | [log_eq_bot_iff](../../../../mathematics/Analysis/ENNRealLog/Variant8779d415c11837a195ecf5f57997dc43d5739ad26dd68e0750dbe5eb414d2570.lean/declarations/log-eq-bot-iff--0b38a08ef453f9a63a99dbce.md) | 107 | `result-track:0b38a08ef453f9a63a99dbce90fc460f256ef2aec223a2db33322b3ebf76490d` |
| 17 | `theorem` | [log_eq_one_iff](../../../../mathematics/Analysis/ENNRealLog/Variant8779d415c11837a195ecf5f57997dc43d5739ad26dd68e0750dbe5eb414d2570.lean/declarations/log-eq-one-iff--a476a64744a7f4b70c078cb9.md) | 109 | `result-track:a476a64744a7f4b70c078cb978b7c99dca09ce2282c2f084e70c4c179b35085b` |
| 18 | `theorem` | [log_eq_top_iff](../../../../mathematics/Analysis/ENNRealLog/Variant8779d415c11837a195ecf5f57997dc43d5739ad26dd68e0750dbe5eb414d2570.lean/declarations/log-eq-top-iff--be8f042cff26836053fe9d78.md) | 111 | `result-track:be8f042cff26836053fe9d78f0c5322d80dac43d93b7ae3e9fd4a681667226b1` |
| 19 | `lemma` | [log_lt_log_iff](../../../../mathematics/Analysis/ENNRealLog/Variant8779d415c11837a195ecf5f57997dc43d5739ad26dd68e0750dbe5eb414d2570.lean/declarations/log-lt-log-iff--e06b7a30da53f8e4ca3ca2ae.md) | 113 | `result-track:e06b7a30da53f8e4ca3ca2ae8bd6fab509be9b7430b73ab158031080dabf0504` |
| 20 | `lemma` | [bot_lt_log_iff](../../../../mathematics/Analysis/ENNRealLog/Variant8779d415c11837a195ecf5f57997dc43d5739ad26dd68e0750dbe5eb414d2570.lean/declarations/bot-lt-log-iff--5cc5308d8cb0940693738aee.md) | 115 | `result-track:5cc5308d8cb0940693738aeed06c2210f702a1748b3b12224e8d276488e4e829` |
| 21 | `lemma` | [log_lt_top_iff](../../../../mathematics/Analysis/ENNRealLog/Variant8779d415c11837a195ecf5f57997dc43d5739ad26dd68e0750dbe5eb414d2570.lean/declarations/log-lt-top-iff--8e49777f78ad31d5b59c036e.md) | 117 | `result-track:8e49777f78ad31d5b59c036eac66b0c83673b22710f0ff0bf2db8cd16840a991` |
| 22 | `lemma` | [log_lt_zero_iff](../../../../mathematics/Analysis/ENNRealLog/Variant8779d415c11837a195ecf5f57997dc43d5739ad26dd68e0750dbe5eb414d2570.lean/declarations/log-lt-zero-iff--3ac9f186d95cc55254c52291.md) | 119 | `result-track:3ac9f186d95cc55254c5229134467bda2a7041a87474a812e4a77666ca8f404d` |
| 23 | `lemma` | [zero_lt_log_iff](../../../../mathematics/Analysis/ENNRealLog/Variant8779d415c11837a195ecf5f57997dc43d5739ad26dd68e0750dbe5eb414d2570.lean/declarations/zero-lt-log-iff--cb71b54b620c6c2a737d1bf3.md) | 121 | `result-track:cb71b54b620c6c2a737d1bf3d1c62b5c63976190b57bcdb60522eff8715bc01e` |
| 24 | `lemma` | [log_le_log_iff](../../../../mathematics/Analysis/ENNRealLog/Variant8779d415c11837a195ecf5f57997dc43d5739ad26dd68e0750dbe5eb414d2570.lean/declarations/log-le-log-iff--1a4e3f6497ce9c5924d11728.md) | 123 | `result-track:1a4e3f6497ce9c5924d11728663c4db907b6e39395c6f4142ede5a040ebe78f4` |
| 25 | `lemma` | [log_le_zero_iff](../../../../mathematics/Analysis/ENNRealLog/Variant8779d415c11837a195ecf5f57997dc43d5739ad26dd68e0750dbe5eb414d2570.lean/declarations/log-le-zero-iff--e7139404b221a6eb30e90686.md) | 125 | `result-track:e7139404b221a6eb30e9068693bb0ed90844aad444d250c51c81b1ed90602f4d` |
| 26 | `lemma` | [zero_le_log_iff](../../../../mathematics/Analysis/ENNRealLog/Variant8779d415c11837a195ecf5f57997dc43d5739ad26dd68e0750dbe5eb414d2570.lean/declarations/zero-le-log-iff--72b34b2698a60d124a8cda82.md) | 127 | `result-track:72b34b2698a60d124a8cda8245864cacb23b524daa92cbbf6d06a84782ff4d84` |
| 27 | `lemma` | [log_le_log](../../../../mathematics/Analysis/ENNRealLog/Variant8779d415c11837a195ecf5f57997dc43d5739ad26dd68e0750dbe5eb414d2570.lean/declarations/log-le-log--03d0c4ff4c2f5da014145dbf.md) | 129 | `result-track:03d0c4ff4c2f5da014145dbfddfc8e0ed826bc65a6285d4370cf5c17c7a4a66c` |
| 28 | `lemma` | [log_lt_log](../../../../mathematics/Analysis/ENNRealLog/Variant8779d415c11837a195ecf5f57997dc43d5739ad26dd68e0750dbe5eb414d2570.lean/declarations/log-lt-log--d8ec1dc7563d2504ce1cf406.md) | 130 | `result-track:d8ec1dc7563d2504ce1cf4064717856080ed10e35505d75bf3929416dd57d68a` |
| 29 | `theorem` | [log_mul_add](../../../../mathematics/Analysis/ENNRealLog/Variant8779d415c11837a195ecf5f57997dc43d5739ad26dd68e0750dbe5eb414d2570.lean/declarations/log-mul-add--7bf1076c63e71dab6a2a73ea.md) | 138 | `result-track:7bf1076c63e71dab6a2a73ea23a10c1e8a5dc157e6d38e1a763a210dea8cfd88` |
| 30 | `theorem` | [log_rpow](../../../../mathematics/Analysis/ENNRealLog/Variant8779d415c11837a195ecf5f57997dc43d5739ad26dd68e0750dbe5eb414d2570.lean/declarations/log-rpow--33894fba5262f31c6ed48324.md) | 157 | `result-track:33894fba5262f31c6ed483244111b66b6ad62d7870f1bd965f95969c45d677f1` |
| 31 | `theorem` | [log_pow](../../../../mathematics/Analysis/ENNRealLog/Variant8779d415c11837a195ecf5f57997dc43d5739ad26dd68e0750dbe5eb414d2570.lean/declarations/log-pow--c138c56c7eaa92a43f13a74a.md) | 180 | `result-track:c138c56c7eaa92a43f13a74accd32cd2a8b294f34925833907bef8c1062fd855` |
| 32 | `lemma` | [log_inv](../../../../mathematics/Analysis/ENNRealLog/Variant8779d415c11837a195ecf5f57997dc43d5739ad26dd68e0750dbe5eb414d2570.lean/declarations/log-inv--4623d0bf98cd329a38b03f0c.md) | 183 | `result-track:4623d0bf98cd329a38b03f0c7b0a57273a1aea4118360349d072abd29e216ff6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
