# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.RealThetaDerivative.Variant5a9657d716d3d8fe6abb473ade4dad814989376c0479695d3cbbfc1cdf217c7c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "210055696e275ddf386836e555f3babf972dbc5f",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/RealThetaDerivative/Variant5a9657d716d3d8fe6abb473ade4dad814989376c0479695d3cbbfc1cdf217c7c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RealThetaDerivative/Variant5a9657d716d3d8fe6abb473ade4dad814989376c0479695d3cbbfc1cdf217c7c.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RealThetaDerivative/Variant5a9657d716d3d8fe6abb473ade4dad814989376c0479695d3cbbfc1cdf217c7c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `210055696e275ddf386836e555f3babf972dbc5f`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/RealThetaDerivative/Variant5a9657d716d3d8fe6abb473ade4dad814989376c0479695d3cbbfc1cdf217c7c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/RealThetaDerivative/Variant5a9657d716d3d8fe6abb473ade4dad814989376c0479695d3cbbfc1cdf217c7c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.ThetaKernelEstimate` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.CorrelationPrimitiveMoments` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [realThetaKernel](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RealThetaDerivative/Variant5a9657d716d3d8fe6abb473ade4dad814989376c0479695d3cbbfc1cdf217c7c.lean/declarations/realthetakernel--44a36e99ecf01d36ffa28a83.md) | 23 | `declaration-track:44a36e99ecf01d36ffa28a8315086285a83d0c01ade273bf2e157d94d74c6ae9` |
| 2 | `def` | [differenceSamplingKernel](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RealThetaDerivative/Variant5a9657d716d3d8fe6abb473ade4dad814989376c0479695d3cbbfc1cdf217c7c.lean/declarations/differencesamplingkernel--bb00606dd1473bb0ac511cc9.md) | 26 | `declaration-track:bb00606dd1473bb0ac511cc9a03b085fedbde1fbc35311ac7aba1c66a5fd4f61` |
| 3 | `def` | [realThetaDifferenceKernel](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RealThetaDerivative/Variant5a9657d716d3d8fe6abb473ade4dad814989376c0479695d3cbbfc1cdf217c7c.lean/declarations/realthetadifferencekernel--9a873ef58df310941ed22249.md) | 30 | `declaration-track:9a873ef58df310941ed2224947e2bc3ff109ecee521d8843e81ef9ea206a00f4` |
| 4 | `def` | [realThetaRemainder](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RealThetaDerivative/Variant5a9657d716d3d8fe6abb473ade4dad814989376c0479695d3cbbfc1cdf217c7c.lean/declarations/realthetaremainder--3ccfe02c003a99b2a413fb95.md) | 33 | `declaration-track:3ccfe02c003a99b2a413fb95307e9839dda1606cefe19350247a36652ca9888a` |
| 5 | `theorem` | [samplingIndices_eq_fixed_filter](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RealThetaDerivative/Variant5a9657d716d3d8fe6abb473ade4dad814989376c0479695d3cbbfc1cdf217c7c.lean/declarations/samplingindices-eq-fixed-filter--881af235dd6defebdcf537a3.md) | 36 | `result-track:881af235dd6defebdcf537a35a97a779d5e1e5bf15163bb5ce773a5e7cc0d2ef` |
| 6 | `theorem` | [realThetaKernel_eq_strict_sum](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RealThetaDerivative/Variant5a9657d716d3d8fe6abb473ade4dad814989376c0479695d3cbbfc1cdf217c7c.lean/declarations/realthetakernel-eq-strict-sum--1f8cba3f26106ac1d46f5425.md) | 52 | `result-track:1f8cba3f26106ac1d46f5425a54471ab188ac582edd383063cee0fda63e218f7` |
| 7 | `theorem` | [realThetaKernel_eq_nat](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RealThetaDerivative/Variant5a9657d716d3d8fe6abb473ade4dad814989376c0479695d3cbbfc1cdf217c7c.lean/declarations/realthetakernel-eq-nat--17d582bf013430bf25171f05.md) | 67 | `result-track:17d582bf013430bf25171f05da57ab85aacb3f786d41d51ba117bcedd04c9ba2` |
| 8 | `theorem` | [realThetaRemainder_eq_nat](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RealThetaDerivative/Variant5a9657d716d3d8fe6abb473ade4dad814989376c0479695d3cbbfc1cdf217c7c.lean/declarations/realthetaremainder-eq-nat--a107fb7884f7de50ffd59a42.md) | 72 | `result-track:a107fb7884f7de50ffd59a42670ebdaba5cfaefe75b5c99f2cf57bfc734f0bd9` |
| 9 | `theorem` | [differenceSamplingKernel_eq_mul_deriv](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RealThetaDerivative/Variant5a9657d716d3d8fe6abb473ade4dad814989376c0479695d3cbbfc1cdf217c7c.lean/declarations/differencesamplingkernel-eq-mul-deriv--f65afabdef8a1de716492103.md) | 77 | `result-track:f65afabdef8a1de7164921030b1771d66cb587bfe1a4d19539605c19c2467bed` |
| 10 | `theorem` | [realThetaKernel_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RealThetaDerivative/Variant5a9657d716d3d8fe6abb473ade4dad814989376c0479695d3cbbfc1cdf217c7c.lean/declarations/realthetakernel-hasderivat--9931a91740728ee08c4e2175.md) | 83 | `result-track:9931a91740728ee08c4e2175d9f0aa6ec94f064fb0ebf9ab49cabe687e92a60d` |
| 11 | `theorem` | [realThetaKernel_deriv](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RealThetaDerivative/Variant5a9657d716d3d8fe6abb473ade4dad814989376c0479695d3cbbfc1cdf217c7c.lean/declarations/realthetakernel-deriv--4e286c9ffda335e3cb3f63e7.md) | 99 | `result-track:4e286c9ffda335e3cb3f63e7b33aafcf5776f9e52ed5437634748150976a2cd7` |
| 12 | `theorem` | [realThetaRemainder_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RealThetaDerivative/Variant5a9657d716d3d8fe6abb473ade4dad814989376c0479695d3cbbfc1cdf217c7c.lean/declarations/realthetaremainder-hasderivat--02b6c43aedd2dc91046e50b5.md) | 103 | `result-track:02b6c43aedd2dc91046e50b55da8fa239cd4c1f2ee64d54a1a449bb7cd0799b2` |
| 13 | `theorem` | [realThetaRemainder_differentiableOn](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RealThetaDerivative/Variant5a9657d716d3d8fe6abb473ade4dad814989376c0479695d3cbbfc1cdf217c7c.lean/declarations/realthetaremainder-differentiableon--8700cdf81e2cb812800f0b22.md) | 113 | `result-track:8700cdf81e2cb812800f0b2251be46f640ec9e1d30150f053f97267ea60e67e5` |
| 14 | `theorem` | [difference_primitive_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RealThetaDerivative/Variant5a9657d716d3d8fe6abb473ade4dad814989376c0479695d3cbbfc1cdf217c7c.lean/declarations/difference-primitive-eq--ca57b07e99777d4db7213992.md) | 118 | `result-track:ca57b07e99777d4db7213992e0bbc800cddc8783c0d1751da57c3a6086305263` |
| 15 | `def` | [differencePrimitiveSamplingKernel](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RealThetaDerivative/Variant5a9657d716d3d8fe6abb473ade4dad814989376c0479695d3cbbfc1cdf217c7c.lean/declarations/differenceprimitivesamplingkernel--205666a0029b4fcba385f885.md) | 136 | `declaration-track:205666a0029b4fcba385f885845ae35463b6ac57ec833cb174f34f7f6ff11219` |
| 16 | `theorem` | [differencePrimitiveSamplingKernel_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RealThetaDerivative/Variant5a9657d716d3d8fe6abb473ade4dad814989376c0479695d3cbbfc1cdf217c7c.lean/declarations/differenceprimitivesamplingkernel-eq--aa73d12e0473f5b1db9e7fe8.md) | 141 | `result-track:aa73d12e0473f5b1db9e7fe83a30d3d177b280d60c284c8a6e0730221373c581` |
| 17 | `theorem` | [differencePrimitiveSamplingKernel_add_rankOne_abs_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RealThetaDerivative/Variant5a9657d716d3d8fe6abb473ade4dad814989376c0479695d3cbbfc1cdf217c7c.lean/declarations/differenceprimitivesamplingkernel-add-rankone-abs-le--9538abb8a5d20d092333e362.md) | 148 | `result-track:9538abb8a5d20d092333e362b79fbb6ad13c178049422607903133811de8fdae` |
| 18 | `theorem` | [differencePrimitiveSamplingKernel_eq_fixed_sum](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RealThetaDerivative/Variant5a9657d716d3d8fe6abb473ade4dad814989376c0479695d3cbbfc1cdf217c7c.lean/declarations/differenceprimitivesamplingkernel-eq-fixed-sum--f21c6ef299549c4682afdd75.md) | 171 | `result-track:f21c6ef299549c4682afdd7536c8d47f30b769971da736e0ad67f797fcf2eb50` |
| 19 | `theorem` | [difference_tail_eq_primitive](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RealThetaDerivative/Variant5a9657d716d3d8fe6abb473ade4dad814989376c0479695d3cbbfc1cdf217c7c.lean/declarations/difference-tail-eq-primitive--569bd4953aec30b36ee3e982.md) | 191 | `result-track:569bd4953aec30b36ee3e982cd8b7a6081b227f454bcfb5e315519f5a6120eda` |
| 20 | `theorem` | [rootWeight_difference_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RealThetaDerivative/Variant5a9657d716d3d8fe6abb473ade4dad814989376c0479695d3cbbfc1cdf217c7c.lean/declarations/rootweight-difference-integral--309d1432efa9ac6733359494.md) | 229 | `result-track:309d1432efa9ac6733359494bcdd0cb14a7e9d4ad601712da252e84328f85bf9` |
| 21 | `def` | [differenceInnerTerm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RealThetaDerivative/Variant5a9657d716d3d8fe6abb473ade4dad814989376c0479695d3cbbfc1cdf217c7c.lean/declarations/differenceinnerterm--1728a1832e16d84d9dec2a7d.md) | 239 | `declaration-track:1728a1832e16d84d9dec2a7d39fb02ecf0ba5274f56268e200327c17ca2921fb` |
| 22 | `theorem` | [differenceInnerTerm_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RealThetaDerivative/Variant5a9657d716d3d8fe6abb473ade4dad814989376c0479695d3cbbfc1cdf217c7c.lean/declarations/differenceinnerterm-eq--f2c433f3fba3fdf66178aab2.md) | 243 | `result-track:f2c433f3fba3fdf66178aab20395f27a11c4b8ea9ad1bd69c2848ba9b9e0723a` |
| 23 | `theorem` | [differenceInnerTerm_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RealThetaDerivative/Variant5a9657d716d3d8fe6abb473ade4dad814989376c0479695d3cbbfc1cdf217c7c.lean/declarations/differenceinnerterm-integrable--aa2509669ed2d482d022014a.md) | 252 | `result-track:aa2509669ed2d482d022014ac46c638fca5df2f5ed902bd0b591f8336ed9ecf5` |
| 24 | `theorem` | [differenceInnerTerm_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RealThetaDerivative/Variant5a9657d716d3d8fe6abb473ade4dad814989376c0479695d3cbbfc1cdf217c7c.lean/declarations/differenceinnerterm-integral--9417cd6bbc905de5bf60cb7e.md) | 265 | `result-track:9417cd6bbc905de5bf60cb7e4a399d485d92ca8f5ff3a22e5cf7cad2215b8e00` |
| 25 | `theorem` | [differenceKernel_eq_inner_sum](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RealThetaDerivative/Variant5a9657d716d3d8fe6abb473ade4dad814989376c0479695d3cbbfc1cdf217c7c.lean/declarations/differencekernel-eq-inner-sum--b0f12834229533d10eea6cbd.md) | 282 | `result-track:b0f12834229533d10eea6cbdd9ffb4ef8608dcf700c02e478eac44df18361bb3` |
| 26 | `theorem` | [differenceKernel_rescaled_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RealThetaDerivative/Variant5a9657d716d3d8fe6abb473ade4dad814989376c0479695d3cbbfc1cdf217c7c.lean/declarations/differencekernel-rescaled-integrable--832691ca66477f6b658c2f66.md) | 294 | `result-track:832691ca66477f6b658c2f66625f0e88e3b378c48772a6682e73a8c98e5eda38` |
| 27 | `theorem` | [differenceKernel_integral_eq_primitive](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RealThetaDerivative/Variant5a9657d716d3d8fe6abb473ade4dad814989376c0479695d3cbbfc1cdf217c7c.lean/declarations/differencekernel-integral-eq-primitive--4433247d6688b0217ac33140.md) | 304 | `result-track:4433247d6688b0217ac331403299498ad715d57bad5aeb73bdef171a47979410` |
| 28 | `theorem` | [differenceKernel_integral_add_rankOne_abs_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RealThetaDerivative/Variant5a9657d716d3d8fe6abb473ade4dad814989376c0479695d3cbbfc1cdf217c7c.lean/declarations/differencekernel-integral-add-rankone-abs-le--6b870a319ee1ba17d0e435b2.md) | 323 | `result-track:6b870a319ee1ba17d0e435b25a872ca18d747ae9a6085b26523b58c8861e4c44` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
