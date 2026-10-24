# Verification target: GRWTSK.Algebra.CommutativeAlgebra.IsIntegral.Variantd7af4e2793e598e370b3f77e43354e35520d8b5eb02f8b0b1849380471ec40bd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f7ed4b75ed6cc5949f8f47c605c8eceec98fbd64",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/IsIntegral/Variantd7af4e2793e598e370b3f77e43354e35520d8b5eb02f8b0b1849380471ec40bd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/IsIntegral/Variantd7af4e2793e598e370b3f77e43354e35520d8b5eb02f8b0b1849380471ec40bd.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/IsIntegral/Variantd7af4e2793e598e370b3f77e43354e35520d8b5eb02f8b0b1849380471ec40bd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f7ed4b75ed6cc5949f8f47c605c8eceec98fbd64`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/IsIntegral/Variantd7af4e2793e598e370b3f77e43354e35520d8b5eb02f8b0b1849380471ec40bd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/IsIntegral/Variantd7af4e2793e598e370b3f77e43354e35520d8b5eb02f8b0b1849380471ec40bd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.Choose.Dvd` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.IntegralClosure.IntegrallyClosed` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Norm.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Polynomial.Cyclotomic.Expand` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [cyclotomic_comp_X_add_one_isEisensteinAt](../../../../../mathematics/Algebra/CommutativeAlgebra/IsIntegral/Variantd7af4e2793e598e370b3f77e43354e35520d8b5eb02f8b0b1849380471ec40bd.lean/declarations/cyclotomic-comp-x-add-one-iseisensteinat--db00d9cc339cc5c3fa8e3c52.md) | 42 | `result-track:db00d9cc339cc5c3fa8e3c52ac4b86760507b8b85da8cda2908f1d77923ba50b` |
| 2 | `theorem` | [cyclotomic_prime_pow_comp_X_add_one_isEisensteinAt](../../../../../mathematics/Algebra/CommutativeAlgebra/IsIntegral/Variantd7af4e2793e598e370b3f77e43354e35520d8b5eb02f8b0b1849380471ec40bd.lean/declarations/cyclotomic-prime-pow-comp-x-add-one-iseisensteinat--70467b4635aac67873749b05.md) | 75 | `result-track:70467b4635aac67873749b0599d4698d4a3b8324b7fa138756170933ad646b3e` |
| 3 | `theorem` | [dvd_coeff_zero_of_aeval_eq_prime_smul_of_minpoly_isEisensteinAt](../../../../../mathematics/Algebra/CommutativeAlgebra/IsIntegral/Variantd7af4e2793e598e370b3f77e43354e35520d8b5eb02f8b0b1849380471ec40bd.lean/declarations/dvd-coeff-zero-of-aeval-eq-prime-smul-of-minpoly-iseisensteinat--02c64505ec2862c23c4aa873.md) | 133 | `result-track:02c64505ec2862c23c4aa8733ac2487fb3b0eac171e0f1a502df33a1c4fae2c3` |
| 4 | `theorem` | [mem_adjoin_of_dvd_coeff_of_dvd_aeval](../../../../../mathematics/Algebra/CommutativeAlgebra/IsIntegral/Variantd7af4e2793e598e370b3f77e43354e35520d8b5eb02f8b0b1849380471ec40bd.lean/declarations/mem-adjoin-of-dvd-coeff-of-dvd-aeval--a1a0791b9f775dbc12d7acef.md) | 210 | `result-track:a1a0791b9f775dbc12d7acefa5e0783ee5c80fc52be55f5c1ba8cc788fe90955` |
| 5 | `theorem` | [mem_adjoin_of_smul_prime_smul_of_minpoly_isEisensteinAt](../../../../../mathematics/Algebra/CommutativeAlgebra/IsIntegral/Variantd7af4e2793e598e370b3f77e43354e35520d8b5eb02f8b0b1849380471ec40bd.lean/declarations/mem-adjoin-of-smul-prime-smul-of-minpoly-iseisensteinat--d4f5a73d2e628e2e0d146de3.md) | 231 | `result-track:d4f5a73d2e628e2e0d146de315420f27aa9f73b3e1a2d859d3f0cadd2a0cfd2c` |
| 6 | `theorem` | [mem_adjoin_of_smul_prime_pow_smul_of_minpoly_isEisensteinAt](../../../../../mathematics/Algebra/CommutativeAlgebra/IsIntegral/Variantd7af4e2793e598e370b3f77e43354e35520d8b5eb02f8b0b1849380471ec40bd.lean/declarations/mem-adjoin-of-smul-prime-pow-smul-of-minpoly-iseisensteinat--fad70f875083bddb351a4ebe.md) | 371 | `result-track:fad70f875083bddb351a4ebeed8878890486adfcfd8c77e8b61a88c8a01eb86d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
