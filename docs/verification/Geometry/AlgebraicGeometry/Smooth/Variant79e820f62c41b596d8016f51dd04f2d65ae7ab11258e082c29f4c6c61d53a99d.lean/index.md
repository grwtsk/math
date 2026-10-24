# Verification target: GRWTSK.Geometry.AlgebraicGeometry.Smooth.Variant79e820f62c41b596d8016f51dd04f2d65ae7ab11258e082c29f4c6c61d53a99d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "79bdc1bee06bd6d21f8f39fb43abdabfba1a60b8",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/AlgebraicGeometry/Smooth/Variant79e820f62c41b596d8016f51dd04f2d65ae7ab11258e082c29f4c6c61d53a99d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/AlgebraicGeometry/Smooth/Variant79e820f62c41b596d8016f51dd04f2d65ae7ab11258e082c29f4c6c61d53a99d.lean/index.md) · [Full source](../../../../../mathematics/Geometry/AlgebraicGeometry/Smooth/Variant79e820f62c41b596d8016f51dd04f2d65ae7ab11258e082c29f4c6c61d53a99d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `79bdc1bee06bd6d21f8f39fb43abdabfba1a60b8`.

Source path: `GRWTSK/Geometry/AlgebraicGeometry/Smooth/Variant79e820f62c41b596d8016f51dd04f2d65ae7ab11258e082c29f4c6c61d53a99d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/AlgebraicGeometry/Smooth/Variant79e820f62c41b596d8016f51dd04f2d65ae7ab11258e082c29f4c6c61d53a99d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.AlgebraicGeometry.Morphisms.RingHomProperties` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.AlgebraicGeometry.Morphisms.FinitePresentation` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.RingHom.StandardSmooth` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IsSmooth](../../../../../mathematics/Geometry/AlgebraicGeometry/Smooth/Variant79e820f62c41b596d8016f51dd04f2d65ae7ab11258e082c29f4c6c61d53a99d.lean/declarations/issmooth--0f69329933a920d6a2caa105.md) | 59 | `declaration-track:0f69329933a920d6a2caa10580f1f0ea4569f6216244153b5690d4d60fbc29cd` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Smooth/Variant79e820f62c41b596d8016f51dd04f2d65ae7ab11258e082c29f4c6c61d53a99d.lean/declarations/instance--82e6fe34185da2ab56436820.md) | 65 | `declaration-track:82e6fe34185da2ab56436820651b7faacf9cf2e570044fcb8d09f80e4a0997a3` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Smooth/Variant79e820f62c41b596d8016f51dd04f2d65ae7ab11258e082c29f4c6c61d53a99d.lean/declarations/instance--77c67932517fef7542a3bc46.md) | 73 | `declaration-track:77c67932517fef7542a3bc46000434d4c5791906f1b8716c3a51b15682864e29` |
| 4 | `instance` | [isSmooth_comp](../../../../../mathematics/Geometry/AlgebraicGeometry/Smooth/Variant79e820f62c41b596d8016f51dd04f2d65ae7ab11258e082c29f4c6c61d53a99d.lean/declarations/issmooth-comp--60bf37eaaa06a3026e77a97c.md) | 79 | `declaration-track:60bf37eaaa06a3026e77a97c1bd93c180b5423c6abae519726281b1c747d6958` |
| 5 | `lemma` | [isSmooth_isStableUnderBaseChange](../../../../../mathematics/Geometry/AlgebraicGeometry/Smooth/Variant79e820f62c41b596d8016f51dd04f2d65ae7ab11258e082c29f4c6c61d53a99d.lean/declarations/issmooth-isstableunderbasechange--677133d88351ab840b2b81ee.md) | 84 | `result-track:677133d88351ab840b2b81eebfb9795e98dbadf7ef4a3c5242d4f70f0165ceef` |
| 6 | `class` | [IsSmoothOfRelativeDimension](../../../../../mathematics/Geometry/AlgebraicGeometry/Smooth/Variant79e820f62c41b596d8016f51dd04f2d65ae7ab11258e082c29f4c6c61d53a99d.lean/declarations/issmoothofrelativedimension--647119c61885f0e289613614.md) | 95 | `declaration-track:647119c61885f0e28961361470498334121ec51acdcaa933d2e397882226f44d` |
| 7 | `lemma` | [IsSmoothOfRelativeDimension.isSmooth](../../../../../mathematics/Geometry/AlgebraicGeometry/Smooth/Variant79e820f62c41b596d8016f51dd04f2d65ae7ab11258e082c29f4c6c61d53a99d.lean/declarations/issmoothofrelativedimension-issmooth--f4a722a4113b5f9db409343a.md) | 101 | `result-track:f4a722a4113b5f9db409343aaeee5fcbf813bf6929370d94141b142d3aa66f46` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Smooth/Variant79e820f62c41b596d8016f51dd04f2d65ae7ab11258e082c29f4c6c61d53a99d.lean/declarations/instance--d51e1ac18381c3acf02572a9.md) | 108 | `declaration-track:d51e1ac18381c3acf02572a9b82cc50eacb69a01d1158a10054bc785c2a2ca5b` |
| 9 | `lemma` | [isSmoothOfRelativeDimension_isStableUnderBaseChange](../../../../../mathematics/Geometry/AlgebraicGeometry/Smooth/Variant79e820f62c41b596d8016f51dd04f2d65ae7ab11258e082c29f4c6c61d53a99d.lean/declarations/issmoothofrelativedimension-isstableunderbasechange--126569d67e10df94d343c2cb.md) | 117 | `result-track:126569d67e10df94d343c2cb988780b2073ccf5a929581fecf48c40731c49b53` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Smooth/Variant79e820f62c41b596d8016f51dd04f2d65ae7ab11258e082c29f4c6c61d53a99d.lean/declarations/instance--a278c6e43f9ceb0f785127b4.md) | 124 | `declaration-track:a278c6e43f9ceb0f785127b41458eb9762bf9c24f07c3e3b1d1b9ab42f5912ee` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Smooth/Variant79e820f62c41b596d8016f51dd04f2d65ae7ab11258e082c29f4c6c61d53a99d.lean/declarations/instance--2c5d9436e3a4b71153d3309e.md) | 130 | `declaration-track:2c5d9436e3a4b71153d3309ec1d5433f3e58833140b777dfcf137332fe0cf1fd` |
| 12 | `instance` | [isSmoothOfRelativeDimension_comp](../../../../../mathematics/Geometry/AlgebraicGeometry/Smooth/Variant79e820f62c41b596d8016f51dd04f2d65ae7ab11258e082c29f4c6c61d53a99d.lean/declarations/issmoothofrelativedimension-comp--05ee3179d2b5cfb5a7dda87c.md) | 135 | `declaration-track:05ee3179d2b5cfb5a7dda87cd78437bc54c2fc880cd461c642a8b0d83ba73bf0` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Smooth/Variant79e820f62c41b596d8016f51dd04f2d65ae7ab11258e082c29f4c6c61d53a99d.lean/declarations/instance--fff1716761b472649cc4fbd5.md) | 158 | `declaration-track:fff1716761b472649cc4fbd55127911599853ddb5f6095ad59d0a1c949671f30` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Smooth/Variant79e820f62c41b596d8016f51dd04f2d65ae7ab11258e082c29f4c6c61d53a99d.lean/declarations/instance--b1d1bb3b73278de29866af5b.md) | 164 | `declaration-track:b1d1bb3b73278de29866af5b0ce6819b178e431cda05e812e87dda135651f7c6` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Smooth/Variant79e820f62c41b596d8016f51dd04f2d65ae7ab11258e082c29f4c6c61d53a99d.lean/declarations/instance--811d727400c10a2ca22d2832.md) | 169 | `declaration-track:811d727400c10a2ca22d2832eaf42f43c046fab49990e878d22642580b66e05d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
