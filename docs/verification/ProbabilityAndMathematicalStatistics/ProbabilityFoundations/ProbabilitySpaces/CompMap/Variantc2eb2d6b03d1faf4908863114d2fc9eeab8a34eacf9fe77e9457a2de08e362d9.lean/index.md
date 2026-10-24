# Verification target: GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.ProbabilitySpaces.CompMap.Variantc2eb2d6b03d1faf4908863114d2fc9eeab8a34eacf9fe77e9457a2de08e362d9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3f33740c2c22e65a76e2118d27c14e6f60e36d9d",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/CompMap/Variantc2eb2d6b03d1faf4908863114d2fc9eeab8a34eacf9fe77e9457a2de08e362d9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/CompMap/Variantc2eb2d6b03d1faf4908863114d2fc9eeab8a34eacf9fe77e9457a2de08e362d9.lean/index.md) · [Full source](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/CompMap/Variantc2eb2d6b03d1faf4908863114d2fc9eeab8a34eacf9fe77e9457a2de08e362d9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3f33740c2c22e65a76e2118d27c14e6f60e36d9d`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/CompMap/Variantc2eb2d6b03d1faf4908863114d2fc9eeab8a34eacf9fe77e9457a2de08e362d9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/CompMap/Variantc2eb2d6b03d1faf4908863114d2fc9eeab8a34eacf9fe77e9457a2de08e362d9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Probability.Kernel.Composition.Comp` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Probability.Kernel.Composition.MapComap` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [deterministic_comp_eq_map](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/CompMap/Variantc2eb2d6b03d1faf4908863114d2fc9eeab8a34eacf9fe77e9457a2de08e362d9.lean/declarations/deterministic-comp-eq-map--6ba19aae676cd5cd7a41d173.md) | 34 | `result-track:6ba19aae676cd5cd7a41d173220ac0be6783c1d164c246ffa9f558eba75b1692` |
| 2 | `theorem` | [comp_deterministic_eq_comap](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/CompMap/Variantc2eb2d6b03d1faf4908863114d2fc9eeab8a34eacf9fe77e9457a2de08e362d9.lean/declarations/comp-deterministic-eq-comap--e62ffaab154acd8bb1bc9a86.md) | 40 | `result-track:e62ffaab154acd8bb1bc9a86eb7c7aa1ae821fb543970acc238431d8d1ba8d3d` |
| 3 | `lemma` | [deterministic_comp_deterministic](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/CompMap/Variantc2eb2d6b03d1faf4908863114d2fc9eeab8a34eacf9fe77e9457a2de08e362d9.lean/declarations/deterministic-comp-deterministic--fa1e4d05bef66ad40c56cf8f.md) | 46 | `result-track:fa1e4d05bef66ad40c56cf8f2aaaf215ff60a44250515bcdc7f061dbe94bed01` |
| 4 | `lemma` | [comp_id](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/CompMap/Variantc2eb2d6b03d1faf4908863114d2fc9eeab8a34eacf9fe77e9457a2de08e362d9.lean/declarations/comp-id--ffb61a8b767cb3d37dee6ca0.md) | 51 | `result-track:ffb61a8b767cb3d37dee6ca0bb151d7b1eb12b1baee520beedc5ec3439954e31` |
| 5 | `lemma` | [id_comp](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/CompMap/Variantc2eb2d6b03d1faf4908863114d2fc9eeab8a34eacf9fe77e9457a2de08e362d9.lean/declarations/id-comp--8b46e091ecf57d45a9417500.md) | 55 | `result-track:8b46e091ecf57d45a941750035f3e1f8beabd49330ab005257da53cb2f72d628` |
| 6 | `lemma` | [swap_swap](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/CompMap/Variantc2eb2d6b03d1faf4908863114d2fc9eeab8a34eacf9fe77e9457a2de08e362d9.lean/declarations/swap-swap--c810814df51ebbdf5603c9e1.md) | 59 | `result-track:c810814df51ebbdf5603c9e1d43e588400c397891c2a11b7fac19e8ec0eec27e` |
| 7 | `lemma` | [swap_comp_eq_map](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/CompMap/Variantc2eb2d6b03d1faf4908863114d2fc9eeab8a34eacf9fe77e9457a2de08e362d9.lean/declarations/swap-comp-eq-map--b42c7f1672aa5ea251d87f4e.md) | 62 | `result-track:b42c7f1672aa5ea251d87f4ebf8c8586e83ffd7c09b5777aaf68889552a84b54` |
| 8 | `lemma` | [map_comp](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/CompMap/Variantc2eb2d6b03d1faf4908863114d2fc9eeab8a34eacf9fe77e9457a2de08e362d9.lean/declarations/map-comp--c9f752d65c66ac170021799f.md) | 65 | `result-track:c9f752d65c66ac170021799f05d98153d49a2e35d99feee8035e0227f33f02fa` |
| 9 | `lemma` | [comp_map](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/CompMap/Variantc2eb2d6b03d1faf4908863114d2fc9eeab8a34eacf9fe77e9457a2de08e362d9.lean/declarations/comp-map--448950c5a868a5d4e2107061.md) | 74 | `result-track:448950c5a868a5d4e2107061a3c5e13ab97b81ca58fd997cd9a1e8262160d006` |
| 10 | `lemma` | [fst_comp](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/CompMap/Variantc2eb2d6b03d1faf4908863114d2fc9eeab8a34eacf9fe77e9457a2de08e362d9.lean/declarations/fst-comp--c14e3c702ef83d90868dce32.md) | 80 | `result-track:c14e3c702ef83d90868dce32e928ceb9c144371dfaf908ece780357ae54819f1` |
| 11 | `lemma` | [snd_comp](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/CompMap/Variantc2eb2d6b03d1faf4908863114d2fc9eeab8a34eacf9fe77e9457a2de08e362d9.lean/declarations/snd-comp--9844d447935275775a37609b.md) | 83 | `result-track:9844d447935275775a37609b72ce9c1e95eb9a5fa4379ad8110f5931ff8d2d69` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
