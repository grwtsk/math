# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.DistLEIntegral.Variantfc0838d04f895c114a3a73aa35adaf929baa3acf518058c28ecfb425e1505ddb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1d9762174845f61f50e36d1ad73c4fa1201e72c7",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/DistLEIntegral/Variantfc0838d04f895c114a3a73aa35adaf929baa3acf518058c28ecfb425e1505ddb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DistLEIntegral/Variantfc0838d04f895c114a3a73aa35adaf929baa3acf518058c28ecfb425e1505ddb.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DistLEIntegral/Variantfc0838d04f895c114a3a73aa35adaf929baa3acf518058c28ecfb425e1505ddb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1d9762174845f61f50e36d1ad73c4fa1201e72c7`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/DistLEIntegral/Variantfc0838d04f895c114a3a73aa35adaf929baa3acf518058c28ecfb425e1505ddb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/DistLEIntegral/Variantfc0838d04f895c114a3a73aa35adaf929baa3acf518058c28ecfb425e1505ddb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.MeanValue` — import line 17; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntervalIntegral.FundThmCalculus` — import line 18; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [norm_sub_le_integral_of_norm_deriv_le_of_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DistLEIntegral/Variantfc0838d04f895c114a3a73aa35adaf929baa3acf518058c28ecfb425e1505ddb.lean/declarations/norm-sub-le-integral-of-norm-deriv-le-of-le--28081fa554e807de3790da5c.md) | 50 | `result-track:28081fa554e807de3790da5c3f82ce250c6aeaa9862f02471f726ca61f14c441` |
| 2 | `lemma` | [norm_sub_le_mul_volume_of_norm_deriv_le_of_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DistLEIntegral/Variantfc0838d04f895c114a3a73aa35adaf929baa3acf518058c28ecfb425e1505ddb.lean/declarations/norm-sub-le-mul-volume-of-norm-deriv-le-of-le--4a3c8ef4102b69e2f7c7106d.md) | 93 | `result-track:4a3c8ef4102b69e2f7c7106d9c73677afa4080da98b69ca0b25bbc0af8522f38` |
| 3 | `lemma` | [norm_sub_le_mul_volume_of_norm_lineDeriv_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DistLEIntegral/Variantfc0838d04f895c114a3a73aa35adaf929baa3acf518058c28ecfb425e1505ddb.lean/declarations/norm-sub-le-mul-volume-of-norm-linederiv-le--db80cd645c489598181bc426.md) | 130 | `result-track:db80cd645c489598181bc4269202d0577bb6ded33e42ededa291985a53b97b56` |
| 4 | `lemma` | [norm_sub_le_mul_volume_of_norm_fderiv_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DistLEIntegral/Variantfc0838d04f895c114a3a73aa35adaf929baa3acf518058c28ecfb425e1505ddb.lean/declarations/norm-sub-le-mul-volume-of-norm-fderiv-le--ec3b3f85f59146bdd32dcde1.md) | 159 | `result-track:ec3b3f85f59146bdd32dcde157605370c3e912480078691959c03cb2faa0e3e7` |
| 5 | `theorem` | [sub_isBigO_norm_rpow_add_one_of_fderiv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DistLEIntegral/Variantfc0838d04f895c114a3a73aa35adaf929baa3acf518058c28ecfb425e1505ddb.lean/declarations/sub-isbigo-norm-rpow-add-one-of-fderiv--a38524e54e1654097d4bd73e.md) | 184 | `result-track:a38524e54e1654097d4bd73e5eb26d99aee09516fd4249abfbfb5c3368301e18` |
| 6 | `theorem` | [isBigO_norm_rpow_add_one_of_fderiv_of_apply_eq_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DistLEIntegral/Variantfc0838d04f895c114a3a73aa35adaf929baa3acf518058c28ecfb425e1505ddb.lean/declarations/isbigo-norm-rpow-add-one-of-fderiv-of-apply-eq-zero--9395d546f8d2c40f8d53d7f9.md) | 207 | `result-track:9395d546f8d2c40f8d53d7f968100b8be98e28292954f9be8cc3cf7abdae4057` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
