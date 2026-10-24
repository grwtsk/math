# Verification target: GRWTSK.Algebra.CommutativeAlgebra.IsIntegral.Variantb9aa838a374106c7de41c23654e0a7e5b3f4c97c5059b1756f2e1b30b9e989d9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "97ba6c4e1f054274422814b7b92add3079fc1022",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/IsIntegral/Variantb9aa838a374106c7de41c23654e0a7e5b3f4c97c5059b1756f2e1b30b9e989d9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/IsIntegral/Variantb9aa838a374106c7de41c23654e0a7e5b3f4c97c5059b1756f2e1b30b9e989d9.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/IsIntegral/Variantb9aa838a374106c7de41c23654e0a7e5b3f4c97c5059b1756f2e1b30b9e989d9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `97ba6c4e1f054274422814b7b92add3079fc1022`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/IsIntegral/Variantb9aa838a374106c7de41c23654e0a7e5b3f4c97c5059b1756f2e1b30b9e989d9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/IsIntegral/Variantb9aa838a374106c7de41c23654e0a7e5b3f4c97c5059b1756f2e1b30b9e989d9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.Choose.Dvd` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.IntegralClosure.IntegrallyClosed` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Norm.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Polynomial.Cyclotomic.Expand` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [cyclotomic_comp_X_add_one_isEisensteinAt](../../../../../mathematics/Algebra/CommutativeAlgebra/IsIntegral/Variantb9aa838a374106c7de41c23654e0a7e5b3f4c97c5059b1756f2e1b30b9e989d9.lean/declarations/cyclotomic-comp-x-add-one-iseisensteinat--c56ec8157a003cf6f7caeb66.md) | 50 | `result-track:c56ec8157a003cf6f7caeb6686fdd2923db42ce96eb5a183992c4234980c33de` |
| 2 | `theorem` | [cyclotomic_prime_pow_comp_X_add_one_isEisensteinAt](../../../../../mathematics/Algebra/CommutativeAlgebra/IsIntegral/Variantb9aa838a374106c7de41c23654e0a7e5b3f4c97c5059b1756f2e1b30b9e989d9.lean/declarations/cyclotomic-prime-pow-comp-x-add-one-iseisensteinat--d49eca3a06c7ee5466bf8ab5.md) | 83 | `result-track:d49eca3a06c7ee5466bf8ab5eefccb8e58e39ec699f990d507d99a59370f29bd` |
| 3 | `theorem` | [dvd_coeff_zero_of_aeval_eq_prime_smul_of_minpoly_isEisensteinAt](../../../../../mathematics/Algebra/CommutativeAlgebra/IsIntegral/Variantb9aa838a374106c7de41c23654e0a7e5b3f4c97c5059b1756f2e1b30b9e989d9.lean/declarations/dvd-coeff-zero-of-aeval-eq-prime-smul-of-minpoly-iseisensteinat--0d22f544dc03b7457ada91c8.md) | 141 | `result-track:0d22f544dc03b7457ada91c86a9f514a3b828b1a950009a27465fb64612aabe1` |
| 4 | `theorem` | [mem_adjoin_of_dvd_coeff_of_dvd_aeval](../../../../../mathematics/Algebra/CommutativeAlgebra/IsIntegral/Variantb9aa838a374106c7de41c23654e0a7e5b3f4c97c5059b1756f2e1b30b9e989d9.lean/declarations/mem-adjoin-of-dvd-coeff-of-dvd-aeval--38b46a063624b1d53b9aed18.md) | 218 | `result-track:38b46a063624b1d53b9aed189ad9412593c991535006e7390ded3dce05960335` |
| 5 | `theorem` | [mem_adjoin_of_smul_prime_smul_of_minpoly_isEisensteinAt](../../../../../mathematics/Algebra/CommutativeAlgebra/IsIntegral/Variantb9aa838a374106c7de41c23654e0a7e5b3f4c97c5059b1756f2e1b30b9e989d9.lean/declarations/mem-adjoin-of-smul-prime-smul-of-minpoly-iseisensteinat--57fa95f1d7702e84ffcf0b20.md) | 239 | `result-track:57fa95f1d7702e84ffcf0b204292957c84c0f40f43d88ecee05dd4b35376aae0` |
| 6 | `theorem` | [mem_adjoin_of_smul_prime_pow_smul_of_minpoly_isEisensteinAt](../../../../../mathematics/Algebra/CommutativeAlgebra/IsIntegral/Variantb9aa838a374106c7de41c23654e0a7e5b3f4c97c5059b1756f2e1b30b9e989d9.lean/declarations/mem-adjoin-of-smul-prime-pow-smul-of-minpoly-iseisensteinat--69b16805b4ff0380b864e982.md) | 379 | `result-track:69b16805b4ff0380b864e98214d9b75a82cf23802cd48d9547d90b770138f67b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
