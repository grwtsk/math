# Verification target: GRWTSK.Analysis.FunctionalAnalysis.BanachSpaces.NormedSpaces.DoubleDual.Variantea3732db035187f80bafa69c8f348e8df3849d8c5966c73b71c791aa775a7f28

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a4228e4c2f2be00a833be375313587e3cf9b7061",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/DoubleDual/Variantea3732db035187f80bafa69c8f348e8df3849d8c5966c73b71c791aa775a7f28.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/DoubleDual/Variantea3732db035187f80bafa69c8f348e8df3849d8c5966c73b71c791aa775a7f28.lean/index.md) · [Full source](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/DoubleDual/Variantea3732db035187f80bafa69c8f348e8df3849d8c5966c73b71c791aa775a7f28.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a4228e4c2f2be00a833be375313587e3cf9b7061`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/DoubleDual/Variantea3732db035187f80bafa69c8f348e8df3849d8c5966c73b71c791aa775a7f28.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/DoubleDual/Variantea3732db035187f80bafa69c8f348e8df3849d8c5966c73b71c791aa775a7f28.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [inclusionInDoubleDual](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/DoubleDual/Variantea3732db035187f80bafa69c8f348e8df3849d8c5966c73b71c791aa775a7f28.lean/declarations/inclusionindoubledual--d66093f47546163a3260c681.md) | 58 | `declaration-track:d66093f47546163a3260c681027a39275b814ab0a762ac1461a75fe18f805aea` |
| 2 | `theorem` | [dual_def](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/DoubleDual/Variantea3732db035187f80bafa69c8f348e8df3849d8c5966c73b71c791aa775a7f28.lean/declarations/dual-def--2e95fef8006001fce53a9175.md) | 62 | `result-track:2e95fef8006001fce53a917572f1acb18b1f9652131bcd6f142d8b989ebf441c` |
| 3 | `theorem` | [inclusionInDoubleDual_norm_eq](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/DoubleDual/Variantea3732db035187f80bafa69c8f348e8df3849d8c5966c73b71c791aa775a7f28.lean/declarations/inclusionindoubledual-norm-eq--6a94df400ab7dd904419d14a.md) | 65 | `result-track:6a94df400ab7dd904419d14a176b4328f8ad015efdb5f9054f6f9f29f61d684b` |
| 4 | `theorem` | [inclusionInDoubleDual_norm_le](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/DoubleDual/Variantea3732db035187f80bafa69c8f348e8df3849d8c5966c73b71c791aa775a7f28.lean/declarations/inclusionindoubledual-norm-le--7ae7d6071077408bd554f172.md) | 69 | `result-track:7ae7d6071077408bd554f17201306afaf0ef65d833c5554829623a5760a272d2` |
| 5 | `theorem` | [double_dual_bound](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/DoubleDual/Variantea3732db035187f80bafa69c8f348e8df3849d8c5966c73b71c791aa775a7f28.lean/declarations/double-dual-bound--8ff9ba75d8fa3ff6a60b9337.md) | 73 | `result-track:8ff9ba75d8fa3ff6a60b9337e9f1e163d031f6b5348171a69876daeec4252338` |
| 6 | `def` | [inclusionInDoubleDualLi](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/DoubleDual/Variantea3732db035187f80bafa69c8f348e8df3849d8c5966c73b71c791aa775a7f28.lean/declarations/inclusionindoubledualli--87c3ab6e4f0199c339efd8db.md) | 87 | `declaration-track:87c3ab6e4f0199c339efd8dbefa6b0b16c8b90259d4c51115ebd194fb5603487` |
| 7 | `theorem` | [norm_le_dual_bound](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/DoubleDual/Variantea3732db035187f80bafa69c8f348e8df3849d8c5966c73b71c791aa775a7f28.lean/declarations/norm-le-dual-bound--48c482d68408b3367d6580d9.md) | 97 | `result-track:48c482d68408b3367d6580d938d7f27aa943c1f25f18508aadf399ee13a487dc` |
| 8 | `def` | [inclusionInDoubleDualWeak](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/DoubleDual/Variantea3732db035187f80bafa69c8f348e8df3849d8c5966c73b71c791aa775a7f28.lean/declarations/inclusionindoubledualweak--539a6669f0b976544cc50f9a.md) | 115 | `declaration-track:539a6669f0b976544cc50f9ad812bcbb75076851139d933e91ac18a05e8aef8b` |
| 9 | `lemma` | [toLinearMap_inclusionInDoubleDualWeak](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/DoubleDual/Variantea3732db035187f80bafa69c8f348e8df3849d8c5966c73b71c791aa775a7f28.lean/declarations/tolinearmap-inclusionindoubledualweak--6d1aa06430eb9f57ad014d4d.md) | 123 | `result-track:6d1aa06430eb9f57ad014d4df2f4a82b15d9f2bf0042e34312f427bf95ec7280` |
| 10 | `theorem` | [isEmbedding_inclusionInDoubleDualWeak](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/DoubleDual/Variantea3732db035187f80bafa69c8f348e8df3849d8c5966c73b71c791aa775a7f28.lean/declarations/isembedding-inclusionindoubledualweak--f1bed5b75e7d28c8e48b498e.md) | 132 | `result-track:f1bed5b75e7d28c8e48b498e175e480f66c776f949ba145c022433df2ed13d33` |
| 11 | `theorem` | [isCompact_closure_of_isBounded](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/DoubleDual/Variantea3732db035187f80bafa69c8f348e8df3849d8c5966c73b71c791aa775a7f28.lean/declarations/iscompact-closure-of-isbounded--cf84f26862b580e2efb70202.md) | 145 | `result-track:cf84f26862b580e2efb7020279e2dfb4266148cf5b4ff7b8d9c2c325397ca5a3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
