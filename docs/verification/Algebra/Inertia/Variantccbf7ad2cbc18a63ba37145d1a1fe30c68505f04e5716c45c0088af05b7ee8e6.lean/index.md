# Verification target: GRWTSK.Algebra.Inertia.Variantccbf7ad2cbc18a63ba37145d1a1fe30c68505f04e5716c45c0088af05b7ee8e6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "61c37afa0943230d0afed6cebe5df55c361f910b",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Inertia/Variantccbf7ad2cbc18a63ba37145d1a1fe30c68505f04e5716c45c0088af05b7ee8e6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Inertia/Variantccbf7ad2cbc18a63ba37145d1a1fe30c68505f04e5716c45c0088af05b7ee8e6.lean/index.md) · [Full source](../../../../mathematics/Algebra/Inertia/Variantccbf7ad2cbc18a63ba37145d1a1fe30c68505f04e5716c45c0088af05b7ee8e6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `61c37afa0943230d0afed6cebe5df55c361f910b`.

Source path: `GRWTSK/Algebra/Inertia/Variantccbf7ad2cbc18a63ba37145d1a1fe30c68505f04e5716c45c0088af05b7ee8e6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Inertia/Variantccbf7ad2cbc18a63ba37145d1a1fe30c68505f04e5716c45c0088af05b7ee8e6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [inertiaDeg](../../../../mathematics/Algebra/Inertia/Variantccbf7ad2cbc18a63ba37145d1a1fe30c68505f04e5716c45c0088af05b7ee8e6.lean/declarations/inertiadeg--1cb9940bb6b73669a8211bee.md) | 44 | `declaration-track:1cb9940bb6b73669a8211beef8606a44afb0b0a64fdfb2949c62926a100dac51` |
| 2 | `theorem` | [inertiaDeg_def](../../../../mathematics/Algebra/Inertia/Variantccbf7ad2cbc18a63ba37145d1a1fe30c68505f04e5716c45c0088af05b7ee8e6.lean/declarations/inertiadeg-def--bd03783089632310937bd157.md) | 49 | `result-track:bd03783089632310937bd15747d5f8968465feaf2b6ae75ff2e00637d7513fa0` |
| 3 | `theorem` | [inertiaDeg_of_not_isPrime](../../../../mathematics/Algebra/Inertia/Variantccbf7ad2cbc18a63ba37145d1a1fe30c68505f04e5716c45c0088af05b7ee8e6.lean/declarations/inertiadeg-of-not-isprime--0b9901a901abf12676725d01.md) | 58 | `result-track:0b9901a901abf12676725d010238502c5dc90e409cc43d4e8d1e3146013e7125` |
| 4 | `theorem` | [inertiaDeg_pos](../../../../mathematics/Algebra/Inertia/Variantccbf7ad2cbc18a63ba37145d1a1fe30c68505f04e5716c45c0088af05b7ee8e6.lean/declarations/inertiadeg-pos--a8d3bcfe221cae0a2c520252.md) | 64 | `result-track:a8d3bcfe221cae0a2c520252d33dde40fe0ba826480efbb2a31e5fa07d5c5f5a` |
| 5 | `theorem` | [inertiaDeg_eq](../../../../mathematics/Algebra/Inertia/Variantccbf7ad2cbc18a63ba37145d1a1fe30c68505f04e5716c45c0088af05b7ee8e6.lean/declarations/inertiadeg-eq--b3908f690efd526ccb0575a5.md) | 77 | `result-track:b3908f690efd526ccb0575a504f2dae1dcdad944f36c0bec30dfa0bd21ad9db0` |
| 6 | `theorem` | [inertiaDeg_eq_of_isFractionRing](../../../../mathematics/Algebra/Inertia/Variantccbf7ad2cbc18a63ba37145d1a1fe30c68505f04e5716c45c0088af05b7ee8e6.lean/declarations/inertiadeg-eq-of-isfractionring--aa3fb24d3dbf007e4a2859d4.md) | 87 | `result-track:aa3fb24d3dbf007e4a2859d47183105af2736ce2a56551a02457ee4aa88cb5ba` |
| 7 | `theorem` | [inertiaDeg_eq_of_isMaximal](../../../../mathematics/Algebra/Inertia/Variantccbf7ad2cbc18a63ba37145d1a1fe30c68505f04e5716c45c0088af05b7ee8e6.lean/declarations/inertiadeg-eq-of-ismaximal--2eba3950ca77f9501064beb9.md) | 111 | `result-track:2eba3950ca77f9501064beb9c57deeec93868613ca9254d63b4a17a3352a9699` |
| 8 | `theorem` | [inertiaDeg_tower](../../../../mathematics/Algebra/Inertia/Variantccbf7ad2cbc18a63ba37145d1a1fe30c68505f04e5716c45c0088af05b7ee8e6.lean/declarations/inertiadeg-tower--d7528b72dcf1db36caf8c4ec.md) | 120 | `result-track:d7528b72dcf1db36caf8c4ece774785ac422c6ab3adbbf57501425ebd304db5e` |
| 9 | `theorem` | [inertiaDeg_below_dvd](../../../../mathematics/Algebra/Inertia/Variantccbf7ad2cbc18a63ba37145d1a1fe30c68505f04e5716c45c0088af05b7ee8e6.lean/declarations/inertiadeg-below-dvd--bd606e76a553e55a7820402e.md) | 134 | `result-track:bd606e76a553e55a7820402e5558aa156b284bafe0349be9be19c83c9f515729` |
| 10 | `theorem` | [inertiaDeg_above_dvd](../../../../mathematics/Algebra/Inertia/Variantccbf7ad2cbc18a63ba37145d1a1fe30c68505f04e5716c45c0088af05b7ee8e6.lean/declarations/inertiadeg-above-dvd--2cdc73bedcb12a49b28e064f.md) | 141 | `result-track:2cdc73bedcb12a49b28e064f44523756561faf62a4e646fd0b3bce143d992e9b` |
| 11 | `theorem` | [inertiaDeg_below_le](../../../../mathematics/Algebra/Inertia/Variantccbf7ad2cbc18a63ba37145d1a1fe30c68505f04e5716c45c0088af05b7ee8e6.lean/declarations/inertiadeg-below-le--bbc7ffc6d3d44c4a9ed7c837.md) | 148 | `result-track:bbc7ffc6d3d44c4a9ed7c8370a1d23f1c881b818154b49c1ee6be5e69dab3886` |
| 12 | `theorem` | [inertiaDeg_above_le](../../../../mathematics/Algebra/Inertia/Variantccbf7ad2cbc18a63ba37145d1a1fe30c68505f04e5716c45c0088af05b7ee8e6.lean/declarations/inertiadeg-above-le--1b9c8b65fe545684c7b07ea7.md) | 154 | `result-track:1b9c8b65fe545684c7b07ea7127f8dc8d063317af6f86c4091f96b781a4b3e50` |
| 13 | `theorem` | [inertiaDeg_smul](../../../../mathematics/Algebra/Inertia/Variantccbf7ad2cbc18a63ba37145d1a1fe30c68505f04e5716c45c0088af05b7ee8e6.lean/declarations/inertiadeg-smul--7262f6f11ebe06c6acb98bbc.md) | 163 | `result-track:7262f6f11ebe06c6acb98bbc481a29738755569f6d978047876f6ad097c5c951` |
| 14 | `theorem` | [cardQuot_pow_inertiaDeg](../../../../mathematics/Algebra/Inertia/Variantccbf7ad2cbc18a63ba37145d1a1fe30c68505f04e5716c45c0088af05b7ee8e6.lean/declarations/cardquot-pow-inertiadeg--61352af6ea0cd0ce7b66541f.md) | 177 | `result-track:61352af6ea0cd0ce7b66541f4fee2f5eedc875c6619fe1196422792093ee1a98` |
| 15 | `theorem` | [absNorm_pow_inertiaDeg](../../../../mathematics/Algebra/Inertia/Variantccbf7ad2cbc18a63ba37145d1a1fe30c68505f04e5716c45c0088af05b7ee8e6.lean/declarations/absnorm-pow-inertiadeg--c27200d2e684ce137662057c.md) | 185 | `result-track:c27200d2e684ce137662057c312d4072a08bfbefe6f2e52455a23c2efe78bd7f` |
| 16 | `theorem` | [natAbs_pow_inertiaDeg](../../../../mathematics/Algebra/Inertia/Variantccbf7ad2cbc18a63ba37145d1a1fe30c68505f04e5716c45c0088af05b7ee8e6.lean/declarations/natabs-pow-inertiadeg--bc7140d4e1a67d357cb058a1.md) | 198 | `result-track:bc7140d4e1a67d357cb058a1e24d08608a55d8d6a7681a4821fedcec6c27cec2` |
| 17 | `theorem` | [pow_inertiaDeg](../../../../mathematics/Algebra/Inertia/Variantccbf7ad2cbc18a63ba37145d1a1fe30c68505f04e5716c45c0088af05b7ee8e6.lean/declarations/pow-inertiadeg--2bbcb2a8549214bb83102b1c.md) | 205 | `result-track:2bbcb2a8549214bb83102b1cdf67a1c9af87ee1e48653ad25560e1709a848a5e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
