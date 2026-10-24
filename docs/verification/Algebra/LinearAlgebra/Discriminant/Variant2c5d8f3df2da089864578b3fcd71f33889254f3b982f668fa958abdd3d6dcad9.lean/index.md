# Verification target: GRWTSK.Algebra.LinearAlgebra.Discriminant.Variant2c5d8f3df2da089864578b3fcd71f33889254f3b982f668fa958abdd3d6dcad9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1bdbed5d24f837fe2867b790c4b5ff7903c39297",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Discriminant/Variant2c5d8f3df2da089864578b3fcd71f33889254f3b982f668fa958abdd3d6dcad9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Discriminant/Variant2c5d8f3df2da089864578b3fcd71f33889254f3b982f668fa958abdd3d6dcad9.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Discriminant/Variant2c5d8f3df2da089864578b3fcd71f33889254f3b982f668fa958abdd3d6dcad9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1bdbed5d24f837fe2867b790c4b5ff7903c39297`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Discriminant/Variant2c5d8f3df2da089864578b3fcd71f33889254f3b982f668fa958abdd3d6dcad9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Discriminant/Variant2c5d8f3df2da089864578b3fcd71f33889254f3b982f668fa958abdd3d6dcad9.lean.json)

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
| 1 | `def` | [discr](../../../../../mathematics/Algebra/LinearAlgebra/Discriminant/Variant2c5d8f3df2da089864578b3fcd71f33889254f3b982f668fa958abdd3d6dcad9.lean/declarations/discr--84ec8ab8e587a96e0a53bcd8.md) | 68 | `declaration-track:84ec8ab8e587a96e0a53bcd846c6384f6373a26f982fbf62dbf14a7dcc6df567` |
| 2 | `theorem` | [discr_def](../../../../../mathematics/Algebra/LinearAlgebra/Discriminant/Variant2c5d8f3df2da089864578b3fcd71f33889254f3b982f668fa958abdd3d6dcad9.lean/declarations/discr-def--f2d615b8e347368de38bb115.md) | 71 | `result-track:f2d615b8e347368de38bb11536b86afff9648bf024da475b56ab8598bdabf33a` |
| 3 | `theorem` | [discr_eq_discr_of_algEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Discriminant/Variant2c5d8f3df2da089864578b3fcd71f33889254f3b982f668fa958abdd3d6dcad9.lean/declarations/discr-eq-discr-of-algequiv--93e9c96644286a3be02bb7e1.md) | 75 | `result-track:93e9c96644286a3be02bb7e16dbb96681ae6e998ebeb8e3cad4de79fc81b63bc` |
| 4 | `theorem` | [discr_reindex](../../../../../mathematics/Algebra/LinearAlgebra/Discriminant/Variant2c5d8f3df2da089864578b3fcd71f33889254f3b982f668fa958abdd3d6dcad9.lean/declarations/discr-reindex--0bca7b1373420820b065a79e.md) | 85 | `result-track:0bca7b1373420820b065a79eba98624c006cc41c338200367e7e47e0aa927f32` |
| 5 | `theorem` | [discr_zero_of_not_linearIndependent](../../../../../mathematics/Algebra/LinearAlgebra/Discriminant/Variant2c5d8f3df2da089864578b3fcd71f33889254f3b982f668fa958abdd3d6dcad9.lean/declarations/discr-zero-of-not-linearindependent--09f10084b3309492d9d29476.md) | 89 | `result-track:09f10084b3309492d9d294769fc75f3d8c44acef83ebe5028145f000f3def64d` |
| 6 | `theorem` | [discr_of_matrix_vecMul](../../../../../mathematics/Algebra/LinearAlgebra/Discriminant/Variant2c5d8f3df2da089864578b3fcd71f33889254f3b982f668fa958abdd3d6dcad9.lean/declarations/discr-of-matrix-vecmul--60072c6d2b6fe2ee0d26f914.md) | 107 | `result-track:60072c6d2b6fe2ee0d26f914e1669bc9fcca6422a70c462b063a8d8ad0cf660c` |
| 7 | `theorem` | [discr_of_matrix_mulVec](../../../../../mathematics/Algebra/LinearAlgebra/Discriminant/Variant2c5d8f3df2da089864578b3fcd71f33889254f3b982f668fa958abdd3d6dcad9.lean/declarations/discr-of-matrix-mulvec--4dfbc0c2d4fe38e60a5ba09d.md) | 114 | `result-track:4dfbc0c2d4fe38e60a5ba09de49d800629e19a517cc45aeb4aa82d5a0d8466d1` |
| 8 | `theorem` | [discr_not_zero_of_basis](../../../../../mathematics/Algebra/LinearAlgebra/Discriminant/Variant2c5d8f3df2da089864578b3fcd71f33889254f3b982f668fa958abdd3d6dcad9.lean/declarations/discr-not-zero-of-basis--52a4c6bafcd6de1cf1d7df19.md) | 128 | `result-track:52a4c6bafcd6de1cf1d7df19143e0939064c9e4f32e8dbb7a07d6f5054dca2b0` |
| 9 | `theorem` | [discr_isUnit_of_basis](../../../../../mathematics/Algebra/LinearAlgebra/Discriminant/Variant2c5d8f3df2da089864578b3fcd71f33889254f3b982f668fa958abdd3d6dcad9.lean/declarations/discr-isunit-of-basis--443fa7319b4ea341270e0f0f.md) | 135 | `result-track:443fa7319b4ea341270e0f0fca13221cb854ef3069a0f19273f5e45972ea5f4a` |
| 10 | `theorem` | [discr_eq_det_embeddingsMatrixReindex_pow_two](../../../../../mathematics/Algebra/LinearAlgebra/Discriminant/Variant2c5d8f3df2da089864578b3fcd71f33889254f3b982f668fa958abdd3d6dcad9.lean/declarations/discr-eq-det-embeddingsmatrixreindex-pow-two--9aa0871cd3538060208f001f.md) | 144 | `result-track:9aa0871cd3538060208f001f2af7dd759a662ddca6fd7d07d6ce184620b0ec4c` |
| 11 | `theorem` | [discr_powerBasis_eq_prod](../../../../../mathematics/Algebra/LinearAlgebra/Discriminant/Variant2c5d8f3df2da089864578b3fcd71f33889254f3b982f668fa958abdd3d6dcad9.lean/declarations/discr-powerbasis-eq-prod--41d4b5492eda2447dc86f470.md) | 151 | `result-track:41d4b5492eda2447dc86f4700a4bf01ea84749f24c2ec87187526ef187c4b856` |
| 12 | `theorem` | [discr_powerBasis_eq_prod'](../../../../../mathematics/Algebra/LinearAlgebra/Discriminant/Variant2c5d8f3df2da089864578b3fcd71f33889254f3b982f668fa958abdd3d6dcad9.lean/declarations/discr-powerbasis-eq-prod--8805e0952d9fe9f2956cbb25.md) | 160 | `result-track:8805e0952d9fe9f2956cbb256d488b06c248bd28b683260c6248e916ae183cbb` |
| 13 | `theorem` | [discr_powerBasis_eq_prod''](../../../../../mathematics/Algebra/LinearAlgebra/Discriminant/Variant2c5d8f3df2da089864578b3fcd71f33889254f3b982f668fa958abdd3d6dcad9.lean/declarations/discr-powerbasis-eq-prod--0cc4f4449ddab351c6712ec7.md) | 170 | `result-track:0cc4f4449ddab351c6712ec77fc16f9362c5808dc5e7c8ae0d2d018993c38c17` |
| 14 | `theorem` | [discr_powerBasis_eq_norm](../../../../../mathematics/Algebra/LinearAlgebra/Discriminant/Variant2c5d8f3df2da089864578b3fcd71f33889254f3b982f668fa958abdd3d6dcad9.lean/declarations/discr-powerbasis-eq-norm--a4a52f9a79f767daf9892177.md) | 198 | `result-track:a4a52f9a79f767daf989217792ddb669e970692b17b40d5ab0b75bd5e4600e5d` |
| 15 | `theorem` | [discr_isIntegral](../../../../../mathematics/Algebra/LinearAlgebra/Discriminant/Variant2c5d8f3df2da089864578b3fcd71f33889254f3b982f668fa958abdd3d6dcad9.lean/declarations/discr-isintegral--f8f419e85e898318957ee474.md) | 245 | `result-track:f8f419e85e898318957ee47419b7c774c26a9c9f15c3da73072a24c8f7d5c509` |
| 16 | `theorem` | [discr_mul_isIntegral_mem_adjoin](../../../../../mathematics/Algebra/LinearAlgebra/Discriminant/Variant2c5d8f3df2da089864578b3fcd71f33889254f3b982f668fa958abdd3d6dcad9.lean/declarations/discr-mul-isintegral-mem-adjoin--266fab0d71e0513504105668.md) | 253 | `result-track:266fab0d71e05135041056687f995c58bd71f83ee797dc201a8bf7f628a3aed9` |
| 17 | `theorem` | [discr_eq_discr](../../../../../mathematics/Algebra/LinearAlgebra/Discriminant/Variant2c5d8f3df2da089864578b3fcd71f33889254f3b982f668fa958abdd3d6dcad9.lean/declarations/discr-eq-discr--5cd70f8a2669680e05d8ddf8.md) | 296 | `result-track:5cd70f8a2669680e05d8ddf87559d3e0b0208d1c81943b52b286ef09f763e38c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
