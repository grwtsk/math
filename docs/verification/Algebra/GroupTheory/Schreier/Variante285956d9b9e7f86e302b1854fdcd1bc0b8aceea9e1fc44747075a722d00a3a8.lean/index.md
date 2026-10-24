# Verification target: GRWTSK.Algebra.GroupTheory.Schreier.Variante285956d9b9e7f86e302b1854fdcd1bc0b8aceea9e1fc44747075a722d00a3a8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1308181e90c800ea58daf0dfe1051774a210b8f0",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Schreier/Variante285956d9b9e7f86e302b1854fdcd1bc0b8aceea9e1fc44747075a722d00a3a8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Schreier/Variante285956d9b9e7f86e302b1854fdcd1bc0b8aceea9e1fc44747075a722d00a3a8.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Schreier/Variante285956d9b9e7f86e302b1854fdcd1bc0b8aceea9e1fc44747075a722d00a3a8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1308181e90c800ea58daf0dfe1051774a210b8f0`.

Source path: `GRWTSK/Algebra/GroupTheory/Schreier/Variante285956d9b9e7f86e302b1854fdcd1bc0b8aceea9e1fc44747075a722d00a3a8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Schreier/Variante285956d9b9e7f86e302b1854fdcd1bc0b8aceea9e1fc44747075a722d00a3a8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.GroupTheory.Abelianization` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Commutator.Finite` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Transfer` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Pointwise.Finset.Basic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [card_dvd_exponent_pow_rank](../../../../../mathematics/Algebra/GroupTheory/Schreier/Variante285956d9b9e7f86e302b1854fdcd1bc0b8aceea9e1fc44747075a722d00a3a8.lean/declarations/card-dvd-exponent-pow-rank--6bbb0bea74af02ee9eb7a2ad.md) | 37 | `result-track:6bbb0bea74af02ee9eb7a2ad69bd9a74cc77b62179145fd7006f0c367385c197` |
| 2 | `theorem` | [card_dvd_exponent_pow_rank'](../../../../../mathematics/Algebra/GroupTheory/Schreier/Variante285956d9b9e7f86e302b1854fdcd1bc0b8aceea9e1fc44747075a722d00a3a8.lean/declarations/card-dvd-exponent-pow-rank--9fc609056e9be9b682d96869.md) | 52 | `result-track:9fc609056e9be9b682d968693262c81ff730fcf4b14df3c9c928da1b3f5316a7` |
| 3 | `theorem` | [closure_mul_image_mul_eq_top](../../../../../mathematics/Algebra/GroupTheory/Schreier/Variante285956d9b9e7f86e302b1854fdcd1bc0b8aceea9e1fc44747075a722d00a3a8.lean/declarations/closure-mul-image-mul-eq-top--c312ea85109f7fdaf9f8ca08.md) | 65 | `result-track:c312ea85109f7fdaf9f8ca08203d5003d3630d668b19d6b6683ddc304daa9874` |
| 4 | `theorem` | [closure_mul_image_eq](../../../../../mathematics/Algebra/GroupTheory/Schreier/Variante285956d9b9e7f86e302b1854fdcd1bc0b8aceea9e1fc44747075a722d00a3a8.lean/declarations/closure-mul-image-eq--7d211aa6421e4edb68ccb738.md) | 91 | `result-track:7d211aa6421e4edb68ccb738c513b4e4a9bbddf536d2400bd80d21811b728d01` |
| 5 | `theorem` | [closure_mul_image_eq_top](../../../../../mathematics/Algebra/GroupTheory/Schreier/Variante285956d9b9e7f86e302b1854fdcd1bc0b8aceea9e1fc44747075a722d00a3a8.lean/declarations/closure-mul-image-eq-top--24f44f53f67a9a66f2f468b9.md) | 111 | `result-track:24f44f53f67a9a66f2f468b9134c9a0f4ab537a97ec34da3612b484330f368b9` |
| 6 | `theorem` | [closure_mul_image_eq_top'](../../../../../mathematics/Algebra/GroupTheory/Schreier/Variante285956d9b9e7f86e302b1854fdcd1bc0b8aceea9e1fc44747075a722d00a3a8.lean/declarations/closure-mul-image-eq-top--efef7416f0ace22de42832d1.md) | 120 | `result-track:efef7416f0ace22de42832d16d3d6d25064c9969f6b01a221270aa2ae609b3cd` |
| 7 | `theorem` | [exists_finset_card_le_mul](../../../../../mathematics/Algebra/GroupTheory/Schreier/Variante285956d9b9e7f86e302b1854fdcd1bc0b8aceea9e1fc44747075a722d00a3a8.lean/declarations/exists-finset-card-le-mul--4e0d802e9ee8af77f935884b.md) | 129 | `result-track:4e0d802e9ee8af77f935884b6644676bd16d339f3f50a42863a3a7bb46630f8a` |
| 8 | `instance` | [fg_of_index_ne_zero](../../../../../mathematics/Algebra/GroupTheory/Schreier/Variante285956d9b9e7f86e302b1854fdcd1bc0b8aceea9e1fc44747075a722d00a3a8.lean/declarations/fg-of-index-ne-zero--6545bdeca2719598c97746c1.md) | 151 | `declaration-track:6545bdeca2719598c97746c1a1fdbd435f4cb0935d651d935239fa38e2c5b3a2` |
| 9 | `theorem` | [rank_le_index_mul_rank](../../../../../mathematics/Algebra/GroupTheory/Schreier/Variante285956d9b9e7f86e302b1854fdcd1bc0b8aceea9e1fc44747075a722d00a3a8.lean/declarations/rank-le-index-mul-rank--fe65806f0cedfa16b279cbda.md) | 156 | `result-track:fe65806f0cedfa16b279cbdadceacc8cf7a7a9ad0828b97ed2715cdfeee4bb17` |
| 10 | `theorem` | [card_commutator_dvd_index_center_pow](../../../../../mathematics/Algebra/GroupTheory/Schreier/Variante285956d9b9e7f86e302b1854fdcd1bc0b8aceea9e1fc44747075a722d00a3a8.lean/declarations/card-commutator-dvd-index-center-pow--24bef2d55199755e92abadaf.md) | 170 | `result-track:24bef2d55199755e92abadaf2081aed24e5c96d1e873d8bf49027ba851941d1b` |
| 11 | `def` | [cardCommutatorBound](../../../../../mathematics/Algebra/GroupTheory/Schreier/Variante285956d9b9e7f86e302b1854fdcd1bc0b8aceea9e1fc44747075a722d00a3a8.lean/declarations/cardcommutatorbound--ca6cf92bc842aa2e16b09919.md) | 201 | `declaration-track:ca6cf92bc842aa2e16b09919ad86e85c66ccc6db21e3a4f1ba1c6b364161a848` |
| 12 | `theorem` | [card_commutator_le_of_finite_commutatorSet](../../../../../mathematics/Algebra/GroupTheory/Schreier/Variante285956d9b9e7f86e302b1854fdcd1bc0b8aceea9e1fc44747075a722d00a3a8.lean/declarations/card-commutator-le-of-finite-commutatorset--60383cca2ff8c72ebc4d8c0c.md) | 206 | `result-track:60383cca2ff8c72ebc4d8c0ca0745050dde77e96eaa8348da8a1ee1e0ddd1767` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Schreier/Variante285956d9b9e7f86e302b1854fdcd1bc0b8aceea9e1fc44747075a722d00a3a8.lean/declarations/instance--f76d0e565ba70bd732f97eb5.md) | 221 | `declaration-track:f76d0e565ba70bd732f97eb59738870c501dc18c4ad59039851dee550abcbff4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
