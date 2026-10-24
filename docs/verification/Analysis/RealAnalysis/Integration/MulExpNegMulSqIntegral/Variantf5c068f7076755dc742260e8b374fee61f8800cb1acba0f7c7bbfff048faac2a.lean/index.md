# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.MulExpNegMulSqIntegral.Variantf5c068f7076755dc742260e8b374fee61f8800cb1acba0f7c7bbfff048faac2a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f4e9c3f1df13aab54fb93e8f3ca7c8698e8d1fb6",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/MulExpNegMulSqIntegral/Variantf5c068f7076755dc742260e8b374fee61f8800cb1acba0f7c7bbfff048faac2a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MulExpNegMulSqIntegral/Variantf5c068f7076755dc742260e8b374fee61f8800cb1acba0f7c7bbfff048faac2a.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MulExpNegMulSqIntegral/Variantf5c068f7076755dc742260e8b374fee61f8800cb1acba0f7c7bbfff048faac2a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f4e9c3f1df13aab54fb93e8f3ca7c8698e8d1fb6`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/MulExpNegMulSqIntegral/Variantf5c068f7076755dc742260e8b374fee61f8800cb1acba0f7c7bbfff048faac2a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/MulExpNegMulSqIntegral/Variantf5c068f7076755dc742260e8b374fee61f8800cb1acba0f7c7bbfff048faac2a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.MulExpNegMulSq` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Complex.LogBounds` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.BoundedContinuousFunction` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.DominatedConvergence` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.RegularityCompacts` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.ContinuousMap.StoneWeierstrass` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [integrable_mulExpNegMulSq_comp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MulExpNegMulSqIntegral/Variantf5c068f7076755dc742260e8b374fee61f8800cb1acba0f7c7bbfff048faac2a.lean/declarations/integrable-mulexpnegmulsq-comp--b32ea4e4b63b3802d2d64c14.md) | 55 | `result-track:b32ea4e4b63b3802d2d64c14db0d8a73191c7e41d0eda9ba1f48a5775071b544` |
| 2 | `theorem` | [integrable_mulExpNegMulSq_comp_restrict_of_isCompact](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MulExpNegMulSqIntegral/Variantf5c068f7076755dc742260e8b374fee61f8800cb1acba0f7c7bbfff048faac2a.lean/declarations/integrable-mulexpnegmulsq-comp-restrict-of-iscompact--840edf5b68ea4a877537b63c.md) | 60 | `result-track:840edf5b68ea4a877537b63c06b17d11cb649c47e44250e0ed1f2151e1d11412` |
| 3 | `theorem` | [tendsto_integral_mulExpNegMulSq_comp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MulExpNegMulSqIntegral/Variantf5c068f7076755dc742260e8b374fee61f8800cb1acba0f7c7bbfff048faac2a.lean/declarations/tendsto-integral-mulexpnegmulsq-comp--50c23e098e04a2bf7d9c2810.md) | 67 | `result-track:50c23e098e04a2bf7d9c281054e2b5f764e6e2ea986e42593789bd50563af96c` |
| 4 | `theorem` | [tendsto_integral_mul_one_add_inv_smul_sq_pow](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MulExpNegMulSqIntegral/Variantf5c068f7076755dc742260e8b374fee61f8800cb1acba0f7c7bbfff048faac2a.lean/declarations/tendsto-integral-mul-one-add-inv-smul-sq-pow--da9068d4e7e97bb012ef7b0d.md) | 85 | `result-track:da9068d4e7e97bb012ef7b0d90eb9aaf32a1ce39a8c17d5ce2db0cd3c3bf6266` |
| 5 | `theorem` | [integral_mulExpNegMulSq_comp_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MulExpNegMulSqIntegral/Variantf5c068f7076755dc742260e8b374fee61f8800cb1acba0f7c7bbfff048faac2a.lean/declarations/integral-mulexpnegmulsq-comp-eq--681e4ea6e42042854afb9240.md) | 123 | `result-track:681e4ea6e42042854afb9240924d9541472492c9557936a18cd520bda7ba77f5` |
| 6 | `theorem` | [abs_integral_sub_setIntegral_mulExpNegMulSq_comp_lt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MulExpNegMulSqIntegral/Variantf5c068f7076755dc742260e8b374fee61f8800cb1acba0f7c7bbfff048faac2a.lean/declarations/abs-integral-sub-setintegral-mulexpnegmulsq-comp-lt--bf47bbdd5001a29391593eda.md) | 138 | `result-track:bf47bbdd5001a29391593eda9f5c6995d3231be11aeaf40d0144922ad1741536` |
| 7 | `theorem` | [abs_setIntegral_mulExpNegMulSq_comp_sub_le_mul_measure](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MulExpNegMulSqIntegral/Variantf5c068f7076755dc742260e8b374fee61f8800cb1acba0f7c7bbfff048faac2a.lean/declarations/abs-setintegral-mulexpnegmulsq-comp-sub-le-mul-measure--436bcdc74eb115226d1b6cfc.md) | 147 | `result-track:436bcdc74eb115226d1b6cfcb5991cd9441877ecf0c31f27da87130010ff6339` |
| 8 | `theorem` | [dist_integral_mulExpNegMulSq_comp_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MulExpNegMulSqIntegral/Variantf5c068f7076755dc742260e8b374fee61f8800cb1acba0f7c7bbfff048faac2a.lean/declarations/dist-integral-mulexpnegmulsq-comp-le--f5982f69870ecb36ffc46397.md) | 164 | `result-track:f5982f69870ecb36ffc46397ef162fe2041dff7dc16fea061ee8ac83b1cfe3a5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
