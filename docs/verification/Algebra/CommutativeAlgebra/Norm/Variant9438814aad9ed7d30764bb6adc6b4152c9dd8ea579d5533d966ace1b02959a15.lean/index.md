# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Norm.Variant9438814aad9ed7d30764bb6adc6b4152c9dd8ea579d5533d966ace1b02959a15

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5d18ea0a55e939e474a64148de3c451734b32199",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Norm/Variant9438814aad9ed7d30764bb6adc6b4152c9dd8ea579d5533d966ace1b02959a15.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/Norm/Variant9438814aad9ed7d30764bb6adc6b4152c9dd8ea579d5533d966ace1b02959a15.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/Norm/Variant9438814aad9ed7d30764bb6adc6b4152c9dd8ea579d5533d966ace1b02959a15.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5d18ea0a55e939e474a64148de3c451734b32199`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Norm/Variant9438814aad9ed7d30764bb6adc6b4152c9dd8ea579d5533d966ace1b02959a15.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Norm/Variant9438814aad9ed7d30764bb6adc6b4152c9dd8ea579d5533d966ace1b02959a15.lean.json)

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
| 1 | `def` | [supNorm](../../../../../mathematics/Algebra/CommutativeAlgebra/Norm/Variant9438814aad9ed7d30764bb6adc6b4152c9dd8ea579d5533d966ace1b02959a15.lean/declarations/supnorm--518b27b142d512045ff1bc91.md) | 61 | `declaration-track:518b27b142d512045ff1bc91124b8553887d0f9fe17384619c958d58fe763231` |
| 2 | `lemma` | [supNorm_def'](../../../../../mathematics/Algebra/CommutativeAlgebra/Norm/Variant9438814aad9ed7d30764bb6adc6b4152c9dd8ea579d5533d966ace1b02959a15.lean/declarations/supnorm-def--4d8ab193b51a45e8f8b69fc0.md) | 64 | `result-track:4d8ab193b51a45e8f8b69fc0f263c7aaafd2f31029c204d24f68fd3a4ceffeb1` |
| 3 | `lemma` | [supNorm_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Norm/Variant9438814aad9ed7d30764bb6adc6b4152c9dd8ea579d5533d966ace1b02959a15.lean/declarations/supnorm-zero--cb5cf0a52b58b9d47bec3bb6.md) | 72 | `result-track:cb5cf0a52b58b9d47bec3bb61da04d474d3985f82fd54128ce617c86a42c86c2` |
| 4 | `lemma` | [supNorm_nonneg](../../../../../mathematics/Algebra/CommutativeAlgebra/Norm/Variant9438814aad9ed7d30764bb6adc6b4152c9dd8ea579d5533d966ace1b02959a15.lean/declarations/supnorm-nonneg--7bb5ce2c80358b52a6a3dd78.md) | 74 | `result-track:7bb5ce2c80358b52a6a3dd7823ea95fae0815fcb525dcb2ad736146e8518860f` |
| 5 | `lemma` | [supNorm_C](../../../../../mathematics/Algebra/CommutativeAlgebra/Norm/Variant9438814aad9ed7d30764bb6adc6b4152c9dd8ea579d5533d966ace1b02959a15.lean/declarations/supnorm-c--5a5b3bdd6094be64cfa43da3.md) | 79 | `result-track:5a5b3bdd6094be64cfa43da303ffe8b54de07713d91cd22df2869dd7c4aaca09` |
| 6 | `lemma` | [supNorm_monomial](../../../../../mathematics/Algebra/CommutativeAlgebra/Norm/Variant9438814aad9ed7d30764bb6adc6b4152c9dd8ea579d5533d966ace1b02959a15.lean/declarations/supnorm-monomial--58a62a0302e9e003f263a8cb.md) | 82 | `result-track:58a62a0302e9e003f263a8cb37a9dc6c0b46e4cacb7ff02fb91aa3a4128c37be` |
| 7 | `lemma` | [supNorm_X](../../../../../mathematics/Algebra/CommutativeAlgebra/Norm/Variant9438814aad9ed7d30764bb6adc6b4152c9dd8ea579d5533d966ace1b02959a15.lean/declarations/supnorm-x--7c65a77548c0bf0e84052828.md) | 88 | `result-track:7c65a77548c0bf0e84052828679342762e6f57cfa698a3258752ff92255403c2` |
| 8 | `lemma` | [le_supNorm](../../../../../mathematics/Algebra/CommutativeAlgebra/Norm/Variant9438814aad9ed7d30764bb6adc6b4152c9dd8ea579d5533d966ace1b02959a15.lean/declarations/le-supnorm--c5cfdce706585da3776fed98.md) | 91 | `result-track:c5cfdce706585da3776fed9841839580ea2c6a6de46f510ee07873ae09249592` |
| 9 | `lemma` | [exists_eq_supNorm](../../../../../mathematics/Algebra/CommutativeAlgebra/Norm/Variant9438814aad9ed7d30764bb6adc6b4152c9dd8ea579d5533d966ace1b02959a15.lean/declarations/exists-eq-supnorm--2efef6464ad0c1bda5404552.md) | 94 | `result-track:2efef6464ad0c1bda54045526601a1f01f0a165e2ea79b3278a6fac1ff4827af` |
| 10 | `lemma` | [isGreatest_supNorm](../../../../../mathematics/Algebra/CommutativeAlgebra/Norm/Variant9438814aad9ed7d30764bb6adc6b4152c9dd8ea579d5533d966ace1b02959a15.lean/declarations/isgreatest-supnorm--6a8dba4b5b58aec657dce0a1.md) | 97 | `result-track:6a8dba4b5b58aec657dce0a157d9b741fcc4625e1edcfbd45fd02090abe05eb3` |
| 11 | `lemma` | [supNorm_eq_iSup](../../../../../mathematics/Algebra/CommutativeAlgebra/Norm/Variant9438814aad9ed7d30764bb6adc6b4152c9dd8ea579d5533d966ace1b02959a15.lean/declarations/supnorm-eq-isup--b10e9f4267a9a08191d36612.md) | 102 | `result-track:b10e9f4267a9a08191d36612d898752a2aaeb3af4286a20e8ed079d7eb53c739` |
| 12 | `lemma` | [supNorm_eq_zero_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/Norm/Variant9438814aad9ed7d30764bb6adc6b4152c9dd8ea579d5533d966ace1b02959a15.lean/declarations/supnorm-eq-zero-iff--08fc36044f175ee8f2367908.md) | 113 | `result-track:08fc36044f175ee8f236790834cb49083ee39079054f91e07e0ebe6b8823d1a9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
