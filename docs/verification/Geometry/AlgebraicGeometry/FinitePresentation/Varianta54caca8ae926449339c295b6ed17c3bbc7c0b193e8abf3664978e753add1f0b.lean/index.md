# Verification target: GRWTSK.Geometry.AlgebraicGeometry.FinitePresentation.Varianta54caca8ae926449339c295b6ed17c3bbc7c0b193e8abf3664978e753add1f0b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "25cf1cb9d06becc9cfb19b18775a001734602a70",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/AlgebraicGeometry/FinitePresentation/Varianta54caca8ae926449339c295b6ed17c3bbc7c0b193e8abf3664978e753add1f0b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/AlgebraicGeometry/FinitePresentation/Varianta54caca8ae926449339c295b6ed17c3bbc7c0b193e8abf3664978e753add1f0b.lean/index.md) · [Full source](../../../../../mathematics/Geometry/AlgebraicGeometry/FinitePresentation/Varianta54caca8ae926449339c295b6ed17c3bbc7c0b193e8abf3664978e753add1f0b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `25cf1cb9d06becc9cfb19b18775a001734602a70`.

Source path: `GRWTSK/Geometry/AlgebraicGeometry/FinitePresentation/Varianta54caca8ae926449339c295b6ed17c3bbc7c0b193e8abf3664978e753add1f0b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/AlgebraicGeometry/FinitePresentation/Varianta54caca8ae926449339c295b6ed17c3bbc7c0b193e8abf3664978e753add1f0b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.AlgebraicGeometry.Morphisms.QuasiSeparated` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.AlgebraicGeometry.Morphisms.RingHomProperties` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.AlgebraicGeometry.Morphisms.FiniteType` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.AlgebraicGeometry.Properties` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.RingHom.FinitePresentation` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Spectrum.Prime.Chevalley` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [LocallyOfFinitePresentation](../../../../../mathematics/Geometry/AlgebraicGeometry/FinitePresentation/Varianta54caca8ae926449339c295b6ed17c3bbc7c0b193e8abf3664978e753add1f0b.lean/declarations/locallyoffinitepresentation--a2cfee1a3e59b33fa4b19676.md) | 50 | `declaration-track:a2cfee1a3e59b33fa4b19676b238324357579b344b53feab876a64766a6b8ca1` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/FinitePresentation/Varianta54caca8ae926449339c295b6ed17c3bbc7c0b193e8abf3664978e753add1f0b.lean/declarations/instance--60496ff1e0a65a89eccbeabe.md) | 55 | `declaration-track:60496ff1e0a65a89eccbeabefffe983d05af495cc172664257e8995cc01474de` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/FinitePresentation/Varianta54caca8ae926449339c295b6ed17c3bbc7c0b193e8abf3664978e753add1f0b.lean/declarations/instance--8ed43b87617f9c3b40b29534.md) | 61 | `declaration-track:8ed43b87617f9c3b40b29534ecd1f7f5c4d2b56f8e237ca3a923b59a0ca63687` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/FinitePresentation/Varianta54caca8ae926449339c295b6ed17c3bbc7c0b193e8abf3664978e753add1f0b.lean/declarations/instance--c02f78501608162439bffef0.md) | 66 | `declaration-track:c02f78501608162439bffef0487f33b09984324cbe9bae80b0326634487c916e` |
| 5 | `instance` | [locallyOfFinitePresentation_comp](../../../../../mathematics/Geometry/AlgebraicGeometry/FinitePresentation/Varianta54caca8ae926449339c295b6ed17c3bbc7c0b193e8abf3664978e753add1f0b.lean/declarations/locallyoffinitepresentation-comp--5147a8c810506f71c52e92f3.md) | 69 | `declaration-track:5147a8c810506f71c52e92f3b2aaade650b0428ebd4f7e21c91ab7712c62972b` |
| 6 | `instance` | [locallyOfFinitePresentation_isStableUnderBaseChange](../../../../../mathematics/Geometry/AlgebraicGeometry/FinitePresentation/Varianta54caca8ae926449339c295b6ed17c3bbc7c0b193e8abf3664978e753add1f0b.lean/declarations/locallyoffinitepresentation-isstableunderbasechange--6dc3ee2bdfe0069157669751.md) | 74 | `declaration-track:6dc3ee2bdfe00691576697513fe15e450b83b216853d38833532a6af6a8839d8` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/FinitePresentation/Varianta54caca8ae926449339c295b6ed17c3bbc7c0b193e8abf3664978e753add1f0b.lean/declarations/instance--67d488720b6f1b807a29aecd.md) | 78 | `declaration-track:67d488720b6f1b807a29aecdca121c4cd1eb6169d4ca9e94c856439250e8314c` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/FinitePresentation/Varianta54caca8ae926449339c295b6ed17c3bbc7c0b193e8abf3664978e753add1f0b.lean/declarations/instance--755adad9c2e4a9e93d827ef4.md) | 82 | `declaration-track:755adad9c2e4a9e93d827ef40d006a35cc6d4ce14010a7b20c081b150c57bd35` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/FinitePresentation/Varianta54caca8ae926449339c295b6ed17c3bbc7c0b193e8abf3664978e753add1f0b.lean/declarations/instance--063159b63b30028c9b1c83a2.md) | 86 | `declaration-track:063159b63b30028c9b1c83a27a46b06ee3ad7831917ccd2e5fed23cedcc349da` |
| 10 | `lemma` | [Scheme.Hom.isLocallyConstructible_image](../../../../../mathematics/Geometry/AlgebraicGeometry/FinitePresentation/Varianta54caca8ae926449339c295b6ed17c3bbc7c0b193e8abf3664978e753add1f0b.lean/declarations/scheme-hom-islocallyconstructible-image--9cffadca77281cc77e90fa5c.md) | 97 | `result-track:9cffadca77281cc77e90fa5c7747657a1e15a55ef8bea6d6a664522ac6bec922` |
| 11 | `lemma` | [Scheme.Hom.isConstructible_image](../../../../../mathematics/Geometry/AlgebraicGeometry/FinitePresentation/Varianta54caca8ae926449339c295b6ed17c3bbc7c0b193e8abf3664978e753add1f0b.lean/declarations/scheme-hom-isconstructible-image--523d3b5ff804ca71a07b53f1.md) | 142 | `result-track:523d3b5ff804ca71a07b53f12d06707fffd878bd68ff46f9121cda5e87610d2e` |
| 12 | `lemma` | [Scheme.Hom.isConstructible_preimage](../../../../../mathematics/Geometry/AlgebraicGeometry/FinitePresentation/Varianta54caca8ae926449339c295b6ed17c3bbc7c0b193e8abf3664978e753add1f0b.lean/declarations/scheme-hom-isconstructible-preimage--44419a77bb7bb4426dd71f2f.md) | 149 | `result-track:44419a77bb7bb4426dd71f2fe9d0344c6c37d03b174af09e3e326196ce72d801` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
