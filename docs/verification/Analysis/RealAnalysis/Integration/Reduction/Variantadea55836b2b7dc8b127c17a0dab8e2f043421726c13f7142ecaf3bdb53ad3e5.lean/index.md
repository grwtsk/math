# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.Reduction.Variantadea55836b2b7dc8b127c17a0dab8e2f043421726c13f7142ecaf3bdb53ad3e5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "67494c807f64aaf882dd2b6b0edf366df83ba3f0",
  "lexical_observation_count": 42,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Reduction/Variantadea55836b2b7dc8b127c17a0dab8e2f043421726c13f7142ecaf3bdb53ad3e5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Reduction/Variantadea55836b2b7dc8b127c17a0dab8e2f043421726c13f7142ecaf3bdb53ad3e5.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Reduction/Variantadea55836b2b7dc8b127c17a0dab8e2f043421726c13f7142ecaf3bdb53ad3e5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `67494c807f64aaf882dd2b6b0edf366df83ba3f0`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Reduction/Variantadea55836b2b7dc8b127c17a0dab8e2f043421726c13f7142ecaf3bdb53ad3e5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Reduction/Variantadea55836b2b7dc8b127c17a0dab8e2f043421726c13f7142ecaf3bdb53ad3e5.lean.json)

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
| 1 | `class` | [IsIntegral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Reduction/Variantadea55836b2b7dc8b127c17a0dab8e2f043421726c13f7142ecaf3bdb53ad3e5.lean/declarations/isintegral--a0218d395bf662f5f09e323f.md) | 59 | `declaration-track:a0218d395bf662f5f09e323f302f6b2f384d5505ed06811b7906121efeb68072` |
| 2 | `def` | [integralModel](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Reduction/Variantadea55836b2b7dc8b127c17a0dab8e2f043421726c13f7142ecaf3bdb53ad3e5.lean/declarations/integralmodel--aa06391d1cca82bd62d68291.md) | 63 | `declaration-track:aa06391d1cca82bd62d6829126f12ce7f8979aaf85599f4f4411e5082331abfe` |
| 3 | `lemma` | [baseChange_integralModel_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Reduction/Variantadea55836b2b7dc8b127c17a0dab8e2f043421726c13f7142ecaf3bdb53ad3e5.lean/declarations/basechange-integralmodel-eq--298538ab42c99a32edc4c87c.md) | 69 | `result-track:298538ab42c99a32edc4c87ccf401b8f84688880c7d65a8faf4aa4a0178ec86c` |
| 4 | `lemma` | [isIntegral_of_exists_lift](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Reduction/Variantadea55836b2b7dc8b127c17a0dab8e2f043421726c13f7142ecaf3bdb53ad3e5.lean/declarations/isintegral-of-exists-lift--c6a33aa757d7261f41dd80b4.md) | 73 | `result-track:c6a33aa757d7261f41dd80b4fcd4a318848da473948f4b14543dfa77635c0dab` |
| 5 | `lemma` | [Δ_integral_of_isIntegral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Reduction/Variantadea55836b2b7dc8b127c17a0dab8e2f043421726c13f7142ecaf3bdb53ad3e5.lean/declarations/integral-of-isintegral--d189817309bc83e2d618cc01.md) | 89 | `result-track:d189817309bc83e2d618cc01b0a464aa2dd5cb31c3bcc8bcdbe5e30c8418a5d0` |
| 6 | `lemma` | [integralModel_a₁_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Reduction/Variantadea55836b2b7dc8b127c17a0dab8e2f043421726c13f7142ecaf3bdb53ad3e5.lean/declarations/integralmodel-a-eq--dca5bbf0545f96d682d3547a.md) | 96 | `result-track:dca5bbf0545f96d682d3547ab67dfa8a8a67fc7c24caa1001938eb4867fa8e9a` |
| 7 | `lemma` | [integralModel_a₂_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Reduction/Variantadea55836b2b7dc8b127c17a0dab8e2f043421726c13f7142ecaf3bdb53ad3e5.lean/declarations/integralmodel-a-eq--8a818bc4466a18615af71173.md) | 101 | `result-track:8a818bc4466a18615af71173a001ee2b07e82c10043b5af33b611f2bdb24f01b` |
| 8 | `lemma` | [integralModel_a₃_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Reduction/Variantadea55836b2b7dc8b127c17a0dab8e2f043421726c13f7142ecaf3bdb53ad3e5.lean/declarations/integralmodel-a-eq--a7b1a7af4b88da48daac83fd.md) | 106 | `result-track:a7b1a7af4b88da48daac83fd2647c1fdb9adb4cb3d692cf50a3ad08464df7219` |
| 9 | `lemma` | [integralModel_a₄_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Reduction/Variantadea55836b2b7dc8b127c17a0dab8e2f043421726c13f7142ecaf3bdb53ad3e5.lean/declarations/integralmodel-a-eq--4a9095735ccb5e401eedf501.md) | 111 | `result-track:4a9095735ccb5e401eedf501ba5b505a11cb230b1ac6e951767503c7548cdfd3` |
| 10 | `lemma` | [integralModel_a₆_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Reduction/Variantadea55836b2b7dc8b127c17a0dab8e2f043421726c13f7142ecaf3bdb53ad3e5.lean/declarations/integralmodel-a-eq--1d98bc41ab65781533d47268.md) | 116 | `result-track:1d98bc41ab65781533d47268339eeefb66241c58b6c775fdc05343fa9baa8ed9` |
| 11 | `lemma` | [integralModel_b₂_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Reduction/Variantadea55836b2b7dc8b127c17a0dab8e2f043421726c13f7142ecaf3bdb53ad3e5.lean/declarations/integralmodel-b-eq--0e0609e340880e62be0f9d58.md) | 121 | `result-track:0e0609e340880e62be0f9d58c1e5f90266d82e3a85ada7b8ee572f174a4acf09` |
| 12 | `lemma` | [integralModel_b₄_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Reduction/Variantadea55836b2b7dc8b127c17a0dab8e2f043421726c13f7142ecaf3bdb53ad3e5.lean/declarations/integralmodel-b-eq--255f9ce9876b7b3ea2707ee4.md) | 126 | `result-track:255f9ce9876b7b3ea2707ee48223b9c40e644e7c2d8260663b46a1b6fc73a360` |
| 13 | `lemma` | [integralModel_b₆_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Reduction/Variantadea55836b2b7dc8b127c17a0dab8e2f043421726c13f7142ecaf3bdb53ad3e5.lean/declarations/integralmodel-b-eq--ff2a300a5522142ea2a38e00.md) | 131 | `result-track:ff2a300a5522142ea2a38e00ea9dd104845781a2482b13b378d271b0524491b5` |
| 14 | `lemma` | [integralModel_b₈_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Reduction/Variantadea55836b2b7dc8b127c17a0dab8e2f043421726c13f7142ecaf3bdb53ad3e5.lean/declarations/integralmodel-b-eq--25242a5b155d9636575113dd.md) | 136 | `result-track:25242a5b155d9636575113dda406e6ac4c463a13825835e924fad2ddbcbb78ef` |
| 15 | `lemma` | [integralModel_c₄_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Reduction/Variantadea55836b2b7dc8b127c17a0dab8e2f043421726c13f7142ecaf3bdb53ad3e5.lean/declarations/integralmodel-c-eq--98759f91e920412aca8db679.md) | 141 | `result-track:98759f91e920412aca8db6791a9155a8954cb1ba67285ea45802bd50dad7e1a1` |
| 16 | `lemma` | [integralModel_c₆_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Reduction/Variantadea55836b2b7dc8b127c17a0dab8e2f043421726c13f7142ecaf3bdb53ad3e5.lean/declarations/integralmodel-c-eq--a7fd06473bbadde3b8bae58c.md) | 146 | `result-track:a7fd06473bbadde3b8bae58caee230d2a02f921bd7797e9a2cf1a03e34657b55` |
| 17 | `lemma` | [integralModel_Δ_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Reduction/Variantadea55836b2b7dc8b127c17a0dab8e2f043421726c13f7142ecaf3bdb53ad3e5.lean/declarations/integralmodel-eq--4860218faf7c8ee146bffe2c.md) | 151 | `result-track:4860218faf7c8ee146bffe2c19145a0dd661278fee15c6f6f136b237f01915d1` |
| 18 | `theorem` | [exists_isIntegral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Reduction/Variantadea55836b2b7dc8b127c17a0dab8e2f043421726c13f7142ecaf3bdb53ad3e5.lean/declarations/exists-isintegral--b8d544614f9e30bf95621ca8.md) | 160 | `result-track:b8d544614f9e30bf95621ca8b82d60189077fe5c64d9f0fa7c069bed0c67f470` |
| 19 | `lemma` | [r_integral_of_u_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Reduction/Variantadea55836b2b7dc8b127c17a0dab8e2f043421726c13f7142ecaf3bdb53ad3e5.lean/declarations/r-integral-of-u-integral--3d6398b10d648a4a08ba1235.md) | 213 | `result-track:3d6398b10d648a4a08ba123599300706e7bb18efad686fbe874d384d40e1c7dc` |
| 20 | `lemma` | [s_integral_of_u_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Reduction/Variantadea55836b2b7dc8b127c17a0dab8e2f043421726c13f7142ecaf3bdb53ad3e5.lean/declarations/s-integral-of-u-integral--c94810638bf2daca12c8cfd9.md) | 221 | `result-track:c94810638bf2daca12c8cfd9b91f6e2c0f626184695d28923515fe8f31512d94` |
| 21 | `lemma` | [t_integral_of_u_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Reduction/Variantadea55836b2b7dc8b127c17a0dab8e2f043421726c13f7142ecaf3bdb53ad3e5.lean/declarations/t-integral-of-u-integral--1952e4177f598a140b5d3c90.md) | 229 | `result-track:1952e4177f598a140b5d3c9045e6d49c5882541b5e8d1a1bbbddca223c4b607e` |
| 22 | `theorem` | [variableChange_integral_of_u_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Reduction/Variantadea55836b2b7dc8b127c17a0dab8e2f043421726c13f7142ecaf3bdb53ad3e5.lean/declarations/variablechange-integral-of-u-integral--71cb28dd5cb17125c968bbce.md) | 241 | `result-track:71cb28dd5cb17125c968bbcec4e65cc472f7939deaaa489d149cbf69d03492a2` |
| 23 | `def` | [valuation_Δ_aux](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Reduction/Variantadea55836b2b7dc8b127c17a0dab8e2f043421726c13f7142ecaf3bdb53ad3e5.lean/declarations/valuation-aux--f41f5c81e8506f7635daf8b4.md) | 259 | `declaration-track:f41f5c81e8506f7635daf8b40d2bb10ff23ac6a4fdf6d327c9b9311626e294b3` |
| 24 | `lemma` | [valuation_Δ_aux_eq_of_isIntegral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Reduction/Variantadea55836b2b7dc8b127c17a0dab8e2f043421726c13f7142ecaf3bdb53ad3e5.lean/declarations/valuation-aux-eq-of-isintegral--23413c1c5cf737fac115220f.md) | 268 | `result-track:23413c1c5cf737fac115220f22d72c4542ee98c9a9c612b6669d3b1afef6c174` |
| 25 | `class` | [IsMinimal](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Reduction/Variantadea55836b2b7dc8b127c17a0dab8e2f043421726c13f7142ecaf3bdb53ad3e5.lean/declarations/isminimal--97b38d4a29efd69ef333831e.md) | 276 | `declaration-track:97b38d4a29efd69ef333831ee49bf556fa09b156d292f4db910b541dcd4964d0` |
| 26 | `instance` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Reduction/Variantadea55836b2b7dc8b127c17a0dab8e2f043421726c13f7142ecaf3bdb53ad3e5.lean/declarations/instance--cf798d1bf9a04dcde9226504.md) | 284 | `declaration-track:cf798d1bf9a04dcde92265045f1074f1344b9780ab923aaa868777782a2a4b1a` |
| 27 | `theorem` | [exists_isMinimal](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Reduction/Variantadea55836b2b7dc8b127c17a0dab8e2f043421726c13f7142ecaf3bdb53ad3e5.lean/declarations/exists-isminimal--fb1f9b6d765d962e30b363ff.md) | 287 | `result-track:fb1f9b6d765d962e30b363ff62cd34654631df391614639478e3c3867189b8d3` |
| 28 | `def` | [minimal](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Reduction/Variantadea55836b2b7dc8b127c17a0dab8e2f043421726c13f7142ecaf3bdb53ad3e5.lean/declarations/minimal--8a2c8840fff796f1e810f12e.md) | 301 | `declaration-track:8a2c8840fff796f1e810f12e608c1268101af2f2d8c14492a8cbbcf5298cb1b2` |
| 29 | `instance` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Reduction/Variantadea55836b2b7dc8b127c17a0dab8e2f043421726c13f7142ecaf3bdb53ad3e5.lean/declarations/instance--4d62b0831722d0995cc4b20e.md) | 304 | `declaration-track:4d62b0831722d0995cc4b20e54cd135dcf3cecb6fd2047496899a64e00606428` |
| 30 | `def` | [reduction](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Reduction/Variantadea55836b2b7dc8b127c17a0dab8e2f043421726c13f7142ecaf3bdb53ad3e5.lean/declarations/reduction--982e988624157d2e874945d4.md) | 318 | `declaration-track:982e988624157d2e874945d4d42bfaba9577f4fc2fcbf94fbf726307bf93ba08` |
| 31 | `class` | [HasGoodReduction](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Reduction/Variantadea55836b2b7dc8b127c17a0dab8e2f043421726c13f7142ecaf3bdb53ad3e5.lean/declarations/hasgoodreduction--bf88083a4d1d028ac46c23e9.md) | 325 | `declaration-track:bf88083a4d1d028ac46c23e9c71b87a7f5466e8fabc87a9adeab9ba49474db03` |
| 32 | `lemma` | [hasGoodReduction_iff_isElliptic_reduction](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Reduction/Variantadea55836b2b7dc8b127c17a0dab8e2f043421726c13f7142ecaf3bdb53ad3e5.lean/declarations/hasgoodreduction-iff-iselliptic-reduction--54211ec2c9fc4c93e19336f2.md) | 330 | `result-track:54211ec2c9fc4c93e19336f214e85482e191129a1e5fb867de72d0b153e19ffe` |
| 33 | `class` | [HasMultiplicativeReduction](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Reduction/Variantadea55836b2b7dc8b127c17a0dab8e2f043421726c13f7142ecaf3bdb53ad3e5.lean/declarations/hasmultiplicativereduction--54baf69d922d8115d13066c5.md) | 347 | `declaration-track:54baf69d922d8115d13066c5b7f1d2767e3f49f57f0af9a00b60a4f1870a3a46` |
| 34 | `class` | [HasAdditiveReduction](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Reduction/Variantadea55836b2b7dc8b127c17a0dab8e2f043421726c13f7142ecaf3bdb53ad3e5.lean/declarations/hasadditivereduction--a51e1c16ecdcc9b5f3e25109.md) | 354 | `declaration-track:a51e1c16ecdcc9b5f3e25109ab630845647e495691bf9047805eb406b0423075` |
| 35 | `class` | [HasSplitMultiplicativeReduction](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Reduction/Variantadea55836b2b7dc8b127c17a0dab8e2f043421726c13f7142ecaf3bdb53ad3e5.lean/declarations/hassplitmultiplicativereduction--9a0b65b5806839daf54462ef.md) | 366 | `declaration-track:9a0b65b5806839daf54462efca6e4dbf712a15128fc6af519124fdbdff6ff0b8` |
| 36 | `theorem` | [hasGoodReduction_or_hasMultiplicativeReduction_or_hasAdditiveReduction](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Reduction/Variantadea55836b2b7dc8b127c17a0dab8e2f043421726c13f7142ecaf3bdb53ad3e5.lean/declarations/hasgoodreduction-or-hasmultiplicativereduction-or-hasadditivereduction--f172f2d94e1839c470d60acb.md) | 374 | `result-track:f172f2d94e1839c470d60acb6ff035d0269158a5afe45d93af03d720c28039a8` |
| 37 | `theorem` | [HasGoodReduction.not_hasMultiplicativeReduction](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Reduction/Variantadea55836b2b7dc8b127c17a0dab8e2f043421726c13f7142ecaf3bdb53ad3e5.lean/declarations/hasgoodreduction-not-hasmultiplicativereduction--1d0e9c12bcc48e245860c8cb.md) | 380 | `result-track:1d0e9c12bcc48e245860c8cb556b684e82b5fa278e6017b87d7a22e06328f514` |
| 38 | `theorem` | [HasGoodReduction.not_hasAdditiveReduction](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Reduction/Variantadea55836b2b7dc8b127c17a0dab8e2f043421726c13f7142ecaf3bdb53ad3e5.lean/declarations/hasgoodreduction-not-hasadditivereduction--24405f11e36059f883d0e970.md) | 384 | `result-track:24405f11e36059f883d0e970faa70518dc29a61eeda09898c46d5898544d76ea` |
| 39 | `theorem` | [HasMultiplicativeReduction.not_hasGoodReduction](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Reduction/Variantadea55836b2b7dc8b127c17a0dab8e2f043421726c13f7142ecaf3bdb53ad3e5.lean/declarations/hasmultiplicativereduction-not-hasgoodreduction--b0b9a94a604b38b3a64c1b25.md) | 388 | `result-track:b0b9a94a604b38b3a64c1b256f7ffaf0e3dc8acf238094d84b7acea349730c50` |
| 40 | `theorem` | [HasAdditiveReduction.not_hasGoodReduction](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Reduction/Variantadea55836b2b7dc8b127c17a0dab8e2f043421726c13f7142ecaf3bdb53ad3e5.lean/declarations/hasadditivereduction-not-hasgoodreduction--ae8b8b88fc1fc8a9fa316247.md) | 392 | `result-track:ae8b8b88fc1fc8a9fa316247e6716ab041feb0a40487710a2e239ae63b210029` |
| 41 | `theorem` | [HasMultiplicativeReduction.not_hasAdditiveReduction](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Reduction/Variantadea55836b2b7dc8b127c17a0dab8e2f043421726c13f7142ecaf3bdb53ad3e5.lean/declarations/hasmultiplicativereduction-not-hasadditivereduction--e409332091edda863957bdde.md) | 396 | `result-track:e409332091edda863957bdde4dca5a161fceb2da117c819772ff30144635d333` |
| 42 | `theorem` | [HasAdditiveReduction.not_hasMultiplicativeReduction](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Reduction/Variantadea55836b2b7dc8b127c17a0dab8e2f043421726c13f7142ecaf3bdb53ad3e5.lean/declarations/hasadditivereduction-not-hasmultiplicativereduction--f62c299169021ba3d74119cc.md) | 400 | `result-track:f62c299169021ba3d74119ccef4bd66687afa7e97f49562813eb4f2486aa3598` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
