# Verification target: GRWTSK.NumberTheory.Basic.Variant9f96344c998a0c68c70f6e32d053f1f151586c5582c9fe08d66fb0ba6dce2192

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3295b05c0cfe60fee9441fece8604854ebf8a267",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Basic/Variant9f96344c998a0c68c70f6e32d053f1f151586c5582c9fe08d66fb0ba6dce2192.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Basic/Variant9f96344c998a0c68c70f6e32d053f1f151586c5582c9fe08d66fb0ba6dce2192.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Basic/Variant9f96344c998a0c68c70f6e32d053f1f151586c5582c9fe08d66fb0ba6dce2192.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3295b05c0cfe60fee9441fece8604854ebf8a267`.

Source path: `GRWTSK/NumberTheory/Basic/Variant9f96344c998a0c68c70f6e32d053f1f151586c5582c9fe08d66fb0ba6dce2192.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Basic/Variant9f96344c998a0c68c70f6e32d053f1f151586c5582c9fe08d66fb0ba6dce2192.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.EuclideanDomain.Int` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GCDMonoid.Finset` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GCDMonoid.Nat` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Ring.Abs` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.PrincipalIdealDomain` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [FermatLastTheoremWith](../../../../mathematics/NumberTheory/Basic/Variant9f96344c998a0c68c70f6e32d053f1f151586c5582c9fe08d66fb0ba6dce2192.lean/declarations/fermatlasttheoremwith--d016c0e82bf843bd4c39f67f.md) | 48 | `declaration-track:d016c0e82bf843bd4c39f67fc7940e081c686e12a44e7e1a85186993c54064f0` |
| 2 | `def` | [FermatLastTheoremFor](../../../../mathematics/NumberTheory/Basic/Variant9f96344c998a0c68c70f6e32d053f1f151586c5582c9fe08d66fb0ba6dce2192.lean/declarations/fermatlasttheoremfor--7b4219145eab503349232660.md) | 52 | `declaration-track:7b4219145eab503349232660b964f80af4dcdd936040d2190e114ad6047c2017` |
| 3 | `def` | [FermatLastTheorem](../../../../mathematics/NumberTheory/Basic/Variant9f96344c998a0c68c70f6e32d053f1f151586c5582c9fe08d66fb0ba6dce2192.lean/declarations/fermatlasttheorem--83dbc7586adc0fa54b2c0c86.md) | 60 | `declaration-track:83dbc7586adc0fa54b2c0c862a9972a2f93bd122d5e78f59acbc9eab94f8197c` |
| 4 | `lemma` | [fermatLastTheoremFor_zero](../../../../mathematics/NumberTheory/Basic/Variant9f96344c998a0c68c70f6e32d053f1f151586c5582c9fe08d66fb0ba6dce2192.lean/declarations/fermatlasttheoremfor-zero--b355d1f76f7adfa14638efc4.md) | 62 | `result-track:b355d1f76f7adfa14638efc48058c5730a673cc16a3a86f237561afc4eb78e2d` |
| 5 | `lemma` | [not_fermatLastTheoremFor_one](../../../../mathematics/NumberTheory/Basic/Variant9f96344c998a0c68c70f6e32d053f1f151586c5582c9fe08d66fb0ba6dce2192.lean/declarations/not-fermatlasttheoremfor-one--3566bcc8c2c7792169a4545f.md) | 65 | `result-track:3566bcc8c2c7792169a4545fa13464173e14f094436bc001b8b3e334978b9401` |
| 6 | `lemma` | [not_fermatLastTheoremFor_two](../../../../mathematics/NumberTheory/Basic/Variant9f96344c998a0c68c70f6e32d053f1f151586c5582c9fe08d66fb0ba6dce2192.lean/declarations/not-fermatlasttheoremfor-two--14a4b8a6dd734324c8ce9bf8.md) | 68 | `result-track:14a4b8a6dd734324c8ce9bf846f491dd113b34b4b7fc7531bfd95fca1d962ffb` |
| 7 | `lemma` | [FermatLastTheoremWith.mono](../../../../mathematics/NumberTheory/Basic/Variant9f96344c998a0c68c70f6e32d053f1f151586c5582c9fe08d66fb0ba6dce2192.lean/declarations/fermatlasttheoremwith-mono--071e3593e865abeea356491e.md) | 73 | `result-track:071e3593e865abeea356491e06a96fbf11d2704daa962bceee2d2df94a3aedfc` |
| 8 | `lemma` | [FermatLastTheoremFor.mono](../../../../mathematics/NumberTheory/Basic/Variant9f96344c998a0c68c70f6e32d053f1f151586c5582c9fe08d66fb0ba6dce2192.lean/declarations/fermatlasttheoremfor-mono--adb06ffaa2df363089a3652b.md) | 80 | `result-track:adb06ffaa2df363089a3652b7622be0cd1afea418345276082ffd30ede90686c` |
| 9 | `lemma` | [fermatLastTheoremWith_nat_int_rat_tfae](../../../../mathematics/NumberTheory/Basic/Variant9f96344c998a0c68c70f6e32d053f1f151586c5582c9fe08d66fb0ba6dce2192.lean/declarations/fermatlasttheoremwith-nat-int-rat-tfae--a5e23f3b367e61fe53cb095c.md) | 84 | `result-track:a5e23f3b367e61fe53cb095c37bffcc9ce98026402303432435eb82fbf862b69` |
| 10 | `lemma` | [fermatLastTheoremFor_iff_nat](../../../../mathematics/NumberTheory/Basic/Variant9f96344c998a0c68c70f6e32d053f1f151586c5582c9fe08d66fb0ba6dce2192.lean/declarations/fermatlasttheoremfor-iff-nat--d6d343c88b1dec0383844428.md) | 141 | `result-track:d6d343c88b1dec0383844428235478021f54adb6f22f3630383ca8e75dd1b9af` |
| 11 | `lemma` | [fermatLastTheoremFor_iff_int](../../../../mathematics/NumberTheory/Basic/Variant9f96344c998a0c68c70f6e32d053f1f151586c5582c9fe08d66fb0ba6dce2192.lean/declarations/fermatlasttheoremfor-iff-int--eab407289119a9171b58ce91.md) | 144 | `result-track:eab407289119a9171b58ce918e0bf757a31d2c3da651d4a7d699291446af9828` |
| 12 | `lemma` | [fermatLastTheoremFor_iff_rat](../../../../mathematics/NumberTheory/Basic/Variant9f96344c998a0c68c70f6e32d053f1f151586c5582c9fe08d66fb0ba6dce2192.lean/declarations/fermatlasttheoremfor-iff-rat--ed355daf6756684a61711731.md) | 147 | `result-track:ed355daf6756684a61711731133a3b8de4e31d8a3a86708b12db22cc66537d5a` |
| 13 | `def` | [FermatLastTheoremWith'](../../../../mathematics/NumberTheory/Basic/Variant9f96344c998a0c68c70f6e32d053f1f151586c5582c9fe08d66fb0ba6dce2192.lean/declarations/fermatlasttheoremwith--4db13bcef25e7907193bf581.md) | 162 | `declaration-track:4db13bcef25e7907193bf58118f77d31c3910215ac9694c75bcbec1e6e943d3b` |
| 14 | `lemma` | [FermatLastTheoremWith.fermatLastTheoremWith'](../../../../mathematics/NumberTheory/Basic/Variant9f96344c998a0c68c70f6e32d053f1f151586c5582c9fe08d66fb0ba6dce2192.lean/declarations/fermatlasttheoremwith-fermatlasttheoremwith--b0c33da26c348637ed45db44.md) | 166 | `result-track:b0c33da26c348637ed45db4479c56ffea91bb34683192e76149784911c550912` |
| 15 | `lemma` | [fermatLastTheoremWith'_of_semifield](../../../../mathematics/NumberTheory/Basic/Variant9f96344c998a0c68c70f6e32d053f1f151586c5582c9fe08d66fb0ba6dce2192.lean/declarations/fermatlasttheoremwith-of-semifield--4a6e23c71f7223887dab1a13.md) | 170 | `result-track:4a6e23c71f7223887dab1a13dae45cb58eb02402d096383e89de82e70c5f7096` |
| 16 | `lemma` | [FermatLastTheoremWith'.fermatLastTheoremWith](../../../../mathematics/NumberTheory/Basic/Variant9f96344c998a0c68c70f6e32d053f1f151586c5582c9fe08d66fb0ba6dce2192.lean/declarations/fermatlasttheoremwith-fermatlasttheoremwith--27c11db38cd6c4e8ef51da41.md) | 179 | `result-track:27c11db38cd6c4e8ef51da411dac46068b505d15ebb2991ea47d1ac4fc6a9513` |
| 17 | `lemma` | [fermatLastTheoremWith'_iff_fermatLastTheoremWith](../../../../mathematics/NumberTheory/Basic/Variant9f96344c998a0c68c70f6e32d053f1f151586c5582c9fe08d66fb0ba6dce2192.lean/declarations/fermatlasttheoremwith-iff-fermatlasttheoremwith--5f6ade7639ece5be845fbc7b.md) | 188 | `result-track:5f6ade7639ece5be845fbc7b7f64f15c8b57c98fafbadf8c27c9d3ec95570626` |
| 18 | `lemma` | [fermatLastTheoremWith'_nat_int_tfae](../../../../mathematics/NumberTheory/Basic/Variant9f96344c998a0c68c70f6e32d053f1f151586c5582c9fe08d66fb0ba6dce2192.lean/declarations/fermatlasttheoremwith-nat-int-tfae--1da47f87ff1ae91784ee9fa9.md) | 193 | `result-track:1da47f87ff1ae91784ee9fa968e76bb51e5971e999c4d321dc3a9576a4a2bc4b` |
| 19 | `lemma` | [fermatLastTheoremWith_of_fermatLastTheoremWith_coprime](../../../../mathematics/NumberTheory/Basic/Variant9f96344c998a0c68c70f6e32d053f1f151586c5582c9fe08d66fb0ba6dce2192.lean/declarations/fermatlasttheoremwith-of-fermatlasttheoremwith-coprime--a7d39f65034c1fe7e3086566.md) | 217 | `result-track:a7d39f65034c1fe7e30865668f92940ec2b48337255c56ac58a98f9f94f93312` |
| 20 | `lemma` | [dvd_c_of_prime_of_dvd_a_of_dvd_b_of_FLT](../../../../mathematics/NumberTheory/Basic/Variant9f96344c998a0c68c70f6e32d053f1f151586c5582c9fe08d66fb0ba6dce2192.lean/declarations/dvd-c-of-prime-of-dvd-a-of-dvd-b-of-flt--4e9e6d54db5046a941cc1a3b.md) | 236 | `result-track:4e9e6d54db5046a941cc1a3bad60fbdf7196eb1f326d1b01775653dd12fe63a3` |
| 21 | `lemma` | [isCoprime_of_gcd_eq_one_of_FLT](../../../../mathematics/NumberTheory/Basic/Variant9f96344c998a0c68c70f6e32d053f1f151586c5582c9fe08d66fb0ba6dce2192.lean/declarations/iscoprime-of-gcd-eq-one-of-flt--091ff192d5d12342bb03565e.md) | 244 | `result-track:091ff192d5d12342bb03565e0f24b6a470d037d6399ab0b44ffc7218051f2e2e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
