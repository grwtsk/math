# Verification target: GRWTSK.Algebra.Imo2015Q6.Variantad03deeb0947c3ae12bfc0f8c91598862ef97305c78494f1fc9d08068f1bd393

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dff4316401e74ec63ac264015bb26a0ea6ab3211",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Imo2015Q6/Variantad03deeb0947c3ae12bfc0f8c91598862ef97305c78494f1fc9d08068f1bd393.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Imo2015Q6/Variantad03deeb0947c3ae12bfc0f8c91598862ef97305c78494f1fc9d08068f1bd393.lean/index.md) · [Full source](../../../../mathematics/Algebra/Imo2015Q6/Variantad03deeb0947c3ae12bfc0f8c91598862ef97305c78494f1fc9d08068f1bd393.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dff4316401e74ec63ac264015bb26a0ea6ab3211`.

Source path: `GRWTSK/Algebra/Imo2015Q6/Variantad03deeb0947c3ae12bfc0f8c91598862ef97305c78494f1fc9d08068f1bd393.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Imo2015Q6/Variantad03deeb0947c3ae12bfc0f8c91598862ef97305c78494f1fc9d08068f1bd393.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Intervals` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Group.Int.Sum` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Condition](../../../../mathematics/Algebra/Imo2015Q6/Variantad03deeb0947c3ae12bfc0f8c91598862ef97305c78494f1fc9d08068f1bd393.lean/declarations/condition--70b7a68a6e1c3e6cb186624e.md) | 56 | `declaration-track:70b7a68a6e1c3e6cb186624e5049227db59b6ef743dd55ebed76644b54913395` |
| 2 | `def` | [pool](../../../../mathematics/Algebra/Imo2015Q6/Variantad03deeb0947c3ae12bfc0f8c91598862ef97305c78494f1fc9d08068f1bd393.lean/declarations/pool--6a1f64652f0483f7d33908f2.md) | 59 | `declaration-track:6a1f64652f0483f7d33908f2fc715579691ff4d7646402b1027206cdd655b8ad` |
| 3 | `lemma` | [exists_add_eq_of_mem_pool](../../../../mathematics/Algebra/Imo2015Q6/Variantad03deeb0947c3ae12bfc0f8c91598862ef97305c78494f1fc9d08068f1bd393.lean/declarations/exists-add-eq-of-mem-pool--3ff8c2b904672a8bdb07d2cc.md) | 67 | `result-track:3ff8c2b904672a8bdb07d2ccf76675bfea402ac2022e1bf2f5121b98be07a1f6` |
| 4 | `lemma` | [pool_subset_Icc](../../../../mathematics/Algebra/Imo2015Q6/Variantad03deeb0947c3ae12bfc0f8c91598862ef97305c78494f1fc9d08068f1bd393.lean/declarations/pool-subset-icc--e0112b86772a69e88ba5c25b.md) | 81 | `result-track:e0112b86772a69e88ba5c25bd6658f53b77ace7e32665277a2e33e8f8baf710b` |
| 5 | `lemma` | [notMem_pool_self](../../../../mathematics/Algebra/Imo2015Q6/Variantad03deeb0947c3ae12bfc0f8c91598862ef97305c78494f1fc9d08068f1bd393.lean/declarations/notmem-pool-self--805b1db4783d91d263d4c7e1.md) | 92 | `result-track:805b1db4783d91d263d4c7e1d9e3da453a7164939c01182d18f87182e9716af3` |
| 6 | `lemma` | [card_pool_succ](../../../../mathematics/Algebra/Imo2015Q6/Variantad03deeb0947c3ae12bfc0f8c91598862ef97305c78494f1fc9d08068f1bd393.lean/declarations/card-pool-succ--68b29da0b8af67587596bc7d.md) | 101 | `result-track:68b29da0b8af67587596bc7d488ab1e864b03d0f8bcdcaff9efb7fdcbdb705a2` |
| 7 | `lemma` | [monotone_card_pool](../../../../mathematics/Algebra/Imo2015Q6/Variantad03deeb0947c3ae12bfc0f8c91598862ef97305c78494f1fc9d08068f1bd393.lean/declarations/monotone-card-pool--e4ab85edd6503d64207a72da.md) | 109 | `result-track:e4ab85edd6503d64207a72dac1fb85be73317333067f56d87f4e8f0a07d487e4` |
| 8 | `lemma` | [exists_max_card_pool](../../../../mathematics/Algebra/Imo2015Q6/Variantad03deeb0947c3ae12bfc0f8c91598862ef97305c78494f1fc9d08068f1bd393.lean/declarations/exists-max-card-pool--0caf3eefffe434265ffe0cd6.md) | 115 | `result-track:0caf3eefffe434265ffe0cd64693bb078ff27d9ac241508e2f0fd2a27bfea67d` |
| 9 | `lemma` | [b_pos](../../../../mathematics/Algebra/Imo2015Q6/Variantad03deeb0947c3ae12bfc0f8c91598862ef97305c78494f1fc9d08068f1bd393.lean/declarations/b-pos--a0c848ec19e7337604957b9c.md) | 127 | `result-track:a0c848ec19e7337604957b9c2cfb6567695f647824c58991c5542e30285ca244` |
| 10 | `lemma` | [zero_mem_pool](../../../../mathematics/Algebra/Imo2015Q6/Variantad03deeb0947c3ae12bfc0f8c91598862ef97305c78494f1fc9d08068f1bd393.lean/declarations/zero-mem-pool--667fd609b82fe5bae5bd18c1.md) | 139 | `result-track:667fd609b82fe5bae5bd18c16a5426f0a5c692213298f924f743777149b7947b` |
| 11 | `lemma` | [sum_sub_sum_eq_sub](../../../../mathematics/Algebra/Imo2015Q6/Variantad03deeb0947c3ae12bfc0f8c91598862ef97305c78494f1fc9d08068f1bd393.lean/declarations/sum-sub-sum-eq-sub--4ef7197d661425ddb81eb46d.md) | 146 | `result-track:4ef7197d661425ddb81eb46d38a869848e74eb243401b0d7eff23248fb363872` |
| 12 | `lemma` | [sum_telescope](../../../../mathematics/Algebra/Imo2015Q6/Variantad03deeb0947c3ae12bfc0f8c91598862ef97305c78494f1fc9d08068f1bd393.lean/declarations/sum-telescope--788e99d4f2f3435d55f77aad.md) | 155 | `result-track:788e99d4f2f3435d55f77aad51cc086fe2b75750a035752ea4ae6a9ffd674707` |
| 13 | `lemma` | [le_sum_pool](../../../../mathematics/Algebra/Imo2015Q6/Variantad03deeb0947c3ae12bfc0f8c91598862ef97305c78494f1fc9d08068f1bd393.lean/declarations/le-sum-pool--f66ae6bf5d98be1ed278dda9.md) | 163 | `result-track:f66ae6bf5d98be1ed278dda92eb110b839f33d68c2b1e0dbbdde75bbfcd13343` |
| 14 | `lemma` | [sum_pool_le](../../../../mathematics/Algebra/Imo2015Q6/Variantad03deeb0947c3ae12bfc0f8c91598862ef97305c78494f1fc9d08068f1bd393.lean/declarations/sum-pool-le--977796963d2a3cdb98d4c13e.md) | 169 | `result-track:977796963d2a3cdb98d4c13e85ccd0f00810bb7602928fe3a1421c48bc33f783` |
| 15 | `theorem` | [result](../../../../mathematics/Algebra/Imo2015Q6/Variantad03deeb0947c3ae12bfc0f8c91598862ef97305c78494f1fc9d08068f1bd393.lean/declarations/result--cde3991fdb0c7e9931db2198.md) | 178 | `result-track:cde3991fdb0c7e9931db219849ad820b3c1d0c9abc610d4de674eb6c6adabf85` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
