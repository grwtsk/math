# Verification target: GRWTSK.NumberTheory.Chebyshev.EndpointConventions

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b4a2347d74e4566c9a699e6037054b72f6027d30",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Chebyshev/EndpointConventions.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Chebyshev/EndpointConventions.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Chebyshev/EndpointConventions.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b4a2347d74e4566c9a699e6037054b72f6027d30`.

Source path: `GRWTSK/NumberTheory/Chebyshev/EndpointConventions.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Chebyshev/EndpointConventions.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.Chebyshev` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [psiStrict](../../../../mathematics/NumberTheory/Chebyshev/EndpointConventions.lean/declarations/psistrict--3a477dc98803f9ae0d76fab7.md) | 19 | `declaration-track:3a477dc98803f9ae0d76fab71cc02b821e52257878d38a996673b54d07fc5740` |
| 2 | `def` | [psiHalf](../../../../mathematics/NumberTheory/Chebyshev/EndpointConventions.lean/declarations/psihalf--1a4665356d5315a24cdcab62.md) | 23 | `declaration-track:1a4665356d5315a24cdcab62334618a4ef288a113969070b0024af8105711757` |
| 3 | `theorem` | [psiStrict_nat](../../../../mathematics/NumberTheory/Chebyshev/EndpointConventions.lean/declarations/psistrict-nat--41e0dd6434968f18d358b5e0.md) | 26 | `result-track:41e0dd6434968f18d358b5e099a41412b228179ac34f17a58316f58801d22bcc` |
| 4 | `theorem` | [psi_nat_eq_strict_add_jump](../../../../mathematics/NumberTheory/Chebyshev/EndpointConventions.lean/declarations/psi-nat-eq-strict-add-jump--ea37aef77a5c7742b8ffe2ba.md) | 44 | `result-track:ea37aef77a5c7742b8ffe2bac5989f2182a205f3d9a1a751b8b84e08a696da07` |
| 5 | `theorem` | [psiHalf_nat](../../../../mathematics/NumberTheory/Chebyshev/EndpointConventions.lean/declarations/psihalf-nat--59cbae0a7785c648001f4d6e.md) | 50 | `result-track:59cbae0a7785c648001f4d6ee6a6b180e1858df937955d865d7abafffb9b391a` |
| 6 | `theorem` | [psiStrict_eq_psi_of_not_integer](../../../../mathematics/NumberTheory/Chebyshev/EndpointConventions.lean/declarations/psistrict-eq-psi-of-not-integer--18bb2e4afe134e284bfcac2c.md) | 56 | `result-track:18bb2e4afe134e284bfcac2c7cbc9df449d9ea804fbec41a5db2b454a1d47a4b` |
| 7 | `theorem` | [psiHalf_eq_psi_of_not_integer](../../../../mathematics/NumberTheory/Chebyshev/EndpointConventions.lean/declarations/psihalf-eq-psi-of-not-integer--183e58645f9874b90732ab85.md) | 67 | `result-track:183e58645f9874b90732ab8531dffd815949a0bb3dab6372dcf1ebaabb69d7ca` |
| 8 | `theorem` | [psiStrict_eq_inclusive_sub_jump](../../../../mathematics/NumberTheory/Chebyshev/EndpointConventions.lean/declarations/psistrict-eq-inclusive-sub-jump--fe3a1800f42753e92eb66a41.md) | 73 | `result-track:fe3a1800f42753e92eb66a4110413694644785ad644bb0ceb88bbd2658dfb5b8` |
| 9 | `theorem` | [psiHalf_eq_inclusive_sub_half_jump](../../../../mathematics/NumberTheory/Chebyshev/EndpointConventions.lean/declarations/psihalf-eq-inclusive-sub-half-jump--e197d53f42b1c4ad43c21af1.md) | 87 | `result-track:e197d53f42b1c4ad43c21af1d0248556553434f6d8fd6939deec274cab5f1f2b` |
| 10 | `theorem` | [prime_power_jump](../../../../mathematics/NumberTheory/Chebyshev/EndpointConventions.lean/declarations/prime-power-jump--1badd6952cd882fe106d04da.md) | 93 | `result-track:1badd6952cd882fe106d04da21fc4b25031aebf79e8a6923917155acf1806ac4` |
| 11 | `theorem` | [no_jump_of_not_prime_power](../../../../mathematics/NumberTheory/Chebyshev/EndpointConventions.lean/declarations/no-jump-of-not-prime-power--d0c31371e3902f546bf837a7.md) | 100 | `result-track:d0c31371e3902f546bf837a703ce70c81b942831028a96c3aa28e2d45d2a93fc` |
| 12 | `theorem` | [prime_power_half_jump](../../../../mathematics/NumberTheory/Chebyshev/EndpointConventions.lean/declarations/prime-power-half-jump--5c108480d1d802407b36a267.md) | 105 | `result-track:5c108480d1d802407b36a267160e1edc0603549c6f161fdf606f8dcdca8c9b34` |
| 13 | `theorem` | [psiHalf_four_ne_inclusive](../../../../mathematics/NumberTheory/Chebyshev/EndpointConventions.lean/declarations/psihalf-four-ne-inclusive--94f668da7af4ac24462ebc11.md) | 113 | `result-track:94f668da7af4ac24462ebc1139428bd52ed1702baeded1f34cc88757294bfabb` |
| 14 | `theorem` | [psiStrict_two](../../../../mathematics/NumberTheory/Chebyshev/EndpointConventions.lean/declarations/psistrict-two--72708e3657d951858f822d71.md) | 121 | `result-track:72708e3657d951858f822d71ae4d77d4639454fd1f46146aa37db9ec8edb7a7a` |
| 15 | `theorem` | [psiHalf_two](../../../../mathematics/NumberTheory/Chebyshev/EndpointConventions.lean/declarations/psihalf-two--3cb51c2b62087e9e5fd8357c.md) | 125 | `result-track:3cb51c2b62087e9e5fd8357c4dbc7da6005e477a8401e5872c7861c8e25606e5` |
| 16 | `theorem` | [psiHalf_nat_eq_prime_power_sum](../../../../mathematics/NumberTheory/Chebyshev/EndpointConventions.lean/declarations/psihalf-nat-eq-prime-power-sum--fc0015d0d2a59789aa9e6f51.md) | 136 | `result-track:fc0015d0d2a59789aa9e6f518edfc15f4bd1a0a6ceaefd6799948669bad07d2c` |
| 17 | `theorem` | [psiStrict_mono](../../../../mathematics/NumberTheory/Chebyshev/EndpointConventions.lean/declarations/psistrict-mono--7530b947fd376cf9a0025976.md) | 142 | `result-track:7530b947fd376cf9a0025976e9afc1bfe751fd6e9911646a47f3c89c65eb4f6b` |
| 18 | `theorem` | [psiHalf_mono](../../../../mathematics/NumberTheory/Chebyshev/EndpointConventions.lean/declarations/psihalf-mono--52948165bcfd7a5160636a2e.md) | 154 | `result-track:52948165bcfd7a5160636a2ef9c06812cef818e8dfbb91c439e58af7eea0d6ab` |
| 19 | `theorem` | [strict_le_half_le_inclusive](../../../../mathematics/NumberTheory/Chebyshev/EndpointConventions.lean/declarations/strict-le-half-le-inclusive--9002b29cc92ffbf529f193ea.md) | 161 | `result-track:9002b29cc92ffbf529f193eabd6a5170e52dea309009143e7bf40e28937b7948` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
