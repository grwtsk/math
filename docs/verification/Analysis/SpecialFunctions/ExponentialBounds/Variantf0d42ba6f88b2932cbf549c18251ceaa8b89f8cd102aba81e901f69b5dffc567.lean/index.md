# Verification target: GRWTSK.Analysis.SpecialFunctions.ExponentialBounds.Variantf0d42ba6f88b2932cbf549c18251ceaa8b89f8cd102aba81e901f69b5dffc567

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9531022b50196e48b78d8e3c31a51e292eda7e30",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/SpecialFunctions/ExponentialBounds/Variantf0d42ba6f88b2932cbf549c18251ceaa8b89f8cd102aba81e901f69b5dffc567.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/SpecialFunctions/ExponentialBounds/Variantf0d42ba6f88b2932cbf549c18251ceaa8b89f8cd102aba81e901f69b5dffc567.lean/index.md) · [Full source](../../../../../mathematics/Analysis/SpecialFunctions/ExponentialBounds/Variantf0d42ba6f88b2932cbf549c18251ceaa8b89f8cd102aba81e901f69b5dffc567.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9531022b50196e48b78d8e3c31a51e292eda7e30`.

Source path: `GRWTSK/Analysis/SpecialFunctions/ExponentialBounds/Variantf0d42ba6f88b2932cbf549c18251ceaa8b89f8cd102aba81e901f69b5dffc567.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/SpecialFunctions/ExponentialBounds/Variantf0d42ba6f88b2932cbf549c18251ceaa8b89f8cd102aba81e901f69b5dffc567.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Complex.Exponential` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Log.Deriv` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [exp_one_near_10](../../../../../mathematics/Analysis/SpecialFunctions/ExponentialBounds/Variantf0d42ba6f88b2932cbf549c18251ceaa8b89f8cd102aba81e901f69b5dffc567.lean/declarations/exp-one-near-10--32c6710c5beab01689db0e05.md) | 18 | `result-track:32c6710c5beab01689db0e05f58da966eff32e2de3bc5208ea0785f78073ed89` |
| 2 | `theorem` | [exp_one_near_20](../../../../../mathematics/Analysis/SpecialFunctions/ExponentialBounds/Variantf0d42ba6f88b2932cbf549c18251ceaa8b89f8cd102aba81e901f69b5dffc567.lean/declarations/exp-one-near-20--676cbdf597a44ed2ecd4a760.md) | 25 | `result-track:676cbdf597a44ed2ecd4a76081fe7b83093ad7adb756a61d28970608c28d2de1` |
| 3 | `theorem` | [exp_one_gt_d9](../../../../../mathematics/Analysis/SpecialFunctions/ExponentialBounds/Variantf0d42ba6f88b2932cbf549c18251ceaa8b89f8cd102aba81e901f69b5dffc567.lean/declarations/exp-one-gt-d9--73942ec76bd345728bc11786.md) | 32 | `result-track:73942ec76bd345728bc117864b97e950972355b0a8c546763176946a20282494` |
| 4 | `theorem` | [exp_one_lt_d9](../../../../../mathematics/Analysis/SpecialFunctions/ExponentialBounds/Variantf0d42ba6f88b2932cbf549c18251ceaa8b89f8cd102aba81e901f69b5dffc567.lean/declarations/exp-one-lt-d9--0231cc5a54f4a8f89f39372f.md) | 35 | `result-track:0231cc5a54f4a8f89f39372f2302169dd2fb5d5a78288ff994f28bcab03c7506` |
| 5 | `theorem` | [exp_neg_one_gt_d9](../../../../../mathematics/Analysis/SpecialFunctions/ExponentialBounds/Variantf0d42ba6f88b2932cbf549c18251ceaa8b89f8cd102aba81e901f69b5dffc567.lean/declarations/exp-neg-one-gt-d9--99709639d4f2344a50fee6e9.md) | 38 | `result-track:99709639d4f2344a50fee6e9a748213735f7ae3bf36c239f2ec173f8dd4e2eb0` |
| 6 | `theorem` | [exp_neg_one_lt_d9](../../../../../mathematics/Analysis/SpecialFunctions/ExponentialBounds/Variantf0d42ba6f88b2932cbf549c18251ceaa8b89f8cd102aba81e901f69b5dffc567.lean/declarations/exp-neg-one-lt-d9--e4fd21350a7514b273bdac68.md) | 44 | `result-track:e4fd21350a7514b273bdac68846386b6dd5f754aa48fbffda82d43f7461157fb` |
| 7 | `theorem` | [log_two_near_10](../../../../../mathematics/Analysis/SpecialFunctions/ExponentialBounds/Variantf0d42ba6f88b2932cbf549c18251ceaa8b89f8cd102aba81e901f69b5dffc567.lean/declarations/log-two-near-10--430c6515a14cfdd92c1cb584.md) | 48 | `result-track:430c6515a14cfdd92c1cb58469aba7ded10f8d5570ed8da67c969ab54f29d651` |
| 8 | `theorem` | [log_two_gt_d9](../../../../../mathematics/Analysis/SpecialFunctions/ExponentialBounds/Variantf0d42ba6f88b2932cbf549c18251ceaa8b89f8cd102aba81e901f69b5dffc567.lean/declarations/log-two-gt-d9--baa504772229f78a96efa637.md) | 62 | `result-track:baa504772229f78a96efa6376e067058926ae8899c8117d76bd21b6b3053a612` |
| 9 | `theorem` | [log_two_lt_d9](../../../../../mathematics/Analysis/SpecialFunctions/ExponentialBounds/Variantf0d42ba6f88b2932cbf549c18251ceaa8b89f8cd102aba81e901f69b5dffc567.lean/declarations/log-two-lt-d9--7de6ed81f0da3ee8c9d12842.md) | 65 | `result-track:7de6ed81f0da3ee8c9d128427d76ac6871bb3c49f01013682815c6a4f92f9d9e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
