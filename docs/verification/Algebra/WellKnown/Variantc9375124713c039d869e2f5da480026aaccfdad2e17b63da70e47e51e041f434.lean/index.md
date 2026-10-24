# Verification target: GRWTSK.Algebra.WellKnown.Variantc9375124713c039d869e2f5da480026aaccfdad2e17b63da70e47e51e041f434

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cda712d7caf5b0d45f0524dda7ffd0239edaab14",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/WellKnown/Variantc9375124713c039d869e2f5da480026aaccfdad2e17b63da70e47e51e041f434.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/WellKnown/Variantc9375124713c039d869e2f5da480026aaccfdad2e17b63da70e47e51e041f434.lean/index.md) · [Full source](../../../../mathematics/Algebra/WellKnown/Variantc9375124713c039d869e2f5da480026aaccfdad2e17b63da70e47e51e041f434.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cda712d7caf5b0d45f0524dda7ffd0239edaab14`.

Source path: `GRWTSK/Algebra/WellKnown/Variantc9375124713c039d869e2f5da480026aaccfdad2e17b63da70e47e51e041f434.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/WellKnown/Variantc9375124713c039d869e2f5da480026aaccfdad2e17b63da70e47e51e041f434.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.PowerSeries.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Parity` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.NatAntidiagonal` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [invUnitsSub](../../../../mathematics/Algebra/WellKnown/Variantc9375124713c039d869e2f5da480026aaccfdad2e17b63da70e47e51e041f434.lean/declarations/invunitssub--b9c5d7150a53d47f7c83c98d.md) | 32 | `declaration-track:b9c5d7150a53d47f7c83c98d1fbd7a55242259fba141e8f51e96582a2b3ed745` |
| 2 | `theorem` | [coeff_invUnitsSub](../../../../mathematics/Algebra/WellKnown/Variantc9375124713c039d869e2f5da480026aaccfdad2e17b63da70e47e51e041f434.lean/declarations/coeff-invunitssub--64300d8c0f20e85a0cdb3417.md) | 37 | `result-track:64300d8c0f20e85a0cdb34178bd5ef0fe199bae7c4b646761b155d60423dcedd` |
| 3 | `theorem` | [constantCoeff_invUnitsSub](../../../../mathematics/Algebra/WellKnown/Variantc9375124713c039d869e2f5da480026aaccfdad2e17b63da70e47e51e041f434.lean/declarations/constantcoeff-invunitssub--c15834f20a36636725595738.md) | 42 | `result-track:c15834f20a366367255957383352cb514f8ee5656c153816134a526f02d85211` |
| 4 | `theorem` | [invUnitsSub_mul_X](../../../../mathematics/Algebra/WellKnown/Variantc9375124713c039d869e2f5da480026aaccfdad2e17b63da70e47e51e041f434.lean/declarations/invunitssub-mul-x--c43052938c9d6187e7c3bb54.md) | 47 | `result-track:c43052938c9d6187e7c3bb54cf5c5a1a25cea4d323ebf2426d0cef88d1d90d62` |
| 5 | `theorem` | [invUnitsSub_mul_sub](../../../../mathematics/Algebra/WellKnown/Variantc9375124713c039d869e2f5da480026aaccfdad2e17b63da70e47e51e041f434.lean/declarations/invunitssub-mul-sub--68a71fd268bb7b255ac053b1.md) | 55 | `result-track:68a71fd268bb7b255ac053b1fcf24ce06145c02dade6bb7802aeb9a520304dfe` |
| 6 | `theorem` | [map_invUnitsSub](../../../../mathematics/Algebra/WellKnown/Variantc9375124713c039d869e2f5da480026aaccfdad2e17b63da70e47e51e041f434.lean/declarations/map-invunitssub--75ba8b6d6ab6d824978a2340.md) | 59 | `result-track:75ba8b6d6ab6d824978a23406ac233f2808f047448ae14346b172fee66e2456e` |
| 7 | `def` | [exp](../../../../mathematics/Algebra/WellKnown/Variantc9375124713c039d869e2f5da480026aaccfdad2e17b63da70e47e51e041f434.lean/declarations/exp--d9f0004d8f121d30f9ab219a.md) | 76 | `declaration-track:d9f0004d8f121d30f9ab219abd1837a2c3ba64bc287ddad0574c46127ef6c5fa` |
| 8 | `def` | [sin](../../../../mathematics/Algebra/WellKnown/Variantc9375124713c039d869e2f5da480026aaccfdad2e17b63da70e47e51e041f434.lean/declarations/sin--18f56a92dbbcc36f416d0689.md) | 81 | `declaration-track:18f56a92dbbcc36f416d06893275f4315fb2cbe82e29b9598ae0a9f541b27989` |
| 9 | `def` | [cos](../../../../mathematics/Algebra/WellKnown/Variantc9375124713c039d869e2f5da480026aaccfdad2e17b63da70e47e51e041f434.lean/declarations/cos--1580f23edcc2f46d74048873.md) | 86 | `declaration-track:1580f23edcc2f46d7404887327b19dd42ff1cc9b4101bf1601352299c663389d` |
| 10 | `theorem` | [coeff_exp](../../../../mathematics/Algebra/WellKnown/Variantc9375124713c039d869e2f5da480026aaccfdad2e17b63da70e47e51e041f434.lean/declarations/coeff-exp--dd019243934edec52388a2d9.md) | 93 | `result-track:dd019243934edec52388a2d9ae0bd046e40cf7d49469e12f50508efb4d50e85c` |
| 11 | `theorem` | [constantCoeff_exp](../../../../mathematics/Algebra/WellKnown/Variantc9375124713c039d869e2f5da480026aaccfdad2e17b63da70e47e51e041f434.lean/declarations/constantcoeff-exp--08b1c9ffb6654e2cfa9ec50a.md) | 98 | `result-track:08b1c9ffb6654e2cfa9ec50aba41f3630c63fb686c088274c3d4189d70f53dd9` |
| 12 | `theorem` | [coeff_sin_bit0](../../../../mathematics/Algebra/WellKnown/Variantc9375124713c039d869e2f5da480026aaccfdad2e17b63da70e47e51e041f434.lean/declarations/coeff-sin-bit0--03cf02ea118d0fbb1d046f32.md) | 105 | `result-track:03cf02ea118d0fbb1d046f32671b2ea3cf05979fe85d1455eb24bf25ffc3d617` |
| 13 | `theorem` | [coeff_sin_bit1](../../../../mathematics/Algebra/WellKnown/Variantc9375124713c039d869e2f5da480026aaccfdad2e17b63da70e47e51e041f434.lean/declarations/coeff-sin-bit1--eafbfbab3a2846ccec70669a.md) | 111 | `result-track:eafbfbab3a2846ccec70669ae7ce0c7db6850c37b09ba2594027903512983e40` |
| 14 | `theorem` | [coeff_cos_bit0](../../../../mathematics/Algebra/WellKnown/Variantc9375124713c039d869e2f5da480026aaccfdad2e17b63da70e47e51e041f434.lean/declarations/coeff-cos-bit0--70312b2b1a2cb6db265a39b8.md) | 118 | `result-track:70312b2b1a2cb6db265a39b801061d8c98c668cdd7f949ae9972979dc3d7413c` |
| 15 | `theorem` | [coeff_cos_bit1](../../../../mathematics/Algebra/WellKnown/Variantc9375124713c039d869e2f5da480026aaccfdad2e17b63da70e47e51e041f434.lean/declarations/coeff-cos-bit1--8506178c86deefd96bc5135a.md) | 125 | `result-track:8506178c86deefd96bc5135a6dbd4acb447dd22d866178af29b08954ffcfb93b` |
| 16 | `theorem` | [map_exp](../../../../mathematics/Algebra/WellKnown/Variantc9375124713c039d869e2f5da480026aaccfdad2e17b63da70e47e51e041f434.lean/declarations/map-exp--4af866ac62bb2059e320f6f4.md) | 130 | `result-track:4af866ac62bb2059e320f6f43600a6503ebee903357c8e82c5dd7b9f38ad01db` |
| 17 | `theorem` | [map_sin](../../../../mathematics/Algebra/WellKnown/Variantc9375124713c039d869e2f5da480026aaccfdad2e17b63da70e47e51e041f434.lean/declarations/map-sin--cea10f14cb03d78dad9673e8.md) | 136 | `result-track:cea10f14cb03d78dad9673e8d9ee998b32a7de459e8efc3b13d8c26112fdd2f5` |
| 18 | `theorem` | [map_cos](../../../../mathematics/Algebra/WellKnown/Variantc9375124713c039d869e2f5da480026aaccfdad2e17b63da70e47e51e041f434.lean/declarations/map-cos--0133a69abe007d4ff53e98f3.md) | 142 | `result-track:0133a69abe007d4ff53e98f3021ecd988e08ef8910485de32aa7a8b1d3e860bf` |
| 19 | `theorem` | [exp_mul_exp_eq_exp_add](../../../../mathematics/Algebra/WellKnown/Variantc9375124713c039d869e2f5da480026aaccfdad2e17b63da70e47e51e041f434.lean/declarations/exp-mul-exp-eq-exp-add--e9f179729dd26322397c0c7e.md) | 156 | `result-track:e9f179729dd26322397c0c7e7ae2bd56c78d1c65a8afb539789ff0fcd4cd2009` |
| 20 | `theorem` | [exp_mul_exp_neg_eq_one](../../../../mathematics/Algebra/WellKnown/Variantc9375124713c039d869e2f5da480026aaccfdad2e17b63da70e47e51e041f434.lean/declarations/exp-mul-exp-neg-eq-one--502512419eae9f2b8edde28a.md) | 184 | `result-track:502512419eae9f2b8edde28a1341b0d751540d99610e8d17a1d70be86cc2ee9d` |
| 21 | `theorem` | [exp_pow_eq_rescale_exp](../../../../mathematics/Algebra/WellKnown/Variantc9375124713c039d869e2f5da480026aaccfdad2e17b63da70e47e51e041f434.lean/declarations/exp-pow-eq-rescale-exp--5e431d0eb2870c692f730222.md) | 189 | `result-track:5e431d0eb2870c692f730222f91c44922ed5a3728f8c22609bcee57ddd06a007` |
| 22 | `theorem` | [exp_pow_sum](../../../../mathematics/Algebra/WellKnown/Variantc9375124713c039d869e2f5da480026aaccfdad2e17b63da70e47e51e041f434.lean/declarations/exp-pow-sum--2d115f64d5b78f126cbc986f.md) | 199 | `result-track:2d115f64d5b78f126cbc986fd2cd429c4f82ca8a4bc9cc1ebeac1ae1d5507c5e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
