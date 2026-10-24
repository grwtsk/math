# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.SummabilityWeights.Variant401a52c3f44802cf3556527ee2571d557a07f95a02db6d3ab4722c3150e5283f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "95acf1a9996ce9c2404a2828e2f04073ddbb2282",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/SummabilityWeights/Variant401a52c3f44802cf3556527ee2571d557a07f95a02db6d3ab4722c3150e5283f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/SummabilityWeights/Variant401a52c3f44802cf3556527ee2571d557a07f95a02db6d3ab4722c3150e5283f.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/SummabilityWeights/Variant401a52c3f44802cf3556527ee2571d557a07f95a02db6d3ab4722c3150e5283f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `95acf1a9996ce9c2404a2828e2f04073ddbb2282`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/SummabilityWeights/Variant401a52c3f44802cf3556527ee2571d557a07f95a02db6d3ab4722c3150e5283f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/SummabilityWeights/Variant401a52c3f44802cf3556527ee2571d557a07f95a02db6d3ab4722c3150e5283f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Rebuild.NumberTheory.MultiplicativeFunction` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.PSeries` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Group.InfiniteSum` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Real` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [posWeightReal](../../../../../mathematics/Analysis/AsymptoticAnalysis/SummabilityWeights/Variant401a52c3f44802cf3556527ee2571d557a07f95a02db6d3ab4722c3150e5283f.lean/declarations/posweightreal--05c61c1f69f9e52d75f7b914.md) | 25 | `declaration-track:05c61c1f69f9e52d75f7b914a454edb70ab9d2b1731a5f241e78de6a0ef9bb0e` |
| 2 | `theorem` | [posWeightReal_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/SummabilityWeights/Variant401a52c3f44802cf3556527ee2571d557a07f95a02db6d3ab4722c3150e5283f.lean/declarations/posweightreal-zero--b05e411b4f7d08e94310bb91.md) | 30 | `result-track:b05e411b4f7d08e94310bb9127ca03939996c5ec30fe0c44978d6ac66a70ec77` |
| 3 | `theorem` | [posWeightReal_one](../../../../../mathematics/Analysis/AsymptoticAnalysis/SummabilityWeights/Variant401a52c3f44802cf3556527ee2571d557a07f95a02db6d3ab4722c3150e5283f.lean/declarations/posweightreal-one--78b23cd6791d0f01a8d8eaaf.md) | 35 | `result-track:78b23cd6791d0f01a8d8eaaf3fad344f5e67b590f0eff82e108d651ba66c51c9` |
| 4 | `theorem` | [posWeightReal_nonneg](../../../../../mathematics/Analysis/AsymptoticAnalysis/SummabilityWeights/Variant401a52c3f44802cf3556527ee2571d557a07f95a02db6d3ab4722c3150e5283f.lean/declarations/posweightreal-nonneg--c40dc89ed0f7ba02575d3155.md) | 40 | `result-track:c40dc89ed0f7ba02575d3155945afefd75f67b9f4886e780af4d42ae7083460f` |
| 5 | `theorem` | [summable_posWeightReal_of_one_lt](../../../../../mathematics/Analysis/AsymptoticAnalysis/SummabilityWeights/Variant401a52c3f44802cf3556527ee2571d557a07f95a02db6d3ab4722c3150e5283f.lean/declarations/summable-posweightreal-of-one-lt--0577cc2bbfd5e7f13a92a3f7.md) | 48 | `result-track:0577cc2bbfd5e7f13a92a3f7e05606d279f1adb6b267cf640d41d063726c9dd3` |
| 6 | `theorem` | [summable_real_of_abs_bound_by_posWeight](../../../../../mathematics/Analysis/AsymptoticAnalysis/SummabilityWeights/Variant401a52c3f44802cf3556527ee2571d557a07f95a02db6d3ab4722c3150e5283f.lean/declarations/summable-real-of-abs-bound-by-posweight--7e315a80086dc17d36a44a0c.md) | 64 | `result-track:7e315a80086dc17d36a44a0c361009eb454d9aab7e6fee9ef7199414c67aafd8` |
| 7 | `theorem` | [summable_complex_of_norm_bound_by_posWeight](../../../../../mathematics/Analysis/AsymptoticAnalysis/SummabilityWeights/Variant401a52c3f44802cf3556527ee2571d557a07f95a02db6d3ab4722c3150e5283f.lean/declarations/summable-complex-of-norm-bound-by-posweight--a10660b302f21f6e19d7f913.md) | 76 | `result-track:a10660b302f21f6e19d7f913e83879dde27be1e0a14079cc3ac16e723bb0c736` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
