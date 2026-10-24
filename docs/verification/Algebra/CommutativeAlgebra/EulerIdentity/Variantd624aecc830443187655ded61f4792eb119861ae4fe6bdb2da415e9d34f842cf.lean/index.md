# Verification target: GRWTSK.Algebra.CommutativeAlgebra.EulerIdentity.Variantd624aecc830443187655ded61f4792eb119861ae4fe6bdb2da415e9d34f842cf

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "30c453aa65390a776b7aecf04ddc50c83e65ecc9",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/EulerIdentity/Variantd624aecc830443187655ded61f4792eb119861ae4fe6bdb2da415e9d34f842cf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/EulerIdentity/Variantd624aecc830443187655ded61f4792eb119861ae4fe6bdb2da415e9d34f842cf.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/EulerIdentity/Variantd624aecc830443187655ded61f4792eb119861ae4fe6bdb2da415e9d34f842cf.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `30c453aa65390a776b7aecf04ddc50c83e65ecc9`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/EulerIdentity/Variantd624aecc830443187655ded61f4792eb119861ae4fe6bdb2da415e9d34f842cf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/EulerIdentity/Variantd624aecc830443187655ded61f4792eb119861ae4fe6bdb2da415e9d34f842cf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.MvPolynomial.PDeriv` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.MvPolynomial.Homogeneous` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [IsWeightedHomogeneous.pderiv](../../../../../mathematics/Algebra/CommutativeAlgebra/EulerIdentity/Variantd624aecc830443187655ded61f4792eb119861ae4fe6bdb2da415e9d34f842cf.lean/declarations/isweightedhomogeneous-pderiv--6bc3f76098e5c065f8870ae1.md) | 27 | `result-track:6bc3f76098e5c065f8870ae1bba39c9c843743f250a5fa2703ac85e12a74cbee` |
| 2 | `lemma` | [IsHomogeneous.pderiv](../../../../../mathematics/Algebra/CommutativeAlgebra/EulerIdentity/Variantd624aecc830443187655ded61f4792eb119861ae4fe6bdb2da415e9d34f842cf.lean/declarations/ishomogeneous-pderiv--069ac1265a2b395ad0e7a47e.md) | 43 | `result-track:069ac1265a2b395ad0e7a47ed90a387d6c69a122e6c6c62751181905242d1857` |
| 3 | `theorem` | [IsWeightedHomogeneous.sum_weight_X_mul_pderiv](../../../../../mathematics/Algebra/CommutativeAlgebra/EulerIdentity/Variantd624aecc830443187655ded61f4792eb119861ae4fe6bdb2da415e9d34f842cf.lean/declarations/isweightedhomogeneous-sum-weight-x-mul-pderiv--6fef3c18f657e3a2af03dc9d.md) | 54 | `result-track:6fef3c18f657e3a2af03dc9d2c775d1396b184f5f6e4b55cda660cfd72676d4b` |
| 4 | `theorem` | [IsHomogeneous.sum_X_mul_pderiv](../../../../../mathematics/Algebra/CommutativeAlgebra/EulerIdentity/Variantd624aecc830443187655ded61f4792eb119861ae4fe6bdb2da415e9d34f842cf.lean/declarations/ishomogeneous-sum-x-mul-pderiv--07d6496ca4273c88885b09ce.md) | 69 | `result-track:07d6496ca4273c88885b09ce76efcdef9565eda670bca8a06f75ea114bee3237` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
