# Verification target: GRWTSK.Algebra.GroupTheory.Limits.Variantc524f687f029d1ce5af43e57f59ba54c4e626154a123590ee4bb0253b17041b8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1c3af4a0562c2e9805058ade191b7dbb9a99fceb",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Limits/Variantc524f687f029d1ce5af43e57f59ba54c4e626154a123590ee4bb0253b17041b8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Limits/Variantc524f687f029d1ce5af43e57f59ba54c4e626154a123590ee4bb0253b17041b8.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Limits/Variantc524f687f029d1ce5af43e57f59ba54c4e626154a123590ee4bb0253b17041b8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1c3af4a0562c2e9805058ade191b7dbb9a99fceb`.

Source path: `GRWTSK/Algebra/GroupTheory/Limits/Variantc524f687f029d1ce5af43e57f59ba54c4e626154a123590ee4bb0253b17041b8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Limits/Variantc524f687f029d1ce5af43e57f59ba54c4e626154a123590ee4bb0253b17041b8.lean.json)

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
| 1 | `instance` | [monoidObj](../../../../../mathematics/Algebra/GroupTheory/Limits/Variantc524f687f029d1ce5af43e57f59ba54c4e626154a123590ee4bb0253b17041b8.lean/declarations/monoidobj--74a04aa8d83b36fb8fea2f43.md) | 38 | `declaration-track:74a04aa8d83b36fb8fea2f43fefc7ef2d9eac17c6601da137614b8c5744ddd58` |
| 2 | `def` | [sectionsSubmonoid](../../../../../mathematics/Algebra/GroupTheory/Limits/Variantc524f687f029d1ce5af43e57f59ba54c4e626154a123590ee4bb0253b17041b8.lean/declarations/sectionssubmonoid--500995bc42db7b6c68a7bb6e.md) | 44 | `declaration-track:500995bc42db7b6c68a7bb6e97af493180a80bf0a4310f94eb2d7bbd282af6bc` |
| 3 | `instance` | [sectionsMonoid](../../../../../mathematics/Algebra/GroupTheory/Limits/Variantc524f687f029d1ce5af43e57f59ba54c4e626154a123590ee4bb0253b17041b8.lean/declarations/sectionsmonoid--e78ad7706b1462db3be88cde.md) | 50 | `declaration-track:e78ad7706b1462db3be88cde166868c0cb49411ba06ba353daec0c6787898409` |
| 4 | `instance` | [limitMonoid](../../../../../mathematics/Algebra/GroupTheory/Limits/Variantc524f687f029d1ce5af43e57f59ba54c4e626154a123590ee4bb0253b17041b8.lean/declarations/limitmonoid--4980ba879c0d8a70854b9566.md) | 56 | `declaration-track:4980ba879c0d8a70854b956606bba14c174f64f5dcbf8366bfa8f031a2db930f` |
| 5 | `def` | [limitπMonoidHom](../../../../../mathematics/Algebra/GroupTheory/Limits/Variantc524f687f029d1ce5af43e57f59ba54c4e626154a123590ee4bb0253b17041b8.lean/declarations/limit-monoidhom--bbb6d438da75aa3a86e89c9b.md) | 64 | `declaration-track:bbb6d438da75aa3a86e89c9bf2d69feb35324e3cf8fa88910b9be825c2441638` |
| 6 | `def` | [limitCone](../../../../../mathematics/Algebra/GroupTheory/Limits/Variantc524f687f029d1ce5af43e57f59ba54c4e626154a123590ee4bb0253b17041b8.lean/declarations/limitcone--f99adf715155c0504f835bd7.md) | 80 | `declaration-track:f99adf715155c0504f835bd762a51fe33ed8c68c47543ae09c16e8f526824a56` |
| 7 | `def` | [limitConeIsLimit](../../../../../mathematics/Algebra/GroupTheory/Limits/Variantc524f687f029d1ce5af43e57f59ba54c4e626154a123590ee4bb0253b17041b8.lean/declarations/limitconeislimit--ca9d106989e84b2ccad73733.md) | 93 | `declaration-track:ca9d106989e84b2ccad73733af1886eafc8969a623a418d6cf716b89f3c6aaa2` |
| 8 | `instance` | [hasLimit](../../../../../mathematics/Algebra/GroupTheory/Limits/Variantc524f687f029d1ce5af43e57f59ba54c4e626154a123590ee4bb0253b17041b8.lean/declarations/haslimit--dc57a32a5d30f91937e6a1c9.md) | 104 | `declaration-track:dc57a32a5d30f91937e6a1c93ac525ba7928f40a228380a64c3e747a7e839937` |
| 9 | `instance` | [hasLimitsOfShape](../../../../../mathematics/Algebra/GroupTheory/Limits/Variantc524f687f029d1ce5af43e57f59ba54c4e626154a123590ee4bb0253b17041b8.lean/declarations/haslimitsofshape--0dffeb0692d84741ede621da.md) | 112 | `declaration-track:0dffeb0692d84741ede621daa9c39e82e2146d3c82fa847863b8fa644e2005de` |
| 10 | `instance` | [hasLimitsOfSize](../../../../../mathematics/Algebra/GroupTheory/Limits/Variantc524f687f029d1ce5af43e57f59ba54c4e626154a123590ee4bb0253b17041b8.lean/declarations/haslimitsofsize--71236e4463b59df7928336ab.md) | 121 | `declaration-track:71236e4463b59df7928336ab0642e2b7148f822ffacded2aeef87a2ee4fa5d8e` |
| 11 | `instance` | [hasLimits](../../../../../mathematics/Algebra/GroupTheory/Limits/Variantc524f687f029d1ce5af43e57f59ba54c4e626154a123590ee4bb0253b17041b8.lean/declarations/haslimits--0f43adcaf21791ae518b1e23.md) | 125 | `declaration-track:0f43adcaf21791ae518b1e2361f6d069d6103d91cec2d95fcc121a22867585e2` |
| 12 | `instance` | [forget_preservesLimitsOfShape](../../../../../mathematics/Algebra/GroupTheory/Limits/Variantc524f687f029d1ce5af43e57f59ba54c4e626154a123590ee4bb0253b17041b8.lean/declarations/forget-preserveslimitsofshape--5487c29e8360113f10e4cab1.md) | 131 | `declaration-track:5487c29e8360113f10e4cab1eea0edc6720605a547b4f8760ffcbe49a910734c` |
| 13 | `instance` | [forget_preservesLimitsOfSize](../../../../../mathematics/Algebra/GroupTheory/Limits/Variantc524f687f029d1ce5af43e57f59ba54c4e626154a123590ee4bb0253b17041b8.lean/declarations/forget-preserveslimitsofsize--e0990200709e185e016f1884.md) | 143 | `declaration-track:e0990200709e185e016f188435a8c97140c04dfe01fd89e95c8455613005601c` |
| 14 | `instance` | [forget_preservesLimits](../../../../../mathematics/Algebra/GroupTheory/Limits/Variantc524f687f029d1ce5af43e57f59ba54c4e626154a123590ee4bb0253b17041b8.lean/declarations/forget-preserveslimits--5a557baf3a08119a55fe9f10.md) | 148 | `declaration-track:5a557baf3a08119a55fe9f100895297eb73070482d4d5a526ba17f81811c1860` |
| 15 | `instance` | [forget_createsLimit](../../../../../mathematics/Algebra/GroupTheory/Limits/Variantc524f687f029d1ce5af43e57f59ba54c4e626154a123590ee4bb0253b17041b8.lean/declarations/forget-createslimit--d0c599c541ad9782369e9e1c.md) | 154 | `declaration-track:d0c599c541ad9782369e9e1cd4f02dd99638ae11205726ce72c1b5494b8bee7d` |
| 16 | `instance` | [forget_createsLimitsOfShape](../../../../../mathematics/Algebra/GroupTheory/Limits/Variantc524f687f029d1ce5af43e57f59ba54c4e626154a123590ee4bb0253b17041b8.lean/declarations/forget-createslimitsofshape--59ae10826013f3ccf11ebbbe.md) | 186 | `declaration-track:59ae10826013f3ccf11ebbbea133a03ce739bccbc5f1d3bc9897c1ca649f12d6` |
| 17 | `instance` | [forget_createsLimitsOfSize](../../../../../mathematics/Algebra/GroupTheory/Limits/Variantc524f687f029d1ce5af43e57f59ba54c4e626154a123590ee4bb0253b17041b8.lean/declarations/forget-createslimitsofsize--8637a867268dcf7295386b1a.md) | 192 | `declaration-track:8637a867268dcf7295386b1a273404974922887083c7d74adcee8c0af345f68d` |
| 18 | `instance` | [forget_createsLimits](../../../../../mathematics/Algebra/GroupTheory/Limits/Variantc524f687f029d1ce5af43e57f59ba54c4e626154a123590ee4bb0253b17041b8.lean/declarations/forget-createslimits--0b9bf1e5cd5aa4125cf6f124.md) | 197 | `declaration-track:0b9bf1e5cd5aa4125cf6f1249cf12e6b8982f264864262a9c8955f1463492b82` |
| 19 | `instance` | [commMonoidObj](../../../../../mathematics/Algebra/GroupTheory/Limits/Variantc524f687f029d1ce5af43e57f59ba54c4e626154a123590ee4bb0253b17041b8.lean/declarations/commmonoidobj--61a722864c7b1056c7810fab.md) | 209 | `declaration-track:61a722864c7b1056c7810fab6ab1f5963eb4c39749c92ec635133794f0cfc6f5` |
| 20 | `instance` | [limitCommMonoid](../../../../../mathematics/Algebra/GroupTheory/Limits/Variantc524f687f029d1ce5af43e57f59ba54c4e626154a123590ee4bb0253b17041b8.lean/declarations/limitcommmonoid--594b574a7d6b92aea771c722.md) | 215 | `declaration-track:594b574a7d6b92aea771c722ec6bbcc0ab168cbf6129a64ecf6be5318b3cab7c` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Limits/Variantc524f687f029d1ce5af43e57f59ba54c4e626154a123590ee4bb0253b17041b8.lean/declarations/instance--9e7cf61718a366cbdc8856ba.md) | 223 | `declaration-track:9e7cf61718a366cbdc8856bace2110c96b1b5821a9c74c220ac6128d549e109f` |
| 22 | `instance` | [forget₂CreatesLimit](../../../../../mathematics/Algebra/GroupTheory/Limits/Variantc524f687f029d1ce5af43e57f59ba54c4e626154a123590ee4bb0253b17041b8.lean/declarations/forget-createslimit--911d527d8b5ec3f43deb050f.md) | 234 | `declaration-track:911d527d8b5ec3f43deb050f68d8ddaeca289e0e0437c64137d15ee67fc9b07a` |
| 23 | `def` | [limitCone](../../../../../mathematics/Algebra/GroupTheory/Limits/Variantc524f687f029d1ce5af43e57f59ba54c4e626154a123590ee4bb0253b17041b8.lean/declarations/limitcone--0e8b9f84e9724ff89ddebcaa.md) | 253 | `declaration-track:0e8b9f84e9724ff89ddebcaa729f24da7ddfb73fcc70dc8c81d5e7044171bd72` |
| 24 | `def` | [limitConeIsLimit](../../../../../mathematics/Algebra/GroupTheory/Limits/Variantc524f687f029d1ce5af43e57f59ba54c4e626154a123590ee4bb0253b17041b8.lean/declarations/limitconeislimit--27963c53e7d091bcc7c4b699.md) | 262 | `declaration-track:27963c53e7d091bcc7c4b6998637d44fa95e301c4a3ff87a998a945f0b33a466` |
| 25 | `instance` | [hasLimit](../../../../../mathematics/Algebra/GroupTheory/Limits/Variantc524f687f029d1ce5af43e57f59ba54c4e626154a123590ee4bb0253b17041b8.lean/declarations/haslimit--4ac415ecde338c1723c13eb6.md) | 267 | `declaration-track:4ac415ecde338c1723c13eb6c072274ebc0a57971f942047eaf8e1c9c08ee0f1` |
| 26 | `instance` | [hasLimitsOfShape](../../../../../mathematics/Algebra/GroupTheory/Limits/Variantc524f687f029d1ce5af43e57f59ba54c4e626154a123590ee4bb0253b17041b8.lean/declarations/haslimitsofshape--e55f1cd43854d99255c0fb1d.md) | 275 | `declaration-track:e55f1cd43854d99255c0fb1de533fa57e1c9398df096c206ce9030561f20ea02` |
| 27 | `instance` | [hasLimitsOfSize](../../../../../mathematics/Algebra/GroupTheory/Limits/Variantc524f687f029d1ce5af43e57f59ba54c4e626154a123590ee4bb0253b17041b8.lean/declarations/haslimitsofsize--84b472218088d43e7368a58d.md) | 280 | `declaration-track:84b472218088d43e7368a58d304ae359f08085f75b848e5ebb176433774a31ca` |
| 28 | `instance` | [hasLimits](../../../../../mathematics/Algebra/GroupTheory/Limits/Variantc524f687f029d1ce5af43e57f59ba54c4e626154a123590ee4bb0253b17041b8.lean/declarations/haslimits--4c1796703c85c90e144f1723.md) | 284 | `declaration-track:4c1796703c85c90e144f17236f02639e29ac14c110fd3afb9d8618ec3e562335` |
| 29 | `instance` | [forget₂Mon_preservesLimitsOfSize](../../../../../mathematics/Algebra/GroupTheory/Limits/Variantc524f687f029d1ce5af43e57f59ba54c4e626154a123590ee4bb0253b17041b8.lean/declarations/forget-mon-preserveslimitsofsize--42b1f8fcd40f136d47fdfe67.md) | 296 | `declaration-track:42b1f8fcd40f136d47fdfe67e3a2c3b0da61d7f08f2a15134fb6ffd246fda9fa` |
| 30 | `instance` | [forget₂Mon_preservesLimits](../../../../../mathematics/Algebra/GroupTheory/Limits/Variantc524f687f029d1ce5af43e57f59ba54c4e626154a123590ee4bb0253b17041b8.lean/declarations/forget-mon-preserveslimits--0d6b0f500557984f5ae39832.md) | 301 | `declaration-track:0d6b0f500557984f5ae39832911176ce6914f74ca9ccb513990ff5dc5b36705d` |
| 31 | `instance` | [forget_preservesLimitsOfShape](../../../../../mathematics/Algebra/GroupTheory/Limits/Variantc524f687f029d1ce5af43e57f59ba54c4e626154a123590ee4bb0253b17041b8.lean/declarations/forget-preserveslimitsofshape--2d9896960ab6147fbe45c00c.md) | 309 | `declaration-track:2d9896960ab6147fbe45c00c560353873dcb038ab9737047aa764ef8bb4f2d99` |
| 32 | `instance` | [forget_preservesLimitsOfSize](../../../../../mathematics/Algebra/GroupTheory/Limits/Variantc524f687f029d1ce5af43e57f59ba54c4e626154a123590ee4bb0253b17041b8.lean/declarations/forget-preserveslimitsofsize--fb55f0d7023fa2d126022671.md) | 321 | `declaration-track:fb55f0d7023fa2d126022671907abc82ebd03db776c7596506cb96cae52d3d38` |
| 33 | `instance` | [_root_.AddCommMonCat.forget_preservesLimits](../../../../../mathematics/Algebra/GroupTheory/Limits/Variantc524f687f029d1ce5af43e57f59ba54c4e626154a123590ee4bb0253b17041b8.lean/declarations/root-addcommmoncat-forget-preserveslimits--d9e04a87e738b7dfbb3c66e4.md) | 325 | `declaration-track:d9e04a87e738b7dfbb3c66e42ba97e94e839ca49789e59f913dd8a04c9ed1616` |
| 34 | `instance` | [forget_preservesLimits](../../../../../mathematics/Algebra/GroupTheory/Limits/Variantc524f687f029d1ce5af43e57f59ba54c4e626154a123590ee4bb0253b17041b8.lean/declarations/forget-preserveslimits--2f351c88b7399b46b59ff346.md) | 330 | `declaration-track:2f351c88b7399b46b59ff346eb4c803625e1d2c8b9351e47e040ecbafb3765f6` |
| 35 | `instance` | [forget_createsLimit](../../../../../mathematics/Algebra/GroupTheory/Limits/Variantc524f687f029d1ce5af43e57f59ba54c4e626154a123590ee4bb0253b17041b8.lean/declarations/forget-createslimit--75ec0bac3033b42ad14a8ea6.md) | 334 | `declaration-track:75ec0bac3033b42ad14a8ea63d0640451cd7020ded893e4168fc0986f4a3f255` |
| 36 | `instance` | [forget_createsLimitsOfShape](../../../../../mathematics/Algebra/GroupTheory/Limits/Variantc524f687f029d1ce5af43e57f59ba54c4e626154a123590ee4bb0253b17041b8.lean/declarations/forget-createslimitsofshape--9a52cdfba9d9c43ea1dcac50.md) | 341 | `declaration-track:9a52cdfba9d9c43ea1dcac50a6106d34580464e83f9b6a92464e502b80f146d2` |
| 37 | `instance` | [forget_createsLimitsOfSize](../../../../../mathematics/Algebra/GroupTheory/Limits/Variantc524f687f029d1ce5af43e57f59ba54c4e626154a123590ee4bb0253b17041b8.lean/declarations/forget-createslimitsofsize--a7d02272cc5b712ceb830ef8.md) | 348 | `declaration-track:a7d02272cc5b712ceb830ef806d2ba58ab468cac013f4b4a74c0748694b63f2d` |
| 38 | `instance` | [forget_createsLimits](../../../../../mathematics/Algebra/GroupTheory/Limits/Variantc524f687f029d1ce5af43e57f59ba54c4e626154a123590ee4bb0253b17041b8.lean/declarations/forget-createslimits--ad1f7af1b79677a7cecbd0fe.md) | 353 | `declaration-track:ad1f7af1b79677a7cecbd0fe3821e2d1c0d23a9685c0ea9a3cf23789ac2e4295` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
