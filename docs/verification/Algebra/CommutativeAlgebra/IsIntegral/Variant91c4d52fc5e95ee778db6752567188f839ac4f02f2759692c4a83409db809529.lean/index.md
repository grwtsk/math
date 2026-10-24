# Verification target: GRWTSK.Algebra.CommutativeAlgebra.IsIntegral.Variant91c4d52fc5e95ee778db6752567188f839ac4f02f2759692c4a83409db809529

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c147b737ce3a7765b9cf5ce8bf8767c7c81292ec",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/IsIntegral/Variant91c4d52fc5e95ee778db6752567188f839ac4f02f2759692c4a83409db809529.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/IsIntegral/Variant91c4d52fc5e95ee778db6752567188f839ac4f02f2759692c4a83409db809529.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/IsIntegral/Variant91c4d52fc5e95ee778db6752567188f839ac4f02f2759692c4a83409db809529.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c147b737ce3a7765b9cf5ce8bf8767c7c81292ec`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/IsIntegral/Variant91c4d52fc5e95ee778db6752567188f839ac4f02f2759692c4a83409db809529.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/IsIntegral/Variant91c4d52fc5e95ee778db6752567188f839ac4f02f2759692c4a83409db809529.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.Choose.Dvd` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.IntegrallyClosed` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Norm` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Polynomial.Cyclotomic.Expand` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [cyclotomic_comp_X_add_one_isEisensteinAt](../../../../../mathematics/Algebra/CommutativeAlgebra/IsIntegral/Variant91c4d52fc5e95ee778db6752567188f839ac4f02f2759692c4a83409db809529.lean/declarations/cyclotomic-comp-x-add-one-iseisensteinat--fcb460a5b7d1026b79854c61.md) | 52 | `result-track:fcb460a5b7d1026b79854c61f465d483b5dc46d27570ea1de9d56d11638eeb4d` |
| 2 | `theorem` | [cyclotomic_prime_pow_comp_X_add_one_isEisensteinAt](../../../../../mathematics/Algebra/CommutativeAlgebra/IsIntegral/Variant91c4d52fc5e95ee778db6752567188f839ac4f02f2759692c4a83409db809529.lean/declarations/cyclotomic-prime-pow-comp-x-add-one-iseisensteinat--8c17607736662b4d27396aef.md) | 85 | `result-track:8c17607736662b4d27396aef40c73b272402cae94b1fb591547340bea96d9b95` |
| 3 | `theorem` | [dvd_coeff_zero_of_aeval_eq_prime_smul_of_minpoly_isEisensteinAt](../../../../../mathematics/Algebra/CommutativeAlgebra/IsIntegral/Variant91c4d52fc5e95ee778db6752567188f839ac4f02f2759692c4a83409db809529.lean/declarations/dvd-coeff-zero-of-aeval-eq-prime-smul-of-minpoly-iseisensteinat--ad4215fbb0c7f01014ab7606.md) | 147 | `result-track:ad4215fbb0c7f01014ab76063e7b879a8699f11320106bd7b1e11ecd9404e77d` |
| 4 | `theorem` | [mem_adjoin_of_dvd_coeff_of_dvd_aeval](../../../../../mathematics/Algebra/CommutativeAlgebra/IsIntegral/Variant91c4d52fc5e95ee778db6752567188f839ac4f02f2759692c4a83409db809529.lean/declarations/mem-adjoin-of-dvd-coeff-of-dvd-aeval--a376b5983a4622c43f43c1f7.md) | 227 | `result-track:a376b5983a4622c43f43c1f73011b8c0da332b325f99d09fdd1c9473ec8b61fd` |
| 5 | `theorem` | [mem_adjoin_of_smul_prime_smul_of_minpoly_isEisensteinAt](../../../../../mathematics/Algebra/CommutativeAlgebra/IsIntegral/Variant91c4d52fc5e95ee778db6752567188f839ac4f02f2759692c4a83409db809529.lean/declarations/mem-adjoin-of-smul-prime-smul-of-minpoly-iseisensteinat--9cc1e7e4cc1a4c7ec1048750.md) | 249 | `result-track:9cc1e7e4cc1a4c7ec1048750731e96fbd5e34dfb21d1bd99f8a04e7efa83d7ac` |
| 6 | `theorem` | [mem_adjoin_of_smul_prime_pow_smul_of_minpoly_isEisensteinAt](../../../../../mathematics/Algebra/CommutativeAlgebra/IsIntegral/Variant91c4d52fc5e95ee778db6752567188f839ac4f02f2759692c4a83409db809529.lean/declarations/mem-adjoin-of-smul-prime-pow-smul-of-minpoly-iseisensteinat--4e7437b07dce6604d1eac633.md) | 392 | `result-track:4e7437b07dce6604d1eac6331ba7eec7af890c0f95b9caa18d382a8199327e0f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
