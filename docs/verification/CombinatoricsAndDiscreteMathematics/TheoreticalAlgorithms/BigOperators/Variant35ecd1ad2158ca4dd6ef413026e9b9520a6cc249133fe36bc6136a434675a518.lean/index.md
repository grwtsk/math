# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.BigOperators.Variant35ecd1ad2158ca4dd6ef413026e9b9520a6cc249133fe36bc6136a434675a518

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c27ae4e6e795f5bf92daaf3343044c77ff4378a2",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BigOperators/Variant35ecd1ad2158ca4dd6ef413026e9b9520a6cc249133fe36bc6136a434675a518.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BigOperators/Variant35ecd1ad2158ca4dd6ef413026e9b9520a6cc249133fe36bc6136a434675a518.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BigOperators/Variant35ecd1ad2158ca4dd6ef413026e9b9520a6cc249133fe36bc6136a434675a518.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c27ae4e6e795f5bf92daaf3343044c77ff4378a2`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BigOperators/Variant35ecd1ad2158ca4dd6ef413026e9b9520a6cc249133fe36bc6136a434675a518.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BigOperators/Variant35ecd1ad2158ca4dd6ef413026e9b9520a6cc249133fe36bc6136a434675a518.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finsupp.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Pairwise` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [List.support_sum_subset](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BigOperators/Variant35ecd1ad2158ca4dd6ef413026e9b9520a6cc249133fe36bc6136a434675a518.lean/declarations/list-support-sum-subset--3fbc09684f9b6329cc557a44.md) | 38 | `result-track:3fbc09684f9b6329cc557a449c73c53148f69e5ab6d0430769986211fc3d1c16` |
| 2 | `theorem` | [Multiset.support_sum_subset](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BigOperators/Variant35ecd1ad2158ca4dd6ef413026e9b9520a6cc249133fe36bc6136a434675a518.lean/declarations/multiset-support-sum-subset--15b5a38e1b85ee02e0dde4b1.md) | 47 | `result-track:15b5a38e1b85ee02e0dde4b1b38c84637bcce63148c30416d749698f30b7b2c0` |
| 3 | `theorem` | [Finset.support_sum_subset](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BigOperators/Variant35ecd1ad2158ca4dd6ef413026e9b9520a6cc249133fe36bc6136a434675a518.lean/declarations/finset-support-sum-subset--f5572eafd2869447ffeff00c.md) | 54 | `result-track:f5572eafd2869447ffeff00c698c08c7e86618271499baba05e6591c8f1a883e` |
| 4 | `theorem` | [List.mem_foldr_sup_support_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BigOperators/Variant35ecd1ad2158ca4dd6ef413026e9b9520a6cc249133fe36bc6136a434675a518.lean/declarations/list-mem-foldr-sup-support-iff--a144be361516e3c6c6761212.md) | 59 | `result-track:a144be361516e3c6c6761212a12ca104e4b6b8f4043eb576b42558a2b51c7b21` |
| 5 | `theorem` | [Multiset.mem_sup_map_support_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BigOperators/Variant35ecd1ad2158ca4dd6ef413026e9b9520a6cc249133fe36bc6136a434675a518.lean/declarations/multiset-mem-sup-map-support-iff--40907bd1c345111d5b67476e.md) | 68 | `result-track:40907bd1c345111d5b67476e35078f8b1a9db258848eb9d824462c1be1d3dbe3` |
| 6 | `theorem` | [Finset.mem_sup_support_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BigOperators/Variant35ecd1ad2158ca4dd6ef413026e9b9520a6cc249133fe36bc6136a434675a518.lean/declarations/finset-mem-sup-support-iff--99dcb826cf8141b6b547fa87.md) | 75 | `result-track:99dcb826cf8141b6b547fa87280d5f57a88c4e77baa4caa431822af418298a9f` |
| 7 | `theorem` | [List.support_sum_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BigOperators/Variant35ecd1ad2158ca4dd6ef413026e9b9520a6cc249133fe36bc6136a434675a518.lean/declarations/list-support-sum-eq--a651301457de4d77ee5f7143.md) | 80 | `result-track:a651301457de4d77ee5f71434440c5ed386bf6fd5c07a294c1c65980d5ecc10d` |
| 8 | `theorem` | [Multiset.support_sum_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BigOperators/Variant35ecd1ad2158ca4dd6ef413026e9b9520a6cc249133fe36bc6136a434675a518.lean/declarations/multiset-support-sum-eq--8b8051b350494bd4cec485c6.md) | 98 | `result-track:8b8051b350494bd4cec485c6c7543a4cd116c3e0e12455976f810577567c37bd` |
| 9 | `theorem` | [Finset.support_sum_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BigOperators/Variant35ecd1ad2158ca4dd6ef413026e9b9520a6cc249133fe36bc6136a434675a518.lean/declarations/finset-support-sum-eq--aaf12297bf145409f3789dc4.md) | 113 | `result-track:aaf12297bf145409f3789dc478c8a7a937ab08ddb755212075aa06c7884ac120` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
