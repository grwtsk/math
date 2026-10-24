# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.ZetaAsymp.Variantb5cb7649e1276d8ce5261efd6d60baa9883e547c4d8a293464621321b482bbc4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e480af9f9916b5dec99f1a66725f221e6618d221",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/ZetaAsymp/Variantb5cb7649e1276d8ce5261efd6d60baa9883e547c4d8a293464621321b482bbc4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaAsymp/Variantb5cb7649e1276d8ce5261efd6d60baa9883e547c4d8a293464621321b482bbc4.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaAsymp/Variantb5cb7649e1276d8ce5261efd6d60baa9883e547c4d8a293464621321b482bbc4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e480af9f9916b5dec99f1a66725f221e6618d221`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/ZetaAsymp/Variantb5cb7649e1276d8ce5261efd6d60baa9883e547c4d8a293464621321b482bbc4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/ZetaAsymp/Variantb5cb7649e1276d8ce5261efd6d60baa9883e547c4d8a293464621321b482bbc4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.LSeries.RiemannZeta` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Harmonic.GammaDeriv` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [term](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaAsymp/Variantb5cb7649e1276d8ce5261efd6d60baa9883e547c4d8a293464621321b482bbc4.lean/declarations/term--276ffae261f1774ab7f926ca.md) | 44 | `declaration-track:276ffae261f1774ab7f926ca2701b788064966dd74b248b6fffdebc64738a065` |
| 2 | `def` | [term_sum](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaAsymp/Variantb5cb7649e1276d8ce5261efd6d60baa9883e547c4d8a293464621321b482bbc4.lean/declarations/term-sum--7800f410bfcdf021782237a3.md) | 47 | `declaration-track:7800f410bfcdf021782237a3aeb235898bc7a235f30dddbcc38a0807ed90c990` |
| 3 | `def` | [term_tsum](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaAsymp/Variantb5cb7649e1276d8ce5261efd6d60baa9883e547c4d8a293464621321b482bbc4.lean/declarations/term-tsum--d4c8dcc5a65e0a146f98cf3f.md) | 50 | `declaration-track:d4c8dcc5a65e0a146f98cf3fb7ce19ac4c0438cee108dedfc148c9e02d3babfd` |
| 4 | `lemma` | [term_nonneg](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaAsymp/Variantb5cb7649e1276d8ce5261efd6d60baa9883e547c4d8a293464621321b482bbc4.lean/declarations/term-nonneg--e98dd8429c9b2bc7884399db.md) | 52 | `result-track:e98dd8429c9b2bc7884399dbb3941f14f9df7656858eed9cf9c0ee4a7cbc29aa` |
| 5 | `lemma` | [term_welldef](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaAsymp/Variantb5cb7649e1276d8ce5261efd6d60baa9883e547c4d8a293464621321b482bbc4.lean/declarations/term-welldef--21da4b750613cdf8bbe01e6c.md) | 58 | `result-track:21da4b750613cdf8bbe01e6c502a8a20c8bfae0e8361ce5ff888e8523c013394` |
| 6 | `lemma` | [term_one](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaAsymp/Variantb5cb7649e1276d8ce5261efd6d60baa9883e547c4d8a293464621321b482bbc4.lean/declarations/term-one--3d1fff6ce756000d7c23a136.md) | 72 | `result-track:3d1fff6ce756000d7c23a136aa1164c0f2bb652c7be3f855bc45d367e5cb379e` |
| 7 | `lemma` | [term_sum_one](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaAsymp/Variantb5cb7649e1276d8ce5261efd6d60baa9883e547c4d8a293464621321b482bbc4.lean/declarations/term-sum-one--96ca7c40a0468ef847855ba8.md) | 111 | `result-track:96ca7c40a0468ef847855ba880b27c08c1db90abac17ae05034a21b426be4e55` |
| 8 | `lemma` | [term_tsum_one](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaAsymp/Variantb5cb7649e1276d8ce5261efd6d60baa9883e547c4d8a293464621321b482bbc4.lean/declarations/term-tsum-one--a3f014fc6dfd46e8f4a06964.md) | 126 | `result-track:a3f014fc6dfd46e8f4a06964dbae85835a69b7d0fcbbd4e060e5230bd33ad0eb` |
| 9 | `lemma` | [term_of_lt](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaAsymp/Variantb5cb7649e1276d8ce5261efd6d60baa9883e547c4d8a293464621321b482bbc4.lean/declarations/term-of-lt--c603dd46b06407e1c5ed3999.md) | 145 | `result-track:c603dd46b06407e1c5ed399914d6143e076ae2ed2c0bea70b73fd3f798a0c7b6` |
| 10 | `lemma` | [term_sum_of_lt](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaAsymp/Variantb5cb7649e1276d8ce5261efd6d60baa9883e547c4d8a293464621321b482bbc4.lean/declarations/term-sum-of-lt--4697267a8d490d945f34beec.md) | 175 | `result-track:4697267a8d490d945f34beec49daa822434e642352219b3c7201d61678f74490` |
| 11 | `lemma` | [term_tsum_of_lt](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaAsymp/Variantb5cb7649e1276d8ce5261efd6d60baa9883e547c4d8a293464621321b482bbc4.lean/declarations/term-tsum-of-lt--1db3c372cddbe0cca390542a.md) | 199 | `result-track:1db3c372cddbe0cca390542a3dab3b76aa29f8962a35b130528741f77a3e3622` |
| 12 | `lemma` | [zeta_limit_aux1](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaAsymp/Variantb5cb7649e1276d8ce5261efd6d60baa9883e547c4d8a293464621321b482bbc4.lean/declarations/zeta-limit-aux1--c1db1faac478e815573beac3.md) | 233 | `result-track:c1db1faac478e815573beac3be3de75d8e2c9a5d6705dde78ba43b643092f4ed` |
| 13 | `lemma` | [continuousOn_term](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaAsymp/Variantb5cb7649e1276d8ce5261efd6d60baa9883e547c4d8a293464621321b482bbc4.lean/declarations/continuouson-term--693bdcedb7331134664ec2fd.md) | 248 | `result-track:693bdcedb7331134664ec2fd6b9be2ce3842c53cabcd1c3719d659c8db168d93` |
| 14 | `lemma` | [continuousOn_term_tsum](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaAsymp/Variantb5cb7649e1276d8ce5261efd6d60baa9883e547c4d8a293464621321b482bbc4.lean/declarations/continuouson-term-tsum--fbd2f817e54183c32b250b17.md) | 272 | `result-track:fbd2f817e54183c32b250b17935c71d47aa2e6164eb2bc4aeecfe058de5134dc` |
| 15 | `lemma` | [tendsto_riemannZeta_sub_one_div_nhds_right](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaAsymp/Variantb5cb7649e1276d8ce5261efd6d60baa9883e547c4d8a293464621321b482bbc4.lean/declarations/tendsto-riemannzeta-sub-one-div-nhds-right--f63c9ddba4ba11c0965b14e5.md) | 292 | `result-track:f63c9ddba4ba11c0965b14e54cf98efe8f58be0a93cedec4522c9b6fb07a014c` |
| 16 | `theorem` | [_root_.tendsto_riemannZeta_sub_one_div](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaAsymp/Variantb5cb7649e1276d8ce5261efd6d60baa9883e547c4d8a293464621321b482bbc4.lean/declarations/root-tendsto-riemannzeta-sub-one-div--68db1446713d38a25ab7d0b1.md) | 318 | `result-track:68db1446713d38a25ab7d0b1a16bcb15061d148b6bc50ebe1bd0ed53ce6c46c2` |
| 17 | `lemma` | [_root_.isBigO_riemannZeta_sub_one_div](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaAsymp/Variantb5cb7649e1276d8ce5261efd6d60baa9883e547c4d8a293464621321b482bbc4.lean/declarations/root-isbigo-riemannzeta-sub-one-div--a51a8ff538013b1963eadd39.md) | 351 | `result-track:a51a8ff538013b1963eadd39a952187c1bda0bb0ac6d70eef8afb44ee4fd2fac` |
| 18 | `lemma` | [tendsto_Gamma_term_aux](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaAsymp/Variantb5cb7649e1276d8ce5261efd6d60baa9883e547c4d8a293464621321b482bbc4.lean/declarations/tendsto-gamma-term-aux--385a9df869ca1a314107726a.md) | 362 | `result-track:385a9df869ca1a314107726a28c784345ffdcd12cdd7c2c0904a05b147915201` |
| 19 | `lemma` | [tendsto_riemannZeta_sub_one_div_Gammaℝ](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaAsymp/Variantb5cb7649e1276d8ce5261efd6d60baa9883e547c4d8a293464621321b482bbc4.lean/declarations/tendsto-riemannzeta-sub-one-div-gamma--a1e2ec410a429653af26fcaa.md) | 377 | `result-track:a1e2ec410a429653af26fcaa4938c5de169d3d8e469573be72345d056baa6858` |
| 20 | `lemma` | [_root_.riemannZeta_one](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaAsymp/Variantb5cb7649e1276d8ce5261efd6d60baa9883e547c4d8a293464621321b482bbc4.lean/declarations/root-riemannzeta-one--e390cb672c0f8f26aaee047e.md) | 387 | `result-track:e390cb672c0f8f26aaee047e06f0050c24146f92a98dd6391957384d584552c3` |
| 21 | `lemma` | [_root_.completedRiemannZeta_one](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaAsymp/Variantb5cb7649e1276d8ce5261efd6d60baa9883e547c4d8a293464621321b482bbc4.lean/declarations/root-completedriemannzeta-one--83149eefb710de49635205c0.md) | 395 | `result-track:83149eefb710de49635205c0436ae1f109818be383cb6ae86c622d8a4342d6f8` |
| 22 | `lemma` | [_root_.completedRiemannZeta₀_one](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaAsymp/Variantb5cb7649e1276d8ce5261efd6d60baa9883e547c4d8a293464621321b482bbc4.lean/declarations/root-completedriemannzeta-one--5ad6d233705c2d585fc301cf.md) | 405 | `result-track:5ad6d233705c2d585fc301cfa57d0119e3bd4b62eed6d96a567570c13e606776` |
| 23 | `lemma` | [_root_.riemannZeta_one_ne_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaAsymp/Variantb5cb7649e1276d8ce5261efd6d60baa9883e547c4d8a293464621321b482bbc4.lean/declarations/root-riemannzeta-one-ne-zero--cbf32e07324a919a6569b344.md) | 412 | `result-track:cbf32e07324a919a6569b3443100d7b0607e782aaca6de6a61fbe8607b8f9902` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
