# Verification target: GRWTSK.Algebra.LinearAlgebra.SpanRankOperations.Variant63dfb150ab71bc1705d3c21d4eb9c6c9e74ace663a5344021519cdf84ff9d1dd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f3725d4934f8c77dd6921fe7e90c49aaab6d3bdb",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/SpanRankOperations/Variant63dfb150ab71bc1705d3c21d4eb9c6c9e74ace663a5344021519cdf84ff9d1dd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/SpanRankOperations/Variant63dfb150ab71bc1705d3c21d4eb9c6c9e74ace663a5344021519cdf84ff9d1dd.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/SpanRankOperations/Variant63dfb150ab71bc1705d3c21d4eb9c6c9e74ace663a5344021519cdf84ff9d1dd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f3725d4934f8c77dd6921fe7e90c49aaab6d3bdb`.

Source path: `GRWTSK/Algebra/LinearAlgebra/SpanRankOperations/Variant63dfb150ab71bc1705d3c21d4eb9c6c9e74ace663a5344021519cdf84ff9d1dd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/SpanRankOperations/Variant63dfb150ab71bc1705d3c21d4eb9c6c9e74ace663a5344021519cdf84ff9d1dd.lean.json)

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
| 1 | `lemma` | [Submodule.spanRank_baseChange_le](../../../../../mathematics/Algebra/LinearAlgebra/SpanRankOperations/Variant63dfb150ab71bc1705d3c21d4eb9c6c9e74ace663a5344021519cdf84ff9d1dd.lean/declarations/submodule-spanrank-basechange-le--45e223ba6fc8b6daacdb8dd3.md) | 36 | `result-track:45e223ba6fc8b6daacdb8dd331fe550b4588e8846f6839273197cb80c6916e54` |
| 2 | `lemma` | [Submodule.FG.spanFinrank_baseChange_le](../../../../../mathematics/Algebra/LinearAlgebra/SpanRankOperations/Variant63dfb150ab71bc1705d3c21d4eb9c6c9e74ace663a5344021519cdf84ff9d1dd.lean/declarations/submodule-fg-spanfinrank-basechange-le--ef2589ab879dc2fae1399de1.md) | 43 | `result-track:ef2589ab879dc2fae1399de1180999b956113e849d2ed0590d657a03bc7d9c01` |
| 3 | `lemma` | [TensorProduct.spanRank_top_le](../../../../../mathematics/Algebra/LinearAlgebra/SpanRankOperations/Variant63dfb150ab71bc1705d3c21d4eb9c6c9e74ace663a5344021519cdf84ff9d1dd.lean/declarations/tensorproduct-spanrank-top-le--5db2ed0591a117d5a25c8ae9.md) | 48 | `result-track:5db2ed0591a117d5a25c8ae907f02ae0d937fba28cd332e14a263326088aaacc` |
| 4 | `lemma` | [TensorProduct.spanFinrank_top_le_of_fg](../../../../../mathematics/Algebra/LinearAlgebra/SpanRankOperations/Variant63dfb150ab71bc1705d3c21d4eb9c6c9e74ace663a5344021519cdf84ff9d1dd.lean/declarations/tensorproduct-spanfinrank-top-le-of-fg--b81a803a41ef99bb700335e0.md) | 51 | `result-track:b81a803a41ef99bb700335e079492c9787f5380ee5db3692c01d77c2e3f72d1f` |
| 5 | `lemma` | [TensorProduct.spanFinrank_top_eq_of_residueField](../../../../../mathematics/Algebra/LinearAlgebra/SpanRankOperations/Variant63dfb150ab71bc1705d3c21d4eb9c6c9e74ace663a5344021519cdf84ff9d1dd.lean/declarations/tensorproduct-spanfinrank-top-eq-of-residuefield--cc7dcfd2c27ac9aceb5e3dcc.md) | 58 | `result-track:cc7dcfd2c27ac9aceb5e3dcc43517a264a50820808cb6584f5468e916048549d` |
| 6 | `lemma` | [spanFinrank_eq_finrank_quotient](../../../../../mathematics/Algebra/LinearAlgebra/SpanRankOperations/Variant63dfb150ab71bc1705d3c21d4eb9c6c9e74ace663a5344021519cdf84ff9d1dd.lean/declarations/spanfinrank-eq-finrank-quotient--1c96fd8a8f107fb099ad3086.md) | 76 | `result-track:1c96fd8a8f107fb099ad3086a7abb4116bf85a8c03dfa8bf3597eb134f7944d2` |
| 7 | `lemma` | [spanFinrank_maximalIdeal_eq_finrank_cotangentSpace_of_fg](../../../../../mathematics/Algebra/LinearAlgebra/SpanRankOperations/Variant63dfb150ab71bc1705d3c21d4eb9c6c9e74ace663a5344021519cdf84ff9d1dd.lean/declarations/spanfinrank-maximalideal-eq-finrank-cotangentspace-of-fg--e170a47db3832409ad3fcb4e.md) | 88 | `result-track:e170a47db3832409ad3fcb4e035d48897c6ba933795ae150081a5133dee31181` |
| 8 | `lemma` | [spanFinrank_maximalIdeal_eq_finrank_cotangentSpace](../../../../../mathematics/Algebra/LinearAlgebra/SpanRankOperations/Variant63dfb150ab71bc1705d3c21d4eb9c6c9e74ace663a5344021519cdf84ff9d1dd.lean/declarations/spanfinrank-maximalideal-eq-finrank-cotangentspace--66544f5689027bb4160e085e.md) | 93 | `result-track:66544f5689027bb4160e085e9e9812c682c868badd49ccbd52162a78914d79a6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
