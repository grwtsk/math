# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.RegularMono.Variantc2f0792d650a870d99aaf06beaaba09455530498c6dec98bd09d8070972ae882

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8e2a342230367d698ab26faed966df2d792ff702",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularMono/Variantc2f0792d650a870d99aaf06beaaba09455530498c6dec98bd09d8070972ae882.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularMono/Variantc2f0792d650a870d99aaf06beaaba09455530498c6dec98bd09d8070972ae882.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularMono/Variantc2f0792d650a870d99aaf06beaaba09455530498c6dec98bd09d8070972ae882.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8e2a342230367d698ab26faed966df2d792ff702`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularMono/Variantc2f0792d650a870d99aaf06beaaba09455530498c6dec98bd09d8070972ae882.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularMono/Variantc2f0792d650a870d99aaf06beaaba09455530498c6dec98bd09d8070972ae882.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Shapes.Pullback.HasPullback` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.StrongEpi` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.Equalizers` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Lean.Expr.Basic` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [RegularMono](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularMono/Variantc2f0792d650a870d99aaf06beaaba09455530498c6dec98bd09d8070972ae882.lean/declarations/regularmono--71f5b815dff242d5f3e6c6e1.md) | 50 | `declaration-track:71f5b815dff242d5f3e6c6e1fa3bb5840f3127abe0ea572b97c32ff6087bd9b5` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularMono/Variantc2f0792d650a870d99aaf06beaaba09455530498c6dec98bd09d8070972ae882.lean/declarations/instance--8f64b64f50ea39ed6d271fa9.md) | 65 | `declaration-track:8f64b64f50ea39ed6d271fa9b4cac79f2b025db67d49866082f2a79ae963885d` |
| 3 | `instance` | [equalizerRegular](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularMono/Variantc2f0792d650a870d99aaf06beaaba09455530498c6dec98bd09d8070972ae882.lean/declarations/equalizerregular--138efb55254f6f8ab9b6673b.md) | 68 | `declaration-track:138efb55254f6f8ab9b6673b791461948bfd40584be237e40ebc9267fe7781fd` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularMono/Variantc2f0792d650a870d99aaf06beaaba09455530498c6dec98bd09d8070972ae882.lean/declarations/instance--efd5bade1bf1501c3caec9b4.md) | 80 | `declaration-track:efd5bade1bf1501c3caec9b4e20129c5567d245b4129306cff02193e1d236871` |
| 5 | `def` | [RegularMono.lift'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularMono/Variantc2f0792d650a870d99aaf06beaaba09455530498c6dec98bd09d8070972ae882.lean/declarations/regularmono-lift--4f556febfde2e6ded29ec46a.md) | 89 | `declaration-track:4f556febfde2e6ded29ec46a04f3fc07bc662ceea089637535d8a3ed0b99c98f` |
| 6 | `def` | [regularOfIsPullbackSndOfRegular](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularMono/Variantc2f0792d650a870d99aaf06beaaba09455530498c6dec98bd09d8070972ae882.lean/declarations/regularofispullbacksndofregular--994cede55d5e4107e302919e.md) | 99 | `declaration-track:994cede55d5e4107e302919eaa820e12479896ec509bb624139159fb12efbd60` |
| 7 | `def` | [regularOfIsPullbackFstOfRegular](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularMono/Variantc2f0792d650a870d99aaf06beaaba09455530498c6dec98bd09d8070972ae882.lean/declarations/regularofispullbackfstofregular--2870b98aa54e9144c10a2430.md) | 129 | `declaration-track:2870b98aa54e9144c10a2430465e810c72dfde6a0858d359a3f3cae3a438359f` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularMono/Variantc2f0792d650a870d99aaf06beaaba09455530498c6dec98bd09d8070972ae882.lean/declarations/instance--8d2f8079fd38617acc79fc38.md) | 134 | `declaration-track:8d2f8079fd38617acc79fc388c219fa9f3b70c82be80188c08bb5522dbf397ea` |
| 9 | `theorem` | [isIso_of_regularMono_of_epi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularMono/Variantc2f0792d650a870d99aaf06beaaba09455530498c6dec98bd09d8070972ae882.lean/declarations/isiso-of-regularmono-of-epi--2d5e9ae5136f8b48fe5dd360.md) | 146 | `result-track:2d5e9ae5136f8b48fe5dd36079f799bfcc23fa3bc39356a37cc796a0ec14965b` |
| 10 | `class` | [IsRegularMonoCategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularMono/Variantc2f0792d650a870d99aaf06beaaba09455530498c6dec98bd09d8070972ae882.lean/declarations/isregularmonocategory--ffea6fd7214b095d6159257e.md) | 154 | `declaration-track:ffea6fd7214b095d6159257efff34495751cfed2288cfa764cd1f3ae9adbf8b5` |
| 11 | `def` | [regularMonoOfMono](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularMono/Variantc2f0792d650a870d99aaf06beaaba09455530498c6dec98bd09d8070972ae882.lean/declarations/regularmonoofmono--0e45731375d143a0152d62d7.md) | 164 | `declaration-track:0e45731375d143a0152d62d7a7f52b8d3662666e04164362e3e159459344c584` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularMono/Variantc2f0792d650a870d99aaf06beaaba09455530498c6dec98bd09d8070972ae882.lean/declarations/instance--0da29f4b767f8447b1be2f34.md) | 167 | `declaration-track:0da29f4b767f8447b1be2f3420f7e00bb50427755a8f86459c0bc6fb6683530f` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularMono/Variantc2f0792d650a870d99aaf06beaaba09455530498c6dec98bd09d8070972ae882.lean/declarations/instance--2a6550228c18c54607bef5d4.md) | 173 | `declaration-track:2a6550228c18c54607bef5d495461857293cd4e615e12c6f2f140c99673f56c6` |
| 14 | `class` | [RegularEpi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularMono/Variantc2f0792d650a870d99aaf06beaaba09455530498c6dec98bd09d8070972ae882.lean/declarations/regularepi--769411098a763477d52b59b6.md) | 180 | `declaration-track:769411098a763477d52b59b69b52286545ecdd951574bf5d0e991664f5f7a745` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularMono/Variantc2f0792d650a870d99aaf06beaaba09455530498c6dec98bd09d8070972ae882.lean/declarations/instance--fd6664597ad5dc33a03d3dca.md) | 193 | `declaration-track:fd6664597ad5dc33a03d3dcacf1f46da54ad7f8c01590787d9e3639d5a30cf32` |
| 16 | `instance` | [coequalizerRegular](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularMono/Variantc2f0792d650a870d99aaf06beaaba09455530498c6dec98bd09d8070972ae882.lean/declarations/coequalizerregular--6a6ec51c5b6eb426d26c0543.md) | 196 | `declaration-track:6a6ec51c5b6eb426d26c0543e96a8791f9e28b868403c290478b02268f4ce07f` |
| 17 | `def` | [regularEpiOfKernelPair](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularMono/Variantc2f0792d650a870d99aaf06beaaba09455530498c6dec98bd09d8070972ae882.lean/declarations/regularepiofkernelpair--8354bbd5f5a9e244a15794bd.md) | 208 | `declaration-track:8354bbd5f5a9e244a15794bdfddadc4b199f10b35f1c7ce5791b32ce1fa9e452` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularMono/Variantc2f0792d650a870d99aaf06beaaba09455530498c6dec98bd09d8070972ae882.lean/declarations/instance--8d5f10af74c4bb9b8690617d.md) | 217 | `declaration-track:8d5f10af74c4bb9b8690617d12580112b476ae8e15503546790bd984a2d4eea4` |
| 19 | `def` | [RegularEpi.desc'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularMono/Variantc2f0792d650a870d99aaf06beaaba09455530498c6dec98bd09d8070972ae882.lean/declarations/regularepi-desc--07bce8602b16e08f8623c769.md) | 225 | `declaration-track:07bce8602b16e08f8623c7696ae9f4a111a9e43b35e316e8e6154502b9f7ccad` |
| 20 | `def` | [regularOfIsPushoutSndOfRegular](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularMono/Variantc2f0792d650a870d99aaf06beaaba09455530498c6dec98bd09d8070972ae882.lean/declarations/regularofispushoutsndofregular--0934ff53db9e7b9f30d64677.md) | 235 | `declaration-track:0934ff53db9e7b9f30d6467752b2a15719b6229c918f3cb184338b393d69a006` |
| 21 | `def` | [regularOfIsPushoutFstOfRegular](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularMono/Variantc2f0792d650a870d99aaf06beaaba09455530498c6dec98bd09d8070972ae882.lean/declarations/regularofispushoutfstofregular--d19e854e326508d0063f5066.md) | 264 | `declaration-track:d19e854e326508d0063f5066043f2d49a341b0343bbe0b599f975258ac8313b7` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularMono/Variantc2f0792d650a870d99aaf06beaaba09455530498c6dec98bd09d8070972ae882.lean/declarations/instance--747738a94778f5f5ed8d074f.md) | 269 | `declaration-track:747738a94778f5f5ed8d074f16f0f6cbb58cb47ae61ec2e734083b5c216ea867` |
| 23 | `theorem` | [isIso_of_regularEpi_of_mono](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularMono/Variantc2f0792d650a870d99aaf06beaaba09455530498c6dec98bd09d8070972ae882.lean/declarations/isiso-of-regularepi-of-mono--17f899dd1d78cd3e7f25eb7a.md) | 284 | `result-track:17f899dd1d78cd3e7f25eb7a889069a81d22d84bb71afc00758c30fba1a3d183` |
| 24 | `class` | [IsRegularEpiCategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularMono/Variantc2f0792d650a870d99aaf06beaaba09455530498c6dec98bd09d8070972ae882.lean/declarations/isregularepicategory--901e7d5d981f836ab2e944b5.md) | 292 | `declaration-track:901e7d5d981f836ab2e944b590ac292e78b7caa574f6f7c9aec1480539a27871` |
| 25 | `def` | [regularEpiOfEpi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularMono/Variantc2f0792d650a870d99aaf06beaaba09455530498c6dec98bd09d8070972ae882.lean/declarations/regularepiofepi--6c194e93291bd7bcbc052f16.md) | 302 | `declaration-track:6c194e93291bd7bcbc052f16fa1682cefa00b0ab2263a213fc6d7959be68bc98` |
| 26 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularMono/Variantc2f0792d650a870d99aaf06beaaba09455530498c6dec98bd09d8070972ae882.lean/declarations/instance--1085872851834b4fbb73d8f6.md) | 305 | `declaration-track:1085872851834b4fbb73d8f6355de400379aa34ce16735eeeb5b21944a40a32b` |
| 27 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularMono/Variantc2f0792d650a870d99aaf06beaaba09455530498c6dec98bd09d8070972ae882.lean/declarations/instance--bf80b7839d2db6111e8ee391.md) | 311 | `declaration-track:bf80b7839d2db6111e8ee3911520e6061f6b70e2a288898030dcd324d8ba615a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
