# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Pi.Variant8378219efc3500d6ff53c4c3859590df8d16906260f6f184355ddc5f3dd0ea72

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5c51f5f6b3f3a7acdd61642563c1cb0f810d1a46",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Pi/Variant8378219efc3500d6ff53c4c3859590df8d16906260f6f184355ddc5f3dd0ea72.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/Pi/Variant8378219efc3500d6ff53c4c3859590df8d16906260f6f184355ddc5f3dd0ea72.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/Pi/Variant8378219efc3500d6ff53c4c3859590df8d16906260f6f184355ddc5f3dd0ea72.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5c51f5f6b3f3a7acdd61642563c1cb0f810d1a46`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Pi/Variant8378219efc3500d6ff53c4c3859590df8d16906260f6f184355ddc5f3dd0ea72.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Pi/Variant8378219efc3500d6ff53c4c3859590df8d16906260f6f184355ddc5f3dd0ea72.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Polynomial.AlgebraMap` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Polynomial.hasSMulPi](../../../../../mathematics/Algebra/CommutativeAlgebra/Pi/Variant8378219efc3500d6ff53c4c3859590df8d16906260f6f184355ddc5f3dd0ea72.lean/declarations/polynomial-hassmulpi--329362b493a34cf1777c72b6.md) | 25 | `declaration-track:329362b493a34cf1777c72b6ecc68e6a730bac213dd8435644475a65a50f40b3` |
| 2 | `def` | [Polynomial.hasSMulPi'](../../../../../mathematics/Algebra/CommutativeAlgebra/Pi/Variant8378219efc3500d6ff53c4c3859590df8d16906260f6f184355ddc5f3dd0ea72.lean/declarations/polynomial-hassmulpi--a487636f2171b8ce09d0c380.md) | 31 | `declaration-track:a487636f2171b8ce09d0c38028c994f9f797aa40d4ac11da79fbc7a01be28b29` |
| 3 | `theorem` | [polynomial_smul_apply](../../../../../mathematics/Algebra/CommutativeAlgebra/Pi/Variant8378219efc3500d6ff53c4c3859590df8d16906260f6f184355ddc5f3dd0ea72.lean/declarations/polynomial-smul-apply--3f384d5e77e84d7fb8b2a099.md) | 38 | `result-track:3f384d5e77e84d7fb8b2a099deb0632a646f675cf59b15cb4171b101b6205de0` |
| 4 | `theorem` | [polynomial_smul_apply'](../../../../../mathematics/Algebra/CommutativeAlgebra/Pi/Variant8378219efc3500d6ff53c4c3859590df8d16906260f6f184355ddc5f3dd0ea72.lean/declarations/polynomial-smul-apply--6b21c80a286fee289bfff62d.md) | 43 | `result-track:6b21c80a286fee289bfff62dec1226df29ad0f01b299d11db1c0980130377f62` |
| 5 | `def` | [Polynomial.algebraPi](../../../../../mathematics/Algebra/CommutativeAlgebra/Pi/Variant8378219efc3500d6ff53c4c3859590df8d16906260f6f184355ddc5f3dd0ea72.lean/declarations/polynomial-algebrapi--1db94a7210b2f572fcc2f57c.md) | 52 | `declaration-track:1db94a7210b2f572fcc2f57ce903db74f337a731ace30e29849dc91dccf13685` |
| 6 | `theorem` | [Polynomial.algebraMap_pi_eq_aeval](../../../../../mathematics/Algebra/CommutativeAlgebra/Pi/Variant8378219efc3500d6ff53c4c3859590df8d16906260f6f184355ddc5f3dd0ea72.lean/declarations/polynomial-algebramap-pi-eq-aeval--fd078ebf239dc04cc71f82f7.md) | 79 | `result-track:fd078ebf239dc04cc71f82f7c98adf9875e30f8ff1e9830dde148e90ee95c225` |
| 7 | `theorem` | [Polynomial.algebraMap_pi_self_eq_eval](../../../../../mathematics/Algebra/CommutativeAlgebra/Pi/Variant8378219efc3500d6ff53c4c3859590df8d16906260f6f184355ddc5f3dd0ea72.lean/declarations/polynomial-algebramap-pi-self-eq-eval--2b8be4b12f127e63158c67c5.md) | 84 | `result-track:2b8be4b12f127e63158c67c539480712f587fde185fcbfbcf18a96c3205fd026` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
