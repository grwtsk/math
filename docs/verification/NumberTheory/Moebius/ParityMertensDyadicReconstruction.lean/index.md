# Verification target: GRWTSK.NumberTheory.Moebius.ParityMertensDyadicReconstruction

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2bd5eba1e59195a1f85e7221ab17c410b395d41c",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/ParityMertensDyadicReconstruction.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Moebius/ParityMertensDyadicReconstruction.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Moebius/ParityMertensDyadicReconstruction.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2bd5eba1e59195a1f85e7221ab17c410b395d41c`.

Source path: `GRWTSK/NumberTheory/Moebius/ParityMertensDyadicReconstruction.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/ParityMertensDyadicReconstruction.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.ParityFourierZeroNonzeroSplit`](../../../../mathematics/NumberTheory/Moebius/ParityFourierZeroNonzeroSplit.lean/index.md) — import line 11; pinned internal source present.
- `Mathlib.Data.Nat.Log` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [moebiusReal_two_mul_eq_parity](../../../../mathematics/NumberTheory/Moebius/ParityMertensDyadicReconstruction.lean/declarations/moebiusreal-two-mul-eq-parity--be623f66bbea6beba0e15547.md) | 51 | `result-track:be623f66bbea6beba0e15547918f99404918c7dd16b2428e79f0a3714d65f657` |
| 2 | `theorem` | [parityMertensPrefix_even_eq_sum_two_mul](../../../../mathematics/NumberTheory/Moebius/ParityMertensDyadicReconstruction.lean/declarations/paritymertensprefix-even-eq-sum-two-mul--d92d16a595ae0869bd559361.md) | 81 | `result-track:d92d16a595ae0869bd55936141559367573b908e1340985d59267ff5d348cedc` |
| 3 | `theorem` | [parityMertensPrefix_even_eq_neg_odd_half](../../../../mathematics/NumberTheory/Moebius/ParityMertensDyadicReconstruction.lean/declarations/paritymertensprefix-even-eq-neg-odd-half--6cea1bda443e794708be23b9.md) | 111 | `result-track:6cea1bda443e794708be23b9242b4a48bc413614a8215bf29ca130ee660f019b` |
| 4 | `theorem` | [parityMertensPrefix_odd_recurrence](../../../../mathematics/NumberTheory/Moebius/ParityMertensDyadicReconstruction.lean/declarations/paritymertensprefix-odd-recurrence--04a8becc701b440b2694208e.md) | 137 | `result-track:04a8becc701b440b2694208e60288adbdf502eee71d2d0d79a3cab32cc81f842` |
| 5 | `def` | [ordinaryMertensDyadicTail](../../../../mathematics/NumberTheory/Moebius/ParityMertensDyadicReconstruction.lean/declarations/ordinarymertensdyadictail--2ea9feb0585c2e9ed639971b.md) | 146 | `declaration-track:2ea9feb0585c2e9ed639971b751ed971f3fbcc0f273c65762c8c43216dc541e9` |
| 6 | `theorem` | [parityMertensPrefix_odd_eq_dyadicTail_add_remainder](../../../../mathematics/NumberTheory/Moebius/ParityMertensDyadicReconstruction.lean/declarations/paritymertensprefix-odd-eq-dyadictail-add-remainder--895223ceb9098e069ac2fedc.md) | 153 | `result-track:895223ceb9098e069ac2fedcb909807158f9ac9c396ea8dc02f7f8c29765ef8e` |
| 7 | `def` | [ordinaryMertensDyadicLength](../../../../mathematics/NumberTheory/Moebius/ParityMertensDyadicReconstruction.lean/declarations/ordinarymertensdyadiclength--78abd3952ac5104f8b3cd632.md) | 179 | `declaration-track:78abd3952ac5104f8b3cd632da556809df0e93ed670d6d52abb7ed9d1f485865` |
| 8 | `theorem` | [endpoint_div_two_pow_dyadicLength_eq_zero](../../../../mathematics/NumberTheory/Moebius/ParityMertensDyadicReconstruction.lean/declarations/endpoint-div-two-pow-dyadiclength-eq-zero--1eb076606d42f4f450457f07.md) | 184 | `result-track:1eb076606d42f4f450457f078b9ec9f2dc1529e29a86f2b64b889f6e2d0db120` |
| 9 | `theorem` | [parityMertensPrefix_odd_eq_ordinaryDyadicTail](../../../../mathematics/NumberTheory/Moebius/ParityMertensDyadicReconstruction.lean/declarations/paritymertensprefix-odd-eq-ordinarydyadictail--0bc1dd956e88893d345c82f2.md) | 194 | `result-track:0bc1dd956e88893d345c82f26fd849a869e89a3b74cf36cdead8b1ec3a369beb` |
| 10 | `theorem` | [parityMertensPrefix_even_eq_neg_ordinaryDyadicTail_half](../../../../mathematics/NumberTheory/Moebius/ParityMertensDyadicReconstruction.lean/declarations/paritymertensprefix-even-eq-neg-ordinarydyadictail-half--32fa66fa34a41214bdea7781.md) | 206 | `result-track:32fa66fa34a41214bdea7781006fe939f41a80de87174e5f24a3e3e67e72bff0` |
| 11 | `def` | [ordinaryMertensDyadicTailMass](../../../../mathematics/NumberTheory/Moebius/ParityMertensDyadicReconstruction.lean/declarations/ordinarymertensdyadictailmass--ab077b4e566a5068eaf98c44.md) | 215 | `declaration-track:ab077b4e566a5068eaf98c4451804e02036653fcf87b4d34c4247f7dcb3ed3f5` |
| 12 | `theorem` | [ordinaryMertensDyadicTailMass_nonneg](../../../../mathematics/NumberTheory/Moebius/ParityMertensDyadicReconstruction.lean/declarations/ordinarymertensdyadictailmass-nonneg--23f442c345b28ffcb5eecec9.md) | 221 | `result-track:23f442c345b28ffcb5eecec9d73fc96e083367c8d76508ef1b1d5f11c8eea0d6` |
| 13 | `theorem` | [abs_parityMertensPrefix_odd_le_dyadicTailMass](../../../../mathematics/NumberTheory/Moebius/ParityMertensDyadicReconstruction.lean/declarations/abs-paritymertensprefix-odd-le-dyadictailmass--40f4e23785c8843fbcc4483c.md) | 229 | `result-track:40f4e23785c8843fbcc4483c7ef5b2008e41994dfbf2e0c1567aa0d9768c8396` |
| 14 | `theorem` | [abs_parityMertensPrefix_even_le_dyadicTailMass_half](../../../../mathematics/NumberTheory/Moebius/ParityMertensDyadicReconstruction.lean/declarations/abs-paritymertensprefix-even-le-dyadictailmass-half--75d9013cec1c431d67a87f54.md) | 239 | `result-track:75d9013cec1c431d67a87f5467b5a3da2c5e5686edea98b44b01e47dc02db26b` |
| 15 | `def` | [DyadicOrdinaryMertensTailSquareRootEnergy](../../../../mathematics/NumberTheory/Moebius/ParityMertensDyadicReconstruction.lean/declarations/dyadicordinarymertenstailsquarerootenergy--fbc5b70aedc7774b98342177.md) | 251 | `declaration-track:fbc5b70aedc7774b98342177304fa230f4eb2263d7550dae842658d05e035c6c` |
| 16 | `theorem` | [parityMertensSquareRootEnergy_of_ordinaryDyadicTail](../../../../mathematics/NumberTheory/Moebius/ParityMertensDyadicReconstruction.lean/declarations/paritymertenssquarerootenergy-of-ordinarydyadictail--e3739bcb958a87526267f31c.md) | 264 | `result-track:e3739bcb958a87526267f31c76c2d0405a99a2aa1ac80fb2bae24848a19b0795` |
| 17 | `theorem` | [naturalScaleCongruenceL1_of_ordinaryDyadicTail_and_nonzero](../../../../mathematics/NumberTheory/Moebius/ParityMertensDyadicReconstruction.lean/declarations/naturalscalecongruencel1-of-ordinarydyadictail-and-nonzero--d1b80a8874c0d66b8908d3c9.md) | 295 | `result-track:d1b80a8874c0d66b8908d3c948ba1422bbf97c5edef671d7c79caa363dd41a7a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
