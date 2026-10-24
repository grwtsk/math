# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Supported.Variantff0728179d369df98f92f9a6fbb62f1a46e474cc8be38559dd10048d975aea74

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e824f1caefe451252b67edd196e7f988fec4237a",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Supported/Variantff0728179d369df98f92f9a6fbb62f1a46e474cc8be38559dd10048d975aea74.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/Supported/Variantff0728179d369df98f92f9a6fbb62f1a46e474cc8be38559dd10048d975aea74.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/Supported/Variantff0728179d369df98f92f9a6fbb62f1a46e474cc8be38559dd10048d975aea74.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e824f1caefe451252b67edd196e7f988fec4237a`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Supported/Variantff0728179d369df98f92f9a6fbb62f1a46e474cc8be38559dd10048d975aea74.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Supported/Variantff0728179d369df98f92f9a6fbb62f1a46e474cc8be38559dd10048d975aea74.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.MvPolynomial.Variables` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [supported](../../../../../mathematics/Algebra/CommutativeAlgebra/Supported/Variantff0728179d369df98f92f9a6fbb62f1a46e474cc8be38559dd10048d975aea74.lean/declarations/supported--7a5c01130c474c4a43620280.md) | 44 | `declaration-track:7a5c01130c474c4a4362028057b16fdbea95fc0a8644c373ea88db8385c7d611` |
| 2 | `theorem` | [supported_eq_range_rename](../../../../../mathematics/Algebra/CommutativeAlgebra/Supported/Variantff0728179d369df98f92f9a6fbb62f1a46e474cc8be38559dd10048d975aea74.lean/declarations/supported-eq-range-rename--5168b6444597d74691a2ab9f.md) | 49 | `result-track:5168b6444597d74691a2ab9f7492487c41b2a098af9ecfee99dabe632a245569` |
| 3 | `def` | [supportedEquivMvPolynomial](../../../../../mathematics/Algebra/CommutativeAlgebra/Supported/Variantff0728179d369df98f92f9a6fbb62f1a46e474cc8be38559dd10048d975aea74.lean/declarations/supportedequivmvpolynomial--c12f97579ddde91656963a76.md) | 55 | `declaration-track:c12f97579ddde91656963a768f01430b68a5efd8969ece5b3a1d186031ea39b3` |
| 4 | `theorem` | [supportedEquivMvPolynomial_symm_C](../../../../../mathematics/Algebra/CommutativeAlgebra/Supported/Variantff0728179d369df98f92f9a6fbb62f1a46e474cc8be38559dd10048d975aea74.lean/declarations/supportedequivmvpolynomial-symm-c--af3312366cabb8025e6347e6.md) | 60 | `result-track:af3312366cabb8025e6347e639a66796f5d7b04935eff09165c1ed9e7e8e2b32` |
| 5 | `theorem` | [supportedEquivMvPolynomial_symm_X](../../../../../mathematics/Algebra/CommutativeAlgebra/Supported/Variantff0728179d369df98f92f9a6fbb62f1a46e474cc8be38559dd10048d975aea74.lean/declarations/supportedequivmvpolynomial-symm-x--83a73529972b17a1bc337a2c.md) | 66 | `result-track:83a73529972b17a1bc337a2c75d28bf168cb3c8e926f5e659cd3a64de6e86c58` |
| 6 | `theorem` | [mem_supported](../../../../../mathematics/Algebra/CommutativeAlgebra/Supported/Variantff0728179d369df98f92f9a6fbb62f1a46e474cc8be38559dd10048d975aea74.lean/declarations/mem-supported--665e4cfb05573d10189de117.md) | 72 | `result-track:665e4cfb05573d10189de117350fc311311d32ac72307125b3153c6b14f21aba` |
| 7 | `theorem` | [supported_eq_vars_subset](../../../../../mathematics/Algebra/CommutativeAlgebra/Supported/Variantff0728179d369df98f92f9a6fbb62f1a46e474cc8be38559dd10048d975aea74.lean/declarations/supported-eq-vars-subset--a2c4171211ae6d596c5cc0b8.md) | 82 | `result-track:a2c4171211ae6d596c5cc0b830cba0f81a662c45d20a348c6ce6a3329cda9ee2` |
| 8 | `theorem` | [mem_supported_vars](../../../../../mathematics/Algebra/CommutativeAlgebra/Supported/Variantff0728179d369df98f92f9a6fbb62f1a46e474cc8be38559dd10048d975aea74.lean/declarations/mem-supported-vars--3fc69e0c38981d1c697a2302.md) | 86 | `result-track:3fc69e0c38981d1c697a230257e0a7d0b9af84bf264fd84ae1aa0c211532f037` |
| 9 | `theorem` | [supported_eq_adjoin_X](../../../../../mathematics/Algebra/CommutativeAlgebra/Supported/Variantff0728179d369df98f92f9a6fbb62f1a46e474cc8be38559dd10048d975aea74.lean/declarations/supported-eq-adjoin-x--fb5d9729c98469b73c9e00da.md) | 91 | `result-track:fb5d9729c98469b73c9e00da9742f0ede76f6330a8a38bb8e501a80f29916649` |
| 10 | `theorem` | [supported_univ](../../../../../mathematics/Algebra/CommutativeAlgebra/Supported/Variantff0728179d369df98f92f9a6fbb62f1a46e474cc8be38559dd10048d975aea74.lean/declarations/supported-univ--d221988697d4d170238f4022.md) | 94 | `result-track:d221988697d4d170238f40227401bdb029159e4c43cba71c9b99c6c8c0e511d4` |
| 11 | `theorem` | [supported_empty](../../../../../mathematics/Algebra/CommutativeAlgebra/Supported/Variantff0728179d369df98f92f9a6fbb62f1a46e474cc8be38559dd10048d975aea74.lean/declarations/supported-empty--80a15e1f37b11a253b199291.md) | 98 | `result-track:80a15e1f37b11a253b199291c1977e56cdf3c7931b2e74cba5183db4eca6dac9` |
| 12 | `theorem` | [supported_mono](../../../../../mathematics/Algebra/CommutativeAlgebra/Supported/Variantff0728179d369df98f92f9a6fbb62f1a46e474cc8be38559dd10048d975aea74.lean/declarations/supported-mono--c9b90d25dbae3c1dc143969a.md) | 102 | `result-track:c9b90d25dbae3c1dc143969a2b9c7af49e2f3e682c0053ef1016f04efd7c8611` |
| 13 | `theorem` | [X_mem_supported](../../../../../mathematics/Algebra/CommutativeAlgebra/Supported/Variantff0728179d369df98f92f9a6fbb62f1a46e474cc8be38559dd10048d975aea74.lean/declarations/x-mem-supported--a50b0153dfd3738c2f47ac3c.md) | 106 | `result-track:a50b0153dfd3738c2f47ac3ca93ee9d73e868321892dc451eba3738e6d6d6103` |
| 14 | `theorem` | [supported_le_supported_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/Supported/Variantff0728179d369df98f92f9a6fbb62f1a46e474cc8be38559dd10048d975aea74.lean/declarations/supported-le-supported-iff--a9adf13081fae2e23df7169d.md) | 110 | `result-track:a9adf13081fae2e23df7169df098b1169046af02fc45a996be0e7e869b3f3be2` |
| 15 | `theorem` | [supported_strictMono](../../../../../mathematics/Algebra/CommutativeAlgebra/Supported/Variantff0728179d369df98f92f9a6fbb62f1a46e474cc8be38559dd10048d975aea74.lean/declarations/supported-strictmono--196a664bf6ede73ba53d3717.md) | 116 | `result-track:196a664bf6ede73ba53d3717487c89c91e150ef0c3628e7e81feaef1b0b8b5f6` |
| 16 | `theorem` | [exists_restrict_to_vars](../../../../../mathematics/Algebra/CommutativeAlgebra/Supported/Variantff0728179d369df98f92f9a6fbb62f1a46e474cc8be38559dd10048d975aea74.lean/declarations/exists-restrict-to-vars--c818aa21651f1e51ffd6490a.md) | 120 | `result-track:c818aa21651f1e51ffd6490a653f278be4cd46d066daed63cdee31070f23ee64` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
