# Verification target: GRWTSK.Geometry.AlgebraicGeometry.Flat.Variant861c5f85e8764056cec76943e12ec31e1b3f2a9a4f85d21d03cf12834f92b0ba

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "19107953dbbc9a01f97436c58454ea4ee2f3053f",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/AlgebraicGeometry/Flat/Variant861c5f85e8764056cec76943e12ec31e1b3f2a9a4f85d21d03cf12834f92b0ba.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/AlgebraicGeometry/Flat/Variant861c5f85e8764056cec76943e12ec31e1b3f2a9a4f85d21d03cf12834f92b0ba.lean/index.md) · [Full source](../../../../../mathematics/Geometry/AlgebraicGeometry/Flat/Variant861c5f85e8764056cec76943e12ec31e1b3f2a9a4f85d21d03cf12834f92b0ba.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `19107953dbbc9a01f97436c58454ea4ee2f3053f`.

Source path: `GRWTSK/Geometry/AlgebraicGeometry/Flat/Variant861c5f85e8764056cec76943e12ec31e1b3f2a9a4f85d21d03cf12834f92b0ba.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/AlgebraicGeometry/Flat/Variant861c5f85e8764056cec76943e12ec31e1b3f2a9a4f85d21d03cf12834f92b0ba.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.AlgebraicGeometry.Morphisms.RingHomProperties` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.AlgebraicGeometry.Morphisms.QuasiCompact` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.AlgebraicGeometry.Morphisms.Affine` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.AlgebraicGeometry.PullbackCarrier` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.RingHom.Flat` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [Flat](../../../../../mathematics/Geometry/AlgebraicGeometry/Flat/Variant861c5f85e8764056cec76943e12ec31e1b3f2a9a4f85d21d03cf12834f92b0ba.lean/declarations/flat--8f75fbd91ea06010ee1319d2.md) | 46 | `declaration-track:8f75fbd91ea06010ee1319d297a541043a82e412c719fa86cdb6ca500bd53bf7` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Flat/Variant861c5f85e8764056cec76943e12ec31e1b3f2a9a4f85d21d03cf12834f92b0ba.lean/declarations/instance--1e7c1279b218c1ce3b811f95.md) | 52 | `declaration-track:1e7c1279b218c1ce3b811f95ed801e5dedf35a168e1280f92f538807f2ae7217` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Flat/Variant861c5f85e8764056cec76943e12ec31e1b3f2a9a4f85d21d03cf12834f92b0ba.lean/declarations/instance--bea5f6bb86cac19873006fc1.md) | 58 | `declaration-track:bea5f6bb86cac19873006fc150befddefd46c7af733f03060fd7931dc4f947ff` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Flat/Variant861c5f85e8764056cec76943e12ec31e1b3f2a9a4f85d21d03cf12834f92b0ba.lean/declarations/instance--811717bfb43ae6801f30cdd5.md) | 62 | `declaration-track:811717bfb43ae6801f30cdd5011158bac21b305dd22fbed4837b84747e12d7f3` |
| 5 | `instance` | [comp](../../../../../mathematics/Geometry/AlgebraicGeometry/Flat/Variant861c5f85e8764056cec76943e12ec31e1b3f2a9a4f85d21d03cf12834f92b0ba.lean/declarations/comp--40bf451bd21485f6cd82c618.md) | 65 | `declaration-track:40bf451bd21485f6cd82c6186d44d3da42161cff09345e10a0d770859102c976` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Flat/Variant861c5f85e8764056cec76943e12ec31e1b3f2a9a4f85d21d03cf12834f92b0ba.lean/declarations/instance--be055b3a7e3bdb25fe6f8d9e.md) | 69 | `declaration-track:be055b3a7e3bdb25fe6f8d9eb208eddad238779f32d563cde1756cc0ba4ad3b6` |
| 7 | `instance` | [isStableUnderBaseChange](../../../../../mathematics/Geometry/AlgebraicGeometry/Flat/Variant861c5f85e8764056cec76943e12ec31e1b3f2a9a4f85d21d03cf12834f92b0ba.lean/declarations/isstableunderbasechange--279f15da183cbd0d0ee65652.md) | 72 | `declaration-track:279f15da183cbd0d0ee656522c9de0b2215ac19b021857d6f89570c3f54335d9` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Flat/Variant861c5f85e8764056cec76943e12ec31e1b3f2a9a4f85d21d03cf12834f92b0ba.lean/declarations/instance--004aafc76e72294dc6fb5984.md) | 75 | `declaration-track:004aafc76e72294dc6fb59848ec738f7128addb675f2afadfa426e16e4a3955e` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Flat/Variant861c5f85e8764056cec76943e12ec31e1b3f2a9a4f85d21d03cf12834f92b0ba.lean/declarations/instance--732938e6434f9af33dd316b2.md) | 78 | `declaration-track:732938e6434f9af33dd316b2ef60a3219268cce6e60ddf6b7f1693f17360d160` |
| 10 | `lemma` | [of_stalkMap](../../../../../mathematics/Geometry/AlgebraicGeometry/Flat/Variant861c5f85e8764056cec76943e12ec31e1b3f2a9a4f85d21d03cf12834f92b0ba.lean/declarations/of-stalkmap--757e4e181541b5875ea3c43c.md) | 81 | `result-track:757e4e181541b5875ea3c43c0e9a2f27adcecc0bc9e912b0029f609e7111b7a2` |
| 11 | `lemma` | [stalkMap](../../../../../mathematics/Geometry/AlgebraicGeometry/Flat/Variant861c5f85e8764056cec76943e12ec31e1b3f2a9a4f85d21d03cf12834f92b0ba.lean/declarations/stalkmap--61497fd573cbfbed9c52f216.md) | 84 | `result-track:61497fd573cbfbed9c52f21656efe62da22946e3ead475be49b661f8849d80f1` |
| 12 | `lemma` | [iff_flat_stalkMap](../../../../../mathematics/Geometry/AlgebraicGeometry/Flat/Variant861c5f85e8764056cec76943e12ec31e1b3f2a9a4f85d21d03cf12834f92b0ba.lean/declarations/iff-flat-stalkmap--33ff5c1a30177d4158627f20.md) | 88 | `result-track:33ff5c1a30177d4158627f20c3636d71343579f3f0716318dfd6f4032c2f9949` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Flat/Variant861c5f85e8764056cec76943e12ec31e1b3f2a9a4f85d21d03cf12834f92b0ba.lean/declarations/instance--a4b5ee92967526d656da65dd.md) | 91 | `declaration-track:a4b5ee92967526d656da65ddd53b9b010c5d5f5489ee53784cc1ef588eec73ca` |
| 14 | `lemma` | [isQuotientMap_of_surjective](../../../../../mathematics/Geometry/AlgebraicGeometry/Flat/Variant861c5f85e8764056cec76943e12ec31e1b3f2a9a4f85d21d03cf12834f92b0ba.lean/declarations/isquotientmap-of-surjective--84b7c60ae7462d3751d77dd0.md) | 97 | `result-track:84b7c60ae7462d3751d77dd08445a1b006176ea5a196d797e5bf6ab8025ff8f2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
