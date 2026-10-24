# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.FiniteLimits.Variant57dcc2f0534bd008e2b363a10817c417aa4ae75682f4978a9fb7fd13b0905b1d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a477c367cc1fae77d64751b7957e78e01e7d7cf4",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteLimits/Variant57dcc2f0534bd008e2b363a10817c417aa4ae75682f4978a9fb7fd13b0905b1d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteLimits/Variant57dcc2f0534bd008e2b363a10817c417aa4ae75682f4978a9fb7fd13b0905b1d.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteLimits/Variant57dcc2f0534bd008e2b363a10817c417aa4ae75682f4978a9fb7fd13b0905b1d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a477c367cc1fae77d64751b7957e78e01e7d7cf4`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteLimits/Variant57dcc2f0534bd008e2b363a10817c417aa4ae75682f4978a9fb7fd13b0905b1d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteLimits/Variant57dcc2f0534bd008e2b363a10817c417aa4ae75682f4978a9fb7fd13b0905b1d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.FinCategory.AsType` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.BinaryProducts` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.Equalizers` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.WidePullbacks` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.Pullback.HasPullback` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Option` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [HasFiniteLimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteLimits/Variant57dcc2f0534bd008e2b363a10817c417aa4ae75682f4978a9fb7fd13b0905b1d.lean/declarations/hasfinitelimits--34e38f171150e830bedb682c.md) | 45 | `declaration-track:34e38f171150e830bedb682caeb12acca727d30c5136dc111aab2f3d9bac9117` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteLimits/Variant57dcc2f0534bd008e2b363a10817c417aa4ae75682f4978a9fb7fd13b0905b1d.lean/declarations/instance--0e0745f584de840e9573b4b7.md) | 50 | `declaration-track:0e0745f584de840e9573b4b7529a8e8b2658bfd13792e2c69176537cde006726` |
| 3 | `lemma` | [hasFiniteLimits_of_hasLimitsOfSize](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteLimits/Variant57dcc2f0534bd008e2b363a10817c417aa4ae75682f4978a9fb7fd13b0905b1d.lean/declarations/hasfinitelimits-of-haslimitsofsize--43da420aebd1eaa4606b8fda.md) | 55 | `result-track:43da420aebd1eaa4606b8fda6e755f091505390ab463c8314dd16c5d5a035e92` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteLimits/Variant57dcc2f0534bd008e2b363a10817c417aa4ae75682f4978a9fb7fd13b0905b1d.lean/declarations/instance--4f9023d9a4a4b55f4f448967.md) | 64 | `declaration-track:4f9023d9a4a4b55f4f4489671a24ad1f7bf25df7c9464c9f6d6ad51c8c079c54` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteLimits/Variant57dcc2f0534bd008e2b363a10817c417aa4ae75682f4978a9fb7fd13b0905b1d.lean/declarations/instance--15c7b1e22e8b2ea601489fd5.md) | 67 | `declaration-track:15c7b1e22e8b2ea601489fd54d6efaa4f39e3b0867195a8202e69bad5b5486d3` |
| 6 | `theorem` | [hasFiniteLimits_of_hasFiniteLimits_of_size](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteLimits/Variant57dcc2f0534bd008e2b363a10817c417aa4ae75682f4978a9fb7fd13b0905b1d.lean/declarations/hasfinitelimits-of-hasfinitelimits-of-size--24f985d54814f82cf46252eb.md) | 73 | `result-track:24f985d54814f82cf46252eb05fc760b8160477655ca4ff5f9104776a15c0511` |
| 7 | `class` | [HasFiniteColimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteLimits/Variant57dcc2f0534bd008e2b363a10817c417aa4ae75682f4978a9fb7fd13b0905b1d.lean/declarations/hasfinitecolimits--de2faa334c73e3992df3f23a.md) | 94 | `declaration-track:de2faa334c73e3992df3f23a8b529992fd5cdafdbd8247978c781d8974687a19` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteLimits/Variant57dcc2f0534bd008e2b363a10817c417aa4ae75682f4978a9fb7fd13b0905b1d.lean/declarations/instance--9345b69b632e9bbce48dff5c.md) | 100 | `declaration-track:9345b69b632e9bbce48dff5c63219fa0c752b454eedeb733ad888efb0c28d234` |
| 9 | `lemma` | [hasFiniteColimits_of_hasColimitsOfSize](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteLimits/Variant57dcc2f0534bd008e2b363a10817c417aa4ae75682f4978a9fb7fd13b0905b1d.lean/declarations/hasfinitecolimits-of-hascolimitsofsize--7b40093add809f408364a8e6.md) | 105 | `result-track:7b40093add809f408364a8e62231f7a920091e6eeeeb9279f4a68a3b71edbb6b` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteLimits/Variant57dcc2f0534bd008e2b363a10817c417aa4ae75682f4978a9fb7fd13b0905b1d.lean/declarations/instance--34d9a590551b4726c7755a7b.md) | 113 | `declaration-track:34d9a590551b4726c7755a7b066be4b56bcafbcc762a345f001805fc21a081fa` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteLimits/Variant57dcc2f0534bd008e2b363a10817c417aa4ae75682f4978a9fb7fd13b0905b1d.lean/declarations/instance--82b8622d4d74493d79c4fe7a.md) | 116 | `declaration-track:82b8622d4d74493d79c4fe7af76bab1985f2dbd2107f67020ace7e3ac3b6d020` |
| 12 | `theorem` | [hasFiniteColimits_of_hasFiniteColimits_of_size](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteLimits/Variant57dcc2f0534bd008e2b363a10817c417aa4ae75682f4978a9fb7fd13b0905b1d.lean/declarations/hasfinitecolimits-of-hasfinitecolimits-of-size--1b9b7c26453d9a812f045dc6.md) | 122 | `result-track:1b9b7c26453d9a812f045dc64db692da0cb469816dcabb6c519816f52d4a1e8c` |
| 13 | `instance` | [fintypeWalkingParallelPair](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteLimits/Variant57dcc2f0534bd008e2b363a10817c417aa4ae75682f4978a9fb7fd13b0905b1d.lean/declarations/fintypewalkingparallelpair--5134a6f4f60db7d6a217740c.md) | 139 | `declaration-track:5134a6f4f60db7d6a217740c5ab212043dfdcfba849859ea01d9826eca3dff02` |
| 14 | `instance` | [instFintypeWalkingParallelPairHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteLimits/Variant57dcc2f0534bd008e2b363a10817c417aa4ae75682f4978a9fb7fd13b0905b1d.lean/declarations/instfintypewalkingparallelpairhom--9cf3ad9f9e2cc5fb9e69d0a9.md) | 145 | `declaration-track:9cf3ad9f9e2cc5fb9e69d0a9821737d95899ddedaf6dbb19fa2925c54b85efb8` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteLimits/Variant57dcc2f0534bd008e2b363a10817c417aa4ae75682f4978a9fb7fd13b0905b1d.lean/declarations/instance--a6dd08a39d1041636c2fcd5e.md) | 157 | `declaration-track:a6dd08a39d1041636c2fcd5e17f8300c78edc50059ba47dc762e123fda2d2202` |
| 16 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteLimits/Variant57dcc2f0534bd008e2b363a10817c417aa4ae75682f4978a9fb7fd13b0905b1d.lean/declarations/example--67fe0ec2afd3d2ecac7ed2b8.md) | 162 | `declaration-track:67fe0ec2afd3d2ecac7ed2b8eb6cfaaaa9ce95d95281a0f0915b35d9b43bad48` |
| 17 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteLimits/Variant57dcc2f0534bd008e2b363a10817c417aa4ae75682f4978a9fb7fd13b0905b1d.lean/declarations/example--466436e952119670e1392153.md) | 166 | `declaration-track:466436e952119670e1392153b8d5394e3b5a42244eb7f21b2fa7cad9048d2856` |
| 18 | `instance` | [fintypeObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteLimits/Variant57dcc2f0534bd008e2b363a10817c417aa4ae75682f4978a9fb7fd13b0905b1d.lean/declarations/fintypeobj--4415373223b7b39b51acfabe.md) | 174 | `declaration-track:4415373223b7b39b51acfabe929b7b94203f31a627fc4d16091b6013289a95c3` |
| 19 | `instance` | [fintypeHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteLimits/Variant57dcc2f0534bd008e2b363a10817c417aa4ae75682f4978a9fb7fd13b0905b1d.lean/declarations/fintypehom--2f5c3f18a367cba9649880f0.md) | 177 | `declaration-track:2f5c3f18a367cba9649880f050cce2e866843aae2e86c9093ec73134c9b702f3` |
| 20 | `instance` | [fintypeObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteLimits/Variant57dcc2f0534bd008e2b363a10817c417aa4ae75682f4978a9fb7fd13b0905b1d.lean/declarations/fintypeobj--ff655a1321fa765df58d4260.md) | 196 | `declaration-track:ff655a1321fa765df58d4260bcf07f3ec2b9df63aec928403660afc19e3edfcd` |
| 21 | `instance` | [fintypeHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteLimits/Variant57dcc2f0534bd008e2b363a10817c417aa4ae75682f4978a9fb7fd13b0905b1d.lean/declarations/fintypehom--2f57d79d8a1f1d6c46bd410b.md) | 199 | `declaration-track:2f57d79d8a1f1d6c46bd410b77935acf538e712fb9188ba760d4bca8b297828f` |
| 22 | `instance` | [finCategoryWidePullback](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteLimits/Variant57dcc2f0534bd008e2b363a10817c417aa4ae75682f4978a9fb7fd13b0905b1d.lean/declarations/fincategorywidepullback--cbd4f81553e19d55aaefd25a.md) | 216 | `declaration-track:cbd4f81553e19d55aaefd25abefe12b58cc5f200ef2277742d9e81c1b6ec0bff` |
| 23 | `instance` | [finCategoryWidePushout](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteLimits/Variant57dcc2f0534bd008e2b363a10817c417aa4ae75682f4978a9fb7fd13b0905b1d.lean/declarations/fincategorywidepushout--f4a752be60c292db6d157e70.md) | 219 | `declaration-track:f4a752be60c292db6d157e70fc8e5e35c5fee0e2dbeeb8dda24eeca393559aad` |
| 24 | `class` | [HasFiniteWidePullbacks](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteLimits/Variant57dcc2f0534bd008e2b363a10817c417aa4ae75682f4978a9fb7fd13b0905b1d.lean/declarations/hasfinitewidepullbacks--fc79ad8adfca2555f44f134f.md) | 227 | `declaration-track:fc79ad8adfca2555f44f134f05eff79c780e0d3a871c98a26cf5174e8e2a7372` |
| 25 | `instance` | [hasLimitsOfShape_widePullbackShape](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteLimits/Variant57dcc2f0534bd008e2b363a10817c417aa4ae75682f4978a9fb7fd13b0905b1d.lean/declarations/haslimitsofshape-widepullbackshape--8afb39234910abf44d7add6c.md) | 231 | `declaration-track:8afb39234910abf44d7add6ce18318bb2cae663c1af96c19e0d2ea96944b8654` |
| 26 | `class` | [HasFiniteWidePushouts](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteLimits/Variant57dcc2f0534bd008e2b363a10817c417aa4ae75682f4978a9fb7fd13b0905b1d.lean/declarations/hasfinitewidepushouts--722ab7eba5634f81dfaa6d39.md) | 239 | `declaration-track:722ab7eba5634f81dfaa6d39aa7516bcf20343654d97f10997eaf3c317101f15` |
| 27 | `instance` | [hasColimitsOfShape_widePushoutShape](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteLimits/Variant57dcc2f0534bd008e2b363a10817c417aa4ae75682f4978a9fb7fd13b0905b1d.lean/declarations/hascolimitsofshape-widepushoutshape--1126ed38a98310e72f80af86.md) | 243 | `declaration-track:1126ed38a98310e72f80af8686af705b3ff3c172274f6534ecf297c610027eb5` |
| 28 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteLimits/Variant57dcc2f0534bd008e2b363a10817c417aa4ae75682f4978a9fb7fd13b0905b1d.lean/declarations/instance--23bb1736373c854be72a15a1.md) | 251 | `declaration-track:23bb1736373c854be72a15a19c05855e8770c3e45b362554896d1de2508bb61a` |
| 29 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteLimits/Variant57dcc2f0534bd008e2b363a10817c417aa4ae75682f4978a9fb7fd13b0905b1d.lean/declarations/instance--0cc09e97995f25ba790d348f.md) | 258 | `declaration-track:0cc09e97995f25ba790d348f186247c056f5c9183bcc757ec20a2d209d116db5` |
| 30 | `instance` | [fintypeWalkingPair](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteLimits/Variant57dcc2f0534bd008e2b363a10817c417aa4ae75682f4978a9fb7fd13b0905b1d.lean/declarations/fintypewalkingpair--aed48c80f369f24c6838894a.md) | 262 | `declaration-track:aed48c80f369f24c6838894a50ca8d61ce8d8eec2af9358ba1648f7a2acc172e` |
| 31 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteLimits/Variant57dcc2f0534bd008e2b363a10817c417aa4ae75682f4978a9fb7fd13b0905b1d.lean/declarations/example--5676bec9cab3853db97c2002.md) | 267 | `declaration-track:5676bec9cab3853db97c20022859dc350e69da6fd144770a8a49ebb99fd9ee89` |
| 32 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteLimits/Variant57dcc2f0534bd008e2b363a10817c417aa4ae75682f4978a9fb7fd13b0905b1d.lean/declarations/example--56423209397a996416aad275.md) | 270 | `declaration-track:56423209397a996416aad275535185777520a0816d387a13c0f8937889548dc7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
