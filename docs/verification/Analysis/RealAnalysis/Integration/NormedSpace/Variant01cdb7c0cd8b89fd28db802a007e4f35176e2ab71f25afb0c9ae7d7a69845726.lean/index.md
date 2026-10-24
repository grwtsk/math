# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.NormedSpace.Variant01cdb7c0cd8b89fd28db802a007e4f35176e2ab71f25afb0c9ae7d7a69845726

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "835101972f73b44881b3a891d69829fdff9d8536",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/NormedSpace/Variant01cdb7c0cd8b89fd28db802a007e4f35176e2ab71f25afb0c9ae7d7a69845726.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/NormedSpace/Variant01cdb7c0cd8b89fd28db802a007e4f35176e2ab71f25afb0c9ae7d7a69845726.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/NormedSpace/Variant01cdb7c0cd8b89fd28db802a007e4f35176e2ab71f25afb0c9ae7d7a69845726.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `835101972f73b44881b3a891d69829fdff9d8536`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/NormedSpace/Variant01cdb7c0cd8b89fd28db802a007e4f35176e2ab71f25afb0c9ae7d7a69845726.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/NormedSpace/Variant01cdb7c0cd8b89fd28db802a007e4f35176e2ab71f25afb0c9ae7d7a69845726.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Measure.Lebesgue.EqHaar` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Bochner` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `macro_rules` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/NormedSpace/Variant01cdb7c0cd8b89fd28db802a007e4f35176e2ab71f25afb0c9ae7d7a69845726.lean/declarations/macro-rules--15e3b51f6f5f082a42bb80e4.md) | 24 | `declaration-track:15e3b51f6f5f082a42bb80e42fed43677390c8549a79f6fd1deb2207c9c39e64` |
| 2 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/NormedSpace/Variant01cdb7c0cd8b89fd28db802a007e4f35176e2ab71f25afb0c9ae7d7a69845726.lean/declarations/example--78a1350aa360d5d77a638259.md) | 40 | `declaration-track:78a1350aa360d5d77a6382593b0c9b68569cb05826909eec4e72b3c1a015d51a` |
| 3 | `instance` | [MapContinuousLinearEquiv.isAddHaarMeasure](../../../../../../mathematics/Analysis/RealAnalysis/Integration/NormedSpace/Variant01cdb7c0cd8b89fd28db802a007e4f35176e2ab71f25afb0c9ae7d7a69845726.lean/declarations/mapcontinuouslinearequiv-isaddhaarmeasure--3944b6c2af51fcd81876180f.md) | 51 | `declaration-track:3944b6c2af51fcd81876180f60b50597f00b2914fec45776685ad4e70c74ed55` |
| 4 | `instance` | [MapLinearEquiv.isAddHaarMeasure](../../../../../../mathematics/Analysis/RealAnalysis/Integration/NormedSpace/Variant01cdb7c0cd8b89fd28db802a007e4f35176e2ab71f25afb0c9ae7d7a69845726.lean/declarations/maplinearequiv-isaddhaarmeasure--3513230b45dd7358af23b8ef.md) | 58 | `declaration-track:3513230b45dd7358af23b8efffc63fe581d5fd0d2e5fd35d221b9f25e50801d9` |
| 5 | `theorem` | [integral_comp_smul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/NormedSpace/Variant01cdb7c0cd8b89fd28db802a007e4f35176e2ab71f25afb0c9ae7d7a69845726.lean/declarations/integral-comp-smul--a63ff3bdb933af533db335bb.md) | 73 | `result-track:a63ff3bdb933af533db335bb7e821dc78b48958c4b86188f3531bb28e1416ae2` |
| 6 | `theorem` | [integral_comp_smul_of_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/NormedSpace/Variant01cdb7c0cd8b89fd28db802a007e4f35176e2ab71f25afb0c9ae7d7a69845726.lean/declarations/integral-comp-smul-of-nonneg--df71152ca7bb3175ce568843.md) | 96 | `result-track:df71152ca7bb3175ce5688435827de5ef8e816635bf4a3af314777363f134e90` |
| 7 | `theorem` | [integral_comp_inv_smul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/NormedSpace/Variant01cdb7c0cd8b89fd28db802a007e4f35176e2ab71f25afb0c9ae7d7a69845726.lean/declarations/integral-comp-inv-smul--0391e754cb9719b7388a5cd2.md) | 104 | `result-track:0391e754cb9719b7388a5cd21a65b281d120639eda6474f2b3eff36cfc3cae1d` |
| 8 | `theorem` | [integral_comp_inv_smul_of_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/NormedSpace/Variant01cdb7c0cd8b89fd28db802a007e4f35176e2ab71f25afb0c9ae7d7a69845726.lean/declarations/integral-comp-inv-smul-of-nonneg--9b84d34c3a385240ebaf1e4e.md) | 112 | `result-track:9b84d34c3a385240ebaf1e4e21fd7ace192cdaa744d3c83dd0e566c6d5b1a49e` |
| 9 | `theorem` | [integral_comp_mul_left](../../../../../../mathematics/Analysis/RealAnalysis/Integration/NormedSpace/Variant01cdb7c0cd8b89fd28db802a007e4f35176e2ab71f25afb0c9ae7d7a69845726.lean/declarations/integral-comp-mul-left--265133de9b99d63b22b2c767.md) | 117 | `result-track:265133de9b99d63b22b2c7677ca32c449a8e69f1d9ab42c0ca1814772b64307d` |
| 10 | `theorem` | [integral_comp_inv_mul_left](../../../../../../mathematics/Analysis/RealAnalysis/Integration/NormedSpace/Variant01cdb7c0cd8b89fd28db802a007e4f35176e2ab71f25afb0c9ae7d7a69845726.lean/declarations/integral-comp-inv-mul-left--8f5a30d4f6ca882c6f799ed5.md) | 121 | `result-track:8f5a30d4f6ca882c6f799ed5d283214fc19de74df69ea4579370f97ef7af17bf` |
| 11 | `theorem` | [integral_comp_mul_right](../../../../../../mathematics/Analysis/RealAnalysis/Integration/NormedSpace/Variant01cdb7c0cd8b89fd28db802a007e4f35176e2ab71f25afb0c9ae7d7a69845726.lean/declarations/integral-comp-mul-right--d7f848e69cf3508cf3f34c6d.md) | 126 | `result-track:d7f848e69cf3508cf3f34c6da039c0a3dbe5ebf97254224bd3e01a7f1270b5e4` |
| 12 | `theorem` | [integral_comp_inv_mul_right](../../../../../../mathematics/Analysis/RealAnalysis/Integration/NormedSpace/Variant01cdb7c0cd8b89fd28db802a007e4f35176e2ab71f25afb0c9ae7d7a69845726.lean/declarations/integral-comp-inv-mul-right--aedf03634d2a8d615b09a277.md) | 130 | `result-track:aedf03634d2a8d615b09a277d12dbeec7f08153238398a9c217e72a29cf46dc6` |
| 13 | `theorem` | [integral_comp_div](../../../../../../mathematics/Analysis/RealAnalysis/Integration/NormedSpace/Variant01cdb7c0cd8b89fd28db802a007e4f35176e2ab71f25afb0c9ae7d7a69845726.lean/declarations/integral-comp-div--a1b61f3d7fb5d6f168f64aab.md) | 135 | `result-track:a1b61f3d7fb5d6f168f64aab50daea343e2f66e580d5ab8f0a1b837880dbb1ce` |
| 14 | `theorem` | [integrable_comp_smul_iff](../../../../../../mathematics/Analysis/RealAnalysis/Integration/NormedSpace/Variant01cdb7c0cd8b89fd28db802a007e4f35176e2ab71f25afb0c9ae7d7a69845726.lean/declarations/integrable-comp-smul-iff--5d4b42c7dcaf410d25535428.md) | 143 | `result-track:5d4b42c7dcaf410d25535428a7f4c9df903e5de1d2ac87e2296ec71470fe7815` |
| 15 | `theorem` | [Integrable.comp_smul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/NormedSpace/Variant01cdb7c0cd8b89fd28db802a007e4f35176e2ab71f25afb0c9ae7d7a69845726.lean/declarations/integrable-comp-smul--cec4fd50ebfe532d51efe279.md) | 160 | `result-track:cec4fd50ebfe532d51efe279365dc6772ebddd1a9352dad8de1ee19eb8535ca3` |
| 16 | `theorem` | [integrable_comp_mul_left_iff](../../../../../../mathematics/Analysis/RealAnalysis/Integration/NormedSpace/Variant01cdb7c0cd8b89fd28db802a007e4f35176e2ab71f25afb0c9ae7d7a69845726.lean/declarations/integrable-comp-mul-left-iff--4c8c5a0db370826ac6dbbae0.md) | 166 | `result-track:4c8c5a0db370826ac6dbbae0e594cd3883cd39ba534e7ac03c15b1b6e5310577` |
| 17 | `theorem` | [Integrable.comp_mul_left'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/NormedSpace/Variant01cdb7c0cd8b89fd28db802a007e4f35176e2ab71f25afb0c9ae7d7a69845726.lean/declarations/integrable-comp-mul-left--a5081c864fb916baf88425b0.md) | 171 | `result-track:a5081c864fb916baf88425b06ad0242a93801c59fa3b056be22cad067c1f068a` |
| 18 | `theorem` | [integrable_comp_mul_right_iff](../../../../../../mathematics/Analysis/RealAnalysis/Integration/NormedSpace/Variant01cdb7c0cd8b89fd28db802a007e4f35176e2ab71f25afb0c9ae7d7a69845726.lean/declarations/integrable-comp-mul-right-iff--3d24350c24ba0c1cd63df59a.md) | 176 | `result-track:3d24350c24ba0c1cd63df59a00d56aa77501bc8ba1f78df6bc51520f62b01d21` |
| 19 | `theorem` | [Integrable.comp_mul_right'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/NormedSpace/Variant01cdb7c0cd8b89fd28db802a007e4f35176e2ab71f25afb0c9ae7d7a69845726.lean/declarations/integrable-comp-mul-right--23688811bbfb791e7b9abb97.md) | 181 | `result-track:23688811bbfb791e7b9abb97dc266e722a67ee8e476125c2f7f4fd1f6bbc972b` |
| 20 | `theorem` | [integrable_comp_div_iff](../../../../../../mathematics/Analysis/RealAnalysis/Integration/NormedSpace/Variant01cdb7c0cd8b89fd28db802a007e4f35176e2ab71f25afb0c9ae7d7a69845726.lean/declarations/integrable-comp-div-iff--77acaf566084b537c6949a0a.md) | 186 | `result-track:77acaf566084b537c6949a0a24995503f039427ecaedf19ad3bd417396f80228` |
| 21 | `theorem` | [Integrable.comp_div](../../../../../../mathematics/Analysis/RealAnalysis/Integration/NormedSpace/Variant01cdb7c0cd8b89fd28db802a007e4f35176e2ab71f25afb0c9ae7d7a69845726.lean/declarations/integrable-comp-div--90af12d3ec93026e337378ce.md) | 191 | `result-track:90af12d3ec93026e337378ce99e10373bcb98e02348d311558ef5a5ff6f3fb18` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
