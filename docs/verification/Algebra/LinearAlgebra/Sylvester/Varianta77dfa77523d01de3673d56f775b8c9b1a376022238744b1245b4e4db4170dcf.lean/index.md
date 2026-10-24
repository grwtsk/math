# Verification target: GRWTSK.Algebra.LinearAlgebra.Sylvester.Varianta77dfa77523d01de3673d56f775b8c9b1a376022238744b1245b4e4db4170dcf

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e626e55ce1909069de83e287fb57423209371424",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Sylvester/Varianta77dfa77523d01de3673d56f775b8c9b1a376022238744b1245b4e4db4170dcf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Sylvester/Varianta77dfa77523d01de3673d56f775b8c9b1a376022238744b1245b4e4db4170dcf.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Sylvester/Varianta77dfa77523d01de3673d56f775b8c9b1a376022238744b1245b4e4db4170dcf.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e626e55ce1909069de83e287fb57423209371424`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Sylvester/Varianta77dfa77523d01de3673d56f775b8c9b1a376022238744b1245b4e4db4170dcf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Sylvester/Varianta77dfa77523d01de3673d56f775b8c9b1a376022238744b1245b4e4db4170dcf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.LinAlg.HermitianPosPart` — import line 18; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.FiniteDimensional.Lemmas` — import line 19; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [hermForm](../../../../../mathematics/Algebra/LinearAlgebra/Sylvester/Varianta77dfa77523d01de3673d56f775b8c9b1a376022238744b1245b4e4db4170dcf.lean/declarations/hermform--e609f9a4a4a35bb60369a62b.md) | 51 | `declaration-track:e609f9a4a4a35bb60369a62b35db48a73445c3b674a727607786833b3b91e693` |
| 2 | `def` | [PosDefOn](../../../../../mathematics/Algebra/LinearAlgebra/Sylvester/Varianta77dfa77523d01de3673d56f775b8c9b1a376022238744b1245b4e4db4170dcf.lean/declarations/posdefon--254b7410eb45fff50ea7f5ed.md) | 55 | `declaration-track:254b7410eb45fff50ea7f5ed598db6fcda8293b42708cf5a208f22185cc3475c` |
| 3 | `lemma` | [hermForm_conj](../../../../../mathematics/Algebra/LinearAlgebra/Sylvester/Varianta77dfa77523d01de3673d56f775b8c9b1a376022238744b1245b4e4db4170dcf.lean/declarations/hermform-conj--b6eb2f6ed4116273b342f17a.md) | 59 | `result-track:b6eb2f6ed4116273b342f17aa74fab6b655b06d352180297803c480fc564eac0` |
| 4 | `lemma` | [hermForm_add](../../../../../mathematics/Algebra/LinearAlgebra/Sylvester/Varianta77dfa77523d01de3673d56f775b8c9b1a376022238744b1245b4e4db4170dcf.lean/declarations/hermform-add--43b014f2a4441e7f833ee5d4.md) | 68 | `result-track:43b014f2a4441e7f833ee5d4f6fd156562ec48c6220fe94f752e29bd89e356f3` |
| 5 | `lemma` | [hermForm_sub](../../../../../mathematics/Algebra/LinearAlgebra/Sylvester/Varianta77dfa77523d01de3673d56f775b8c9b1a376022238744b1245b4e4db4170dcf.lean/declarations/hermform-sub--9f1d86a402542a142596c2d6.md) | 74 | `result-track:9f1d86a402542a142596c2d6ce19021aceb3d1aed850afa589522e2ccc9bd202` |
| 6 | `lemma` | [hermForm_nonneg_of_posSemidef](../../../../../mathematics/Algebra/LinearAlgebra/Sylvester/Varianta77dfa77523d01de3673d56f775b8c9b1a376022238744b1245b4e4db4170dcf.lean/declarations/hermform-nonneg-of-possemidef--8e8f39fdabe104680f49bda6.md) | 81 | `result-track:8e8f39fdabe104680f49bda62c17455e97e06d4c104af9df4951e24f9057a6ba` |
| 7 | `theorem` | [finrank_le_posIndex_of_posDefOn](../../../../../mathematics/Algebra/LinearAlgebra/Sylvester/Varianta77dfa77523d01de3673d56f775b8c9b1a376022238744b1245b4e4db4170dcf.lean/declarations/finrank-le-posindex-of-posdefon--d85827317e1fbeb174a23279.md) | 90 | `result-track:d85827317e1fbeb174a23279b710a24b447135ae407499844dadb2b73f1b4633` |
| 8 | `theorem` | [posDefOn_range_hermPosPart](../../../../../mathematics/Algebra/LinearAlgebra/Sylvester/Varianta77dfa77523d01de3673d56f775b8c9b1a376022238744b1245b4e4db4170dcf.lean/declarations/posdefon-range-hermpospart--d11254eac88525ca5cdce2dc.md) | 131 | `result-track:d11254eac88525ca5cdce2dc65bbe07ed1db483fa6b9c31ebfe093e1e9084fc6` |
| 9 | `lemma` | [hermForm_one](../../../../../mathematics/Algebra/LinearAlgebra/Sylvester/Varianta77dfa77523d01de3673d56f775b8c9b1a376022238744b1245b4e4db4170dcf.lean/declarations/hermform-one--67aad2fe947ec9c441ec92de.md) | 189 | `result-track:67aad2fe947ec9c441ec92de0ce18fc0b496b86c4cf3fd47dba7ed6448519d01` |
| 10 | `lemma` | [sum_normSq_unitary_mulVec](../../../../../mathematics/Algebra/LinearAlgebra/Sylvester/Varianta77dfa77523d01de3673d56f775b8c9b1a376022238744b1245b4e4db4170dcf.lean/declarations/sum-normsq-unitary-mulvec--c1e7c81852d1314c322de4cc.md) | 196 | `result-track:c1e7c81852d1314c322de4cccb397b2e8546149b3437ed5e2ca6ec806aca3154` |
| 11 | `lemma` | [hermForm_le_of_eigenvalues_le](../../../../../mathematics/Algebra/LinearAlgebra/Sylvester/Varianta77dfa77523d01de3673d56f775b8c9b1a376022238744b1245b4e4db4170dcf.lean/declarations/hermform-le-of-eigenvalues-le--5724cf213823c6e5b304224a.md) | 208 | `result-track:5724cf213823c6e5b304224a61353750ea8e0934e6729cfb5bdb9367c2aeb80b` |
| 12 | `theorem` | [hermForm_gt_on_range_truncPos](../../../../../mathematics/Algebra/LinearAlgebra/Sylvester/Varianta77dfa77523d01de3673d56f775b8c9b1a376022238744b1245b4e4db4170dcf.lean/declarations/hermform-gt-on-range-truncpos--46d986c990766f223716338f.md) | 223 | `result-track:46d986c990766f223716338fb1e184941b112f8c14b23571b7136aa8232ce8af` |
| 13 | `lemma` | [finrank_range_truncPos](../../../../../mathematics/Algebra/LinearAlgebra/Sylvester/Varianta77dfa77523d01de3673d56f775b8c9b1a376022238744b1245b4e4db4170dcf.lean/declarations/finrank-range-truncpos--e578f5c59ce85b016afbe7ca.md) | 297 | `result-track:e578f5c59ce85b016afbe7ca82a59e1381035542d47b2cb5155a5e3454cf106a` |
| 14 | `lemma` | [finrank_range_hermPosPart](../../../../../mathematics/Algebra/LinearAlgebra/Sylvester/Varianta77dfa77523d01de3673d56f775b8c9b1a376022238744b1245b4e4db4170dcf.lean/declarations/finrank-range-hermpospart--5bbcb4771a01bb9d07fdf3be.md) | 307 | `result-track:5bbcb4771a01bb9d07fdf3be0139d6c891a6699d35d42bab617914916a53da4a` |
| 15 | `theorem` | [posIndex_eq_max_finrank_posDefOn](../../../../../mathematics/Algebra/LinearAlgebra/Sylvester/Varianta77dfa77523d01de3673d56f775b8c9b1a376022238744b1245b4e4db4170dcf.lean/declarations/posindex-eq-max-finrank-posdefon--2bf5710b24438cb884767fc0.md) | 312 | `result-track:2bf5710b24438cb884767fc035273f71ea008a313fd0e55c0744bdc7e680e654` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
