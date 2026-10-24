# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.ActualSqrtSieveBounds.Variant678897667faacc39cd75f6212b0147f6194aa07e31ec30b30a924327adecd92a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a855e1862257f0459a81931a40df6c44af4b3ed9",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ActualSqrtSieveBounds/Variant678897667faacc39cd75f6212b0147f6194aa07e31ec30b30a924327adecd92a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ActualSqrtSieveBounds/Variant678897667faacc39cd75f6212b0147f6194aa07e31ec30b30a924327adecd92a.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ActualSqrtSieveBounds/Variant678897667faacc39cd75f6212b0147f6194aa07e31ec30b30a924327adecd92a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a855e1862257f0459a81931a40df6c44af4b3ed9`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/ActualSqrtSieveBounds/Variant678897667faacc39cd75f6212b0147f6194aa07e31ec30b30a924327adecd92a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/ActualSqrtSieveBounds/Variant678897667faacc39cd75f6212b0147f6194aa07e31ec30b30a924327adecd92a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceSignedSamplingExplicitBudget` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [reciprocalSqrt_upper_step](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ActualSqrtSieveBounds/Variant678897667faacc39cd75f6212b0147f6194aa07e31ec30b30a924327adecd92a.lean/declarations/reciprocalsqrt-upper-step--0287f0c2255ebf15c94d5366.md) | 25 | `result-track:0287f0c2255ebf15c94d536642b07fba258d45131a7bdde71b8fe2abd7d8c238` |
| 2 | `theorem` | [reciprocalSqrt_sum_upper](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ActualSqrtSieveBounds/Variant678897667faacc39cd75f6212b0147f6194aa07e31ec30b30a924327adecd92a.lean/declarations/reciprocalsqrt-sum-upper--f75a360f30937a62561e164f.md) | 37 | `result-track:f75a360f30937a62561e164f03f95ff6f8db611b13846b16194523180f6a9829` |
| 3 | `theorem` | [reciprocalSqrt_sum_upper_total](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ActualSqrtSieveBounds/Variant678897667faacc39cd75f6212b0147f6194aa07e31ec30b30a924327adecd92a.lean/declarations/reciprocalsqrt-sum-upper-total--bdf916336d5a27fcf2a6ab52.md) | 47 | `result-track:bdf916336d5a27fcf2a6ab524cca58483a3f6df7ebc58f0e0ccc2ed8a29b2ad1` |
| 4 | `theorem` | [reciprocalSqrt_lower_step](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ActualSqrtSieveBounds/Variant678897667faacc39cd75f6212b0147f6194aa07e31ec30b30a924327adecd92a.lean/declarations/reciprocalsqrt-lower-step--36bb4014c4302bdfba61160d.md) | 55 | `result-track:36bb4014c4302bdfba61160d06578ab3e35c94b2251e40105740eccbdf268d64` |
| 5 | `theorem` | [reciprocalSqrt_sum_lower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ActualSqrtSieveBounds/Variant678897667faacc39cd75f6212b0147f6194aa07e31ec30b30a924327adecd92a.lean/declarations/reciprocalsqrt-sum-lower--90bf64da597b9c0e254d6ad4.md) | 68 | `result-track:90bf64da597b9c0e254d6ad45533aa9d2503c715bab2d98bf251663e93d41a64` |
| 6 | `theorem` | [reciprocalSquare_sum_upper](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ActualSqrtSieveBounds/Variant678897667faacc39cd75f6212b0147f6194aa07e31ec30b30a924327adecd92a.lean/declarations/reciprocalsquare-sum-upper--1b014a544f6b58e28f5efa31.md) | 84 | `result-track:1b014a544f6b58e28f5efa313e4d4701f60f27b4494a10ca9d61b68c606bb31b` |
| 7 | `theorem` | [reciprocal_small_square_divisor_bonus](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ActualSqrtSieveBounds/Variant678897667faacc39cd75f6212b0147f6194aa07e31ec30b30a924327adecd92a.lean/declarations/reciprocal-small-square-divisor-bonus--66e8cb6982b7695b5704b8fc.md) | 108 | `result-track:66e8cb6982b7695b5704b8fceecc7dc870e5f67ed8341f46ba44804f77bdf41f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
