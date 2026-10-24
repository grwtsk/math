# Verification target: GRWTSK.Analysis.Extend.Variant5850ef01705629dacebb37b9da4bc8132eb02ebece84970bca14454b71eec381

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c8dafc87a52fc650a21d7d3f63eca65e8db26730",
  "lexical_observation_count": 35,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Extend/Variant5850ef01705629dacebb37b9da4bc8132eb02ebece84970bca14454b71eec381.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/Extend/Variant5850ef01705629dacebb37b9da4bc8132eb02ebece84970bca14454b71eec381.lean/index.md) · [Full source](../../../../mathematics/Analysis/Extend/Variant5850ef01705629dacebb37b9da4bc8132eb02ebece84970bca14454b71eec381.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c8dafc87a52fc650a21d7d3f63eca65e8db26730`.

Source path: `GRWTSK/Analysis/Extend/Variant5850ef01705629dacebb37b9da4bc8132eb02ebece84970bca14454b71eec381.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Extend/Variant5850ef01705629dacebb37b9da4bc8132eb02ebece84970bca14454b71eec381.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [opNorm_extend_le](../../../../mathematics/Analysis/Extend/Variant5850ef01705629dacebb37b9da4bc8132eb02ebece84970bca14454b71eec381.lean/declarations/opnorm-extend-le--f746d31d7b8acd16251baad8.md) | 70 | `result-track:f746d31d7b8acd16251baad83a5bfeba4aa84ddc3e1b89b4a2f31b9afb52cf32` |
| 2 | `def` | [compLeftInverse](../../../../mathematics/Analysis/Extend/Variant5850ef01705629dacebb37b9da4bc8132eb02ebece84970bca14454b71eec381.lean/declarations/compleftinverse--2a4139cce54be7fc6c49f7fa.md) | 108 | `declaration-track:2a4139cce54be7fc6c49f7fadf6e3b62a6aee400ef61fe62b90a74ad9f0002ac` |
| 3 | `theorem` | [compLeftInverse_apply_of_bdd](../../../../mathematics/Analysis/Extend/Variant5850ef01705629dacebb37b9da4bc8132eb02ebece84970bca14454b71eec381.lean/declarations/compleftinverse-apply-of-bdd--5b277eec74fd18a1eefe992f.md) | 124 | `result-track:5b277eec74fd18a1eefe992f115ee4e6f318b2c27c6d3db225ef40fa2c39f96d` |
| 4 | `def` | [extendOfNorm](../../../../mathematics/Analysis/Extend/Variant5850ef01705629dacebb37b9da4bc8132eb02ebece84970bca14454b71eec381.lean/declarations/extendofnorm--21582ff491f098e7f4a7a261.md) | 143 | `declaration-track:21582ff491f098e7f4a7a261f8d7a483d9cfeb3f91502c02389fbf6f2ca95906` |
| 5 | `theorem` | [extendOfNorm_eq](../../../../mathematics/Analysis/Extend/Variant5850ef01705629dacebb37b9da4bc8132eb02ebece84970bca14454b71eec381.lean/declarations/extendofnorm-eq--9af559a700641b29ca640fce.md) | 147 | `result-track:9af559a700641b29ca640fce3998c74c370585954718f0b1ad4b62279fbfd9d9` |
| 6 | `theorem` | [norm_extendOfNorm_apply_le](../../../../mathematics/Analysis/Extend/Variant5850ef01705629dacebb37b9da4bc8132eb02ebece84970bca14454b71eec381.lean/declarations/norm-extendofnorm-apply-le--cf46bde91bcb2639c54d0e7d.md) | 154 | `result-track:cf46bde91bcb2639c54d0e7d6be2e9c747237c01fb5a626963afd1334e176a1c` |
| 7 | `theorem` | [extendOfNorm_unique](../../../../mathematics/Analysis/Extend/Variant5850ef01705629dacebb37b9da4bc8132eb02ebece84970bca14454b71eec381.lean/declarations/extendofnorm-unique--f754087e5a68e7743a882450.md) | 162 | `result-track:f754087e5a68e7743a882450f7c1094f596180e4ab4930c8fb0f76c3046eb2d5` |
| 8 | `theorem` | [opNorm_extendOfNorm_le](../../../../mathematics/Analysis/Extend/Variant5850ef01705629dacebb37b9da4bc8132eb02ebece84970bca14454b71eec381.lean/declarations/opnorm-extendofnorm-le--54a0f5d809532c95bea649ed.md) | 182 | `result-track:54a0f5d809532c95bea649edfd9480217477503fed84e734798ace954978c2ad` |
| 9 | `def` | [extendOfIsometry](../../../../mathematics/Analysis/Extend/Variant5850ef01705629dacebb37b9da4bc8132eb02ebece84970bca14454b71eec381.lean/declarations/extendofisometry--e38c6610503e65b833105544.md) | 199 | `declaration-track:e38c6610503e65b8331055444f42abe04e462759d6d96e25887211141e0f9565` |
| 10 | `theorem` | [extendOfIsometry_apply](../../../../mathematics/Analysis/Extend/Variant5850ef01705629dacebb37b9da4bc8132eb02ebece84970bca14454b71eec381.lean/declarations/extendofisometry-apply--0940d26e01be1245b54b4460.md) | 208 | `result-track:0940d26e01be1245b54b4460f86726f8fcf3334a836a48c5a27146568e722de6` |
| 11 | `theorem` | [extendOfIsometry_eq](../../../../mathematics/Analysis/Extend/Variant5850ef01705629dacebb37b9da4bc8132eb02ebece84970bca14454b71eec381.lean/declarations/extendofisometry-eq--3790bdb25580bf283f4e70fa.md) | 213 | `result-track:3790bdb25580bf283f4e70fa4fad222010c2372da7d9ca1853acda2677a4d5c2` |
| 12 | `theorem` | [toContinuousLinearMap_extendOfIsometry](../../../../mathematics/Analysis/Extend/Variant5850ef01705629dacebb37b9da4bc8132eb02ebece84970bca14454b71eec381.lean/declarations/tocontinuouslinearmap-extendofisometry--6ff94bcef032e43c03fdc38c.md) | 217 | `result-track:6ff94bcef032e43c03fdc38c86e244d4e6e614eba4a0a934274a55c7fe24c16c` |
| 13 | `theorem` | [extendOfIsometry_unique](../../../../mathematics/Analysis/Extend/Variant5850ef01705629dacebb37b9da4bc8132eb02ebece84970bca14454b71eec381.lean/declarations/extendofisometry-unique--4935d7dfc72c9e8336d432b4.md) | 221 | `result-track:4935d7dfc72c9e8336d432b4fd304aa1fbdf58c72ff72838abc10253774d367b` |
| 14 | `def` | [extend](../../../../mathematics/Analysis/Extend/Variant5850ef01705629dacebb37b9da4bc8132eb02ebece84970bca14454b71eec381.lean/declarations/extend--c093cea879fbd7cb30e9950b.md) | 247 | `declaration-track:c093cea879fbd7cb30e9950bdb06fb15f8bca745ce09bfb1694c8310656f134d` |
| 15 | `theorem` | [extend_apply](../../../../mathematics/Analysis/Extend/Variant5850ef01705629dacebb37b9da4bc8132eb02ebece84970bca14454b71eec381.lean/declarations/extend-apply--5f6fd69e1c3296295e1ef972.md) | 266 | `result-track:5f6fd69e1c3296295e1ef972ed71a50708de462e71d4159d7a86affafa132e3b` |
| 16 | `theorem` | [extend_symm_apply](../../../../mathematics/Analysis/Extend/Variant5850ef01705629dacebb37b9da4bc8132eb02ebece84970bca14454b71eec381.lean/declarations/extend-symm-apply--ad465a518c5be5cc1df4f550.md) | 272 | `result-track:ad465a518c5be5cc1df4f5506ff4e78ef9ae7b3ffb76d3909d55118df4413e4d` |
| 17 | `theorem` | [extend_eq](../../../../mathematics/Analysis/Extend/Variant5850ef01705629dacebb37b9da4bc8132eb02ebece84970bca14454b71eec381.lean/declarations/extend-eq--d0460f16ceb6b3658ded72a1.md) | 279 | `result-track:d0460f16ceb6b3658ded72a1a099afedc3d3c473c90c4f455d7cb415894e99d1` |
| 18 | `theorem` | [extend_symm_eq](../../../../mathematics/Analysis/Extend/Variant5850ef01705629dacebb37b9da4bc8132eb02ebece84970bca14454b71eec381.lean/declarations/extend-symm-eq--152f89b1640d1ca5398525ea.md) | 285 | `result-track:152f89b1640d1ca5398525eaf7726a19f792e22511609e02140b481094b9f647` |
| 19 | `theorem` | [norm_extend_le](../../../../mathematics/Analysis/Extend/Variant5850ef01705629dacebb37b9da4bc8132eb02ebece84970bca14454b71eec381.lean/declarations/norm-extend-le--5762d01431baaa3c39cf3cc5.md) | 290 | `result-track:5762d01431baaa3c39cf3cc5f85f619a516ce98fdae443257a50bc985a9bdb6a` |
| 20 | `theorem` | [norm_extend_symm_le](../../../../mathematics/Analysis/Extend/Variant5850ef01705629dacebb37b9da4bc8132eb02ebece84970bca14454b71eec381.lean/declarations/norm-extend-symm-le--516283cfd2f3da7d31b6900a.md) | 295 | `result-track:516283cfd2f3da7d31b6900abc972959a7e6dd4895895a31cef559cc7c36a92b` |
| 21 | `def` | [extendOfIsometry](../../../../mathematics/Analysis/Extend/Variant5850ef01705629dacebb37b9da4bc8132eb02ebece84970bca14454b71eec381.lean/declarations/extendofisometry--87e735da559aba4b9722eb61.md) | 315 | `declaration-track:87e735da559aba4b9722eb613488baa0b8b3bed7b1123f64a8bd7688c48cc300` |
| 22 | `theorem` | [extendOfIsometry_apply](../../../../mathematics/Analysis/Extend/Variant5850ef01705629dacebb37b9da4bc8132eb02ebece84970bca14454b71eec381.lean/declarations/extendofisometry-apply--f878d5ae29e5e917d2bf2be8.md) | 327 | `result-track:f878d5ae29e5e917d2bf2be8641dd75f7518eae2bb2053a4a525ec34ae47ef6c` |
| 23 | `theorem` | [extendOfIsometry_symm_apply](../../../../mathematics/Analysis/Extend/Variant5850ef01705629dacebb37b9da4bc8132eb02ebece84970bca14454b71eec381.lean/declarations/extendofisometry-symm-apply--3748c2b3dbf2086e4fa20148.md) | 332 | `result-track:3748c2b3dbf2086e4fa20148329fd8afe9be4d406584c24cd46ba97a825db5cc` |
| 24 | `theorem` | [extendOfIsometry_eq](../../../../mathematics/Analysis/Extend/Variant5850ef01705629dacebb37b9da4bc8132eb02ebece84970bca14454b71eec381.lean/declarations/extendofisometry-eq--90d7fb5af38ee9228c6d4e94.md) | 338 | `result-track:90d7fb5af38ee9228c6d4e94507e450c6a7a0b7a97cdb5bb4a536077077523b4` |
| 25 | `theorem` | [extendOfIsometry_symm_eq](../../../../mathematics/Analysis/Extend/Variant5850ef01705629dacebb37b9da4bc8132eb02ebece84970bca14454b71eec381.lean/declarations/extendofisometry-symm-eq--02385346e0ce0e9f2048e3e2.md) | 344 | `result-track:02385346e0ce0e9f2048e3e295326968ad3a8228db4127b4d5c93006f0d23e50` |
| 26 | `def` | [fromCompletion](../../../../mathematics/Analysis/Extend/Variant5850ef01705629dacebb37b9da4bc8132eb02ebece84970bca14454b71eec381.lean/declarations/fromcompletion--9d9af743e26a53c2a13c12ee.md) | 371 | `declaration-track:9d9af743e26a53c2a13c12eeeaa88e516e21dce045c8525d8587ec2b6727e075` |
| 27 | `theorem` | [fromCompletion_apply_coe](../../../../mathematics/Analysis/Extend/Variant5850ef01705629dacebb37b9da4bc8132eb02ebece84970bca14454b71eec381.lean/declarations/fromcompletion-apply-coe--ad0a3844fb486e4bff55fffb.md) | 376 | `result-track:ad0a3844fb486e4bff55fffb6a2959b3217c55ccda938084d3fc667f4c793926` |
| 28 | `theorem` | [coe_fromCompletion](../../../../mathematics/Analysis/Extend/Variant5850ef01705629dacebb37b9da4bc8132eb02ebece84970bca14454b71eec381.lean/declarations/coe-fromcompletion--cb208d391107579ba8238b53.md) | 380 | `result-track:cb208d391107579ba8238b53dd091c05f764e72e0d2f2f76bb4516ae83d74d67` |
| 29 | `theorem` | [toContinuousLinearMap_fromCompletion](../../../../mathematics/Analysis/Extend/Variant5850ef01705629dacebb37b9da4bc8132eb02ebece84970bca14454b71eec381.lean/declarations/tocontinuouslinearmap-fromcompletion--b78110c489e0afdaf3527efb.md) | 385 | `result-track:b78110c489e0afdaf3527efbd0c543a389aa1dfab850dadc1281abd258330cd1` |
| 30 | `theorem` | [toAddMonoidHom_fromCompletion](../../../../mathematics/Analysis/Extend/Variant5850ef01705629dacebb37b9da4bc8132eb02ebece84970bca14454b71eec381.lean/declarations/toaddmonoidhom-fromcompletion--16c962f21ef5fd5c7c51ad78.md) | 389 | `result-track:16c962f21ef5fd5c7c51ad780690d4746a60a76646ae2af26e95aa1c557f4725` |
| 31 | `def` | [completion](../../../../mathematics/Analysis/Extend/Variant5850ef01705629dacebb37b9da4bc8132eb02ebece84970bca14454b71eec381.lean/declarations/completion--9dda53fd972addeb195fae77.md) | 402 | `declaration-track:9dda53fd972addeb195fae770b39b2f1deca8f250578a11e2494d25863e486bf` |
| 32 | `theorem` | [completion_apply_coe](../../../../mathematics/Analysis/Extend/Variant5850ef01705629dacebb37b9da4bc8132eb02ebece84970bca14454b71eec381.lean/declarations/completion-apply-coe--ff52a2c941a4ab8241366e0b.md) | 408 | `result-track:ff52a2c941a4ab8241366e0be58189498cc6100e55e7a830f13f5475d7aa0f18` |
| 33 | `theorem` | [coe_completion](../../../../mathematics/Analysis/Extend/Variant5850ef01705629dacebb37b9da4bc8132eb02ebece84970bca14454b71eec381.lean/declarations/coe-completion--957393e052939ac719ec0d08.md) | 412 | `result-track:957393e052939ac719ec0d084f4693cd43591ccdf3949e21dc9a1fadf839416d` |
| 34 | `theorem` | [toContinuousLinearMap_completion](../../../../mathematics/Analysis/Extend/Variant5850ef01705629dacebb37b9da4bc8132eb02ebece84970bca14454b71eec381.lean/declarations/tocontinuouslinearmap-completion--ae494c3c53b98544a1595e66.md) | 417 | `result-track:ae494c3c53b98544a1595e66d4dccd1822d126194082c9a0b6ebebba66b439a8` |
| 35 | `theorem` | [toAddMonoidHom_completion](../../../../mathematics/Analysis/Extend/Variant5850ef01705629dacebb37b9da4bc8132eb02ebece84970bca14454b71eec381.lean/declarations/toaddmonoidhom-completion--d0a39ed8e4164d3c5b16e993.md) | 425 | `result-track:d0a39ed8e4164d3c5b16e993423058fef7444b03b609e54de85231ef675ed055` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
