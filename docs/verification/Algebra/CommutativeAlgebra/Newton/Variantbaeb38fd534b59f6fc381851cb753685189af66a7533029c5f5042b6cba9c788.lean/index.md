# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Newton.Variantbaeb38fd534b59f6fc381851cb753685189af66a7533029c5f5042b6cba9c788

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fb98012aeb3fe5b3aba94584d22a7ec33d79fd9e",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Newton/Variantbaeb38fd534b59f6fc381851cb753685189af66a7533029c5f5042b6cba9c788.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/Newton/Variantbaeb38fd534b59f6fc381851cb753685189af66a7533029c5f5042b6cba9c788.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/Newton/Variantbaeb38fd534b59f6fc381851cb753685189af66a7533029c5f5042b6cba9c788.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fb98012aeb3fe5b3aba94584d22a7ec33d79fd9e`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Newton/Variantbaeb38fd534b59f6fc381851cb753685189af66a7533029c5f5042b6cba9c788.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Newton/Variantbaeb38fd534b59f6fc381851cb753685189af66a7533029c5f5042b6cba9c788.lean.json)

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
| 1 | `def` | [newtonMap](../../../../../mathematics/Algebra/CommutativeAlgebra/Newton/Variantbaeb38fd534b59f6fc381851cb753685189af66a7533029c5f5042b6cba9c788.lean/declarations/newtonmap--abd1bd59bce3356f3fcbbce6.md) | 44 | `declaration-track:abd1bd59bce3356f3fcbbce6ee876538e57197a624f711da9be8c1ddf07ee79b` |
| 2 | `theorem` | [newtonMap_apply](../../../../../mathematics/Algebra/CommutativeAlgebra/Newton/Variantbaeb38fd534b59f6fc381851cb753685189af66a7533029c5f5042b6cba9c788.lean/declarations/newtonmap-apply--d7bc9f52e1a0ecd85c606b41.md) | 47 | `result-track:d7bc9f52e1a0ecd85c606b41b7aaeca60ba761a2b6220759abe613c6ea9c317a` |
| 3 | `theorem` | [newtonMap_apply_of_isUnit](../../../../../mathematics/Algebra/CommutativeAlgebra/Newton/Variantbaeb38fd534b59f6fc381851cb753685189af66a7533029c5f5042b6cba9c788.lean/declarations/newtonmap-apply-of-isunit--60c1d39f1042da17f7fa1ed8.md) | 53 | `result-track:60c1d39f1042da17f7fa1ed8fdf4471325c049483a93cb32a43a825b9b0f0e2a` |
| 4 | `theorem` | [newtonMap_apply_of_not_isUnit](../../../../../mathematics/Algebra/CommutativeAlgebra/Newton/Variantbaeb38fd534b59f6fc381851cb753685189af66a7533029c5f5042b6cba9c788.lean/declarations/newtonmap-apply-of-not-isunit--9dc6f73dfa0f2cceaf583c3c.md) | 57 | `result-track:9dc6f73dfa0f2cceaf583c3ce7bc876a8fd9993b097dc7a2dc10a9047ac2c537` |
| 5 | `theorem` | [isNilpotent_iterate_newtonMap_sub_of_isNilpotent](../../../../../mathematics/Algebra/CommutativeAlgebra/Newton/Variantbaeb38fd534b59f6fc381851cb753685189af66a7533029c5f5042b6cba9c788.lean/declarations/isnilpotent-iterate-newtonmap-sub-of-isnilpotent--6ad47f77ca3b4f1d3c69a258.md) | 61 | `result-track:6ad47f77ca3b4f1d3c69a2586dbe7fd41401265221622f5020571d87e7ef1499` |
| 6 | `theorem` | [isFixedPt_newtonMap_of_aeval_eq_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Newton/Variantbaeb38fd534b59f6fc381851cb753685189af66a7533029c5f5042b6cba9c788.lean/declarations/isfixedpt-newtonmap-of-aeval-eq-zero--66cb9e35bc8cc6555029cdbc.md) | 71 | `result-track:66cb9e35bc8cc6555029cdbc50425e07dbb847c79abfb28c57d6309e023b6df4` |
| 7 | `theorem` | [isFixedPt_newtonMap_of_isUnit_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/Newton/Variantbaeb38fd534b59f6fc381851cb753685189af66a7533029c5f5042b6cba9c788.lean/declarations/isfixedpt-newtonmap-of-isunit-iff--df818d80d43d69c185a03581.md) | 75 | `result-track:df818d80d43d69c185a035813b0d9943c58e130373e798946711c1b969e5635f` |
| 8 | `theorem` | [aeval_pow_two_pow_dvd_aeval_iterate_newtonMap](../../../../../mathematics/Algebra/CommutativeAlgebra/Newton/Variantbaeb38fd534b59f6fc381851cb753685189af66a7533029c5f5042b6cba9c788.lean/declarations/aeval-pow-two-pow-dvd-aeval-iterate-newtonmap--862dbbbd70b5e16be99a280a.md) | 81 | `result-track:862dbbbd70b5e16be99a280a801129abd7228baa4b3a23fbdddbde32dffc87cd` |
| 9 | `theorem` | [existsUnique_nilpotent_sub_and_aeval_eq_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Newton/Variantbaeb38fd534b59f6fc381851cb753685189af66a7533029c5f5042b6cba9c788.lean/declarations/existsunique-nilpotent-sub-and-aeval-eq-zero--4a1bf33f7886dec180b79319.md) | 106 | `result-track:4a1bf33f7886dec180b79319a6be4da320002f38482094f57fe225b885ed69d6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
