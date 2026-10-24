# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.ThetaPositiveLift.Variant0f78866bd0a308251e6f53f4511651bb6849bb1ac244fbbc20fd3fbad4d07865

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "89b02f0366a2bf2f0fe7fd6537c1cc94e4423cf3",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variant0f78866bd0a308251e6f53f4511651bb6849bb1ac244fbbc20fd3fbad4d07865.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variant0f78866bd0a308251e6f53f4511651bb6849bb1ac244fbbc20fd3fbad4d07865.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variant0f78866bd0a308251e6f53f4511651bb6849bb1ac244fbbc20fd3fbad4d07865.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `89b02f0366a2bf2f0fe7fd6537c1cc94e4423cf3`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variant0f78866bd0a308251e6f53f4511651bb6849bb1ac244fbbc20fd3fbad4d07865.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variant0f78866bd0a308251e6f53f4511651bb6849bb1ac244fbbc20fd3fbad4d07865.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.ThetaPhiWronskianModeBounds` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.ThetaPhiAllRankModeCriterion` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [thetaRankFiveGaussianTailTerm](../../../../../mathematics/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variant0f78866bd0a308251e6f53f4511651bb6849bb1ac244fbbc20fd3fbad4d07865.lean/declarations/thetarankfivegaussiantailterm--1b019488ecb40727588d3d31.md) | 25 | `declaration-track:1b019488ecb40727588d3d31d454d82cab5cd6254b655e840e71c9863234ff0f` |
| 2 | `theorem` | [thetaRankFive_exp_neg_seventyFive_lt](../../../../../mathematics/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variant0f78866bd0a308251e6f53f4511651bb6849bb1ac244fbbc20fd3fbad4d07865.lean/declarations/thetarankfive-exp-neg-seventyfive-lt--854940df4ec9663b42b4730f.md) | 29 | `result-track:854940df4ec9663b42b4730f4b10e9a5680a9b3451493ada33fa8adf534c059a` |
| 3 | `theorem` | [gaussian_ratio_half](../../../../../mathematics/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variant0f78866bd0a308251e6f53f4511651bb6849bb1ac244fbbc20fd3fbad4d07865.lean/declarations/gaussian-ratio-half--ea751f0c4cb4daa452318a28.md) | 42 | `result-track:ea751f0c4cb4daa452318a281900c2257134974b6764a891f396e72dd43a93f7` |
| 4 | `theorem` | [gaussian_succ_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variant0f78866bd0a308251e6f53f4511651bb6849bb1ac244fbbc20fd3fbad4d07865.lean/declarations/gaussian-succ-le--3cda767af8d16bd41c128db2.md) | 54 | `result-track:3cda767af8d16bd41c128db2cb43708895fd6d521a3942f1a8b849d18d0d8ba0` |
| 5 | `theorem` | [gaussian_geometric](../../../../../mathematics/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variant0f78866bd0a308251e6f53f4511651bb6849bb1ac244fbbc20fd3fbad4d07865.lean/declarations/gaussian-geometric--b08becf3f3164f0087b4d2bb.md) | 87 | `result-track:b08becf3f3164f0087b4d2bbca36cd4819813cd19d3edf3ad4aa1873c510ad8c` |
| 6 | `theorem` | [thetaRankFiveGaussianTail_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variant0f78866bd0a308251e6f53f4511651bb6849bb1ac244fbbc20fd3fbad4d07865.lean/declarations/thetarankfivegaussiantail-summable--38554cbc4e61e86f2255ee62.md) | 100 | `result-track:38554cbc4e61e86f2255ee62b71d17ae4028539452ad97a0213541306f204ea7` |
| 7 | `theorem` | [thetaRankFiveGaussianTail_tsum_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variant0f78866bd0a308251e6f53f4511651bb6849bb1ac244fbbc20fd3fbad4d07865.lean/declarations/thetarankfivegaussiantail-tsum-le--39f0584e284d8ea64257311b.md) | 111 | `result-track:39f0584e284d8ea64257311b961ffc4862e13f9132e982325127d192124181b1` |
| 8 | `theorem` | [thetaRankFiveGaussianTail_tsum_lt](../../../../../mathematics/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variant0f78866bd0a308251e6f53f4511651bb6849bb1ac244fbbc20fd3fbad4d07865.lean/declarations/thetarankfivegaussiantail-tsum-lt--3ada1159e28acc74a818f371.md) | 127 | `result-track:3ada1159e28acc74a818f37166c122ab82c756b5b8b02cc8f2a0ee8bacf512dd` |
| 9 | `theorem` | [thetaRankFive_mode_norm_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variant0f78866bd0a308251e6f53f4511651bb6849bb1ac244fbbc20fd3fbad4d07865.lean/declarations/thetarankfive-mode-norm-le--f5b585bd35a9cb24f17f1328.md) | 138 | `result-track:f5b585bd35a9cb24f17f1328d8a15f0c743c490b7fd03c23e8839804cc26c37f` |
| 10 | `theorem` | [thetaRankFive_source_tail_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variant0f78866bd0a308251e6f53f4511651bb6849bb1ac244fbbc20fd3fbad4d07865.lean/declarations/thetarankfive-source-tail-le--c2b2883e2bc66af5040a0a91.md) | 184 | `result-track:c2b2883e2bc66af5040a0a91d1a9fc6d034aca54be6a92d0c3251e8f768619e4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
