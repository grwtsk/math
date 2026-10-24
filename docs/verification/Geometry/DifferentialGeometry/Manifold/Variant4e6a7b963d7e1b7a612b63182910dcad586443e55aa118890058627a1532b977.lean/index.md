# Verification target: GRWTSK.Geometry.DifferentialGeometry.Manifold.Variant4e6a7b963d7e1b7a612b63182910dcad586443e55aa118890058627a1532b977

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "99f59935cef06f0fcf1929639d48e29a7f138b40",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/DifferentialGeometry/Manifold/Variant4e6a7b963d7e1b7a612b63182910dcad586443e55aa118890058627a1532b977.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/DifferentialGeometry/Manifold/Variant4e6a7b963d7e1b7a612b63182910dcad586443e55aa118890058627a1532b977.lean/index.md) · [Full source](../../../../../mathematics/Geometry/DifferentialGeometry/Manifold/Variant4e6a7b963d7e1b7a612b63182910dcad586443e55aa118890058627a1532b977.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `99f59935cef06f0fcf1929639d48e29a7f138b40`.

Source path: `GRWTSK/Geometry/DifferentialGeometry/Manifold/Variant4e6a7b963d7e1b7a612b63182910dcad586443e55aa118890058627a1532b977.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/DifferentialGeometry/Manifold/Variant4e6a7b963d7e1b7a612b63182910dcad586443e55aa118890058627a1532b977.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/DifferentialGeometry/Manifold/Variant4e6a7b963d7e1b7a612b63182910dcad586443e55aa118890058627a1532b977.lean/declarations/instance--d7b30bd420934bd3e5cab323.md) | 45 | `declaration-track:d7b30bd420934bd3e5cab3234366c42709110996d6029b2f971f6e253d4359b3` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/DifferentialGeometry/Manifold/Variant4e6a7b963d7e1b7a612b63182910dcad586443e55aa118890058627a1532b977.lean/declarations/instance--1da694922e8d4e80200167a3.md) | 48 | `declaration-track:1da694922e8d4e80200167a337944df8bff3725c6968ffb980decd4f5f039c95` |
| 3 | `theorem` | [contMDiff_coe](../../../../../mathematics/Geometry/DifferentialGeometry/Manifold/Variant4e6a7b963d7e1b7a612b63182910dcad586443e55aa118890058627a1532b977.lean/declarations/contmdiff-coe--973c61fd8a21af193678f398.md) | 52 | `result-track:973c61fd8a21af193678f398a79d981892ac06adc2e2259a832d46a6102fdbd9` |
| 4 | `theorem` | [mdifferentiable_coe](../../../../../mathematics/Geometry/DifferentialGeometry/Manifold/Variant4e6a7b963d7e1b7a612b63182910dcad586443e55aa118890058627a1532b977.lean/declarations/mdifferentiable-coe--489b2de742c19ca4c6a3a8f0.md) | 56 | `result-track:489b2de742c19ca4c6a3a8f0d124b06dd493c77250485f3ab6c4aacd94e98a2a` |
| 5 | `lemma` | [contMDiffAt_ofComplex](../../../../../mathematics/Geometry/DifferentialGeometry/Manifold/Variant4e6a7b963d7e1b7a612b63182910dcad586443e55aa118890058627a1532b977.lean/declarations/contmdiffat-ofcomplex--4715bb18395f484b979bebc0.md) | 59 | `result-track:4715bb18395f484b979bebc094ee20e1b72c839f00da3211dd525b238242e8b4` |
| 6 | `lemma` | [mdifferentiableAt_ofComplex](../../../../../mathematics/Geometry/DifferentialGeometry/Manifold/Variant4e6a7b963d7e1b7a612b63182910dcad586443e55aa118890058627a1532b977.lean/declarations/mdifferentiableat-ofcomplex--f27a56bacb1aa3eceeea4e90.md) | 69 | `result-track:f27a56bacb1aa3eceeea4e9070af20f9a63136c40eefd36af03bd7115b4a2b96` |
| 7 | `lemma` | [contMDiffAt_iff](../../../../../mathematics/Geometry/DifferentialGeometry/Manifold/Variant4e6a7b963d7e1b7a612b63182910dcad586443e55aa118890058627a1532b977.lean/declarations/contmdiffat-iff--a5a7eecd4a3a728daad88ee9.md) | 72 | `result-track:a5a7eecd4a3a728daad88ee9ddd9b5b13503df39aae1e24849034560def0e25e` |
| 8 | `lemma` | [mdifferentiableAt_iff](../../../../../mathematics/Geometry/DifferentialGeometry/Manifold/Variant4e6a7b963d7e1b7a612b63182910dcad586443e55aa118890058627a1532b977.lean/declarations/mdifferentiableat-iff--3059d6421b20bd63a1ee7e51.md) | 79 | `result-track:3059d6421b20bd63a1ee7e51847ef6ed8cb26c4ccc833fe614d11e77f8553d97` |
| 9 | `lemma` | [mdifferentiable_iff](../../../../../mathematics/Geometry/DifferentialGeometry/Manifold/Variant4e6a7b963d7e1b7a612b63182910dcad586443e55aa118890058627a1532b977.lean/declarations/mdifferentiable-iff--6ecf54fce81d5acd902fab6c.md) | 86 | `result-track:6ecf54fce81d5acd902fab6c2fc8485085e25359903707945c02e6ef13a7e14d` |
| 10 | `lemma` | [contMDiff_num](../../../../../mathematics/Geometry/DifferentialGeometry/Manifold/Variant4e6a7b963d7e1b7a612b63182910dcad586443e55aa118890058627a1532b977.lean/declarations/contmdiff-num--54e920ece6835fe82e97bd7d.md) | 92 | `result-track:54e920ece6835fe82e97bd7d9d75de627c52ef7d7f9e0e18bdf0095c5f61e13c` |
| 11 | `lemma` | [contMDiff_denom](../../../../../mathematics/Geometry/DifferentialGeometry/Manifold/Variant4e6a7b963d7e1b7a612b63182910dcad586443e55aa118890058627a1532b977.lean/declarations/contmdiff-denom--6b42b21f87d45c6e242e7539.md) | 95 | `result-track:6b42b21f87d45c6e242e753946d392ae597734e32494802477c3af1ab2e10a8e` |
| 12 | `lemma` | [contMDiff_denom_zpow](../../../../../mathematics/Geometry/DifferentialGeometry/Manifold/Variant4e6a7b963d7e1b7a612b63182910dcad586443e55aa118890058627a1532b977.lean/declarations/contmdiff-denom-zpow--2ec947b802072f324b9f5bed.md) | 98 | `result-track:2ec947b802072f324b9f5bedc47114720fbed55f0b4c69503a942b23d3a784b1` |
| 13 | `lemma` | [contMDiff_inv_denom](../../../../../mathematics/Geometry/DifferentialGeometry/Manifold/Variant4e6a7b963d7e1b7a612b63182910dcad586443e55aa118890058627a1532b977.lean/declarations/contmdiff-inv-denom--584cfda821d3ffbeca812726.md) | 104 | `result-track:584cfda821d3ffbeca812726b47eef1535eedd495aad4f8352043358f0b95a35` |
| 14 | `lemma` | [contMDiff_smul](../../../../../mathematics/Geometry/DifferentialGeometry/Manifold/Variant4e6a7b963d7e1b7a612b63182910dcad586443e55aa118890058627a1532b977.lean/declarations/contmdiff-smul--a31e92ca6be8fdb7f6cbabb7.md) | 108 | `result-track:a31e92ca6be8fdb7f6cbabb712b51729b4b72e8e54feaefd4cdd3d30f57fbdf0` |
| 15 | `lemma` | [mdifferentiable_num](../../../../../mathematics/Geometry/DifferentialGeometry/Manifold/Variant4e6a7b963d7e1b7a612b63182910dcad586443e55aa118890058627a1532b977.lean/declarations/mdifferentiable-num--38f5f467abf45fe4d57d9bf5.md) | 113 | `result-track:38f5f467abf45fe4d57d9bf5031ed7a173d121d59032e8fc1f1fb281460ff2e8` |
| 16 | `lemma` | [mdifferentiable_denom](../../../../../mathematics/Geometry/DifferentialGeometry/Manifold/Variant4e6a7b963d7e1b7a612b63182910dcad586443e55aa118890058627a1532b977.lean/declarations/mdifferentiable-denom--657d196413f51806986e3990.md) | 116 | `result-track:657d196413f51806986e3990e7f8999bc94b62707e65488cd5e94f3c2f640db4` |
| 17 | `lemma` | [mdifferentiable_denom_zpow](../../../../../mathematics/Geometry/DifferentialGeometry/Manifold/Variant4e6a7b963d7e1b7a612b63182910dcad586443e55aa118890058627a1532b977.lean/declarations/mdifferentiable-denom-zpow--d9099e165ad30ca2795fd0be.md) | 119 | `result-track:d9099e165ad30ca2795fd0be339ab6eff99511c2eb1f6c47a7eb405b768cbe04` |
| 18 | `lemma` | [mdifferentiable_inv_denom](../../../../../mathematics/Geometry/DifferentialGeometry/Manifold/Variant4e6a7b963d7e1b7a612b63182910dcad586443e55aa118890058627a1532b977.lean/declarations/mdifferentiable-inv-denom--f3808187b50f5e3621e46a71.md) | 122 | `result-track:f3808187b50f5e3621e46a7121feea53452f644326357813237cb950669dbe6c` |
| 19 | `lemma` | [mdifferentiable_smul](../../../../../mathematics/Geometry/DifferentialGeometry/Manifold/Variant4e6a7b963d7e1b7a612b63182910dcad586443e55aa118890058627a1532b977.lean/declarations/mdifferentiable-smul--a11a2fa6b683bdc9a82ca54a.md) | 126 | `result-track:a11a2fa6b683bdc9a82ca54a97cfcdc5400b68f1ee631d0249ab172ac715985b` |
| 20 | `lemma` | [eq_zero_of_frequently](../../../../../mathematics/Geometry/DifferentialGeometry/Manifold/Variant4e6a7b963d7e1b7a612b63182910dcad586443e55aa118890058627a1532b977.lean/declarations/eq-zero-of-frequently--a05ab7102df886400cdb6865.md) | 129 | `result-track:a05ab7102df886400cdb68652158e52a66c663487f1ba93c48585d41fe54a635` |
| 21 | `lemma` | [mul_eq_zero_iff](../../../../../mathematics/Geometry/DifferentialGeometry/Manifold/Variant4e6a7b963d7e1b7a612b63182910dcad586443e55aa118890058627a1532b977.lean/declarations/mul-eq-zero-iff--a575dd212650736917524fd6.md) | 143 | `result-track:a575dd212650736917524fd6b8787bd47ef8c01acc28e6e06839a19dbbf94e7f` |
| 22 | `lemma` | [prod_eq_zero_iff](../../../../../mathematics/Geometry/DifferentialGeometry/Manifold/Variant4e6a7b963d7e1b7a612b63182910dcad586443e55aa118890058627a1532b977.lean/declarations/prod-eq-zero-iff--e1b1f10e31e6480e97a09405.md) | 147 | `result-track:e1b1f10e31e6480e97a094053160ab8cedbfc6c811fa6fe0466ef6a924da37b0` |
| 23 | `lemma` | [hasDerivAt_denom_zpow](../../../../../mathematics/Geometry/DifferentialGeometry/Manifold/Variant4e6a7b963d7e1b7a612b63182910dcad586443e55aa118890058627a1532b977.lean/declarations/hasderivat-denom-zpow--d8eb997b6688db1b631d1b57.md) | 169 | `result-track:d8eb997b6688db1b631d1b576365445763fe1a1a66fe291b310d8e0a936bf56b` |
| 24 | `lemma` | [deriv_denom_zpow](../../../../../mathematics/Geometry/DifferentialGeometry/Manifold/Variant4e6a7b963d7e1b7a612b63182910dcad586443e55aa118890058627a1532b977.lean/declarations/deriv-denom-zpow--21d221a43b9ec02f09d64e24.md) | 178 | `result-track:21d221a43b9ec02f09d64e24bf6df69ec2468999197623c2667890abcc91f49f` |
| 25 | `lemma` | [hasStrictDerivAt_smul](../../../../../mathematics/Geometry/DifferentialGeometry/Manifold/Variant4e6a7b963d7e1b7a612b63182910dcad586443e55aa118890058627a1532b977.lean/declarations/hasstrictderivat-smul--5ded020f7a6e940bfc5c8493.md) | 182 | `result-track:5ded020f7a6e940bfc5c84932306671830ed84c28087397c3b5a66e51fd049a7` |
| 26 | `lemma` | [deriv_smul](../../../../../mathematics/Geometry/DifferentialGeometry/Manifold/Variant4e6a7b963d7e1b7a612b63182910dcad586443e55aa118890058627a1532b977.lean/declarations/deriv-smul--d7e1a3edf011b3bfb945b297.md) | 194 | `result-track:d7e1a3edf011b3bfb945b297fba063dfa43594912485267bb8e57a52e0b36469` |
| 27 | `lemma` | [deriv_smul_ne_zero](../../../../../mathematics/Geometry/DifferentialGeometry/Manifold/Variant4e6a7b963d7e1b7a612b63182910dcad586443e55aa118890058627a1532b977.lean/declarations/deriv-smul-ne-zero--85e4af105c8001a1c031dcb6.md) | 198 | `result-track:85e4af105c8001a1c031dcb6267f3c18b35c8f4bb0fc5b20befa07ca90be64bd` |
| 28 | `lemma` | [analyticAt_smul](../../../../../mathematics/Geometry/DifferentialGeometry/Manifold/Variant4e6a7b963d7e1b7a612b63182910dcad586443e55aa118890058627a1532b977.lean/declarations/analyticat-smul--0cbb979805ebaaa7a15f7d4d.md) | 205 | `result-track:0cbb979805ebaaa7a15f7d4dbefa6abd9b3a54e9403c54bf9448e1e7f3693ee6` |
| 29 | `lemma` | [meromorphicOrderAt_comp_smul](../../../../../mathematics/Geometry/DifferentialGeometry/Manifold/Variant4e6a7b963d7e1b7a612b63182910dcad586443e55aa118890058627a1532b977.lean/declarations/meromorphicorderat-comp-smul--707d4dbc075f6a1ec6829b86.md) | 212 | `result-track:707d4dbc075f6a1ec6829b866eb06357687abb62a38a763a4ba67e77d3df4102` |
| 30 | `def` | [smulFDeriv](../../../../../mathematics/Geometry/DifferentialGeometry/Manifold/Variant4e6a7b963d7e1b7a612b63182910dcad586443e55aa118890058627a1532b977.lean/declarations/smulfderiv--333eac86c8a464eb7802b436.md) | 230 | `declaration-track:333eac86c8a464eb7802b436f54871743ef48b5bbd7297b75734a2b24865d477` |
| 31 | `theorem` | [smulFDeriv_J_mul](../../../../../mathematics/Geometry/DifferentialGeometry/Manifold/Variant4e6a7b963d7e1b7a612b63182910dcad586443e55aa118890058627a1532b977.lean/declarations/smulfderiv-j-mul--368420ecb5e975b77930de0a.md) | 234 | `result-track:368420ecb5e975b77930de0afdd3e24802267de5dca46a8e3969f3473bad5cc9` |
| 32 | `lemma` | [det_smulFDeriv](../../../../../mathematics/Geometry/DifferentialGeometry/Manifold/Variant4e6a7b963d7e1b7a612b63182910dcad586443e55aa118890058627a1532b977.lean/declarations/det-smulfderiv--c7a0df074ea33b629f6d4c95.md) | 244 | `result-track:c7a0df074ea33b629f6d4c9522b24ae6dfa4d5024b6ab58d59ac19852c2b8f41` |
| 33 | `lemma` | [hasStrictFDerivAt_smul](../../../../../mathematics/Geometry/DifferentialGeometry/Manifold/Variant4e6a7b963d7e1b7a612b63182910dcad586443e55aa118890058627a1532b977.lean/declarations/hasstrictfderivat-smul--45b0ff97d5bc5e00299a1fb6.md) | 254 | `result-track:45b0ff97d5bc5e00299a1fb6c1a6789409e17a9f7522770b3d686bb58efea5ad` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
