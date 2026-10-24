# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.ActualCurvatureFiniteReadout.Variantef6b99e1988cb9c167ac5ab167111ec8e3ccfb694ea882cf8de06d0f693f2be8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7a393216359f6a48a73a1c8fd9e0f1baf1244e99",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/ActualCurvatureFiniteReadout/Variantef6b99e1988cb9c167ac5ab167111ec8e3ccfb694ea882cf8de06d0f693f2be8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualCurvatureFiniteReadout/Variantef6b99e1988cb9c167ac5ab167111ec8e3ccfb694ea882cf8de06d0f693f2be8.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualCurvatureFiniteReadout/Variantef6b99e1988cb9c167ac5ab167111ec8e3ccfb694ea882cf8de06d0f693f2be8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7a393216359f6a48a73a1c8fd9e0f1baf1244e99`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/ActualCurvatureFiniteReadout/Variantef6b99e1988cb9c167ac5ab167111ec8e3ccfb694ea882cf8de06d0f693f2be8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/ActualCurvatureFiniteReadout/Variantef6b99e1988cb9c167ac5ab167111ec8e3ccfb694ea882cf8de06d0f693f2be8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ActualCurvatureResolution` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [gridPoint](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualCurvatureFiniteReadout/Variantef6b99e1988cb9c167ac5ab167111ec8e3ccfb694ea882cf8de06d0f693f2be8.lean/declarations/gridpoint--d12f26770aef6c0601833821.md) | 16 | `declaration-track:d12f26770aef6c0601833821c68a4a0cb685b5e28f8767b62fd05c9c0a50439f` |
| 2 | `theorem` | [gridPoint_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualCurvatureFiniteReadout/Variantef6b99e1988cb9c167ac5ab167111ec8e3ccfb694ea882cf8de06d0f693f2be8.lean/declarations/gridpoint-zero--328de8d54f8a082981cd2f1e.md) | 18 | `result-track:328de8d54f8a082981cd2f1edf3e280076d50b362dc25db6aeec2547cd3a68c3` |
| 3 | `theorem` | [gridPoint_upper](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualCurvatureFiniteReadout/Variantef6b99e1988cb9c167ac5ab167111ec8e3ccfb694ea882cf8de06d0f693f2be8.lean/declarations/gridpoint-upper--190e0b4cc8ed56a8423db1ca.md) | 21 | `result-track:190e0b4cc8ed56a8423db1caecec34709beca35ef40ec1d24a3a596dda6b5568` |
| 4 | `theorem` | [gridPoint_step_pos](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualCurvatureFiniteReadout/Variantef6b99e1988cb9c167ac5ab167111ec8e3ccfb694ea882cf8de06d0f693f2be8.lean/declarations/gridpoint-step-pos--f2c6d9f46b22562366fa2883.md) | 26 | `result-track:f2c6d9f46b22562366fa2883894b6e3a1d24cdb18f524bcb699f00e0786b618b` |
| 5 | `theorem` | [leftGridSample_eq_on_cell](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualCurvatureFiniteReadout/Variantef6b99e1988cb9c167ac5ab167111ec8e3ccfb694ea882cf8de06d0f693f2be8.lean/declarations/leftgridsample-eq-on-cell--525850341107985ce79f8066.md) | 34 | `result-track:525850341107985ce79f8066212c7b63727123059fd8cbf7917bd0594780fde9` |
| 6 | `theorem` | [actual_curvature_cell_FTC](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualCurvatureFiniteReadout/Variantef6b99e1988cb9c167ac5ab167111ec8e3ccfb694ea882cf8de06d0f693f2be8.lean/declarations/actual-curvature-cell-ftc--02a00bbec23464c13bae686a.md) | 55 | `result-track:02a00bbec23464c13bae686a232595c2333d43c67171b716ec357c0cf66e5ebf` |
| 7 | `theorem` | [actual_grid_cell_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualCurvatureFiniteReadout/Variantef6b99e1988cb9c167ac5ab167111ec8e3ccfb694ea882cf8de06d0f693f2be8.lean/declarations/actual-grid-cell-integral--cfa4cf53ee3b572fb7316506.md) | 60 | `result-track:cfa4cf53ee3b572fb73165061100d15d1e3d46da204e017c8b37dd81faf9e6ce` |
| 8 | `theorem` | [sampled_grid_cell_intervalIntegrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualCurvatureFiniteReadout/Variantef6b99e1988cb9c167ac5ab167111ec8e3ccfb694ea882cf8de06d0f693f2be8.lean/declarations/sampled-grid-cell-intervalintegrable--55794ee2c0bbf915fcfa55cb.md) | 77 | `result-track:55794ee2c0bbf915fcfa55cb920a94c2aa7430d176b9a302e9d928cb392bbc3c` |
| 9 | `def` | [finiteCurvatureReadout](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualCurvatureFiniteReadout/Variantef6b99e1988cb9c167ac5ab167111ec8e3ccfb694ea882cf8de06d0f693f2be8.lean/declarations/finitecurvaturereadout--69e160cf56bba3c1ddd94bf1.md) | 91 | `declaration-track:69e160cf56bba3c1ddd94bf12aed71c6dbb06ee826454f6b2629e8f98ff2bd9c` |
| 10 | `theorem` | [sampled_grid_eq_finite](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualCurvatureFiniteReadout/Variantef6b99e1988cb9c167ac5ab167111ec8e3ccfb694ea882cf8de06d0f693f2be8.lean/declarations/sampled-grid-eq-finite--33242b9417934a296ceb25f7.md) | 97 | `result-track:33242b9417934a296ceb25f75a428e99eff0fdbe753703c8cf647eeadaa1b02d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
