# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.SourceGreenKernel.Variant635f5d3b61909cff67c40ef4c36e8497c4b42e6c029e8991a41c28338a285f31

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9a4e2cabd042331661a8dd760998c488deddde98",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceGreenKernel/Variant635f5d3b61909cff67c40ef4c36e8497c4b42e6c029e8991a41c28338a285f31.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceGreenKernel/Variant635f5d3b61909cff67c40ef4c36e8497c4b42e6c029e8991a41c28338a285f31.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceGreenKernel/Variant635f5d3b61909cff67c40ef4c36e8497c4b42e6c029e8991a41c28338a285f31.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9a4e2cabd042331661a8dd760998c488deddde98`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/SourceGreenKernel/Variant635f5d3b61909cff67c40ef4c36e8497c4b42e6c029e8991a41c28338a285f31.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/SourceGreenKernel/Variant635f5d3b61909cff67c40ef4c36e8497c4b42e6c029e8991a41c28338a285f31.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceContinuousHalfEnergy` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceHankelReflection` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [greenKernel](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceGreenKernel/Variant635f5d3b61909cff67c40ef4c36e8497c4b42e6c029e8991a41c28338a285f31.lean/declarations/greenkernel--0cd264af1f9621c51df6303a.md) | 27 | `declaration-track:0cd264af1f9621c51df6303a743889c9f022ed468836306bff6f2e766e9fac57` |
| 2 | `def` | [sourceGreenPairing](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceGreenKernel/Variant635f5d3b61909cff67c40ef4c36e8497c4b42e6c029e8991a41c28338a285f31.lean/declarations/sourcegreenpairing--3ef2145300a6fab9e6f9646c.md) | 30 | `declaration-track:3ef2145300a6fab9e6f9646c82aa1f6d54deb69301533df2cd272f2f9fc5ff4a` |
| 3 | `def` | [sourceGreenConvolution](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceGreenKernel/Variant635f5d3b61909cff67c40ef4c36e8497c4b42e6c029e8991a41c28338a285f31.lean/declarations/sourcegreenconvolution--07b29a01595c78d5e68918e4.md) | 34 | `declaration-track:07b29a01595c78d5e68918e419be6994f27d361cc96497e9acfeab3a5a85add6` |
| 4 | `theorem` | [greenKernel_continuous](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceGreenKernel/Variant635f5d3b61909cff67c40ef4c36e8497c4b42e6c029e8991a41c28338a285f31.lean/declarations/greenkernel-continuous--0ca6859cc968780492451478.md) | 38 | `result-track:0ca6859cc96878049245147850a12f7d79606d77cedf091fc4f1698c9f3e3b04` |
| 5 | `theorem` | [greenKernel_even](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceGreenKernel/Variant635f5d3b61909cff67c40ef4c36e8497c4b42e6c029e8991a41c28338a285f31.lean/declarations/greenkernel-even--81b408ed7e69d8602d615c69.md) | 42 | `result-track:81b408ed7e69d8602d615c6937cb6e12e3ed17976288f9124b1543a3027adbb7` |
| 6 | `theorem` | [sourceGreenPairing_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceGreenKernel/Variant635f5d3b61909cff67c40ef4c36e8497c4b42e6c029e8991a41c28338a285f31.lean/declarations/sourcegreenpairing-integrable--2dc22a9e64b67db08f94f9b5.md) | 46 | `result-track:2dc22a9e64b67db08f94f9b57218e800257123420c69343ee47d36771fcf81f2` |
| 7 | `theorem` | [sourceGreenConvolution_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceGreenKernel/Variant635f5d3b61909cff67c40ef4c36e8497c4b42e6c029e8991a41c28338a285f31.lean/declarations/sourcegreenconvolution-integrable--edf84b0f497a2448ed964b6a.md) | 52 | `result-track:edf84b0f497a2448ed964b6a93ce4c2d30f227f76509711d20280b40f4c04a71` |
| 8 | `theorem` | [sourceGreenPairing_eq_twice_negativeSmoothMoment](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceGreenKernel/Variant635f5d3b61909cff67c40ef4c36e8497c4b42e6c029e8991a41c28338a285f31.lean/declarations/sourcegreenpairing-eq-twice-negativesmoothmoment--66ff31d027184d25398cd203.md) | 59 | `result-track:66ff31d027184d25398cd2038c721966267d2c9aeab875bb67cbf46b4e17b289` |
| 9 | `theorem` | [sourceGreenPairing_eq_causal_energy](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceGreenKernel/Variant635f5d3b61909cff67c40ef4c36e8497c4b42e6c029e8991a41c28338a285f31.lean/declarations/sourcegreenpairing-eq-causal-energy--da6401b2319b250b9ad1167d.md) | 97 | `result-track:da6401b2319b250b9ad1167d262ac8e89c06a5edb0aed98e6eb8b794f6a4fd1b` |
| 10 | `theorem` | [criticalContinuousMoment_eq_neg_half_green](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceGreenKernel/Variant635f5d3b61909cff67c40ef4c36e8497c4b42e6c029e8991a41c28338a285f31.lean/declarations/criticalcontinuousmoment-eq-neg-half-green--0bb14c8b960513f5106bac5a.md) | 104 | `result-track:0bb14c8b960513f5106bac5a7c9e7a57e6e346f4044b0bd4e7f3469262ec2c72` |
| 11 | `theorem` | [normalizedPrimitiveBump_even](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceGreenKernel/Variant635f5d3b61909cff67c40ef4c36e8497c4b42e6c029e8991a41c28338a285f31.lean/declarations/normalizedprimitivebump-even--d320a927118faf0ba092a121.md) | 110 | `result-track:d320a927118faf0ba092a1211b59272883f0d9a4472647d8489c0ca87b323dd1` |
| 12 | `theorem` | [normalizedPrimitiveBump_deriv_odd](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceGreenKernel/Variant635f5d3b61909cff67c40ef4c36e8497c4b42e6c029e8991a41c28338a285f31.lean/declarations/normalizedprimitivebump-deriv-odd--f15f3ea534c9f61f84d749e2.md) | 123 | `result-track:f15f3ea534c9f61f84d749e2877fe7b8cef42a00812073abd6a722040f232b46` |
| 13 | `theorem` | [causalSourceTail_add_reflection](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceGreenKernel/Variant635f5d3b61909cff67c40ef4c36e8497c4b42e6c029e8991a41c28338a285f31.lean/declarations/causalsourcetail-add-reflection--c800f800cf5d5eff417a745a.md) | 136 | `result-track:c800f800cf5d5eff417a745a531cbb499aa962c5f8385315b98fb871574f9ccc` |
| 14 | `theorem` | [sourceGreenConvolution_upper_half](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceGreenKernel/Variant635f5d3b61909cff67c40ef4c36e8497c4b42e6c029e8991a41c28338a285f31.lean/declarations/sourcegreenconvolution-upper-half--7f2b503ba7c40dbe0162ce92.md) | 143 | `result-track:7f2b503ba7c40dbe0162ce929899e3d191c3f3229dd9c893fcf73bb4df86441b` |
| 15 | `theorem` | [sourceGreenConvolution_lower_half](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceGreenKernel/Variant635f5d3b61909cff67c40ef4c36e8497c4b42e6c029e8991a41c28338a285f31.lean/declarations/sourcegreenconvolution-lower-half--d52f6f9d09dc221fedccc1aa.md) | 156 | `result-track:d52f6f9d09dc221fedccc1aa9e111e81dfd3a3003b9c4b21724c8608ceef2d02` |
| 16 | `theorem` | [sourceGreenConvolution_eq_tails](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceGreenKernel/Variant635f5d3b61909cff67c40ef4c36e8497c4b42e6c029e8991a41c28338a285f31.lean/declarations/sourcegreenconvolution-eq-tails--5f71cb1f18e1ba6e2a2f50da.md) | 171 | `result-track:5f71cb1f18e1ba6e2a2f50da7d9769df66ed4320774fcca7e5eb7d1a903dc1d8` |
| 17 | `theorem` | [sourceGreenConvolution_eq_neg_bump](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceGreenKernel/Variant635f5d3b61909cff67c40ef4c36e8497c4b42e6c029e8991a41c28338a285f31.lean/declarations/sourcegreenconvolution-eq-neg-bump--d1e1da1682f63abb2d6a7927.md) | 180 | `result-track:d1e1da1682f63abb2d6a792745cfc415c84c9129f511d4d3af2b00e148f7f8a1` |
| 18 | `theorem` | [sourceGreenConvolution_continuous](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceGreenKernel/Variant635f5d3b61909cff67c40ef4c36e8497c4b42e6c029e8991a41c28338a285f31.lean/declarations/sourcegreenconvolution-continuous--cc71c99cdc728c3d658d9180.md) | 186 | `result-track:cc71c99cdc728c3d658d918050d092069a477d4783e8d79f16afa7af41917f1f` |
| 19 | `theorem` | [sourceGreenConvolution_hasCompactSupport](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceGreenKernel/Variant635f5d3b61909cff67c40ef4c36e8497c4b42e6c029e8991a41c28338a285f31.lean/declarations/sourcegreenconvolution-hascompactsupport--68d5165b12bb8c45c09d0b54.md) | 194 | `result-track:68d5165b12bb8c45c09d0b54de445f6138b7f88de9bb87f74425a882a5cb61ac` |
| 20 | `theorem` | [sourceGreenConvolution_zero_of_not_mem](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceGreenKernel/Variant635f5d3b61909cff67c40ef4c36e8497c4b42e6c029e8991a41c28338a285f31.lean/declarations/sourcegreenconvolution-zero-of-not-mem--b1a872f00020c81860e61a4f.md) | 202 | `result-track:b1a872f00020c81860e61a4f20035b48bf17b548eeba57d461aa35350d9b2991` |
| 21 | `def` | [sourceGreenDoubleKernel](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceGreenKernel/Variant635f5d3b61909cff67c40ef4c36e8497c4b42e6c029e8991a41c28338a285f31.lean/declarations/sourcegreendoublekernel--49f17b96c582b53b46dce2f0.md) | 208 | `declaration-track:49f17b96c582b53b46dce2f0b576e0e6a0716c1c166d0ad58711f977e08db51f` |
| 22 | `theorem` | [sourceGreenDoubleKernel_continuous](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceGreenKernel/Variant635f5d3b61909cff67c40ef4c36e8497c4b42e6c029e8991a41c28338a285f31.lean/declarations/sourcegreendoublekernel-continuous--1905e851e1517216d5d6d98f.md) | 213 | `result-track:1905e851e1517216d5d6d98f9e156079a41bb5a0a1598844bcaa61178887d446` |
| 23 | `theorem` | [sourceGreenDoubleKernel_hasCompactSupport](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceGreenKernel/Variant635f5d3b61909cff67c40ef4c36e8497c4b42e6c029e8991a41c28338a285f31.lean/declarations/sourcegreendoublekernel-hascompactsupport--872854d8bb64f6f1c0e7a68e.md) | 222 | `result-track:872854d8bb64f6f1c0e7a68ecfb8c9ff37e865719e9293c19befef36acfc2859` |
| 24 | `theorem` | [sourceGreenDoubleKernel_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceGreenKernel/Variant635f5d3b61909cff67c40ef4c36e8497c4b42e6c029e8991a41c28338a285f31.lean/declarations/sourcegreendoublekernel-integrable--1ee101711400a63b4549b54e.md) | 240 | `result-track:1ee101711400a63b4549b54e6d1e7a3a7e907ecbbc0a9528dd26e9866908f959` |
| 25 | `theorem` | [source_mul_sourceGreenConvolution_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceGreenKernel/Variant635f5d3b61909cff67c40ef4c36e8497c4b42e6c029e8991a41c28338a285f31.lean/declarations/source-mul-sourcegreenconvolution-integrable--d535eb1f4886c11a7de5b139.md) | 246 | `result-track:d535eb1f4886c11a7de5b1396135d4425ade476f4ad901114f81749d136a298c` |
| 26 | `theorem` | [source_mul_reflected_tail_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceGreenKernel/Variant635f5d3b61909cff67c40ef4c36e8497c4b42e6c029e8991a41c28338a285f31.lean/declarations/source-mul-reflected-tail-integral--a22fb548bf4e7ec99ce88bc5.md) | 254 | `result-track:a22fb548bf4e7ec99ce88bc5001f937d4d207dac4bdc41c73a18e4efb9b41601` |
| 27 | `theorem` | [source_mul_sourceGreenConvolution_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceGreenKernel/Variant635f5d3b61909cff67c40ef4c36e8497c4b42e6c029e8991a41c28338a285f31.lean/declarations/source-mul-sourcegreenconvolution-integral--051dd976a7994b28d87158c7.md) | 262 | `result-track:051dd976a7994b28d87158c7af8d06eab0f037e4f3489282958b9eb00a9b486d` |
| 28 | `theorem` | [sourceGreenPairing_eq_convolution_pairing](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceGreenKernel/Variant635f5d3b61909cff67c40ef4c36e8497c4b42e6c029e8991a41c28338a285f31.lean/declarations/sourcegreenpairing-eq-convolution-pairing--b469aaafd6f35554d2ae0137.md) | 276 | `result-track:b469aaafd6f35554d2ae01372de16a38914245f2f73a85c0da69446e5bed88f3` |
| 29 | `theorem` | [sourceGreenPairing_eq_double_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceGreenKernel/Variant635f5d3b61909cff67c40ef4c36e8497c4b42e6c029e8991a41c28338a285f31.lean/declarations/sourcegreenpairing-eq-double-integral--26660bdeadb2c8bb5badb632.md) | 282 | `result-track:26660bdeadb2c8bb5badb632c7e82257784c748ab5039658b20b67b78f1847be` |
| 30 | `theorem` | [sourceGreenPairing_eq_neg_source_bump](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceGreenKernel/Variant635f5d3b61909cff67c40ef4c36e8497c4b42e6c029e8991a41c28338a285f31.lean/declarations/sourcegreenpairing-eq-neg-source-bump--c408e45556c0150aa2ed0336.md) | 289 | `result-track:c408e45556c0150aa2ed03361283a06e08959561d0746c04c581f4ff63ee720d` |
| 31 | `theorem` | [sourceGreenPairing_eq_normalized_energy](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceGreenKernel/Variant635f5d3b61909cff67c40ef4c36e8497c4b42e6c029e8991a41c28338a285f31.lean/declarations/sourcegreenpairing-eq-normalized-energy--5ec887193a0e6d22fc2a76a4.md) | 297 | `result-track:5ec887193a0e6d22fc2a76a453936c29b267cf0491b5538691a038fea096bb2a` |
| 32 | `theorem` | [sourceGreenPairing_eq_rational](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceGreenKernel/Variant635f5d3b61909cff67c40ef4c36e8497c4b42e6c029e8991a41c28338a285f31.lean/declarations/sourcegreenpairing-eq-rational--6d5dc98e196c8d044329e216.md) | 304 | `result-track:6d5dc98e196c8d044329e2163983a648fbf455c7072a33082a98a0731e273be1` |
| 33 | `theorem` | [sourceGreenPairing_pos](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceGreenKernel/Variant635f5d3b61909cff67c40ef4c36e8497c4b42e6c029e8991a41c28338a285f31.lean/declarations/sourcegreenpairing-pos--c76fb5a6c8de4754fed24677.md) | 310 | `result-track:c76fb5a6c8de4754fed246778254dd7696df20e3bb2cbdcd478c28655e3a5f4c` |
| 34 | `theorem` | [criticalContinuousMoment_eq_half_source_bump](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceGreenKernel/Variant635f5d3b61909cff67c40ef4c36e8497c4b42e6c029e8991a41c28338a285f31.lean/declarations/criticalcontinuousmoment-eq-half-source-bump--0d0ed8a9e9bf549d8370b849.md) | 315 | `result-track:0d0ed8a9e9bf549d8370b849b88b019cbf7451cf2835bad6becff5d4e6a50dc4` |
| 35 | `theorem` | [greenKernel_pos](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceGreenKernel/Variant635f5d3b61909cff67c40ef4c36e8497c4b42e6c029e8991a41c28338a285f31.lean/declarations/greenkernel-pos--bdd79c64ae79ca4859246009.md) | 323 | `result-track:bdd79c64ae79ca4859246009d494ab8d44a2d3f0e5d7ede1fd3ba504a9d102e4` |
| 36 | `theorem` | [unit_source_convolution_zero_kernel_positive](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceGreenKernel/Variant635f5d3b61909cff67c40ef4c36e8497c4b42e6c029e8991a41c28338a285f31.lean/declarations/unit-source-convolution-zero-kernel-positive--40df9c65c5fa1487e9765b88.md) | 326 | `result-track:40df9c65c5fa1487e9765b8896a94a0b7b2b043e609fca625370b4b4262aaa43` |
| 37 | `theorem` | [sourceGreenPairing_ne_half_causal_energy](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceGreenKernel/Variant635f5d3b61909cff67c40ef4c36e8497c4b42e6c029e8991a41c28338a285f31.lean/declarations/sourcegreenpairing-ne-half-causal-energy--8c9d2a879e48f167e7cef25d.md) | 331 | `result-track:8c9d2a879e48f167e7cef25da3a7298e85d52ee7f1da3181b17953fa5e8eb287` |
| 38 | `theorem` | [sourceGreenPairing_eq_bump_energy](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceGreenKernel/Variant635f5d3b61909cff67c40ef4c36e8497c4b42e6c029e8991a41c28338a285f31.lean/declarations/sourcegreenpairing-eq-bump-energy--1e40763232f0cbc3e975720c.md) | 339 | `result-track:1e40763232f0cbc3e975720cd841c8e1cdee15afb20941ef5a5fcc970f5b1e85` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
