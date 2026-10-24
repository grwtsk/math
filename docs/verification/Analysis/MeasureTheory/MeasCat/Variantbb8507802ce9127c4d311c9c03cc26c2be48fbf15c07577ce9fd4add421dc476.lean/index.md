# Verification target: GRWTSK.Analysis.MeasureTheory.MeasCat.Variantbb8507802ce9127c4d311c9c03cc26c2be48fbf15c07577ce9fd4add421dc476

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b06792e241c7c3b233cb0b500be128bdbf15917a",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/MeasCat/Variantbb8507802ce9127c4d311c9c03cc26c2be48fbf15c07577ce9fd4add421dc476.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/MeasCat/Variantbb8507802ce9127c4d311c9c03cc26c2be48fbf15c07577ce9fd4add421dc476.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/MeasCat/Variantbb8507802ce9127c4d311c9c03cc26c2be48fbf15c07577ce9fd4add421dc476.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b06792e241c7c3b233cb0b500be128bdbf15917a`.

Source path: `GRWTSK/Analysis/MeasureTheory/MeasCat/Variantbb8507802ce9127c4d311c9c03cc26c2be48fbf15c07577ce9fd4add421dc476.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/MeasCat/Variantbb8507802ce9127c4d311c9c03cc26c2be48fbf15c07577ce9fd4add421dc476.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Measure.GiryMonad` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Monad.Algebra` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Category.TopCat.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [MeasCat](../../../../../mathematics/Analysis/MeasureTheory/MeasCat/Variantbb8507802ce9127c4d311c9c03cc26c2be48fbf15c07577ce9fd4add421dc476.lean/declarations/meascat--9f0c96acc996977b6d978be8.md) | 47 | `declaration-track:9f0c96acc996977b6d978be85b8687de09d229b223a41f5c84d8e79a03ac30c7` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/MeasCat/Variantbb8507802ce9127c4d311c9c03cc26c2be48fbf15c07577ce9fd4add421dc476.lean/declarations/instance--b5ab49749a2bcbcb32f0cb52.md) | 56 | `declaration-track:b5ab49749a2bcbcb32f0cb52dd69b602fabd920d9a8887841f9ace3b2d126a1f` |
| 3 | `abbrev` | [of](../../../../../mathematics/Analysis/MeasureTheory/MeasCat/Variantbb8507802ce9127c4d311c9c03cc26c2be48fbf15c07577ce9fd4add421dc476.lean/declarations/of--322fd79a0346f49c2bc0856e.md) | 60 | `declaration-track:322fd79a0346f49c2bc0856e823e69c0b0d9de67b9b6aebca9e6810655f0c184` |
| 4 | `theorem` | [coe_of](../../../../../mathematics/Analysis/MeasureTheory/MeasCat/Variantbb8507802ce9127c4d311c9c03cc26c2be48fbf15c07577ce9fd4add421dc476.lean/declarations/coe-of--aca0528fbbca82cee61b497d.md) | 63 | `result-track:aca0528fbbca82cee61b497daa046236a2d4db9f6af44172605d04558aca7d92` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/MeasCat/Variantbb8507802ce9127c4d311c9c03cc26c2be48fbf15c07577ce9fd4add421dc476.lean/declarations/instance--5d356deb5a50215f722cf922.md) | 66 | `declaration-track:5d356deb5a50215f722cf922db5ba7739a8dbf8eb3dc849b76f9e69193ed6571` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/MeasCat/Variantbb8507802ce9127c4d311c9c03cc26c2be48fbf15c07577ce9fd4add421dc476.lean/declarations/instance--4ac4d53b6010f32709ab44a0.md) | 71 | `declaration-track:4ac4d53b6010f32709ab44a06e150cfd7477e006e7b335fcd603ddbe6eb6ee3f` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/MeasCat/Variantbb8507802ce9127c4d311c9c03cc26c2be48fbf15c07577ce9fd4add421dc476.lean/declarations/instance--9536bf039190865ba7fba53f.md) | 75 | `declaration-track:9536bf039190865ba7fba53f8136cb531689b31348976faba426895267499552` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/MeasCat/Variantbb8507802ce9127c4d311c9c03cc26c2be48fbf15c07577ce9fd4add421dc476.lean/declarations/instance--9945fc08d63a7ab6e945112c.md) | 79 | `declaration-track:9945fc08d63a7ab6e945112c1cdbb20e2ced573b469000474b7ce785411f89b9` |
| 9 | `def` | [Measure](../../../../../mathematics/Analysis/MeasureTheory/MeasCat/Variantbb8507802ce9127c4d311c9c03cc26c2be48fbf15c07577ce9fd4add421dc476.lean/declarations/measure--84eeb9b67c631f1f117936c9.md) | 91 | `declaration-track:84eeb9b67c631f1f117936c9768f8f8ae034306555d9cce1160700fd9673636b` |
| 10 | `def` | [Giry](../../../../../mathematics/Analysis/MeasureTheory/MeasCat/Variantbb8507802ce9127c4d311c9c03cc26c2be48fbf15c07577ce9fd4add421dc476.lean/declarations/giry--be6534939849e70ec6e55b46.md) | 98 | `declaration-track:be6534939849e70ec6e55b4643223aa30dc4fac0c49dd9bf1828dfe1670b2d0d` |
| 11 | `def` | [Integral](../../../../../mathematics/Analysis/MeasureTheory/MeasCat/Variantbb8507802ce9127c4d311c9c03cc26c2be48fbf15c07577ce9fd4add421dc476.lean/declarations/integral--b0a201ce445da24952d65bc6.md) | 112 | `declaration-track:b0a201ce445da24952d65bc6a3031d8055b4e708f87e2ed98911932353e20430` |
| 12 | `instance` | [TopCat.hasForgetToMeasCat](../../../../../mathematics/Analysis/MeasureTheory/MeasCat/Variantbb8507802ce9127c4d311c9c03cc26c2be48fbf15c07577ce9fd4add421dc476.lean/declarations/topcat-hasforgettomeascat--faa73196d6c09a61619d754d.md) | 123 | `declaration-track:faa73196d6c09a61619d754dda091c84535c9e61bf00199aa57b21a94d3ec514` |
| 13 | `abbrev` | [Borel](../../../../../mathematics/Analysis/MeasureTheory/MeasCat/Variantbb8507802ce9127c4d311c9c03cc26c2be48fbf15c07577ce9fd4add421dc476.lean/declarations/borel--a90bf643abf93d26bbe9cb3a.md) | 128 | `declaration-track:a90bf643abf93d26bbe9cb3a461959f19e7878a36e975fd452397c64a04a1b33` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
