# Verification target: GRWTSK.Analysis.FunctionalAnalysis.SpectralArithmeticBridge.Variant2fc262d0c872993f425bc3b11f9718f075ba8dd6faf5876346f45edc007d81ad

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "89c182d789a5e2a75ad424f4fafebbda843ee597",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/SpectralArithmeticBridge/Variant2fc262d0c872993f425bc3b11f9718f075ba8dd6faf5876346f45edc007d81ad.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/SpectralArithmeticBridge/Variant2fc262d0c872993f425bc3b11f9718f075ba8dd6faf5876346f45edc007d81ad.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/SpectralArithmeticBridge/Variant2fc262d0c872993f425bc3b11f9718f075ba8dd6faf5876346f45edc007d81ad.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `89c182d789a5e2a75ad424f4fafebbda843ee597`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/SpectralArithmeticBridge/Variant2fc262d0c872993f425bc3b11f9718f075ba8dd6faf5876346f45edc007d81ad.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/SpectralArithmeticBridge/Variant2fc262d0c872993f425bc3b11f9718f075ba8dd6faf5876346f45edc007d81ad.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Spectral.Graph` — import line 1; external provider; requires a separately pinned dependency.
- `Folder.Spectral.Tensor` — import line 2; external provider; requires a separately pinned dependency.
- `Folder.Spectral.Heat` — import line 3; external provider; requires a separately pinned dependency.
- `Folder.Core.ZeroTypology` — import line 4; external provider; requires a separately pinned dependency.
- `Folder.Research.LFunctionZero` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [SpectralModeZeroData](../../../../../mathematics/Analysis/FunctionalAnalysis/SpectralArithmeticBridge/Variant2fc262d0c872993f425bc3b11f9718f075ba8dd6faf5876346f45edc007d81ad.lean/declarations/spectralmodezerodata--2f722b63611216b2000602e8.md) | 23 | `declaration-track:2f722b63611216b2000602e89385d1bfffa287aa1df1ed07b78922b6c6369a65` |
| 2 | `structure` | [LFunctionToSpectralZeroBridge](../../../../../mathematics/Analysis/FunctionalAnalysis/SpectralArithmeticBridge/Variant2fc262d0c872993f425bc3b11f9718f075ba8dd6faf5876346f45edc007d81ad.lean/declarations/lfunctiontospectralzerobridge--3a3213ebb9da771f401187eb.md) | 30 | `declaration-track:3a3213ebb9da771f401187eb6307837ea4f8e316af8b8caf09bcb9963eeee2f1` |
| 3 | `structure` | [HasseWeilGraphModel](../../../../../mathematics/Analysis/FunctionalAnalysis/SpectralArithmeticBridge/Variant2fc262d0c872993f425bc3b11f9718f075ba8dd6faf5876346f45edc007d81ad.lean/declarations/hasseweilgraphmodel--0f0e835afcd252ca0a4fcf74.md) | 38 | `declaration-track:0f0e835afcd252ca0a4fcf7439dfd60c80698f7172a43b7138cb4fee09680add` |
| 4 | `structure` | [CriticalLineSpectralCriterion](../../../../../mathematics/Analysis/FunctionalAnalysis/SpectralArithmeticBridge/Variant2fc262d0c872993f425bc3b11f9718f075ba8dd6faf5876346f45edc007d81ad.lean/declarations/criticallinespectralcriterion--d9952bd38eaa02616a1e19b6.md) | 49 | `declaration-track:d9952bd38eaa02616a1e19b650335463d9216b3448d9d0d8568ff80b182b38e7` |
| 5 | `theorem` | [centered_from_spectral_arithmetic_bridge](../../../../../mathematics/Analysis/FunctionalAnalysis/SpectralArithmeticBridge/Variant2fc262d0c872993f425bc3b11f9718f075ba8dd6faf5876346f45edc007d81ad.lean/declarations/centered-from-spectral-arithmetic-bridge--47c024d24217213c7225e960.md) | 58 | `result-track:47c024d24217213c7225e960fef6b87364b40484b4ee8cfd732fc3b76a8fd8c3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
