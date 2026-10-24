# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.Fib.Variantbcf7ef6a385e9c973376ac262777ba60f64e85f9cd43a02153194162fed23188

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "099621b045170bebfb04131694d98b9832b9e6cf",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Fib/Variantbcf7ef6a385e9c973376ac262777ba60f64e85f9cd43a02153194162fed23188.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Fib/Variantbcf7ef6a385e9c973376ac262777ba60f64e85f9cd43a02153194162fed23188.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Fib/Variantbcf7ef6a385e9c973376ac262777ba60f64e85f9cd43a02153194162fed23188.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `099621b045170bebfb04131694d98b9832b9e6cf`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/Fib/Variantbcf7ef6a385e9c973376ac262777ba60f64e85f9cd43a02153194162fed23188.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/Fib/Variantbcf7ef6a385e9c973376ac262777ba60f64e85f9cd43a02153194162fed23188.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Init.Data.Nat.Lemmas` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Init.Data.Nat.Bitwise` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.GCD.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Function.Iterate` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.NatAntidiagonal` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Basic` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 17; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Zify` — import line 18; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [fib](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Fib/Variantbcf7ef6a385e9c973376ac262777ba60f64e85f9cd43a02153194162fed23188.lean/declarations/fib--d9d87b0ead46850b96c141dc.md) | 78 | `declaration-track:d9d87b0ead46850b96c141dc5565177ac39358f31598ccd22998f617b57b5f7d` |
| 2 | `theorem` | [fib_zero](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Fib/Variantbcf7ef6a385e9c973376ac262777ba60f64e85f9cd43a02153194162fed23188.lean/declarations/fib-zero--ce535bc7b7fba7f80f61177b.md) | 83 | `result-track:ce535bc7b7fba7f80f61177babfdd63209de8dc7ae0e8a9e0fa4ea336e9fd072` |
| 3 | `theorem` | [fib_one](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Fib/Variantbcf7ef6a385e9c973376ac262777ba60f64e85f9cd43a02153194162fed23188.lean/declarations/fib-one--11166b773fed6e4afb550d9c.md) | 88 | `result-track:11166b773fed6e4afb550d9cff8e8962d410ee45e97d91871e904188036cf711` |
| 4 | `theorem` | [fib_two](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Fib/Variantbcf7ef6a385e9c973376ac262777ba60f64e85f9cd43a02153194162fed23188.lean/declarations/fib-two--fed35ff10250d6d5fb916b8d.md) | 93 | `result-track:fed35ff10250d6d5fb916b8decd780f8b2ef553e2be55c1faef4c201ffaff1f4` |
| 5 | `theorem` | [fib_add_two](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Fib/Variantbcf7ef6a385e9c973376ac262777ba60f64e85f9cd43a02153194162fed23188.lean/declarations/fib-add-two--cf23eb6c1a271eb7ab3f2941.md) | 98 | `result-track:cf23eb6c1a271eb7ab3f29419b75cf9fe6251800c4da114e31a180363f01492a` |
| 6 | `theorem` | [fib_le_fib_succ](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Fib/Variantbcf7ef6a385e9c973376ac262777ba60f64e85f9cd43a02153194162fed23188.lean/declarations/fib-le-fib-succ--8453d3e4dfe1b6067117e8b4.md) | 102 | `result-track:8453d3e4dfe1b6067117e8b4b7fccdcfbc4bd5cd2c08184fa2f692ceff38eaf2` |
| 7 | `theorem` | [fib_mono](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Fib/Variantbcf7ef6a385e9c973376ac262777ba60f64e85f9cd43a02153194162fed23188.lean/declarations/fib-mono--6e13468af9e0e1b8f19bb238.md) | 106 | `result-track:6e13468af9e0e1b8f19bb238b23bff1065f7ce228211b392f467abc4563d5616` |
| 8 | `theorem` | [fib_pos](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Fib/Variantbcf7ef6a385e9c973376ac262777ba60f64e85f9cd43a02153194162fed23188.lean/declarations/fib-pos--324ecaeb8b9df71b39bc5c46.md) | 110 | `result-track:324ecaeb8b9df71b39bc5c4654c1cc39d4e5b92affa0a0edf0d81e67cfa293d3` |
| 9 | `theorem` | [fib_add_two_sub_fib_add_one](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Fib/Variantbcf7ef6a385e9c973376ac262777ba60f64e85f9cd43a02153194162fed23188.lean/declarations/fib-add-two-sub-fib-add-one--849842ddef2e84ea28f6dedc.md) | 116 | `result-track:849842ddef2e84ea28f6dedc177ed3059e9134fdac294eaee2e026f45031628a` |
| 10 | `theorem` | [fib_lt_fib_succ](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Fib/Variantbcf7ef6a385e9c973376ac262777ba60f64e85f9cd43a02153194162fed23188.lean/declarations/fib-lt-fib-succ--cd74e882e3fed339682d9eb5.md) | 120 | `result-track:cd74e882e3fed339682d9eb5ee35d587e04a441120c9a149d745d03e6543e716` |
| 11 | `theorem` | [fib_add_two_strictMono](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Fib/Variantbcf7ef6a385e9c973376ac262777ba60f64e85f9cd43a02153194162fed23188.lean/declarations/fib-add-two-strictmono--8e0491487612f4df4c2d488e.md) | 127 | `result-track:8e0491487612f4df4c2d488e15b2a49957535014b65a95db446bd95f3dcfa754` |
| 12 | `theorem` | [le_fib_self](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Fib/Variantbcf7ef6a385e9c973376ac262777ba60f64e85f9cd43a02153194162fed23188.lean/declarations/le-fib-self--d04c76a5744f65c68090427a.md) | 133 | `result-track:d04c76a5744f65c68090427ab74f55aba95a695b3ca4f757971bd4705b624805` |
| 13 | `theorem` | [fib_coprime_fib_succ](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Fib/Variantbcf7ef6a385e9c973376ac262777ba60f64e85f9cd43a02153194162fed23188.lean/declarations/fib-coprime-fib-succ--215dd6993b03dbe3fc9f5e0c.md) | 146 | `result-track:215dd6993b03dbe3fc9f5e0c0e6c4943e5622ce5fa1f9e33e683e860452d19a7` |
| 14 | `theorem` | [fib_add](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Fib/Variantbcf7ef6a385e9c973376ac262777ba60f64e85f9cd43a02153194162fed23188.lean/declarations/fib-add--0722bb7d22b2a44cdcd081b8.md) | 155 | `result-track:0722bb7d22b2a44cdcd081b862039ce2e8d01bd2d94a286d8fab88fadb6d6cf4` |
| 15 | `theorem` | [fib_two_mul](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Fib/Variantbcf7ef6a385e9c973376ac262777ba60f64e85f9cd43a02153194162fed23188.lean/declarations/fib-two-mul--6ef776db0df24789d91e5c20.md) | 165 | `result-track:6ef776db0df24789d91e5c20360d9352fc8957965a447d8ee4b556b8b7401cdf` |
| 16 | `theorem` | [fib_two_mul_add_one](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Fib/Variantbcf7ef6a385e9c973376ac262777ba60f64e85f9cd43a02153194162fed23188.lean/declarations/fib-two-mul-add-one--eb227cfbe4df1263c03f123c.md) | 173 | `result-track:eb227cfbe4df1263c03f123ce27bd2eeee70c39c8a60473fee8659b6d39a3bf4` |
| 17 | `theorem` | [fib_two_mul_add_two](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Fib/Variantbcf7ef6a385e9c973376ac262777ba60f64e85f9cd43a02153194162fed23188.lean/declarations/fib-two-mul-add-two--5c582a2e19c5edad70e64ec4.md) | 178 | `result-track:5c582a2e19c5edad70e64ec437f97f638074c41f7982e4e0633f491c3a5d4d2b` |
| 18 | `theorem` | [fib_bit0](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Fib/Variantbcf7ef6a385e9c973376ac262777ba60f64e85f9cd43a02153194162fed23188.lean/declarations/fib-bit0--41225941e5f5d08819342c54.md) | 191 | `result-track:41225941e5f5d08819342c543618d8f3117c89e94d2f11deab176e7eb50a0eb4` |
| 19 | `theorem` | [fib_bit1](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Fib/Variantbcf7ef6a385e9c973376ac262777ba60f64e85f9cd43a02153194162fed23188.lean/declarations/fib-bit1--187ac1df5ae2ffabdab51894.md) | 195 | `result-track:187ac1df5ae2ffabdab51894def78cb57287154815f70f2b52705e1af90c09f3` |
| 20 | `theorem` | [fib_bit0_succ](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Fib/Variantbcf7ef6a385e9c973376ac262777ba60f64e85f9cd43a02153194162fed23188.lean/declarations/fib-bit0-succ--61c2c0765fecb9b4332d850a.md) | 199 | `result-track:61c2c0765fecb9b4332d850aa7a8843c05766ff5cc8da6a1c8617be48a5787e4` |
| 21 | `theorem` | [fib_bit1_succ](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Fib/Variantbcf7ef6a385e9c973376ac262777ba60f64e85f9cd43a02153194162fed23188.lean/declarations/fib-bit1-succ--cf25ef49cf0bb9f33766085d.md) | 203 | `result-track:cf25ef49cf0bb9f33766085dac2351842aba27c00d730b5d6491673d1ac94412` |
| 22 | `def` | [fastFibAux](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Fib/Variantbcf7ef6a385e9c973376ac262777ba60f64e85f9cd43a02153194162fed23188.lean/declarations/fastfibaux--cb3a74a2cf9b59e1c472ac4c.md) | 211 | `declaration-track:cb3a74a2cf9b59e1c472ac4ce19d785cda1079237e97c8552f5d8ecf66b65136` |
| 23 | `def` | [fastFib](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Fib/Variantbcf7ef6a385e9c973376ac262777ba60f64e85f9cd43a02153194162fed23188.lean/declarations/fastfib--e6c42f7f03488eec49839b05.md) | 219 | `declaration-track:e6c42f7f03488eec49839b054f5f530e1e1039e975bd6dd1cf5467bc85ed7c4f` |
| 24 | `theorem` | [fast_fib_aux_bit_ff](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Fib/Variantbcf7ef6a385e9c973376ac262777ba60f64e85f9cd43a02153194162fed23188.lean/declarations/fast-fib-aux-bit-ff--2889a38da7ff526602d3bdef.md) | 223 | `result-track:2889a38da7ff526602d3bdefaec494ff56744cc96360fba7b4676ce89c6f6989` |
| 25 | `theorem` | [fast_fib_aux_bit_tt](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Fib/Variantbcf7ef6a385e9c973376ac262777ba60f64e85f9cd43a02153194162fed23188.lean/declarations/fast-fib-aux-bit-tt--734bd407b3cae3fa6cbe4c58.md) | 232 | `result-track:734bd407b3cae3fa6cbe4c5809344dffd3193377ccb7288feaa1624eda938321` |
| 26 | `theorem` | [fast_fib_aux_eq](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Fib/Variantbcf7ef6a385e9c973376ac262777ba60f64e85f9cd43a02153194162fed23188.lean/declarations/fast-fib-aux-eq--a18a57fca5b6c0415282020c.md) | 241 | `result-track:a18a57fca5b6c0415282020ca854366e877f62ce5bc3018f5de7a8d684777a8d` |
| 27 | `theorem` | [fast_fib_eq](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Fib/Variantbcf7ef6a385e9c973376ac262777ba60f64e85f9cd43a02153194162fed23188.lean/declarations/fast-fib-eq--cd5768023e7e9bee993b3156.md) | 253 | `result-track:cd5768023e7e9bee993b3156821650d296cd82db076558a5983dc3db9198aa20` |
| 28 | `theorem` | [gcd_fib_add_self](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Fib/Variantbcf7ef6a385e9c973376ac262777ba60f64e85f9cd43a02153194162fed23188.lean/declarations/gcd-fib-add-self--1e6a107421f8440723856a2f.md) | 256 | `result-track:1e6a107421f8440723856a2f759d2d634e5e50a48322fd2b61729f584c049122` |
| 29 | `theorem` | [gcd_fib_add_mul_self](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Fib/Variantbcf7ef6a385e9c973376ac262777ba60f64e85f9cd43a02153194162fed23188.lean/declarations/gcd-fib-add-mul-self--1c3cd4cd678ba855824009a6.md) | 272 | `result-track:1c3cd4cd678ba855824009a643d88aa4d4531e867348b4fe2f689503bdba3e39` |
| 30 | `theorem` | [fib_gcd](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Fib/Variantbcf7ef6a385e9c973376ac262777ba60f64e85f9cd43a02153194162fed23188.lean/declarations/fib-gcd--7e32cbc01259edde61a527a0.md) | 284 | `result-track:7e32cbc01259edde61a527a0fffe8f86bad8da34eb04a8cc561a2ba9e4973d4d` |
| 31 | `theorem` | [fib_dvd](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Fib/Variantbcf7ef6a385e9c973376ac262777ba60f64e85f9cd43a02153194162fed23188.lean/declarations/fib-dvd--0495959a1814097aef012911.md) | 293 | `result-track:0495959a1814097aef012911ecdec894c5b96dbe457c754858dc5cb21d33c0cd` |
| 32 | `theorem` | [fib_succ_eq_sum_choose](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Fib/Variantbcf7ef6a385e9c973376ac262777ba60f64e85f9cd43a02153194162fed23188.lean/declarations/fib-succ-eq-sum-choose--4bd24b6e4e999a2e88bd60bc.md) | 297 | `result-track:4bd24b6e4e999a2e88bd60bcdaa080be70131ad56e377a7acf4c8b43b302dc3a` |
| 33 | `theorem` | [fib_succ_eq_succ_sum](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Fib/Variantbcf7ef6a385e9c973376ac262777ba60f64e85f9cd43a02153194162fed23188.lean/declarations/fib-succ-eq-succ-sum--b399557635ccbca17e0936d1.md) | 304 | `result-track:b399557635ccbca17e0936d1829c6a97c4f7d3aa3638ec6ac36d69a6c35c04ea` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
