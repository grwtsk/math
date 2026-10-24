# Verification target: GRWTSK.Algebra.GroupTheory.Finite.Variant815c2c8d0862675a88d1b2bf65f8896ff0d2bfd6657b881a6cc3409607189c59

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6eda7982aaaba49dddae7f89573823741de89474",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Finite/Variant815c2c8d0862675a88d1b2bf65f8896ff0d2bfd6657b881a6cc3409607189c59.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Finite/Variant815c2c8d0862675a88d1b2bf65f8896ff0d2bfd6657b881a6cc3409607189c59.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Finite/Variant815c2c8d0862675a88d1b2bf65f8896ff0d2bfd6657b881a6cc3409607189c59.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6eda7982aaaba49dddae7f89573823741de89474`.

Source path: `GRWTSK/Algebra/GroupTheory/Finite/Variant815c2c8d0862675a88d1b2bf65f8896ff0d2bfd6657b881a6cc3409607189c59.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Finite/Variant815c2c8d0862675a88d1b2bf65f8896ff0d2bfd6657b881a6cc3409607189c59.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [finite_one](../../../../../mathematics/Algebra/GroupTheory/Finite/Variant815c2c8d0862675a88d1b2bf65f8896ff0d2bfd6657b881a6cc3409607189c59.lean/declarations/finite-one--6b625dab4ba15c8ca367488e.md) | 29 | `result-track:6b625dab4ba15c8ca367488e5fa8a2033aaef62aad53c84fef823417f494b890` |
| 2 | `theorem` | [Finite.mul](../../../../../mathematics/Algebra/GroupTheory/Finite/Variant815c2c8d0862675a88d1b2bf65f8896ff0d2bfd6657b881a6cc3409607189c59.lean/declarations/finite-mul--8c0e5e11e5eb618d4bb9abe8.md) | 39 | `result-track:8c0e5e11e5eb618d4bb9abe8d37302934f64e28ba9e0e764c22c8778212e5a8a` |
| 3 | `instance` | [fintypeMul](../../../../../mathematics/Algebra/GroupTheory/Finite/Variant815c2c8d0862675a88d1b2bf65f8896ff0d2bfd6657b881a6cc3409607189c59.lean/declarations/fintypemul--68bef35d0549a16298d3df48.md) | 44 | `declaration-track:68bef35d0549a16298d3df48985cb5f2b8e0fed23f9ddc4e214a538e191ce56e` |
| 4 | `instance` | [decidableMemMul](../../../../../mathematics/Algebra/GroupTheory/Finite/Variant815c2c8d0862675a88d1b2bf65f8896ff0d2bfd6657b881a6cc3409607189c59.lean/declarations/decidablememmul--bf5de8b362e98b8c429e1088.md) | 54 | `declaration-track:bf5de8b362e98b8c429e10888b4073e4979a32bdc38706cd2d520d888e315924` |
| 5 | `instance` | [decidableMemPow](../../../../../mathematics/Algebra/GroupTheory/Finite/Variant815c2c8d0862675a88d1b2bf65f8896ff0d2bfd6657b881a6cc3409607189c59.lean/declarations/decidablemempow--c3318b119c715d7756619f98.md) | 58 | `declaration-track:c3318b119c715d7756619f983363cf4843535eef9119cd0c3c3df4048d83e981` |
| 6 | `theorem` | [Finite.smul](../../../../../mathematics/Algebra/GroupTheory/Finite/Variant815c2c8d0862675a88d1b2bf65f8896ff0d2bfd6657b881a6cc3409607189c59.lean/declarations/finite-smul--3857e2535c23ad6bfed93fe4.md) | 75 | `result-track:3857e2535c23ad6bfed93fe4a39a3a721550f284aa51a63330a4f81b03e58816` |
| 7 | `theorem` | [Finite.smul_set](../../../../../mathematics/Algebra/GroupTheory/Finite/Variant815c2c8d0862675a88d1b2bf65f8896ff0d2bfd6657b881a6cc3409607189c59.lean/declarations/finite-smul-set--9af6a82ad4eb3e8982efebd8.md) | 85 | `result-track:9af6a82ad4eb3e8982efebd83cd5b6c84eda64052469c0dbf22bc9219fb04f3c` |
| 8 | `theorem` | [Infinite.of_smul_set](../../../../../mathematics/Algebra/GroupTheory/Finite/Variant815c2c8d0862675a88d1b2bf65f8896ff0d2bfd6657b881a6cc3409607189c59.lean/declarations/infinite-of-smul-set--8bb73054bf2b2d3d682ec37f.md) | 89 | `result-track:8bb73054bf2b2d3d682ec37f9e91097c1d74706e41d9590d9c446b6cadd7177e` |
| 9 | `theorem` | [Finite.sdiv](../../../../../mathematics/Algebra/GroupTheory/Finite/Variant815c2c8d0862675a88d1b2bf65f8896ff0d2bfd6657b881a6cc3409607189c59.lean/declarations/finite-sdiv--dac5e66ed3b6c9f2c581c4ce.md) | 99 | `result-track:dac5e66ed3b6c9f2c581c4ceea71f0b5e121b3cb25605d697cc99df356cf7218` |
| 10 | `lemma` | [finite_mul](../../../../../mathematics/Algebra/GroupTheory/Finite/Variant815c2c8d0862675a88d1b2bf65f8896ff0d2bfd6657b881a6cc3409607189c59.lean/declarations/finite-mul--0aea2ca7a6665969d124ab56.md) | 109 | `result-track:0aea2ca7a6665969d124ab562b776f6b08127ddca177d53873a514d32fb772dd` |
| 11 | `lemma` | [infinite_mul](../../../../../mathematics/Algebra/GroupTheory/Finite/Variant815c2c8d0862675a88d1b2bf65f8896ff0d2bfd6657b881a6cc3409607189c59.lean/declarations/infinite-mul--00176cd8e6373c1823bdfb40.md) | 113 | `result-track:00176cd8e6373c1823bdfb40ae6258955257cbf515bc557a08e2eed86825faea` |
| 12 | `lemma` | [finite_inv](../../../../../mathematics/Algebra/GroupTheory/Finite/Variant815c2c8d0862675a88d1b2bf65f8896ff0d2bfd6657b881a6cc3409607189c59.lean/declarations/finite-inv--9893b1ea08da26cd4fe6166b.md) | 121 | `result-track:9893b1ea08da26cd4fe6166badb00fa43f0dea59759c87be63d2d07c064ba9a5` |
| 13 | `lemma` | [infinite_inv](../../../../../mathematics/Algebra/GroupTheory/Finite/Variant815c2c8d0862675a88d1b2bf65f8896ff0d2bfd6657b881a6cc3409607189c59.lean/declarations/infinite-inv--3ecd5231517a487a154ae770.md) | 124 | `result-track:3ecd5231517a487a154ae770645a9bd8ee1ae037869251deb85236ec4956cd82` |
| 14 | `lemma` | [Finite.div](../../../../../mathematics/Algebra/GroupTheory/Finite/Variant815c2c8d0862675a88d1b2bf65f8896ff0d2bfd6657b881a6cc3409607189c59.lean/declarations/finite-div--512c10240d78044f39bd3665.md) | 133 | `result-track:512c10240d78044f39bd3665c7eaad2326a4040adf41611dbf636c44d2753eef` |
| 15 | `instance` | [fintypeDiv](../../../../../mathematics/Algebra/GroupTheory/Finite/Variant815c2c8d0862675a88d1b2bf65f8896ff0d2bfd6657b881a6cc3409607189c59.lean/declarations/fintypediv--2cabee417351019f87b546b5.md) | 137 | `declaration-track:2cabee417351019f87b546b5fe546e9baaba04956e35dc130af3a56e965ccbe0` |
| 16 | `lemma` | [finite_div](../../../../../mathematics/Algebra/GroupTheory/Finite/Variant815c2c8d0862675a88d1b2bf65f8896ff0d2bfd6657b881a6cc3409607189c59.lean/declarations/finite-div--fdbfcbd584afb089c54ef81c.md) | 147 | `result-track:fdbfcbd584afb089c54ef81cde472ab804048eb9253481ad4e4f28381bd7f8fc` |
| 17 | `lemma` | [infinite_div](../../../../../mathematics/Algebra/GroupTheory/Finite/Variant815c2c8d0862675a88d1b2bf65f8896ff0d2bfd6657b881a6cc3409607189c59.lean/declarations/infinite-div--19845bd412ea613cd73c1e86.md) | 151 | `result-track:19845bd412ea613cd73c1e864856644c8d84f7bfa119ec2b65a9e8522519eb5b` |
| 18 | `theorem` | [card_pow_eq_card_pow_card_univ](../../../../../mathematics/Algebra/GroupTheory/Finite/Variant815c2c8d0862675a88d1b2bf65f8896ff0d2bfd6657b881a6cc3409607189c59.lean/declarations/card-pow-eq-card-pow-card-univ--683839a02f752985f790daf6.md) | 165 | `result-track:683839a02f752985f790daf67339314fd4358f3396972c5fab5df885a43c2a18` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
