# Verification target: GRWTSK.Analysis.ERealExp.Varianted65c3ed68b649f47055b7d09dd54a3ec9bc60390028b5ec7c0227c4054d86e8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a25835da55253ba47249d07251a34e0886520cb5",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/ERealExp/Varianted65c3ed68b649f47055b7d09dd54a3ec9bc60390028b5ec7c0227c4054d86e8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/ERealExp/Varianted65c3ed68b649f47055b7d09dd54a3ec9bc60390028b5ec7c0227c4054d86e8.lean/index.md) · [Full source](../../../../mathematics/Analysis/ERealExp/Varianted65c3ed68b649f47055b7d09dd54a3ec9bc60390028b5ec7c0227c4054d86e8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a25835da55253ba47249d07251a34e0886520cb5`.

Source path: `GRWTSK/Analysis/ERealExp/Varianted65c3ed68b649f47055b7d09dd54a3ec9bc60390028b5ec7c0227c4054d86e8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/ERealExp/Varianted65c3ed68b649f47055b7d09dd54a3ec9bc60390028b5ec7c0227c4054d86e8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Complex.Exponential` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.EReal.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [exp](../../../../mathematics/Analysis/ERealExp/Varianted65c3ed68b649f47055b7d09dd54a3ec9bc60390028b5ec7c0227c4054d86e8.lean/declarations/exp--3b31d5648c739424dd23c443.md) | 36 | `declaration-track:3b31d5648c739424dd23c443af5574053ef12db5340d445bb1e8e8627fe5bda3` |
| 2 | `lemma` | [exp_bot](../../../../mathematics/Analysis/ERealExp/Varianted65c3ed68b649f47055b7d09dd54a3ec9bc60390028b5ec7c0227c4054d86e8.lean/declarations/exp-bot--300b34426de0477ee8b214a0.md) | 41 | `result-track:300b34426de0477ee8b214a0ee1e13ea3466dc590a121b0355ea5a07904ccbf8` |
| 3 | `lemma` | [exp_zero](../../../../mathematics/Analysis/ERealExp/Varianted65c3ed68b649f47055b7d09dd54a3ec9bc60390028b5ec7c0227c4054d86e8.lean/declarations/exp-zero--070d7d4008f6206435b07a1a.md) | 42 | `result-track:070d7d4008f6206435b07a1a39c78b47de7b873fa96c75246bf08e8486a65b6c` |
| 4 | `lemma` | [exp_top](../../../../mathematics/Analysis/ERealExp/Varianted65c3ed68b649f47055b7d09dd54a3ec9bc60390028b5ec7c0227c4054d86e8.lean/declarations/exp-top--f47936f9a172a0aeffe36a38.md) | 43 | `result-track:f47936f9a172a0aeffe36a38ded443bdc2a21edb5b573c5b71e41e3a273ad7fa` |
| 5 | `lemma` | [exp_coe](../../../../mathematics/Analysis/ERealExp/Varianted65c3ed68b649f47055b7d09dd54a3ec9bc60390028b5ec7c0227c4054d86e8.lean/declarations/exp-coe--f41b4dba19ac62dcc7d5ff1a.md) | 44 | `result-track:f41b4dba19ac62dcc7d5ff1ae4e4938af4a12f4948237858ebbebc631747e4fd` |
| 6 | `lemma` | [exp_eq_zero_iff](../../../../mathematics/Analysis/ERealExp/Varianted65c3ed68b649f47055b7d09dd54a3ec9bc60390028b5ec7c0227c4054d86e8.lean/declarations/exp-eq-zero-iff--b91dcff478eec7c584419340.md) | 46 | `result-track:b91dcff478eec7c584419340b10c5b0a85ac1a376a57c007f8f8ab0706bd61eb` |
| 7 | `lemma` | [exp_eq_top_iff](../../../../mathematics/Analysis/ERealExp/Varianted65c3ed68b649f47055b7d09dd54a3ec9bc60390028b5ec7c0227c4054d86e8.lean/declarations/exp-eq-top-iff--7119ca57ed17bb40fae40546.md) | 49 | `result-track:7119ca57ed17bb40fae40546538e08342c71ae7f8527670bff4a1dab61c25edd` |
| 8 | `lemma` | [exp_strictMono](../../../../mathematics/Analysis/ERealExp/Varianted65c3ed68b649f47055b7d09dd54a3ec9bc60390028b5ec7c0227c4054d86e8.lean/declarations/exp-strictmono--9f2a29c86af7a1d3f2734969.md) | 57 | `result-track:9f2a29c86af7a1d3f2734969361178bc68f384e6731bf63b8b9f167a2d9b85c6` |
| 9 | `lemma` | [exp_monotone](../../../../mathematics/Analysis/ERealExp/Varianted65c3ed68b649f47055b7d09dd54a3ec9bc60390028b5ec7c0227c4054d86e8.lean/declarations/exp-monotone--b5d2cdcbcda2eb5de649ccb9.md) | 69 | `result-track:b5d2cdcbcda2eb5de649ccb9fafd1c5c47f7545466acd677f6d678990dde6a42` |
| 10 | `lemma` | [exp_lt_exp_iff](../../../../mathematics/Analysis/ERealExp/Varianted65c3ed68b649f47055b7d09dd54a3ec9bc60390028b5ec7c0227c4054d86e8.lean/declarations/exp-lt-exp-iff--0c9227080dd4f55d7bab88e3.md) | 71 | `result-track:0c9227080dd4f55d7bab88e322e16ccf9ad276104bf15c174fbc759d71181e89` |
| 11 | `lemma` | [zero_lt_exp_iff](../../../../mathematics/Analysis/ERealExp/Varianted65c3ed68b649f47055b7d09dd54a3ec9bc60390028b5ec7c0227c4054d86e8.lean/declarations/zero-lt-exp-iff--0360d84dac2d7a4e21e14201.md) | 73 | `result-track:0360d84dac2d7a4e21e142010ea9fc1ceecde23d4abc3e8214b3f1fb17c2dbf8` |
| 12 | `lemma` | [exp_lt_top_iff](../../../../mathematics/Analysis/ERealExp/Varianted65c3ed68b649f47055b7d09dd54a3ec9bc60390028b5ec7c0227c4054d86e8.lean/declarations/exp-lt-top-iff--945c70783c845c3dbc400ad7.md) | 75 | `result-track:945c70783c845c3dbc400ad7d89e4381b67abc6b9b470b9ac1b42faa1f96f8e7` |
| 13 | `lemma` | [exp_lt_one_iff](../../../../mathematics/Analysis/ERealExp/Varianted65c3ed68b649f47055b7d09dd54a3ec9bc60390028b5ec7c0227c4054d86e8.lean/declarations/exp-lt-one-iff--dc491fb08f0735df97865cca.md) | 77 | `result-track:dc491fb08f0735df97865ccac286f2e5f37825246e32b777da31a3a1552359db` |
| 14 | `lemma` | [one_lt_exp_iff](../../../../mathematics/Analysis/ERealExp/Varianted65c3ed68b649f47055b7d09dd54a3ec9bc60390028b5ec7c0227c4054d86e8.lean/declarations/one-lt-exp-iff--86409f47ff79598bb1fb565d.md) | 79 | `result-track:86409f47ff79598bb1fb565d9f14b10b5c51060f4aec792344cccf4db9a89d99` |
| 15 | `lemma` | [exp_le_exp_iff](../../../../mathematics/Analysis/ERealExp/Varianted65c3ed68b649f47055b7d09dd54a3ec9bc60390028b5ec7c0227c4054d86e8.lean/declarations/exp-le-exp-iff--0e9e8eef341de2d126c1c144.md) | 81 | `result-track:0e9e8eef341de2d126c1c1449035bf011d6eb0c4f1c857d2730e9028733c0f42` |
| 16 | `lemma` | [exp_le_one_iff](../../../../mathematics/Analysis/ERealExp/Varianted65c3ed68b649f47055b7d09dd54a3ec9bc60390028b5ec7c0227c4054d86e8.lean/declarations/exp-le-one-iff--3871844766007dae370b891e.md) | 83 | `result-track:3871844766007dae370b891eb2e2eb8e3976b852fd3cd09a7e90e193aeeda048` |
| 17 | `lemma` | [one_le_exp_iff](../../../../mathematics/Analysis/ERealExp/Varianted65c3ed68b649f47055b7d09dd54a3ec9bc60390028b5ec7c0227c4054d86e8.lean/declarations/one-le-exp-iff--47fa4fbd8015260fb127c26a.md) | 85 | `result-track:47fa4fbd8015260fb127c26a9b492965f9fc5548669fa4f701e4b085ceb70a09` |
| 18 | `lemma` | [exp_le_exp](../../../../mathematics/Analysis/ERealExp/Varianted65c3ed68b649f47055b7d09dd54a3ec9bc60390028b5ec7c0227c4054d86e8.lean/declarations/exp-le-exp--f1aa3dcf5b207ce1d5668f35.md) | 87 | `result-track:f1aa3dcf5b207ce1d5668f350e809d76f2a0e244bb573fbd8dbb0ccc3a6da8dc` |
| 19 | `lemma` | [exp_lt_exp](../../../../mathematics/Analysis/ERealExp/Varianted65c3ed68b649f47055b7d09dd54a3ec9bc60390028b5ec7c0227c4054d86e8.lean/declarations/exp-lt-exp--2d0e5df388596b296ac81546.md) | 89 | `result-track:2d0e5df388596b296ac81546948a2921b72cafc3a22f97e4f2512463eb732e9b` |
| 20 | `lemma` | [exp_neg](../../../../mathematics/Analysis/ERealExp/Varianted65c3ed68b649f47055b7d09dd54a3ec9bc60390028b5ec7c0227c4054d86e8.lean/declarations/exp-neg--2664af13446e3c3109ca433d.md) | 97 | `result-track:2664af13446e3c3109ca433d2c408812ae364229f579ad16f7f7c3a60984e7bb` |
| 21 | `lemma` | [exp_add](../../../../mathematics/Analysis/ERealExp/Varianted65c3ed68b649f47055b7d09dd54a3ec9bc60390028b5ec7c0227c4054d86e8.lean/declarations/exp-add--6a682ae96541290d16daed19.md) | 104 | `result-track:6a682ae96541290d16daed198af477eec02bada96409f4cb91ed62ff172c9a5b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
