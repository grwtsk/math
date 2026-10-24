# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.WithLp.Variant7af72ec6f00f598ac8f7be4ed6642ce557e692e605b2733571cc51f53a28d5a6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f03a44b07b49812a4c411b5d9b7868fd2430331a",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/WithLp/Variant7af72ec6f00f598ac8f7be4ed6642ce557e692e605b2733571cc51f53a28d5a6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/WithLp/Variant7af72ec6f00f598ac8f7be4ed6642ce557e692e605b2733571cc51f53a28d5a6.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/WithLp/Variant7af72ec6f00f598ac8f7be4ed6642ce557e692e605b2733571cc51f53a28d5a6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f03a44b07b49812a4c411b5d9b7868fd2430331a`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/WithLp/Variant7af72ec6f00f598ac8f7be4ed6642ce557e692e605b2733571cc51f53a28d5a6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/WithLp/Variant7af72ec6f00f598ac8f7be4ed6642ce557e692e605b2733571cc51f53a28d5a6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.ContDiff.Operations` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Lp.PiLp` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [contDiffWithinAt_piLp](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/WithLp/Variant7af72ec6f00f598ac8f7be4ed6642ce557e692e605b2733571cc51f53a28d5a6.lean/declarations/contdiffwithinat-pilp--9f776481857fa83598b860f2.md) | 22 | `result-track:9f776481857fa83598b860f2d5e1129a948eeaed6fa12a9e25f2d3133ad4bb17` |
| 2 | `theorem` | [contDiffWithinAt_piLp'](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/WithLp/Variant7af72ec6f00f598ac8f7be4ed6642ce557e692e605b2733571cc51f53a28d5a6.lean/declarations/contdiffwithinat-pilp--7ffe7a8fb4e12aa6db95065a.md) | 28 | `result-track:7ffe7a8fb4e12aa6db95065a312301148a627ba8e115420890015ed785f1de9d` |
| 3 | `theorem` | [contDiffWithinAt_piLp_apply](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/WithLp/Variant7af72ec6f00f598ac8f7be4ed6642ce557e692e605b2733571cc51f53a28d5a6.lean/declarations/contdiffwithinat-pilp-apply--c2051119f129f0ddbc3bf262.md) | 33 | `result-track:c2051119f129f0ddbc3bf26290fe6e546bf10a6a217b1da5d2d2515aa25ec800` |
| 4 | `theorem` | [contDiffAt_piLp](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/WithLp/Variant7af72ec6f00f598ac8f7be4ed6642ce557e692e605b2733571cc51f53a28d5a6.lean/declarations/contdiffat-pilp--8c71bf3723ac7b66275eef42.md) | 37 | `result-track:8c71bf3723ac7b66275eef42a5a4878b28ab961348b838b5dc56bf92d59daceb` |
| 5 | `theorem` | [contDiffAt_piLp'](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/WithLp/Variant7af72ec6f00f598ac8f7be4ed6642ce557e692e605b2733571cc51f53a28d5a6.lean/declarations/contdiffat-pilp--b1e37034ae85a3c45e885ba9.md) | 43 | `result-track:b1e37034ae85a3c45e885ba93500b5f824a96c93adf224c99cabdd218d027ebe` |
| 6 | `theorem` | [contDiffAt_piLp_apply](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/WithLp/Variant7af72ec6f00f598ac8f7be4ed6642ce557e692e605b2733571cc51f53a28d5a6.lean/declarations/contdiffat-pilp-apply--d0cfbbe39898c1bfee0ebf27.md) | 48 | `result-track:d0cfbbe39898c1bfee0ebf276aeab068b58f7bb1ca5995855254c13eece8015b` |
| 7 | `theorem` | [contDiffOn_piLp](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/WithLp/Variant7af72ec6f00f598ac8f7be4ed6642ce557e692e605b2733571cc51f53a28d5a6.lean/declarations/contdiffon-pilp--af1b465fecfebcc530a25714.md) | 52 | `result-track:af1b465fecfebcc530a25714cbf4e55bacf0b772b87578e213c7b80f8a5b9654` |
| 8 | `theorem` | [contDiffOn_piLp'](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/WithLp/Variant7af72ec6f00f598ac8f7be4ed6642ce557e692e605b2733571cc51f53a28d5a6.lean/declarations/contdiffon-pilp--30d673a832a4fd82ef0f262c.md) | 58 | `result-track:30d673a832a4fd82ef0f262ce7f2e53c1a1f03b15508537a0527109f9a26ffbf` |
| 9 | `theorem` | [contDiffOn_piLp_apply](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/WithLp/Variant7af72ec6f00f598ac8f7be4ed6642ce557e692e605b2733571cc51f53a28d5a6.lean/declarations/contdiffon-pilp-apply--619eed26f9e6a0130eb4e881.md) | 63 | `result-track:619eed26f9e6a0130eb4e881168efc5623a8716dcf6c00ea0150eac487347f3e` |
| 10 | `theorem` | [contDiff_piLp](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/WithLp/Variant7af72ec6f00f598ac8f7be4ed6642ce557e692e605b2733571cc51f53a28d5a6.lean/declarations/contdiff-pilp--e4ab4740f3822f1d3e120895.md) | 67 | `result-track:e4ab4740f3822f1d3e1208956553605879d4d5bd40f8d14f2a6a2aefe0056451` |
| 11 | `theorem` | [contDiff_piLp'](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/WithLp/Variant7af72ec6f00f598ac8f7be4ed6642ce557e692e605b2733571cc51f53a28d5a6.lean/declarations/contdiff-pilp--0a2899af18dab464db613c6c.md) | 72 | `result-track:0a2899af18dab464db613c6cbfc116cd3180283b528ecf21e996f876085f5c5a` |
| 12 | `theorem` | [contDiff_piLp_apply](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/WithLp/Variant7af72ec6f00f598ac8f7be4ed6642ce557e692e605b2733571cc51f53a28d5a6.lean/declarations/contdiff-pilp-apply--e44aa96ab8e9de28f0e21a3b.md) | 77 | `result-track:e44aa96ab8e9de28f0e21a3b8ad5603ba541d3f765b27414b340e23f5899f87a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
