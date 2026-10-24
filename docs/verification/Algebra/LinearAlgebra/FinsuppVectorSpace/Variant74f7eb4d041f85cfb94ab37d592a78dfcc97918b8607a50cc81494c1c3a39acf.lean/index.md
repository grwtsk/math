# Verification target: GRWTSK.Algebra.LinearAlgebra.FinsuppVectorSpace.Variant74f7eb4d041f85cfb94ab37d592a78dfcc97918b8607a50cc81494c1c3a39acf

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f859c85d1235de6f8a303bf5adbe385fa78aa184",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/FinsuppVectorSpace/Variant74f7eb4d041f85cfb94ab37d592a78dfcc97918b8607a50cc81494c1c3a39acf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/FinsuppVectorSpace/Variant74f7eb4d041f85cfb94ab37d592a78dfcc97918b8607a50cc81494c1c3a39acf.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/FinsuppVectorSpace/Variant74f7eb4d041f85cfb94ab37d592a78dfcc97918b8607a50cc81494c1c3a39acf.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f859c85d1235de6f8a303bf5adbe385fa78aa184`.

Source path: `GRWTSK/Algebra/LinearAlgebra/FinsuppVectorSpace/Variant74f7eb4d041f85cfb94ab37d592a78dfcc97918b8607a50cc81494c1c3a39acf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/FinsuppVectorSpace/Variant74f7eb4d041f85cfb94ab37d592a78dfcc97918b8607a50cc81494c1c3a39acf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.StdBasis` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [linearIndependent_single](../../../../../mathematics/Algebra/LinearAlgebra/FinsuppVectorSpace/Variant74f7eb4d041f85cfb94ab37d592a78dfcc97918b8607a50cc81494c1c3a39acf.lean/declarations/linearindependent-single--7d3fb652ede840125cac74e9.md) | 35 | `result-track:7d3fb652ede840125cac74e9f610ad4a80d3cb988a75904ee883b6ed6c23e93d` |
| 2 | `def` | [basis](../../../../../mathematics/Algebra/LinearAlgebra/FinsuppVectorSpace/Variant74f7eb4d041f85cfb94ab37d592a78dfcc97918b8607a50cc81494c1c3a39acf.lean/declarations/basis--202b20300f0292166e721023.md) | 67 | `declaration-track:202b20300f0292166e721023a1c1bbe2119f4d61a2a47014a78ded57b66ab426` |
| 3 | `theorem` | [basis_repr](../../../../../mathematics/Algebra/LinearAlgebra/FinsuppVectorSpace/Variant74f7eb4d041f85cfb94ab37d592a78dfcc97918b8607a50cc81494c1c3a39acf.lean/declarations/basis-repr--fbfc0ac5f201321d230e9fc2.md) | 102 | `result-track:fbfc0ac5f201321d230e9fc241532318193f73bbea9775322a96cac634b329e6` |
| 4 | `theorem` | [coe_basis](../../../../../mathematics/Algebra/LinearAlgebra/FinsuppVectorSpace/Variant74f7eb4d041f85cfb94ab37d592a78dfcc97918b8607a50cc81494c1c3a39acf.lean/declarations/coe-basis--2c5f1fedbdb9a827604f13c0.md) | 108 | `result-track:2c5f1fedbdb9a827604f13c02a4c90ea89d3e22195021d81adfe616729c8fc97` |
| 5 | `def` | [basisSingleOne](../../../../../mathematics/Algebra/LinearAlgebra/FinsuppVectorSpace/Variant74f7eb4d041f85cfb94ab37d592a78dfcc97918b8607a50cc81494c1c3a39acf.lean/declarations/basissingleone--43a11ca5c6df7b08a2443866.md) | 126 | `declaration-track:43a11ca5c6df7b08a24438663c67292492caf61520a293c46aed88dfa228bfe0` |
| 6 | `theorem` | [coe_basisSingleOne](../../../../../mathematics/Algebra/LinearAlgebra/FinsuppVectorSpace/Variant74f7eb4d041f85cfb94ab37d592a78dfcc97918b8607a50cc81494c1c3a39acf.lean/declarations/coe-basissingleone--8ed519acaed5643d2028e3aa.md) | 131 | `result-track:8ed519acaed5643d2028e3aa1aebd89737d85d02c05e1fd80b7e5b366dedf573` |
| 7 | `theorem` | [_root_.Finset.sum_single_ite](../../../../../mathematics/Algebra/LinearAlgebra/FinsuppVectorSpace/Variant74f7eb4d041f85cfb94ab37d592a78dfcc97918b8607a50cc81494c1c3a39acf.lean/declarations/root-finset-sum-single-ite--626b958b784ee510395d6b2d.md) | 152 | `result-track:626b958b784ee510395d6b2d31d1cfcacb0fcd43264942985f11cd23dcb26ec5` |
| 8 | `theorem` | [_root_.Finset.sum_univ_ite](../../../../../mathematics/Algebra/LinearAlgebra/FinsuppVectorSpace/Variant74f7eb4d041f85cfb94ab37d592a78dfcc97918b8607a50cc81494c1c3a39acf.lean/declarations/root-finset-sum-univ-ite--53bea1a0edab097feb38e008.md) | 169 | `result-track:53bea1a0edab097feb38e008dcfd9b9703d5da54e478378e222035c5ae20550c` |
| 9 | `theorem` | [equivFun_symm_stdBasis](../../../../../mathematics/Algebra/LinearAlgebra/FinsuppVectorSpace/Variant74f7eb4d041f85cfb94ab37d592a78dfcc97918b8607a50cc81494c1c3a39acf.lean/declarations/equivfun-symm-stdbasis--c82802414969a5d61c94ad53.md) | 173 | `result-track:c82802414969a5d61c94ad53d5778d66bafa82405d9742582106bd4c172ccfed` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
