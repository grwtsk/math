# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.Checks.Positive.RationalMirrorPair

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9c714a6ee4ffe9c8463d64d97db19c003435f92e",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/Checks/Positive/RationalMirrorPair.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/Positive/RationalMirrorPair.lean/index.md) · [Full source](../../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/Positive/RationalMirrorPair.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9c714a6ee4ffe9c8463d64d97db19c003435f92e`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/Checks/Positive/RationalMirrorPair.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/Checks/Positive/RationalMirrorPair.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripRationalPairCheck`](../../../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripRationalPairCheck.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [actual](../../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/Positive/RationalMirrorPair.lean/declarations/actual--79cf3eade92324b0b6740294.md) | 24 | `declaration-track:79cf3eade92324b0b674029411f0516fa23a252008e853ee50c828761a18b59b` |
| 2 | `lemma` | [actual_check](../../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/Positive/RationalMirrorPair.lean/declarations/actual-check--2a73316565b6ae19ba7198b5.md) | 35 | `result-track:2a73316565b6ae19ba7198b5c9d4b2798d6134e6956e1ab2bfb5ee36102815a5` |
| 3 | `lemma` | [actual_weight](../../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/Positive/RationalMirrorPair.lean/declarations/actual-weight--7cb9b813baa1a897d4a5b195.md) | 40 | `result-track:7cb9b813baa1a897d4a5b195768d5a16c11e25144b7a0b0485cdbf420e3ac131` |
| 4 | `lemma` | [finite_one_reference](../../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/Positive/RationalMirrorPair.lean/declarations/finite-one-reference--e90364e348c30105bbb8e9db.md) | 44 | `result-track:e90364e348c30105bbb8e9dbeeb96642350449d8d597bae5b2de9ff15d5800c0` |
| 5 | `lemma` | [actual_finite_plus](../../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/Positive/RationalMirrorPair.lean/declarations/actual-finite-plus--450e8950f269fea2f699b3db.md) | 50 | `result-track:450e8950f269fea2f699b3db294864f055c688710cc17ef6529ce8cf890b41c7` |
| 6 | `lemma` | [actual_finite_minus](../../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/Positive/RationalMirrorPair.lean/declarations/actual-finite-minus--ec4326429d9168d62d360b82.md) | 54 | `result-track:ec4326429d9168d62d360b82bceb2dd76291b314518e654dcb6f1e487b67cb1c` |
| 7 | `lemma` | [actual_evaluation](../../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/Positive/RationalMirrorPair.lean/declarations/actual-evaluation--97de41903b2fb9b2fb6f517b.md) | 58 | `result-track:97de41903b2fb9b2fb6f517bfc414688e7a2a7acdf7b6473655685416fd0e962` |
| 8 | `lemma` | [actual_tail_plus](../../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/Positive/RationalMirrorPair.lean/declarations/actual-tail-plus--9231818048c2f65fcfef0f91.md) | 65 | `result-track:9231818048c2f65fcfef0f91c5b00f2a9a84dd4ceda85f598aeb76638585595b` |
| 9 | `lemma` | [actual_tail_minus](../../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/Positive/RationalMirrorPair.lean/declarations/actual-tail-minus--384e6178b5c4a26d70ff7481.md) | 75 | `result-track:384e6178b5c4a26d70ff748118ba550c11a1a33fd1cdf328b07f510f9b76fa08` |
| 10 | `lemma` | [actual_source](../../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/Positive/RationalMirrorPair.lean/declarations/actual-source--fa34259d6719d504fb1d9502.md) | 87 | `result-track:fa34259d6719d504fb1d950252388eba6062b83a68786155b8c8f8e3d880da8f` |
| 11 | `theorem` | [actual_pair_excluded](../../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/Positive/RationalMirrorPair.lean/declarations/actual-pair-excluded--3e6832c6512e9996031560dc.md) | 114 | `result-track:3e6832c6512e9996031560dc10370e06332ea7f89ab7df17a518ea7a29fdf974` |
| 12 | `theorem` | [actual_not_target](../../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/Positive/RationalMirrorPair.lean/declarations/actual-not-target--fa42cc8ecb5e556c2cbb16c4.md) | 121 | `result-track:fa42cc8ecb5e556c2cbb16c4f465d7eb72d19707536b2e99c36d52de574acb16` |
| 13 | `example` | [(anonymous)](../../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/Positive/RationalMirrorPair.lean/declarations/example--703f75c1faa6c4474c874244.md) | 130 | `declaration-track:703f75c1faa6c4474c874244f434404baa9d4f7fd7429fa5896500140cc01c11` |
| 14 | `example` | [(anonymous)](../../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/Positive/RationalMirrorPair.lean/declarations/example--50a796c84ffbb8c66a5f1184.md) | 132 | `declaration-track:50a796c84ffbb8c66a5f1184a2227ab316f74f9a7b8c8b6aeca432d2688bbd7b` |
| 15 | `example` | [(anonymous)](../../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/Positive/RationalMirrorPair.lean/declarations/example--2296cc84813898ed0592cc94.md) | 137 | `declaration-track:2296cc84813898ed0592cc94f9a818853ee53c70c17980219d088354b207bb85` |
| 16 | `example` | [(anonymous)](../../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/Positive/RationalMirrorPair.lean/declarations/example--d94e7febcb96d3264d8b34e1.md) | 139 | `declaration-track:d94e7febcb96d3264d8b34e160ef60894027640091b5a8a6ffedfe86518f45d8` |
| 17 | `example` | [(anonymous)](../../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/Positive/RationalMirrorPair.lean/declarations/example--2d673c3b52ea2fa7cd292366.md) | 141 | `declaration-track:2d673c3b52ea2fa7cd29236671f7f5cf04c02cd3581599a92b18d200bc364221` |
| 18 | `example` | [(anonymous)](../../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/Positive/RationalMirrorPair.lean/declarations/example--606a9a61cf22bfba989277f1.md) | 143 | `declaration-track:606a9a61cf22bfba989277f189c880826720bb944e07ced4d7af611470b61f7d` |
| 19 | `def` | [equalityCase](../../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/Positive/RationalMirrorPair.lean/declarations/equalitycase--f5eb6351fcf327a82414e953.md) | 147 | `declaration-track:f5eb6351fcf327a82414e953572526c618c0ea79bd3293b3152f220ceadae36a` |
| 20 | `example` | [(anonymous)](../../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/Positive/RationalMirrorPair.lean/declarations/example--83336012af6d4c3977ab1654.md) | 148 | `declaration-track:83336012af6d4c3977ab1654f2a336ee608df7334025dd68f9c05824a90f1677` |
| 21 | `def` | [forged](../../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/Positive/RationalMirrorPair.lean/declarations/forged--6260e4e7d3e824c7473c9269.md) | 153 | `declaration-track:6260e4e7d3e824c7473c9269d98f53dc1326b0003cc8697e49044224cd07358b` |
| 22 | `example` | [(anonymous)](../../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/Positive/RationalMirrorPair.lean/declarations/example--1bc5d50a8a95a233503eb043.md) | 154 | `declaration-track:1bc5d50a8a95a233503eb043c2c2a4d263a73dbc076cfcd080764e73ae134175` |
| 23 | `example` | [(anonymous)](../../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/Positive/RationalMirrorPair.lean/declarations/example--98a67cb7739cd29378178203.md) | 157 | `declaration-track:98a67cb7739cd293781782039bee2765b820d6a5a155eecfb5c66c814d9537c1` |
| 24 | `example` | [(anonymous)](../../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/Positive/RationalMirrorPair.lean/declarations/example--32c51a609cf1777a99c916f6.md) | 162 | `declaration-track:32c51a609cf1777a99c916f6678ffff17b16968f930c3acb14a23f4877e7a079` |
| 25 | `example` | [(anonymous)](../../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/Positive/RationalMirrorPair.lean/declarations/example--e3366fea10598ccee7246a30.md) | 166 | `declaration-track:e3366fea10598ccee7246a3072d0f26eb48668a88a438ada355950556930861a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
