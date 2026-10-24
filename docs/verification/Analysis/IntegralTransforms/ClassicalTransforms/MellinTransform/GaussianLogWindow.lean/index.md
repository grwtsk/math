# Verification target: GRWTSK.Analysis.MellinTransform.GaussianLogWindow

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "18e53ce5c1fd56c040b7c66518318ee8bf753eb6",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MellinTransform/GaussianLogWindow.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/GaussianLogWindow.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/GaussianLogWindow.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `18e53ce5c1fd56c040b7c66518318ee8bf753eb6`.

Source path: `GRWTSK/Analysis/MellinTransform/GaussianLogWindow.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MellinTransform/GaussianLogWindow.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.MellinTransform.GaussianLogFlow`](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/GaussianLogFlow.lean/index.md) — import line 19; pinned internal source present.
- [`GRWTSK.Analysis.Fourier.SchwartzMoments`](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/SchwartzMoments.lean/index.md) — import line 20; pinned internal source present.
- `Mathlib.Analysis.Calculus.IteratedDeriv.Lemmas` — import line 21; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [gaussianFlow_real_smooth](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/GaussianLogWindow.lean/declarations/gaussianflow-real-smooth--29564010527cc915b85ddb3d.md) | 31 | `result-track:29564010527cc915b85ddb3d3591970c82587cbb7f9e1a1b62fd03b68fcffc68` |
| 2 | `def` | [gaussianLogWindow](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/GaussianLogWindow.lean/declarations/gaussianlogwindow--8804d2deeb8626a3587168cb.md) | 37 | `declaration-track:8804d2deeb8626a3587168cb29add5346e87c1f0f7cc29ca24fd578bb1e38718` |
| 3 | `lemma` | [gaussianLogWindow_apply](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/GaussianLogWindow.lean/declarations/gaussianlogwindow-apply--f73a225ff661970e5d875f0c.md) | 40 | `result-track:f73a225ff661970e5d875f0cfa7573d2c33504660f505dcb99db030537f96e57` |
| 4 | `lemma` | [gaussianLogWindow_derivative_outside](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/GaussianLogWindow.lean/declarations/gaussianlogwindow-derivative-outside--d41fc2acfa9812231b3238eb.md) | 43 | `result-track:d41fc2acfa9812231b3238ebed3ef28827930de04e5ae79924d5a74369944579` |
| 5 | `lemma` | [gaussianLogWindow_derivative_bound](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/GaussianLogWindow.lean/declarations/gaussianlogwindow-derivative-bound--2f05641ae48cc931cc95b189.md) | 54 | `result-track:2f05641ae48cc931cc95b1892ef339bf3093714beb0d9a786662e4615a62133a` |
| 6 | `theorem` | [gaussianLogWindow_seminorm](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/GaussianLogWindow.lean/declarations/gaussianlogwindow-seminorm--a79986f53c02b2662ec30cea.md) | 83 | `result-track:a79986f53c02b2662ec30cead55492db2551b6a5e82614c6a12d0625bd07153e` |
| 7 | `theorem` | [gaussianLogWindow_fourier_moment](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/GaussianLogWindow.lean/declarations/gaussianlogwindow-fourier-moment--d62f84cd6d3caa3dab8ccb1b.md) | 100 | `result-track:d62f84cd6d3caa3dab8ccb1b3b713baa64e6e040f7f50d7ca70b3d1e2634dece` |
| 8 | `lemma` | [gaussianLogWindow_compact](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/GaussianLogWindow.lean/declarations/gaussianlogwindow-compact--06d506573bfed2ce7583a9db.md) | 144 | `result-track:06d506573bfed2ce7583a9dbfcf6d21f8b2f9ad8cc936ff4b6804b9535f5630b` |
| 9 | `lemma` | [gaussianLogWindow_support_box](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/GaussianLogWindow.lean/declarations/gaussianlogwindow-support-box--c408b953dc1197af156bbffe.md) | 149 | `result-track:c408b953dc1197af156bbffedbf3df758d99ebe69ac20bd2dd8098730149ba67` |
| 10 | `lemma` | [gaussianLogWindow_apply_positive](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/GaussianLogWindow.lean/declarations/gaussianlogwindow-apply-positive--f10ba7cc044d6f979cc85bbe.md) | 156 | `result-track:f10ba7cc044d6f979cc85bbed565b60abf5f89cece7976c39665cb1f0e5511bc` |
| 11 | `lemma` | [gaussianLogWindow_positive_integrable](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/GaussianLogWindow.lean/declarations/gaussianlogwindow-positive-integrable--a63ab160918e84c891b49608.md) | 162 | `result-track:a63ab160918e84c891b496081ed798c0f8706ff45ba17e29bd731666e14d77a6` |
| 12 | `def` | [gaussianJointDensity](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/GaussianLogWindow.lean/declarations/gaussianjointdensity--e3387cc2670fee5442555483.md) | 173 | `declaration-track:e3387cc2670fee5442555483afb761e4e3c5563b7008ce2e392dba078538ad3f` |
| 13 | `lemma` | [gaussianJointDensity_eq_fourier_positive](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/GaussianLogWindow.lean/declarations/gaussianjointdensity-eq-fourier-positive--ccb0122f7b7da0b80f645c94.md) | 177 | `result-track:ccb0122f7b7da0b80f645c942b4cb30b68c71deff066c0f7b31862d5447b35c8` |
| 14 | `lemma` | [gaussianJointDensity_integral](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/GaussianLogWindow.lean/declarations/gaussianjointdensity-integral--21ce2176a9f5787453270683.md) | 186 | `result-track:21ce2176a9f57874532706836d253cf6f370b62ec81e09378196af82ed44cf15` |
| 15 | `lemma` | [gaussianJointDensity_integrand_integrable](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/GaussianLogWindow.lean/declarations/gaussianjointdensity-integrand-integrable--11d49ce230ed342283459852.md) | 195 | `result-track:11d49ce230ed3422834598522675c2bedd75400517c19872f99d7ad3855bc589` |
| 16 | `lemma` | [gaussianJointDensity_moment_integrable](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/GaussianLogWindow.lean/declarations/gaussianjointdensity-moment-integrable--f79505e52c1c5793cea1ec97.md) | 204 | `result-track:f79505e52c1c5793cea1ec9755e63083c423f75b6681cd4218e00fd8ddd42357` |
| 17 | `theorem` | [gaussianJointDensity_moment](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/GaussianLogWindow.lean/declarations/gaussianjointdensity-moment--53bd74db379972b482c68859.md) | 210 | `result-track:53bd74db379972b482c6885927e72549a20cab7c9d5112778b7b9f043eaf3ff0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
