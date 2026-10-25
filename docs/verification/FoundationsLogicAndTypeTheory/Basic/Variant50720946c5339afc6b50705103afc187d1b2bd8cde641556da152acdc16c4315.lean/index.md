# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.Basic.Variant50720946c5339afc6b50705103afc187d1b2bd8cde641556da152acdc16c4315

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "58c5880b4f13596d769acf791e76ea78ead1d16c",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/Basic/Variant50720946c5339afc6b50705103afc187d1b2bd8cde641556da152acdc16c4315.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variant50720946c5339afc6b50705103afc187d1b2bd8cde641556da152acdc16c4315.lean/index.md) · [Full source](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variant50720946c5339afc6b50705103afc187d1b2bd8cde641556da152acdc16c4315.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `58c5880b4f13596d769acf791e76ea78ead1d16c`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/Basic/Variant50720946c5339afc6b50705103afc187d1b2bd8cde641556da152acdc16c4315.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/Basic/Variant50720946c5339afc6b50705103afc187d1b2bd8cde641556da152acdc16c4315.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.NatAntidiagonal` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.GCD.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.BinaryRec` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Function.Iterate` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Zify` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Choose.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Group.Finset.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [fib](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variant50720946c5339afc6b50705103afc187d1b2bd8cde641556da152acdc16c4315.lean/declarations/fib--4646e909f78c31cb8dedabad.md) | 63 | `declaration-track:4646e909f78c31cb8dedabadd24097742b69373a0072e687fe5740e58ae0048f` |
| 2 | `theorem` | [fib_zero](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variant50720946c5339afc6b50705103afc187d1b2bd8cde641556da152acdc16c4315.lean/declarations/fib-zero--edd79bb566367dd5d0265e08.md) | 67 | `result-track:edd79bb566367dd5d0265e08f7226221faa26d350d436414f501f8a3c199d309` |
| 3 | `theorem` | [fib_one](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variant50720946c5339afc6b50705103afc187d1b2bd8cde641556da152acdc16c4315.lean/declarations/fib-one--cdc58d439679894d98f6943a.md) | 71 | `result-track:cdc58d439679894d98f6943ab34cc1ab13e8094f7f97d483597cd77cd0d5d880` |
| 4 | `theorem` | [fib_two](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variant50720946c5339afc6b50705103afc187d1b2bd8cde641556da152acdc16c4315.lean/declarations/fib-two--34e66a70e686c1d9ce9b5228.md) | 75 | `result-track:34e66a70e686c1d9ce9b5228532985e80b211967a77949e08a558fc43c6462de` |
| 5 | `theorem` | [fib_add_two](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variant50720946c5339afc6b50705103afc187d1b2bd8cde641556da152acdc16c4315.lean/declarations/fib-add-two--daae93156900214b65e81c2b.md) | 79 | `result-track:daae93156900214b65e81c2b1d6b41d975c3836ce82d31d65cd4524514b677bd` |
| 6 | `lemma` | [fib_add_one](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variant50720946c5339afc6b50705103afc187d1b2bd8cde641556da152acdc16c4315.lean/declarations/fib-add-one--7d2e8f71f392d67a27650b1e.md) | 82 | `result-track:7d2e8f71f392d67a27650b1e1aa100b27fd43e65a2743cc424953e51d69ac5c5` |
| 7 | `theorem` | [fib_le_fib_succ](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variant50720946c5339afc6b50705103afc187d1b2bd8cde641556da152acdc16c4315.lean/declarations/fib-le-fib-succ--f7aa48d184c7f348c6921c8d.md) | 85 | `result-track:f7aa48d184c7f348c6921c8d0cd6f119f23b388e258c2f4f6190b3173a0f34ce` |
| 8 | `theorem` | [fib_mono](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variant50720946c5339afc6b50705103afc187d1b2bd8cde641556da152acdc16c4315.lean/declarations/fib-mono--4837c3e0f874214a69ef9b5a.md) | 88 | `result-track:4837c3e0f874214a69ef9b5a13ec07546ed4d2925b4ec2bc1c77f1d27ccd856f` |
| 9 | `lemma` | [fib_eq_zero](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variant50720946c5339afc6b50705103afc187d1b2bd8cde641556da152acdc16c4315.lean/declarations/fib-eq-zero--7be5c64850b145ed095e20a2.md) | 91 | `result-track:7be5c64850b145ed095e20a2407b2589c25c6e04d9a6b5d21528ea26a13f8109` |
| 10 | `lemma` | [fib_pos](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variant50720946c5339afc6b50705103afc187d1b2bd8cde641556da152acdc16c4315.lean/declarations/fib-pos--6c695885759d9824c38f6600.md) | 96 | `result-track:6c695885759d9824c38f660048d490edfabedc0b51f05090d28199cb8d137e07` |
| 11 | `theorem` | [fib_add_two_sub_fib_add_one](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variant50720946c5339afc6b50705103afc187d1b2bd8cde641556da152acdc16c4315.lean/declarations/fib-add-two-sub-fib-add-one--d530b2fbbac79a7e817a870f.md) | 98 | `result-track:d530b2fbbac79a7e817a870f801212d750a56fd2ffa46801572cf719f8a72f02` |
| 12 | `theorem` | [fib_lt_fib_succ](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variant50720946c5339afc6b50705103afc187d1b2bd8cde641556da152acdc16c4315.lean/declarations/fib-lt-fib-succ--9c549148bea7c36552368e15.md) | 101 | `result-track:9c549148bea7c36552368e15290d53f6db738d33a467a4e93f53904c880866a9` |
| 13 | `theorem` | [fib_add_two_strictMono](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variant50720946c5339afc6b50705103afc187d1b2bd8cde641556da152acdc16c4315.lean/declarations/fib-add-two-strictmono--d4207b842131c249f336335f.md) | 107 | `result-track:d4207b842131c249f336335f7acb63127d5daf70f6b0d6fd2d4a708f665657c7` |
| 14 | `lemma` | [fib_strictMonoOn](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variant50720946c5339afc6b50705103afc187d1b2bd8cde641556da152acdc16c4315.lean/declarations/fib-strictmonoon--9f0fedd21bc12fe674115935.md) | 112 | `result-track:9f0fedd21bc12fe674115935fe95737a0c0bf6af376edd62992995ec1d06b71f` |
| 15 | `lemma` | [fib_lt_fib](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variant50720946c5339afc6b50705103afc187d1b2bd8cde641556da152acdc16c4315.lean/declarations/fib-lt-fib--2d88092078f3f6486d1a3d8e.md) | 115 | `result-track:2d88092078f3f6486d1a3d8e4fae44d9c226a0044af8cc86bab0fb453481eea3` |
| 16 | `theorem` | [le_fib_self](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variant50720946c5339afc6b50705103afc187d1b2bd8cde641556da152acdc16c4315.lean/declarations/le-fib-self--492bcdaa26afa7719da0cac5.md) | 120 | `result-track:492bcdaa26afa7719da0cac588a37dd5b80e8dffb13ed2def0df51bd3647be99` |
| 17 | `lemma` | [le_fib_add_one](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variant50720946c5339afc6b50705103afc187d1b2bd8cde641556da152acdc16c4315.lean/declarations/le-fib-add-one--e67327e7c016f526dd2a3173.md) | 130 | `result-track:e67327e7c016f526dd2a31736cba3c069ae0472d075ed3cc1f063fb91ab45dd4` |
| 18 | `theorem` | [fib_coprime_fib_succ](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variant50720946c5339afc6b50705103afc187d1b2bd8cde641556da152acdc16c4315.lean/declarations/fib-coprime-fib-succ--429c01a1ab489423c3e24086.md) | 140 | `result-track:429c01a1ab489423c3e2408643c8b7d9a3d24f34e7aeba6be5d33e85affabd8e` |
| 19 | `theorem` | [fib_add](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variant50720946c5339afc6b50705103afc187d1b2bd8cde641556da152acdc16c4315.lean/declarations/fib-add--7dc9f6d518a6431a76ba66b9.md) | 146 | `result-track:7dc9f6d518a6431a76ba66b908845b2b6bf8b8fde7fd66c602a0078cbc97f4f1` |
| 20 | `theorem` | [fib_two_mul](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variant50720946c5339afc6b50705103afc187d1b2bd8cde641556da152acdc16c4315.lean/declarations/fib-two-mul--f5cb1ee326cdf53694ff5267.md) | 154 | `result-track:f5cb1ee326cdf53694ff52677b4f2ba2eb144d49b28e48ea8741ac5ed7fa9262` |
| 21 | `theorem` | [fib_two_mul_add_one](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variant50720946c5339afc6b50705103afc187d1b2bd8cde641556da152acdc16c4315.lean/declarations/fib-two-mul-add-one--6ce32633299d8bed536bb4c7.md) | 161 | `result-track:6ce32633299d8bed536bb4c7842f058adecb67dda57a16d38ca7bca0258d4e51` |
| 22 | `theorem` | [fib_two_mul_add_two](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variant50720946c5339afc6b50705103afc187d1b2bd8cde641556da152acdc16c4315.lean/declarations/fib-two-mul-add-two--5c317d3d7141dac654c3c37c.md) | 165 | `result-track:5c317d3d7141dac654c3c37cbf31428c1fcfeebc5c79103f277337e0556aa062` |
| 23 | `def` | [fastFibAux](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variant50720946c5339afc6b50705103afc187d1b2bd8cde641556da152acdc16c4315.lean/declarations/fastfibaux--b62369e437307bee124eb58b.md) | 175 | `declaration-track:b62369e437307bee124eb58bd2c5d38a229311a17a084965c6b40a5e1d79bf70` |
| 24 | `def` | [fastFib](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variant50720946c5339afc6b50705103afc187d1b2bd8cde641556da152acdc16c4315.lean/declarations/fastfib--5735c7ea0dbe3f8af8c1cf9f.md) | 182 | `declaration-track:5735c7ea0dbe3f8af8c1cf9fb0fb96663340f695d93b95b53886716fed587631` |
| 25 | `theorem` | [fast_fib_aux_bit_ff](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variant50720946c5339afc6b50705103afc187d1b2bd8cde641556da152acdc16c4315.lean/declarations/fast-fib-aux-bit-ff--184f585120d7e3c3d4d54475.md) | 185 | `result-track:184f585120d7e3c3d4d54475a9d9b96492ba15794baf3330eb59d3880c63ba79` |
| 26 | `theorem` | [fast_fib_aux_bit_tt](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variant50720946c5339afc6b50705103afc187d1b2bd8cde641556da152acdc16c4315.lean/declarations/fast-fib-aux-bit-tt--2a7e9da0a9b32bac00688a25.md) | 193 | `result-track:2a7e9da0a9b32bac00688a2522911d883c3ba976ff3216a1524d46cec7ed7606` |
| 27 | `theorem` | [fast_fib_aux_eq](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variant50720946c5339afc6b50705103afc187d1b2bd8cde641556da152acdc16c4315.lean/declarations/fast-fib-aux-eq--0c923759945aa3f2fb3c283c.md) | 201 | `result-track:0c923759945aa3f2fb3c283c03f1241fd24b57233531e574fedfd23eca571ff3` |
| 28 | `theorem` | [fast_fib_eq](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variant50720946c5339afc6b50705103afc187d1b2bd8cde641556da152acdc16c4315.lean/declarations/fast-fib-eq--a93c2b8b8bb1464a9c96bf0b.md) | 209 | `result-track:a93c2b8b8bb1464a9c96bf0b87b464bebd488e15886bfaf60b339c930f9d1940` |
| 29 | `theorem` | [gcd_fib_add_self](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variant50720946c5339afc6b50705103afc187d1b2bd8cde641556da152acdc16c4315.lean/declarations/gcd-fib-add-self--a8bc08c01de9763040145c2c.md) | 211 | `result-track:a8bc08c01de9763040145c2cae5eb7c1309e91062c3d301ab77a1886136d8a51` |
| 30 | `theorem` | [gcd_fib_add_mul_self](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variant50720946c5339afc6b50705103afc187d1b2bd8cde641556da152acdc16c4315.lean/declarations/gcd-fib-add-mul-self--3872a53db572a83461bd5445.md) | 225 | `result-track:3872a53db572a83461bd54459f34737224331934059b55b0a52cc5f13029431f` |
| 31 | `theorem` | [fib_gcd](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variant50720946c5339afc6b50705103afc187d1b2bd8cde641556da152acdc16c4315.lean/declarations/fib-gcd--077707d9cf27db4f323b7085.md) | 232 | `result-track:077707d9cf27db4f323b7085d51e684ea04012d448ffa26056e85d2cb3301c45` |
| 32 | `theorem` | [fib_dvd](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variant50720946c5339afc6b50705103afc187d1b2bd8cde641556da152acdc16c4315.lean/declarations/fib-dvd--1ff6c9c004c10b14ba1ac4df.md) | 240 | `result-track:1ff6c9c004c10b14ba1ac4dfb9e3268692aa6621573870f3827cc9d77f49926d` |
| 33 | `theorem` | [fib_succ_eq_sum_choose](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variant50720946c5339afc6b50705103afc187d1b2bd8cde641556da152acdc16c4315.lean/declarations/fib-succ-eq-sum-choose--41c0224600594d9ce3995aa0.md) | 243 | `result-track:41c0224600594d9ce3995aa0b0c6580d6cedd7f34fe0751353a509d81c7ba795` |
| 34 | `theorem` | [fib_succ_eq_succ_sum](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variant50720946c5339afc6b50705103afc187d1b2bd8cde641556da152acdc16c4315.lean/declarations/fib-succ-eq-succ-sum--c7e0ea0ddfdbfcc004396604.md) | 249 | `result-track:c7e0ea0ddfdbfcc00439660429333599ac54edc1eac5d69f88c7c509e7958b54` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
