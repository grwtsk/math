# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Finsupp.Varianta0d06b8e98425ff1be150fecc1806555ea2e5ee44507acd851818d6e72972916

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "39cda8d7a4c306a712e7026af88ecfe9cd852fc1",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Finsupp/Varianta0d06b8e98425ff1be150fecc1806555ea2e5ee44507acd851818d6e72972916.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Finsupp/Varianta0d06b8e98425ff1be150fecc1806555ea2e5ee44507acd851818d6e72972916.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Finsupp/Varianta0d06b8e98425ff1be150fecc1806555ea2e5ee44507acd851818d6e72972916.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `39cda8d7a4c306a712e7026af88ecfe9cd852fc1`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Finsupp/Varianta0d06b8e98425ff1be150fecc1806555ea2e5ee44507acd851818d6e72972916.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Finsupp/Varianta0d06b8e98425ff1be150fecc1806555ea2e5ee44507acd851818d6e72972916.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GroupWithZero.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Sym` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finsupp.Defs` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [sym2_support_eq_preimage_support_mul](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Finsupp/Varianta0d06b8e98425ff1be150fecc1806555ea2e5ee44507acd851818d6e72972916.lean/declarations/sym2-support-eq-preimage-support-mul--8ae230fe621a5eea5822e89f.md) | 30 | `result-track:8ae230fe621a5eea5822e89f2b55bec4c9e7c0f74f927c1a6571fe78417580eb` |
| 2 | `lemma` | [mem_sym2_support_of_mul_ne_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Finsupp/Varianta0d06b8e98425ff1be150fecc1806555ea2e5ee44507acd851818d6e72972916.lean/declarations/mem-sym2-support-of-mul-ne-zero--cc5fe676545ed0b454a4ed50.md) | 33 | `result-track:cc5fe676545ed0b454a4ed500f7bf0e5c631aec380fea6c9055689dedab2b9d3` |
| 3 | `def` | [sym2Mul](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Finsupp/Varianta0d06b8e98425ff1be150fecc1806555ea2e5ee44507acd851818d6e72972916.lean/declarations/sym2mul--647560138cfc67bd705e8d96.md) | 40 | `declaration-track:647560138cfc67bd705e8d960bcac97dc2723eceede9c11f646b04d8c815701b` |
| 4 | `lemma` | [support_sym2Mul_subset](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Finsupp/Varianta0d06b8e98425ff1be150fecc1806555ea2e5ee44507acd851818d6e72972916.lean/declarations/support-sym2mul-subset--a0bd223207785ccb6773d106.md) | 43 | `result-track:a0bd223207785ccb6773d106b2b6fde6e1a290c0f8e4643fa96a5d3dfc911abe` |
| 5 | `lemma` | [coe_sym2Mul](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Finsupp/Varianta0d06b8e98425ff1be150fecc1806555ea2e5ee44507acd851818d6e72972916.lean/declarations/coe-sym2mul--9f4877f84bbf777508c7145b.md) | 45 | `result-track:9f4877f84bbf777508c7145b434fe1868fcb14a5d18d9f84cab9d53a9dc1127a` |
| 6 | `lemma` | [sym2Mul_apply_mk](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Finsupp/Varianta0d06b8e98425ff1be150fecc1806555ea2e5ee44507acd851818d6e72972916.lean/declarations/sym2mul-apply-mk--b944c83cb9330662b400854f.md) | 47 | `result-track:b944c83cb9330662b400854f5a3437729d8a5f6ffa8411834ff1e72ddc015a53` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
