# Verification target: GRWTSK.Algebra.Regular.Variant87439b6907ffe286d24f0e92e05e91f299c25a875cd76daec825b1834d285037

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c35cc66b9ec90fed51409004cbd42a3184fd5f29",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Regular/Variant87439b6907ffe286d24f0e92e05e91f299c25a875cd76daec825b1834d285037.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Regular/Variant87439b6907ffe286d24f0e92e05e91f299c25a875cd76daec825b1834d285037.lean/index.md) · [Full source](../../../../mathematics/Algebra/Regular/Variant87439b6907ffe286d24f0e92e05e91f299c25a875cd76daec825b1834d285037.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c35cc66b9ec90fed51409004cbd42a3184fd5f29`.

Source path: `GRWTSK/Algebra/Regular/Variant87439b6907ffe286d24f0e92e05e91f299c25a875cd76daec825b1834d285037.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Regular/Variant87439b6907ffe286d24f0e92e05e91f299c25a875cd76daec825b1834d285037.lean.json)

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
| 1 | `theorem` | [isLeftRegular_of_non_zero_divisor](../../../../mathematics/Algebra/Regular/Variant87439b6907ffe286d24f0e92e05e91f299c25a875cd76daec825b1834d285037.lean/declarations/isleftregular-of-non-zero-divisor--4e7ff0c7fbf6f0c5c7a8f76c.md) | 23 | `result-track:4e7ff0c7fbf6f0c5c7a8f76cd35beeb2781fea243e4b032c660b1ddbd2a27ad8` |
| 2 | `theorem` | [isRightRegular_of_non_zero_divisor](../../../../mathematics/Algebra/Regular/Variant87439b6907ffe286d24f0e92e05e91f299c25a875cd76daec825b1834d285037.lean/declarations/isrightregular-of-non-zero-divisor--4a6d9a7f901f9279aab904e0.md) | 30 | `result-track:4a6d9a7f901f9279aab904e0753cd62e2c770abd0f82c2ac815f58488c93b783` |
| 3 | `theorem` | [IsRegular.of_ne_zero'](../../../../mathematics/Algebra/Regular/Variant87439b6907ffe286d24f0e92e05e91f299c25a875cd76daec825b1834d285037.lean/declarations/isregular-of-ne-zero--7715df19d39aab930fc6a9da.md) | 35 | `result-track:7715df19d39aab930fc6a9da7538e5a67899131e3aabb0e800ea439761f2742b` |
| 4 | `theorem` | [isRegular_iff_ne_zero'](../../../../mathematics/Algebra/Regular/Variant87439b6907ffe286d24f0e92e05e91f299c25a875cd76daec825b1834d285037.lean/declarations/isregular-iff-ne-zero--afa70e513ab338352731410c.md) | 42 | `result-track:afa70e513ab338352731410c67d4f620d7307edc54e2cea50d3b59f9eee7080c` |
| 5 | `lemma` | [NoZeroDivisors.toIsCancelMulZero](../../../../mathematics/Algebra/Regular/Variant87439b6907ffe286d24f0e92e05e91f299c25a875cd76daec825b1834d285037.lean/declarations/nozerodivisors-toiscancelmulzero--92a0d58a4d40622bbf078afb.md) | 51 | `result-track:92a0d58a4d40622bbf078afb1ea1462239b0538450f219880d1f02e231505428` |
| 6 | `theorem` | [iff_eq_of_mul_left_eq_one](../../../../mathematics/Algebra/Regular/Variant87439b6907ffe286d24f0e92e05e91f299c25a875cd76daec825b1834d285037.lean/declarations/iff-eq-of-mul-left-eq-one--71483387e05475c31159d711.md) | 61 | `result-track:71483387e05475c31159d71110e91c91347cf176adc1d3e4ae15c592a167418d` |
| 7 | `theorem` | [iff_eq_of_mul_right_eq_one](../../../../mathematics/Algebra/Regular/Variant87439b6907ffe286d24f0e92e05e91f299c25a875cd76daec825b1834d285037.lean/declarations/iff-eq-of-mul-right-eq-one--0aa42b3fd1fa270a83353687.md) | 70 | `result-track:0aa42b3fd1fa270a83353687e2a7fe2be036153554ba99bdef7dbbf64cda4550` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
