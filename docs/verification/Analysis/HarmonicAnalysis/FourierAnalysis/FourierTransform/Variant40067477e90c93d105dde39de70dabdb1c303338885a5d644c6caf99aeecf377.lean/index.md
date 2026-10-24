# Verification target: GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.FourierTransform.Variant40067477e90c93d105dde39de70dabdb1c303338885a5d644c6caf99aeecf377

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "179491edbeb37eae5e80866272098233ff2a9f7f",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variant40067477e90c93d105dde39de70dabdb1c303338885a5d644c6caf99aeecf377.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variant40067477e90c93d105dde39de70dabdb1c303338885a5d644c6caf99aeecf377.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variant40067477e90c93d105dde39de70dabdb1c303338885a5d644c6caf99aeecf377.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `179491edbeb37eae5e80866272098233ff2a9f7f`.

Source path: `GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variant40067477e90c93d105dde39de70dabdb1c303338885a5d644c6caf99aeecf377.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variant40067477e90c93d105dde39de70dabdb1c303338885a5d644c6caf99aeecf377.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [verticalIntegral](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variant40067477e90c93d105dde39de70dabdb1c303338885a5d644c6caf99aeecf377.lean/declarations/verticalintegral--a63c597df105a70d7d8c10b3.md) | 49 | `declaration-track:a63c597df105a70d7d8c10b3857337dae2e0c9330aad4fa46fa8500715a81f49` |
| 2 | `theorem` | [norm_cexp_neg_mul_sq_add_mul_I](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variant40067477e90c93d105dde39de70dabdb1c303338885a5d644c6caf99aeecf377.lean/declarations/norm-cexp-neg-mul-sq-add-mul-i--58bf40f8511e440a7b23040e.md) | 54 | `result-track:58bf40f8511e440a7b23040eadb105f2ebdf07e5066409b27c40c6381a5d7f51` |
| 3 | `theorem` | [norm_cexp_neg_mul_sq_add_mul_I'](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variant40067477e90c93d105dde39de70dabdb1c303338885a5d644c6caf99aeecf377.lean/declarations/norm-cexp-neg-mul-sq-add-mul-i--671304d08451bfeec1fb5fbf.md) | 60 | `result-track:671304d08451bfeec1fb5fbfff9c87dd61820a621451d3475f6dd31272e1a5de` |
| 4 | `theorem` | [verticalIntegral_norm_le](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variant40067477e90c93d105dde39de70dabdb1c303338885a5d644c6caf99aeecf377.lean/declarations/verticalintegral-norm-le--75d981f91f4e46559b724fa4.md) | 69 | `result-track:75d981f91f4e46559b724fa443eb6492d7a14dbae3bca20208396210e3019f8b` |
| 5 | `theorem` | [tendsto_verticalIntegral](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variant40067477e90c93d105dde39de70dabdb1c303338885a5d644c6caf99aeecf377.lean/declarations/tendsto-verticalintegral--53cf07df4636d8d28f013c6e.md) | 106 | `result-track:53cf07df4636d8d28f013c6e9a1f384b9cce8c5dbf87f5d8ecf61f96cc8627b0` |
| 6 | `theorem` | [integrable_cexp_neg_mul_sq_add_real_mul_I](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variant40067477e90c93d105dde39de70dabdb1c303338885a5d644c6caf99aeecf377.lean/declarations/integrable-cexp-neg-mul-sq-add-real-mul-i--758c53deaf4c1fa82630a6d0.md) | 122 | `result-track:758c53deaf4c1fa82630a6d0d520ca5a6786fa7ffa5c573243c0e6c5940ed4b7` |
| 7 | `theorem` | [integral_cexp_neg_mul_sq_add_real_mul_I](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variant40067477e90c93d105dde39de70dabdb1c303338885a5d644c6caf99aeecf377.lean/declarations/integral-cexp-neg-mul-sq-add-real-mul-i--f49b983b8061778e091519ae.md) | 133 | `result-track:f49b983b8061778e091519aeda69d0d00f6ed3f10bb942c172bffc7e40427102` |
| 8 | `theorem` | [_root_.integral_cexp_quadratic](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variant40067477e90c93d105dde39de70dabdb1c303338885a5d644c6caf99aeecf377.lean/declarations/root-integral-cexp-quadratic--42066c7065bd15f7b2035af0.md) | 173 | `result-track:42066c7065bd15f7b2035af00a0cb5f58834b7970c3e74441b416d14ebd66d4c` |
| 9 | `lemma` | [_root_.integrable_cexp_quadratic'](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variant40067477e90c93d105dde39de70dabdb1c303338885a5d644c6caf99aeecf377.lean/declarations/root-integrable-cexp-quadratic--53020bf903475c6d8b34f66b.md) | 188 | `result-track:53020bf903475c6d8b34f66b7fcb341c7aa8eb58293471bce472d0a43db9696b` |
| 10 | `lemma` | [_root_.integrable_cexp_quadratic](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variant40067477e90c93d105dde39de70dabdb1c303338885a5d644c6caf99aeecf377.lean/declarations/root-integrable-cexp-quadratic--38e43f80b3c3e5357a121f37.md) | 195 | `result-track:38e43f80b3c3e5357a121f3776811fd7e67d8969f17caf22d7b03a0f087b4a0a` |
| 11 | `theorem` | [_root_.fourierIntegral_gaussian](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variant40067477e90c93d105dde39de70dabdb1c303338885a5d644c6caf99aeecf377.lean/declarations/root-fourierintegral-gaussian--2d736b6aba56cd4f553dac6a.md) | 200 | `result-track:2d736b6aba56cd4f553dac6ac009a61097effeba1172b0662ab114b76c06aa35` |
| 12 | `theorem` | [_root_.fourier_gaussian_pi'](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variant40067477e90c93d105dde39de70dabdb1c303338885a5d644c6caf99aeecf377.lean/declarations/root-fourier-gaussian-pi--760e2ee994a659ac0ce0b173.md) | 207 | `result-track:760e2ee994a659ac0ce0b17308a9c2ffdafb9fc6879a0ab43014265865a4974b` |
| 13 | `theorem` | [_root_.fourier_gaussian_pi](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variant40067477e90c93d105dde39de70dabdb1c303338885a5d644c6caf99aeecf377.lean/declarations/root-fourier-gaussian-pi--914d45ca0eb33694182cf7f0.md) | 227 | `result-track:914d45ca0eb33694182cf7f0b281083400ef48f100c2d84f789a640a2892cf9d` |
| 14 | `theorem` | [integrable_cexp_neg_sum_mul_add](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variant40067477e90c93d105dde39de70dabdb1c303338885a5d644c6caf99aeecf377.lean/declarations/integrable-cexp-neg-sum-mul-add--6a408149d9e6d53112660a0d.md) | 237 | `result-track:6a408149d9e6d53112660a0d95c6c5a53746382d9392ab847f7c06d5393b5e0a` |
| 15 | `theorem` | [integrable_cexp_neg_mul_sum_add](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variant40067477e90c93d105dde39de70dabdb1c303338885a5d644c6caf99aeecf377.lean/declarations/integrable-cexp-neg-mul-sum-add--0eb8b983828d2953a2849fc7.md) | 245 | `result-track:0eb8b983828d2953a2849fc7f706ba30d1beea78f95a630375f078bfd35d53cd` |
| 16 | `theorem` | [integrable_cexp_neg_mul_sq_norm_add_of_euclideanSpace](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variant40067477e90c93d105dde39de70dabdb1c303338885a5d644c6caf99aeecf377.lean/declarations/integrable-cexp-neg-mul-sq-norm-add-of-euclideanspace--cbb4716de6a72f4fdbed2691.md) | 250 | `result-track:cbb4716de6a72f4fdbed2691b472f9623aa72b4ee5dc4861309ef2c772480313` |
| 17 | `theorem` | [integrable_cexp_neg_mul_sq_norm_add](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variant40067477e90c93d105dde39de70dabdb1c303338885a5d644c6caf99aeecf377.lean/declarations/integrable-cexp-neg-mul-sq-norm-add--416634446974a6f8c9cb38f3.md) | 267 | `result-track:416634446974a6f8c9cb38f35b411585e4de35f5986cded512428768a0a39c44` |
| 18 | `theorem` | [integral_cexp_neg_sum_mul_add](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variant40067477e90c93d105dde39de70dabdb1c303338885a5d644c6caf99aeecf377.lean/declarations/integral-cexp-neg-sum-mul-add--f6904f8ebf9dae1f41426f96.md) | 276 | `result-track:f6904f8ebf9dae1f41426f96354da76fd8b13b124f95c5676757895f763bc5b8` |
| 19 | `theorem` | [integral_cexp_neg_mul_sum_add](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variant40067477e90c93d105dde39de70dabdb1c303338885a5d644c6caf99aeecf377.lean/declarations/integral-cexp-neg-mul-sum-add--89bc551dbbeacfd85716c669.md) | 286 | `result-track:89bc551dbbeacfd85716c669c7881e91b936e2773d7bd22831676cec9acb2131` |
| 20 | `theorem` | [integral_cexp_neg_mul_sq_norm_add_of_euclideanSpace](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variant40067477e90c93d105dde39de70dabdb1c303338885a5d644c6caf99aeecf377.lean/declarations/integral-cexp-neg-mul-sq-norm-add-of-euclideanspace--7d913492c892da291fd4096a.md) | 293 | `result-track:7d913492c892da291fd4096abb5ebad0a028e3d0d0f6e1e6f8ffba253e7ce10e` |
| 21 | `theorem` | [integral_cexp_neg_mul_sq_norm_add](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variant40067477e90c93d105dde39de70dabdb1c303338885a5d644c6caf99aeecf377.lean/declarations/integral-cexp-neg-mul-sq-norm-add--b923ca2931ed4c67f93c5920.md) | 315 | `result-track:b923ca2931ed4c67f93c59207fe32ebbccfdc059cb0322990e910201e774980b` |
| 22 | `theorem` | [integral_cexp_neg_mul_sq_norm](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variant40067477e90c93d105dde39de70dabdb1c303338885a5d644c6caf99aeecf377.lean/declarations/integral-cexp-neg-mul-sq-norm--c0917322eb5a43590c50ebc8.md) | 324 | `result-track:c0917322eb5a43590c50ebc8a253fcdd09175d81a987049f3c7583b4373909be` |
| 23 | `theorem` | [integral_rexp_neg_mul_sq_norm](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variant40067477e90c93d105dde39de70dabdb1c303338885a5d644c6caf99aeecf377.lean/declarations/integral-rexp-neg-mul-sq-norm--ae161761ab9bb6e1015d5c1a.md) | 329 | `result-track:ae161761ab9bb6e1015d5c1a960ecf11b4397c068c4ad0368e740b7873974da8` |
| 24 | `theorem` | [_root_.fourier_gaussian_innerProductSpace'](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variant40067477e90c93d105dde39de70dabdb1c303338885a5d644c6caf99aeecf377.lean/declarations/root-fourier-gaussian-innerproductspace--8e7430f9899d1dc178f920f0.md) | 339 | `result-track:8e7430f9899d1dc178f920f02a4ce4af2090d3099605e721f961b9deeed9d50d` |
| 25 | `theorem` | [_root_.fourier_gaussian_innerProductSpace](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variant40067477e90c93d105dde39de70dabdb1c303338885a5d644c6caf99aeecf377.lean/declarations/root-fourier-gaussian-innerproductspace--20884ab7d6e20d3f30e7be25.md) | 352 | `result-track:20884ab7d6e20d3f30e7be2533dd347fee233ede46a9e90cefe284000f116963` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
