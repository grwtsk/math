# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.Fib.Variantf34c7a2efded95c9a0f33b35884c095dd636fae3e0d7cef9448dbaa91ec68840

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "50020ebe49c8b2974a683c454465694414732da5",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Fib/Variantf34c7a2efded95c9a0f33b35884c095dd636fae3e0d7cef9448dbaa91ec68840.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Fib/Variantf34c7a2efded95c9a0f33b35884c095dd636fae3e0d7cef9448dbaa91ec68840.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Fib/Variantf34c7a2efded95c9a0f33b35884c095dd636fae3e0d7cef9448dbaa91ec68840.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `50020ebe49c8b2974a683c454465694414732da5`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/Fib/Variantf34c7a2efded95c9a0f33b35884c095dd636fae3e0d7cef9448dbaa91ec68840.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/Fib/Variantf34c7a2efded95c9a0f33b35884c095dd636fae3e0d7cef9448dbaa91ec68840.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Init.Data.Nat.Lemmas` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Init.Data.Nat.Bitwise` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.GCD.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Function.Iterate` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.NatAntidiagonal` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Zify` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [fib](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Fib/Variantf34c7a2efded95c9a0f33b35884c095dd636fae3e0d7cef9448dbaa91ec68840.lean/declarations/fib--8375872570ead95595ca8886.md) | 70 | `declaration-track:8375872570ead95595ca88863d833a8f066eb51db262b73e1a890dd07b3fe357` |
| 2 | `theorem` | [fib_zero](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Fib/Variantf34c7a2efded95c9a0f33b35884c095dd636fae3e0d7cef9448dbaa91ec68840.lean/declarations/fib-zero--59f0e2f5737d8c41cfbf6ce7.md) | 75 | `result-track:59f0e2f5737d8c41cfbf6ce7760def332dd291e25328dd2a8f2eb0369f8ba7f8` |
| 3 | `theorem` | [fib_one](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Fib/Variantf34c7a2efded95c9a0f33b35884c095dd636fae3e0d7cef9448dbaa91ec68840.lean/declarations/fib-one--0ad76afe3325cfb2a8981991.md) | 80 | `result-track:0ad76afe3325cfb2a898199154a093026c40c9b098f194a65b33ebd374183594` |
| 4 | `theorem` | [fib_two](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Fib/Variantf34c7a2efded95c9a0f33b35884c095dd636fae3e0d7cef9448dbaa91ec68840.lean/declarations/fib-two--fc58838b92bf79ff6c7ce117.md) | 85 | `result-track:fc58838b92bf79ff6c7ce11728f6e0b62e1edf45d8635bcc01c224ecf55b600f` |
| 5 | `theorem` | [fib_add_two](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Fib/Variantf34c7a2efded95c9a0f33b35884c095dd636fae3e0d7cef9448dbaa91ec68840.lean/declarations/fib-add-two--9ec82d8db462ec548d88c236.md) | 90 | `result-track:9ec82d8db462ec548d88c2362d3c7a21af9d9f3512a0deab746089e6a78a9e14` |
| 6 | `theorem` | [fib_le_fib_succ](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Fib/Variantf34c7a2efded95c9a0f33b35884c095dd636fae3e0d7cef9448dbaa91ec68840.lean/declarations/fib-le-fib-succ--40619ddf5638b377b288b181.md) | 94 | `result-track:40619ddf5638b377b288b18199256a9f5d7b2d2b54dad1bc9f96786049285054` |
| 7 | `theorem` | [fib_mono](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Fib/Variantf34c7a2efded95c9a0f33b35884c095dd636fae3e0d7cef9448dbaa91ec68840.lean/declarations/fib-mono--e19989207e8f9491a055f6a8.md) | 98 | `result-track:e19989207e8f9491a055f6a837c2fea3905493470f89e50253bca9d0ae3d2111` |
| 8 | `theorem` | [fib_pos](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Fib/Variantf34c7a2efded95c9a0f33b35884c095dd636fae3e0d7cef9448dbaa91ec68840.lean/declarations/fib-pos--88d0f408d1d6428bde3b375e.md) | 102 | `result-track:88d0f408d1d6428bde3b375ecbb008541860a8f58235d55f878d44f669bcc06d` |
| 9 | `theorem` | [fib_add_two_sub_fib_add_one](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Fib/Variantf34c7a2efded95c9a0f33b35884c095dd636fae3e0d7cef9448dbaa91ec68840.lean/declarations/fib-add-two-sub-fib-add-one--4d0f9addd04657f45ead0c36.md) | 108 | `result-track:4d0f9addd04657f45ead0c3680e6ec39672456b6a30c51531770494d9aaaefb2` |
| 10 | `theorem` | [fib_lt_fib_succ](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Fib/Variantf34c7a2efded95c9a0f33b35884c095dd636fae3e0d7cef9448dbaa91ec68840.lean/declarations/fib-lt-fib-succ--03a75ebec0d7a53e0f738092.md) | 112 | `result-track:03a75ebec0d7a53e0f738092f75975eff261a64b3db4ac1e76a49a790b0584af` |
| 11 | `theorem` | [fib_add_two_strictMono](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Fib/Variantf34c7a2efded95c9a0f33b35884c095dd636fae3e0d7cef9448dbaa91ec68840.lean/declarations/fib-add-two-strictmono--f14acf795c612782f51d1662.md) | 119 | `result-track:f14acf795c612782f51d1662ba460ca14e84cdd7f88658025fbaf2808392b257` |
| 12 | `theorem` | [le_fib_self](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Fib/Variantf34c7a2efded95c9a0f33b35884c095dd636fae3e0d7cef9448dbaa91ec68840.lean/declarations/le-fib-self--1c2b069cb36bda1663d48dd9.md) | 125 | `result-track:1c2b069cb36bda1663d48dd9158bf768dff88e61dffb297da0b7edbfc36beb81` |
| 13 | `theorem` | [fib_coprime_fib_succ](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Fib/Variantf34c7a2efded95c9a0f33b35884c095dd636fae3e0d7cef9448dbaa91ec68840.lean/declarations/fib-coprime-fib-succ--c87a363574413cca8755b3df.md) | 138 | `result-track:c87a363574413cca8755b3dfd0a0bd1af6407bfe063a139e537bdf3bdade83ea` |
| 14 | `theorem` | [fib_add](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Fib/Variantf34c7a2efded95c9a0f33b35884c095dd636fae3e0d7cef9448dbaa91ec68840.lean/declarations/fib-add--208efb3bee8a3de8ac0bcd3a.md) | 147 | `result-track:208efb3bee8a3de8ac0bcd3a78c5aa063ea7cf77061b029f4c561ee39757b834` |
| 15 | `theorem` | [fib_two_mul](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Fib/Variantf34c7a2efded95c9a0f33b35884c095dd636fae3e0d7cef9448dbaa91ec68840.lean/declarations/fib-two-mul--15f450534d9df44f75569f5a.md) | 157 | `result-track:15f450534d9df44f75569f5abd887dc3d66eb5135b6b59f64523fbcd43e99c4f` |
| 16 | `theorem` | [fib_two_mul_add_one](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Fib/Variantf34c7a2efded95c9a0f33b35884c095dd636fae3e0d7cef9448dbaa91ec68840.lean/declarations/fib-two-mul-add-one--45f74e357e7bb9c621d5f601.md) | 165 | `result-track:45f74e357e7bb9c621d5f601950fd482634ba772bcec98ce015bdf71c46722d8` |
| 17 | `theorem` | [fib_two_mul_add_two](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Fib/Variantf34c7a2efded95c9a0f33b35884c095dd636fae3e0d7cef9448dbaa91ec68840.lean/declarations/fib-two-mul-add-two--4a858629bb33dfc9eb329d3d.md) | 170 | `result-track:4a858629bb33dfc9eb329d3d17df012cccfef422a1619d054a234bafa33bf98b` |
| 18 | `theorem` | [fib_bit0](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Fib/Variantf34c7a2efded95c9a0f33b35884c095dd636fae3e0d7cef9448dbaa91ec68840.lean/declarations/fib-bit0--0fa5c2da0b7723ac197d999f.md) | 183 | `result-track:0fa5c2da0b7723ac197d999f5dc7150cc54c5a5374739b0db971e73936c9dc63` |
| 19 | `theorem` | [fib_bit1](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Fib/Variantf34c7a2efded95c9a0f33b35884c095dd636fae3e0d7cef9448dbaa91ec68840.lean/declarations/fib-bit1--5478057c5b7edde9f942146c.md) | 187 | `result-track:5478057c5b7edde9f942146c9dd3e1555cdeddcd1a20ec54ba3acad04da0d7d6` |
| 20 | `theorem` | [fib_bit0_succ](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Fib/Variantf34c7a2efded95c9a0f33b35884c095dd636fae3e0d7cef9448dbaa91ec68840.lean/declarations/fib-bit0-succ--44b0a512d5e4de2da77a3a04.md) | 191 | `result-track:44b0a512d5e4de2da77a3a04ca8d195db7298e99e0c12857dc701b03b8b8fac4` |
| 21 | `theorem` | [fib_bit1_succ](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Fib/Variantf34c7a2efded95c9a0f33b35884c095dd636fae3e0d7cef9448dbaa91ec68840.lean/declarations/fib-bit1-succ--361addecee8640d42ee3a4e7.md) | 195 | `result-track:361addecee8640d42ee3a4e79171c56df37d5208ae5849db05b3281f853e9ebb` |
| 22 | `def` | [fastFibAux](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Fib/Variantf34c7a2efded95c9a0f33b35884c095dd636fae3e0d7cef9448dbaa91ec68840.lean/declarations/fastfibaux--96eecd214b34699885b76316.md) | 203 | `declaration-track:96eecd214b34699885b76316093b8d3fe3e221f35baa3357765da9d3ee5b6936` |
| 23 | `def` | [fastFib](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Fib/Variantf34c7a2efded95c9a0f33b35884c095dd636fae3e0d7cef9448dbaa91ec68840.lean/declarations/fastfib--86489d60612660af069275ed.md) | 211 | `declaration-track:86489d60612660af069275edb1bf7d7f914b310bffc31cb9c091abe97482709f` |
| 24 | `theorem` | [fast_fib_aux_bit_ff](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Fib/Variantf34c7a2efded95c9a0f33b35884c095dd636fae3e0d7cef9448dbaa91ec68840.lean/declarations/fast-fib-aux-bit-ff--0753a49409fd3634135e1b89.md) | 215 | `result-track:0753a49409fd3634135e1b890be87891c114f144c23c72f9c55f441db632735c` |
| 25 | `theorem` | [fast_fib_aux_bit_tt](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Fib/Variantf34c7a2efded95c9a0f33b35884c095dd636fae3e0d7cef9448dbaa91ec68840.lean/declarations/fast-fib-aux-bit-tt--2afd51cd5597b2921af6239d.md) | 224 | `result-track:2afd51cd5597b2921af6239db333e699273de4cf0c310735474ddadfe6d2b040` |
| 26 | `theorem` | [fast_fib_aux_eq](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Fib/Variantf34c7a2efded95c9a0f33b35884c095dd636fae3e0d7cef9448dbaa91ec68840.lean/declarations/fast-fib-aux-eq--56f84c0aba07fa3657c2ddf7.md) | 233 | `result-track:56f84c0aba07fa3657c2ddf7955dd254f7bf2e4d8ee46c0ef822f0c50e7a10e2` |
| 27 | `theorem` | [fast_fib_eq](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Fib/Variantf34c7a2efded95c9a0f33b35884c095dd636fae3e0d7cef9448dbaa91ec68840.lean/declarations/fast-fib-eq--766b6aecada3047c75d992ea.md) | 245 | `result-track:766b6aecada3047c75d992ea1252ff7a25ffb3222f37b616e165d412270be0c0` |
| 28 | `theorem` | [gcd_fib_add_self](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Fib/Variantf34c7a2efded95c9a0f33b35884c095dd636fae3e0d7cef9448dbaa91ec68840.lean/declarations/gcd-fib-add-self--70dfbfc41b79936fd2c39f9f.md) | 248 | `result-track:70dfbfc41b79936fd2c39f9f68fcc8c031df96442f497078e5165c4c1f0a81ad` |
| 29 | `theorem` | [gcd_fib_add_mul_self](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Fib/Variantf34c7a2efded95c9a0f33b35884c095dd636fae3e0d7cef9448dbaa91ec68840.lean/declarations/gcd-fib-add-mul-self--2eb6afc7b52cea83443d0c48.md) | 264 | `result-track:2eb6afc7b52cea83443d0c48318fc48d986bc529d856ee18e4f5abcf4c5367d8` |
| 30 | `theorem` | [fib_gcd](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Fib/Variantf34c7a2efded95c9a0f33b35884c095dd636fae3e0d7cef9448dbaa91ec68840.lean/declarations/fib-gcd--1d37b2ef70f2780278bedf2b.md) | 276 | `result-track:1d37b2ef70f2780278bedf2be1273a165e60e3a66d52cd49f71b99ea9b129d13` |
| 31 | `theorem` | [fib_dvd](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Fib/Variantf34c7a2efded95c9a0f33b35884c095dd636fae3e0d7cef9448dbaa91ec68840.lean/declarations/fib-dvd--36a830942f086a46d2deb361.md) | 285 | `result-track:36a830942f086a46d2deb3617850f0929a38ed6ded24e0a9c34aa76daefff9be` |
| 32 | `theorem` | [fib_succ_eq_sum_choose](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Fib/Variantf34c7a2efded95c9a0f33b35884c095dd636fae3e0d7cef9448dbaa91ec68840.lean/declarations/fib-succ-eq-sum-choose--1ce64776ea31e3131df58256.md) | 289 | `result-track:1ce64776ea31e3131df5825652216403442239cad91e2bca9249497042174998` |
| 33 | `theorem` | [fib_succ_eq_succ_sum](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Fib/Variantf34c7a2efded95c9a0f33b35884c095dd636fae3e0d7cef9448dbaa91ec68840.lean/declarations/fib-succ-eq-succ-sum--07c0d4e73ba078cb55c3ce57.md) | 296 | `result-track:07c0d4e73ba078cb55c3ce57125bad3dae89f0b2dad6061eee366bb5560d46f4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
