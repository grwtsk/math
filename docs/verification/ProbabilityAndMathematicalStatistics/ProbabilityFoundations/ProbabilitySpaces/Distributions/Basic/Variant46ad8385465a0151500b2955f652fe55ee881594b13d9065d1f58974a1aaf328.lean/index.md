# Verification target: GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.ProbabilitySpaces.Distributions.Basic.Variant46ad8385465a0151500b2955f652fe55ee881594b13d9065d1f58974a1aaf328

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "91f547bee84e827a16300e1681d4c5c1dccdb3b0",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Basic/Variant46ad8385465a0151500b2955f652fe55ee881594b13d9065d1f58974a1aaf328.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Basic/Variant46ad8385465a0151500b2955f652fe55ee881594b13d9065d1f58974a1aaf328.lean/index.md) · [Full source](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Basic/Variant46ad8385465a0151500b2955f652fe55ee881594b13d9065d1f58974a1aaf328.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `91f547bee84e827a16300e1681d4c5c1dccdb3b0`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Basic/Variant46ad8385465a0151500b2955f652fe55ee881594b13d9065d1f58974a1aaf328.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Basic/Variant46ad8385465a0151500b2955f652fe55ee881594b13d9065d1f58974a1aaf328.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Probability.Distributions.Gaussian.Real` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IsGaussian](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Basic/Variant46ad8385465a0151500b2955f652fe55ee881594b13d9065d1f58974a1aaf328.lean/declarations/isgaussian--ac47037b8d0714bbf818a99b.md) | 40 | `declaration-track:ac47037b8d0714bbf818a99bad13b10e1f18d8851c5ae5ab79d60c2b12cc0876` |
| 2 | `instance` | [isGaussian_gaussianReal](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Basic/Variant46ad8385465a0151500b2955f652fe55ee881594b13d9065d1f58974a1aaf328.lean/declarations/isgaussian-gaussianreal--d9c998eece41dbf52c38bec2.md) | 45 | `declaration-track:d9c998eece41dbf52c38bec2e0a3e22e8b1658da94076eb3d472dc1854c1c037` |
| 3 | `instance` | [(anonymous)](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Basic/Variant46ad8385465a0151500b2955f652fe55ee881594b13d9065d1f58974a1aaf328.lean/declarations/instance--d33ac9d3c91ed10287f22c33.md) | 61 | `declaration-track:d33ac9d3c91ed10287f22c338e903bf182292935032ed522f03be81e81b5f671` |
| 4 | `instance` | [(anonymous)](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Basic/Variant46ad8385465a0151500b2955f652fe55ee881594b13d9065d1f58974a1aaf328.lean/declarations/instance--4b9b2d46916daf3cff6f8047.md) | 65 | `declaration-track:4b9b2d46916daf3cff6f8047031238c4b3017acd2a1f81e522965f2fcd23c697` |
| 5 | `lemma` | [IsGaussian.memLp_dual](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Basic/Variant46ad8385465a0151500b2955f652fe55ee881594b13d9065d1f58974a1aaf328.lean/declarations/isgaussian-memlp-dual--aad3a95df707f650caa69dae.md) | 70 | `result-track:aad3a95df707f650caa69dae860ed421ee6a658ea7a02a753ce1c08065a7853b` |
| 6 | `lemma` | [IsGaussian.integrable_dual](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Basic/Variant46ad8385465a0151500b2955f652fe55ee881594b13d9065d1f58974a1aaf328.lean/declarations/isgaussian-integrable-dual--4c3163001941f20b1a100de0.md) | 79 | `result-track:4c3163001941f20b1a100de03599bf63470199bde8780eb97bfa24be80edbd54` |
| 7 | `instance` | [isGaussian_map](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Basic/Variant46ad8385465a0151500b2955f652fe55ee881594b13d9065d1f58974a1aaf328.lean/declarations/isgaussian-map--ee4a987dd2360f2929587820.md) | 85 | `declaration-track:ee4a987dd2360f29295878209c4a3b9118d3942c137a8b0c641f6a830935d3f5` |
| 8 | `instance` | [isGaussian_map_equiv](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Basic/Variant46ad8385465a0151500b2955f652fe55ee881594b13d9065d1f58974a1aaf328.lean/declarations/isgaussian-map-equiv--a4e96228d822099ecbe48937.md) | 98 | `declaration-track:a4e96228d822099ecbe4893759a4b9267146cef4ddac1f651a95f027727e27bf` |
| 9 | `lemma` | [isGaussian_map_equiv_iff](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Basic/Variant46ad8385465a0151500b2955f652fe55ee881594b13d9065d1f58974a1aaf328.lean/declarations/isgaussian-map-equiv-iff--a860c18c22c27e2efdd3f794.md) | 101 | `result-track:a860c18c22c27e2efdd3f79475529e1b56052b8ca22fd0134e53ecb13c8be5af` |
| 10 | `lemma` | [IsGaussian.charFunDual_eq](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Basic/Variant46ad8385465a0151500b2955f652fe55ee881594b13d9065d1f58974a1aaf328.lean/declarations/isgaussian-charfundual-eq--4c84079c7f38261939c58395.md) | 112 | `result-track:4c84079c7f38261939c583955c49efb35dfd91300cd3564523a3dcac5e46cb18` |
| 11 | `theorem` | [isGaussian_iff_charFunDual_eq](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Basic/Variant46ad8385465a0151500b2955f652fe55ee881594b13d9065d1f58974a1aaf328.lean/declarations/isgaussian-iff-charfundual-eq--3f06cca8eb1105e2b91d92cc.md) | 128 | `result-track:3f06cca8eb1105e2b91d92cc556f3f57a8973098c4923fdb59b4ed901608a086` |
| 12 | `instance` | [isGaussian_conv](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Basic/Variant46ad8385465a0151500b2955f652fe55ee881594b13d9065d1f58974a1aaf328.lean/declarations/isgaussian-conv--37ddfacf0ae3444cc4cf67bb.md) | 144 | `declaration-track:37ddfacf0ae3444cc4cf67bbc71358cb56c842a6341b3b63e86933e057a2f151` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
