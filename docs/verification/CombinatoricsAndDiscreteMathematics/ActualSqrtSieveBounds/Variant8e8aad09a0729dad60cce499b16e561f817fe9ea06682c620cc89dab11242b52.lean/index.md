# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.ActualSqrtSieveBounds.Variant8e8aad09a0729dad60cce499b16e561f817fe9ea06682c620cc89dab11242b52

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f2ec7e4b0bc4f4d7c38b50fa895be0fdcab53021",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ActualSqrtSieveBounds/Variant8e8aad09a0729dad60cce499b16e561f817fe9ea06682c620cc89dab11242b52.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ActualSqrtSieveBounds/Variant8e8aad09a0729dad60cce499b16e561f817fe9ea06682c620cc89dab11242b52.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ActualSqrtSieveBounds/Variant8e8aad09a0729dad60cce499b16e561f817fe9ea06682c620cc89dab11242b52.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f2ec7e4b0bc4f4d7c38b50fa895be0fdcab53021`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/ActualSqrtSieveBounds/Variant8e8aad09a0729dad60cce499b16e561f817fe9ea06682c620cc89dab11242b52.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/ActualSqrtSieveBounds/Variant8e8aad09a0729dad60cce499b16e561f817fe9ea06682c620cc89dab11242b52.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceSignedSamplingExplicitBudget` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [reciprocalSqrt_upper_step](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ActualSqrtSieveBounds/Variant8e8aad09a0729dad60cce499b16e561f817fe9ea06682c620cc89dab11242b52.lean/declarations/reciprocalsqrt-upper-step--eb0e8f00466688775d151c86.md) | 17 | `result-track:eb0e8f00466688775d151c8615fbe2a50b2ab9cd6225775c0450ef6046d1f7d3` |
| 2 | `theorem` | [reciprocalSqrt_sum_upper](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ActualSqrtSieveBounds/Variant8e8aad09a0729dad60cce499b16e561f817fe9ea06682c620cc89dab11242b52.lean/declarations/reciprocalsqrt-sum-upper--f3d2e4ae868f3d456f308981.md) | 29 | `result-track:f3d2e4ae868f3d456f3089811b17f06d08fba00d57c580b8555577dc05b57310` |
| 3 | `theorem` | [reciprocalSqrt_sum_upper_total](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ActualSqrtSieveBounds/Variant8e8aad09a0729dad60cce499b16e561f817fe9ea06682c620cc89dab11242b52.lean/declarations/reciprocalsqrt-sum-upper-total--a0e310376c6cf81fa6d5d0f0.md) | 39 | `result-track:a0e310376c6cf81fa6d5d0f0055cc135ba9c985292da36e85b54db1247137025` |
| 4 | `theorem` | [reciprocalSqrt_lower_step](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ActualSqrtSieveBounds/Variant8e8aad09a0729dad60cce499b16e561f817fe9ea06682c620cc89dab11242b52.lean/declarations/reciprocalsqrt-lower-step--9c78c3e4f928e938bb4db9c6.md) | 47 | `result-track:9c78c3e4f928e938bb4db9c60c460b790190da35c2b764dcb566e913cc8c5a9b` |
| 5 | `theorem` | [reciprocalSqrt_sum_lower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ActualSqrtSieveBounds/Variant8e8aad09a0729dad60cce499b16e561f817fe9ea06682c620cc89dab11242b52.lean/declarations/reciprocalsqrt-sum-lower--14353103bf98de3cef393e69.md) | 60 | `result-track:14353103bf98de3cef393e692a5accc76c08be52bc8076f6f0f896466455982d` |
| 6 | `theorem` | [reciprocalSquare_sum_upper](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ActualSqrtSieveBounds/Variant8e8aad09a0729dad60cce499b16e561f817fe9ea06682c620cc89dab11242b52.lean/declarations/reciprocalsquare-sum-upper--380ac4839eb8adf11d8c30ee.md) | 76 | `result-track:380ac4839eb8adf11d8c30eed1bba10418a707a6e5abe603a1addd143f953b52` |
| 7 | `theorem` | [reciprocal_small_square_divisor_bonus](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ActualSqrtSieveBounds/Variant8e8aad09a0729dad60cce499b16e561f817fe9ea06682c620cc89dab11242b52.lean/declarations/reciprocal-small-square-divisor-bonus--485e31618437beab88b60dd0.md) | 100 | `result-track:485e31618437beab88b60dd09e6d2516e2d8e49ffb0175ff9bbdc1affe4070d6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
