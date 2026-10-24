# Verification target: GRWTSK.Algebra.Constructions.Variant87635b3d353e62e0afff934aa8bb0673c0d30f2fca2799032e24ed9eb228c6cf

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bfc70abc933b035a68c19f0c3a826921e3c3ec1f",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Constructions/Variant87635b3d353e62e0afff934aa8bb0673c0d30f2fca2799032e24ed9eb228c6cf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Constructions/Variant87635b3d353e62e0afff934aa8bb0673c0d30f2fca2799032e24ed9eb228c6cf.lean/index.md) · [Full source](../../../../mathematics/Algebra/Constructions/Variant87635b3d353e62e0afff934aa8bb0673c0d30f2fca2799032e24ed9eb228c6cf.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bfc70abc933b035a68c19f0c3a826921e3c3ec1f`.

Source path: `GRWTSK/Algebra/Constructions/Variant87635b3d353e62e0afff934aa8bb0673c0d30f2fca2799032e24ed9eb228c6cf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Constructions/Variant87635b3d353e62e0afff934aa8bb0673c0d30f2fca2799032e24ed9eb228c6cf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Shapes.Pullbacks` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.TensorProduct` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.Ring.Limits` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.Ring.Instances` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.StrictInitial` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Subring.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [pushoutCocone](../../../../mathematics/Algebra/Constructions/Variant87635b3d353e62e0afff934aa8bb0673c0d30f2fca2799032e24ed9eb228c6cf.lean/declarations/pushoutcocone--f673628a0820568becaeac16.md) | 39 | `declaration-track:f673628a0820568becaeac1668029ec353e123de28e40f70b2e857f0fe0a2ee5` |
| 2 | `theorem` | [pushoutCocone_inl](../../../../mathematics/Algebra/Constructions/Variant87635b3d353e62e0afff934aa8bb0673c0d30f2fca2799032e24ed9eb228c6cf.lean/declarations/pushoutcocone-inl--35599502215c3690ffb84213.md) | 54 | `result-track:35599502215c3690ffb842131bcbaa0b136f7e0c37fd96f455bae42f38eacff8` |
| 3 | `theorem` | [pushoutCocone_inr](../../../../mathematics/Algebra/Constructions/Variant87635b3d353e62e0afff934aa8bb0673c0d30f2fca2799032e24ed9eb228c6cf.lean/declarations/pushoutcocone-inr--2c9c6e318b97dc7b543cb62f.md) | 64 | `result-track:2c9c6e318b97dc7b543cb62f8cf317bab5544ea2aec77b9f4b53f8434ef7960e` |
| 4 | `theorem` | [pushoutCocone_pt](../../../../mathematics/Algebra/Constructions/Variant87635b3d353e62e0afff934aa8bb0673c0d30f2fca2799032e24ed9eb228c6cf.lean/declarations/pushoutcocone-pt--62982ba33c177abec217df9c.md) | 74 | `result-track:62982ba33c177abec217df9cd1a97a2cc74d50f6734577fff94518629fe048f3` |
| 5 | `def` | [pushoutCoconeIsColimit](../../../../mathematics/Algebra/Constructions/Variant87635b3d353e62e0afff934aa8bb0673c0d30f2fca2799032e24ed9eb228c6cf.lean/declarations/pushoutcoconeiscolimit--7f04d89dcdb6ea3499feeb57.md) | 84 | `declaration-track:7f04d89dcdb6ea3499feeb5740b3f94d430005c01b322593d44b198ccb17ada6` |
| 6 | `def` | [punitIsTerminal](../../../../mathematics/Algebra/Constructions/Variant87635b3d353e62e0afff934aa8bb0673c0d30f2fca2799032e24ed9eb228c6cf.lean/declarations/punitisterminal--4486bbb5ed613f7791b8496d.md) | 147 | `declaration-track:4486bbb5ed613f7791b8496d75dd41a4a31095ffa34c6b43265d31227d8d284a` |
| 7 | `instance` | [commRingCat_hasStrictTerminalObjects](../../../../mathematics/Algebra/Constructions/Variant87635b3d353e62e0afff934aa8bb0673c0d30f2fca2799032e24ed9eb228c6cf.lean/declarations/commringcat-hasstrictterminalobjects--1788006940755b95f43180f6.md) | 155 | `declaration-track:1788006940755b95f43180f611fd539706fe32d454abe3188d76bb0e1e0dd3bd` |
| 8 | `theorem` | [subsingleton_of_isTerminal](../../../../mathematics/Algebra/Constructions/Variant87635b3d353e62e0afff934aa8bb0673c0d30f2fca2799032e24ed9eb228c6cf.lean/declarations/subsingleton-of-isterminal--3a82621df7b008de14788f3e.md) | 169 | `result-track:3a82621df7b008de14788f3e2f818e69bd17e9fbd00b295a3fbd3762615706e9` |
| 9 | `def` | [zIsInitial](../../../../mathematics/Algebra/Constructions/Variant87635b3d353e62e0afff934aa8bb0673c0d30f2fca2799032e24ed9eb228c6cf.lean/declarations/zisinitial--37187bcae1f888ebcb86cdfc.md) | 176 | `declaration-track:37187bcae1f888ebcb86cdfceba357493992d84f1a1138c70145af2b7b9a7a31` |
| 10 | `def` | [prodFan](../../../../mathematics/Algebra/Constructions/Variant87635b3d353e62e0afff934aa8bb0673c0d30f2fca2799032e24ed9eb228c6cf.lean/declarations/prodfan--5fcda9ab5dbcb1f6803104bf.md) | 189 | `declaration-track:5fcda9ab5dbcb1f6803104bf88e69febc8e1d664200bbe224207c4bc7ebd842f` |
| 11 | `def` | [prodFanIsLimit](../../../../mathematics/Algebra/Constructions/Variant87635b3d353e62e0afff934aa8bb0673c0d30f2fca2799032e24ed9eb228c6cf.lean/declarations/prodfanislimit--a010e4b6efbe5b0973dfaf48.md) | 195 | `declaration-track:a010e4b6efbe5b0973dfaf48018900a35e0e4a25a7e858dbff451a2087f56644` |
| 12 | `def` | [equalizerFork](../../../../mathematics/Algebra/Constructions/Variant87635b3d353e62e0afff934aa8bb0673c0d30f2fca2799032e24ed9eb228c6cf.lean/declarations/equalizerfork--d7ba6251d6a305ce8b2fb705.md) | 221 | `declaration-track:d7ba6251d6a305ce8b2fb705987f43caba9f04c88b5fd5140e8a91566d0f5eec` |
| 13 | `def` | [equalizerForkIsLimit](../../../../mathematics/Algebra/Constructions/Variant87635b3d353e62e0afff934aa8bb0673c0d30f2fca2799032e24ed9eb228c6cf.lean/declarations/equalizerforkislimit--55875c3c4321e5415fd0c263.md) | 229 | `declaration-track:55875c3c4321e5415fd0c263b2f75346620e22397b297a67391d5dfaf9e83f5a` |
| 14 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Constructions/Variant87635b3d353e62e0afff934aa8bb0673c0d30f2fca2799032e24ed9eb228c6cf.lean/declarations/instance--9cc5484bf907c1de656ce5b5.md) | 244 | `declaration-track:9cc5484bf907c1de656ce5b5be3e1239314a8606512fd7a921db6714c897f4f1` |
| 15 | `instance` | [equalizer_ι_isLocalRingHom](../../../../mathematics/Algebra/Constructions/Variant87635b3d353e62e0afff934aa8bb0673c0d30f2fca2799032e24ed9eb228c6cf.lean/declarations/equalizer-islocalringhom--abd20e2c7286c170177e290e.md) | 254 | `declaration-track:abd20e2c7286c170177e290e3aaaf6567bd0e65e0cd43a4e842bee77ab6a5dba` |
| 16 | `instance` | [equalizer_ι_is_local_ring_hom'](../../../../mathematics/Algebra/Constructions/Variant87635b3d353e62e0afff934aa8bb0673c0d30f2fca2799032e24ed9eb228c6cf.lean/declarations/equalizer-is-local-ring-hom--05746253d8525c1d479878cf.md) | 273 | `declaration-track:05746253d8525c1d479878cfeace87613baca5520c100549ca0491d73dc671ed` |
| 17 | `def` | [pullbackCone](../../../../mathematics/Algebra/Constructions/Variant87635b3d353e62e0afff934aa8bb0673c0d30f2fca2799032e24ed9eb228c6cf.lean/declarations/pullbackcone--2347d179e3d54cffa6ce5ed6.md) | 291 | `declaration-track:2347d179e3d54cffa6ce5ed60c264b2c675533e0d71cf3e5c4068a01aca48203` |
| 18 | `def` | [pullbackConeIsLimit](../../../../mathematics/Algebra/Constructions/Variant87635b3d353e62e0afff934aa8bb0673c0d30f2fca2799032e24ed9eb228c6cf.lean/declarations/pullbackconeislimit--248b973a0d64b0a99a3e9134.md) | 306 | `declaration-track:248b973a0d64b0a99a3e9134acf69fd8d01f9234c73dda474b1b69403cc4edac` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
