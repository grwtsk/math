# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.SourceSquarefreeSampling.Variant86652a3efaad72d8b4b7ab518d4e017d6d25f7d9e445c437d33248efffccab48

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5388826d5112797c622ec2c364ba65acc3289eba",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/SourceSquarefreeSampling/Variant86652a3efaad72d8b4b7ab518d4e017d6d25f7d9e445c437d33248efffccab48.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SourceSquarefreeSampling/Variant86652a3efaad72d8b4b7ab518d4e017d6d25f7d9e445c437d33248efffccab48.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SourceSquarefreeSampling/Variant86652a3efaad72d8b4b7ab518d4e017d6d25f7d9e445c437d33248efffccab48.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5388826d5112797c622ec2c364ba65acc3289eba`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/SourceSquarefreeSampling/Variant86652a3efaad72d8b4b7ab518d4e017d6d25f7d9e445c437d33248efffccab48.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/SourceSquarefreeSampling/Variant86652a3efaad72d8b4b7ab518d4e017d6d25f7d9e445c437d33248efffccab48.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceSamplingLedger` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [reciprocalSqrtSum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SourceSquarefreeSampling/Variant86652a3efaad72d8b4b7ab518d4e017d6d25f7d9e445c437d33248efffccab48.lean/declarations/reciprocalsqrtsum--f0a190a1cce8834fcf3c2446.md) | 13 | `declaration-track:f0a190a1cce8834fcf3c24461dbe906efd82290c9f838aa3483089206257c894` |
| 2 | `theorem` | [mobius_four_mul_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SourceSquarefreeSampling/Variant86652a3efaad72d8b4b7ab518d4e017d6d25f7d9e445c437d33248efffccab48.lean/declarations/mobius-four-mul-zero--eb301d033042c9f8cc748690.md) | 16 | `result-track:eb301d033042c9f8cc748690825be11a1a88ce3682e84e0270265683b6570f12` |
| 3 | `theorem` | [reciprocal_upper_step](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SourceSquarefreeSampling/Variant86652a3efaad72d8b4b7ab518d4e017d6d25f7d9e445c437d33248efffccab48.lean/declarations/reciprocal-upper-step--3d78eecae90efc361fff7380.md) | 22 | `result-track:3d78eecae90efc361fff7380f2479b03aba325f8b19899e34356fa28e30bc49a` |
| 4 | `theorem` | [reciprocal_lower_step](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SourceSquarefreeSampling/Variant86652a3efaad72d8b4b7ab518d4e017d6d25f7d9e445c437d33248efffccab48.lean/declarations/reciprocal-lower-step--c35ddd11640d4434a7a39d48.md) | 35 | `result-track:c35ddd11640d4434a7a39d48f5302ffc81f051d36c8e8c6923695caf2f00e81b` |
| 5 | `theorem` | [reciprocalSqrtSum_upper_unit](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SourceSquarefreeSampling/Variant86652a3efaad72d8b4b7ab518d4e017d6d25f7d9e445c437d33248efffccab48.lean/declarations/reciprocalsqrtsum-upper-unit--604397c1d8e3102607fdbd63.md) | 47 | `result-track:604397c1d8e3102607fdbd637bf96e7a3d5bf2d6ddcb7601a6e4c0d57404021d` |
| 6 | `theorem` | [reciprocalSqrtSum_lower_next](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SourceSquarefreeSampling/Variant86652a3efaad72d8b4b7ab518d4e017d6d25f7d9e445c437d33248efffccab48.lean/declarations/reciprocalsqrtsum-lower-next--6103217c10fa8a3f3137e9e8.md) | 57 | `result-track:6103217c10fa8a3f3137e9e8ef31e38cb5c2679dd07dc714b2bba298007acdc2` |
| 7 | `def` | [squarefreeWeightSum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SourceSquarefreeSampling/Variant86652a3efaad72d8b4b7ab518d4e017d6d25f7d9e445c437d33248efffccab48.lean/declarations/squarefreeweightsum--09a51c58dc0dae03f9c2b912.md) | 68 | `declaration-track:09a51c58dc0dae03f9c2b91248fc5a701ed0c0684dba27b89463b34e97e19202` |
| 8 | `theorem` | [multiples_four_subset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SourceSquarefreeSampling/Variant86652a3efaad72d8b4b7ab518d4e017d6d25f7d9e445c437d33248efffccab48.lean/declarations/multiples-four-subset--dd20426ed750d98ab39d11c3.md) | 72 | `result-track:dd20426ed750d98ab39d11c36c47159f9239331255376891d76afb7ab334af45` |
| 9 | `theorem` | [reciprocal_four_sum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SourceSquarefreeSampling/Variant86652a3efaad72d8b4b7ab518d4e017d6d25f7d9e445c437d33248efffccab48.lean/declarations/reciprocal-four-sum--791a323093d5454f0d4ad8e6.md) | 80 | `result-track:791a323093d5454f0d4ad8e6e753d7df7d9e8db342398db89069008335721d5f` |
| 10 | `theorem` | [squarefreeWeightSum_subtract_four](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SourceSquarefreeSampling/Variant86652a3efaad72d8b4b7ab518d4e017d6d25f7d9e445c437d33248efffccab48.lean/declarations/squarefreeweightsum-subtract-four--641e0729da154d1e472da298.md) | 95 | `result-track:641e0729da154d1e472da2983aaca0cf19434307e7ed7605e7412016be8e76a4` |
| 11 | `theorem` | [squarefreeWeightSum_three_halves](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SourceSquarefreeSampling/Variant86652a3efaad72d8b4b7ab518d4e017d6d25f7d9e445c437d33248efffccab48.lean/declarations/squarefreeweightsum-three-halves--bdd1878bfcdd1b71596262ed.md) | 129 | `result-track:bdd1878bfcdd1b71596262edd89ad7587a9f07416e76bb303e7eb9c17b90968c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
