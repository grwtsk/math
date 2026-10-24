# Verification target: GRWTSK.Algebra.LinearAlgebra.StdBasis.Variant062f3b76316e01850f37f13bcc43d1a19215d9fae019670b02777915e789b7fd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cce059ba399320e06f80e309d25abc60c23a4e03",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/StdBasis/Variant062f3b76316e01850f37f13bcc43d1a19215d9fae019670b02777915e789b7fd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/StdBasis/Variant062f3b76316e01850f37f13bcc43d1a19215d9fae019670b02777915e789b7fd.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/StdBasis/Variant062f3b76316e01850f37f13bcc43d1a19215d9fae019670b02777915e789b7fd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cce059ba399320e06f80e309d25abc60c23a4e03`.

Source path: `GRWTSK/Algebra/LinearAlgebra/StdBasis/Variant062f3b76316e01850f37f13bcc43d1a19215d9fae019670b02777915e789b7fd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/StdBasis/Variant062f3b76316e01850f37f13bcc43d1a19215d9fae019670b02777915e789b7fd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [linearIndependent_single](../../../../../mathematics/Algebra/LinearAlgebra/StdBasis/Variant062f3b76316e01850f37f13bcc43d1a19215d9fae019670b02777915e789b7fd.lean/declarations/linearindependent-single--340500ae152eebd54e13cd4f.md) | 55 | `result-track:340500ae152eebd54e13cd4fe6286c1d198e2e879ddd47df0418479e0c5de713` |
| 2 | `theorem` | [linearIndependent_single_one](../../../../../mathematics/Algebra/LinearAlgebra/StdBasis/Variant062f3b76316e01850f37f13bcc43d1a19215d9fae019670b02777915e789b7fd.lean/declarations/linearindependent-single-one--b97224ee757ebfb4b308ed3d.md) | 60 | `result-track:b97224ee757ebfb4b308ed3dc1cf13cfaa491858d8de720ebb02b281f509f353` |
| 3 | `lemma` | [linearIndependent_single_of_ne_zero](../../../../../mathematics/Algebra/LinearAlgebra/StdBasis/Variant062f3b76316e01850f37f13bcc43d1a19215d9fae019670b02777915e789b7fd.lean/declarations/linearindependent-single-of-ne-zero--de9c6e4fa588df592bd91c6b.md) | 66 | `result-track:de9c6e4fa588df592bd91c6b842dcc83856088b9cfc4c68bc8f8af1525f8f3a7` |
| 4 | `def` | [basis](../../../../../mathematics/Algebra/LinearAlgebra/StdBasis/Variant062f3b76316e01850f37f13bcc43d1a19215d9fae019670b02777915e789b7fd.lean/declarations/basis--2392d8e2d954b65c92610a59.md) | 85 | `declaration-track:2392d8e2d954b65c92610a598c36385134215938026ade15a11d2b7aeeeef33e` |
| 5 | `theorem` | [basis_repr_single](../../../../../mathematics/Algebra/LinearAlgebra/StdBasis/Variant062f3b76316e01850f37f13bcc43d1a19215d9fae019670b02777915e789b7fd.lean/declarations/basis-repr-single--dee9c5e67ab8130d5a4585a8.md) | 93 | `result-track:dee9c5e67ab8130d5a4585a833f0cae86b39ee6edbeca2cfb7a3b5f95d987515` |
| 6 | `theorem` | [basis_apply](../../../../../mathematics/Algebra/LinearAlgebra/StdBasis/Variant062f3b76316e01850f37f13bcc43d1a19215d9fae019670b02777915e789b7fd.lean/declarations/basis-apply--4a56f85824fdda218bc66c02.md) | 113 | `result-track:4a56f85824fdda218bc66c023afdc39df5dfc83572f6c6173602eb3ee1ea76cc` |
| 7 | `theorem` | [basis_repr](../../../../../mathematics/Algebra/LinearAlgebra/StdBasis/Variant062f3b76316e01850f37f13bcc43d1a19215d9fae019670b02777915e789b7fd.lean/declarations/basis-repr--c31f4ab8e9c180ee3f4750b3.md) | 118 | `result-track:c31f4ab8e9c180ee3f4750b3f9ff9a4d6b782fd0cc5dc2d277e53c8cb31bc310` |
| 8 | `def` | [basisFun](../../../../../mathematics/Algebra/LinearAlgebra/StdBasis/Variant062f3b76316e01850f37f13bcc43d1a19215d9fae019670b02777915e789b7fd.lean/declarations/basisfun--fb7bf345772400d8eadcd5b2.md) | 130 | `declaration-track:fb7bf345772400d8eadcd5b21c5619dd43dd76b7b367c2a1b001807da39def12` |
| 9 | `theorem` | [basisFun_apply](../../../../../mathematics/Algebra/LinearAlgebra/StdBasis/Variant062f3b76316e01850f37f13bcc43d1a19215d9fae019670b02777915e789b7fd.lean/declarations/basisfun-apply--04011add133f2a643b458f6c.md) | 134 | `result-track:04011add133f2a643b458f6c1c8c09f01da1151e01477ea25003cd8f27fd616f` |
| 10 | `theorem` | [basisFun_repr](../../../../../mathematics/Algebra/LinearAlgebra/StdBasis/Variant062f3b76316e01850f37f13bcc43d1a19215d9fae019670b02777915e789b7fd.lean/declarations/basisfun-repr--177125c7b1415f3c999ab76c.md) | 139 | `result-track:177125c7b1415f3c999ab76cbf106bbec4ba3ed68bafab914c3ff17bede4b935` |
| 11 | `theorem` | [basisFun_equivFun](../../../../../mathematics/Algebra/LinearAlgebra/StdBasis/Variant062f3b76316e01850f37f13bcc43d1a19215d9fae019670b02777915e789b7fd.lean/declarations/basisfun-equivfun--a16af412a2fe02023291f720.md) | 142 | `result-track:a16af412a2fe02023291f7205e9d57d90fc98a8055ec941d6959bbcbcc09ba5a` |
| 12 | `def` | [spanSubset](../../../../../mathematics/Algebra/LinearAlgebra/StdBasis/Variant062f3b76316e01850f37f13bcc43d1a19215d9fae019670b02777915e789b7fd.lean/declarations/spansubset--aa8a5f948dc1b7ae3497717b.md) | 150 | `declaration-track:aa8a5f948dc1b7ae3497717bc06eceb0721dfb928fe57cddbadb15274f131afe` |
| 13 | `lemma` | [mem_spanSubset_iff](../../../../../mathematics/Algebra/LinearAlgebra/StdBasis/Variant062f3b76316e01850f37f13bcc43d1a19215d9fae019670b02777915e789b7fd.lean/declarations/mem-spansubset-iff--82e7bf9c9730a79eb8d78431.md) | 155 | `result-track:82e7bf9c9730a79eb8d78431528c1284ed72a65ab5fcf670f471b224ffbd68ad` |
| 14 | `lemma` | [AlgHom.eq_piEvalAlgHom](../../../../../mathematics/Algebra/LinearAlgebra/StdBasis/Variant062f3b76316e01850f37f13bcc43d1a19215d9fae019670b02777915e789b7fd.lean/declarations/alghom-eq-pievalalghom--39562b9ba81c9d59dc5e0cf8.md) | 167 | `result-track:39562b9ba81c9d59dc5e0cf85ed2e07cfa755109126217108e0af4ffd9ac9e43` |
| 15 | `def` | [piEquiv](../../../../../mathematics/Algebra/LinearAlgebra/StdBasis/Variant062f3b76316e01850f37f13bcc43d1a19215d9fae019670b02777915e789b7fd.lean/declarations/piequiv--21d658330544eed15a8ff608.md) | 194 | `declaration-track:21d658330544eed15a8ff608e64ec5dad01cacf4514d3ad3681564d4e880b0bf` |
| 16 | `lemma` | [piEquiv_apply_apply](../../../../../mathematics/Algebra/LinearAlgebra/StdBasis/Variant062f3b76316e01850f37f13bcc43d1a19215d9fae019670b02777915e789b7fd.lean/declarations/piequiv-apply-apply--c49e895b2f8c3d808cea5778.md) | 196 | `result-track:c49e895b2f8c3d808cea5778e9fa890c6645a7c2e3e6a6febacf180764ba9b6a` |
| 17 | `lemma` | [range_piEquiv](../../../../../mathematics/Algebra/LinearAlgebra/StdBasis/Variant062f3b76316e01850f37f13bcc43d1a19215d9fae019670b02777915e789b7fd.lean/declarations/range-piequiv--380bdc7ed841c69bdfc1363c.md) | 202 | `result-track:380bdc7ed841c69bdfc1363cb3ae5aa579086ab019ba8432a23b3eb7e7d0e7c7` |
| 18 | `lemma` | [surjective_piEquiv_apply_iff](../../../../../mathematics/Algebra/LinearAlgebra/StdBasis/Variant062f3b76316e01850f37f13bcc43d1a19215d9fae019670b02777915e789b7fd.lean/declarations/surjective-piequiv-apply-iff--43908c48d8740a087468f2c7.md) | 206 | `result-track:43908c48d8740a087468f2c75457f73d9c3edc88529c747e657416d964b7d8e9` |
| 19 | `instance` | [_root_.GRWTSK.Algebra.LinearAlgebra.LinearIndependentSingle.Variant19e1b24253a473ea329f136c127a468b09880049a008bfad010e2fcb191772ac.Module.Free.pi](../../../../../mathematics/Algebra/LinearAlgebra/StdBasis/Variant062f3b76316e01850f37f13bcc43d1a19215d9fae019670b02777915e789b7fd.lean/declarations/root-grwtsk-algebra-linearalgebra-linearindependentsingle-variant19e1b24--d94fcf4cfcbcb5ddc2cd2a20.md) | 217 | `declaration-track:d94fcf4cfcbcb5ddc2cd2a208fd0ec5f6cce909eac7ac6a9d4fce143a68d0d73` |
| 20 | `instance` | [_root_.GRWTSK.Algebra.LinearAlgebra.LinearIndependentSingle.Variant19e1b24253a473ea329f136c127a468b09880049a008bfad010e2fcb191772ac.Module.Free.function](../../../../../mathematics/Algebra/LinearAlgebra/StdBasis/Variant062f3b76316e01850f37f13bcc43d1a19215d9fae019670b02777915e789b7fd.lean/declarations/root-grwtsk-algebra-linearalgebra-linearindependentsingle-variant19e1b24--c995eda16e265dcb5fa46760.md) | 225 | `declaration-track:c995eda16e265dcb5fa4676074ea0d8744d3efc312244065f9f3d7c2b4c1bee1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
