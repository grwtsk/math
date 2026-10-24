# Verification target: GRWTSK.Geometry.AlgebraicGeometry.FinitePresentation.Variant1e042bba64c26a5179d8ba7470fc156fd5b58e841128378f0d0bf65b2f6bd181

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9a53a8ad788c8fec3aacc9c8a0d8a8dae353cf0a",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/AlgebraicGeometry/FinitePresentation/Variant1e042bba64c26a5179d8ba7470fc156fd5b58e841128378f0d0bf65b2f6bd181.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/AlgebraicGeometry/FinitePresentation/Variant1e042bba64c26a5179d8ba7470fc156fd5b58e841128378f0d0bf65b2f6bd181.lean/index.md) · [Full source](../../../../../mathematics/Geometry/AlgebraicGeometry/FinitePresentation/Variant1e042bba64c26a5179d8ba7470fc156fd5b58e841128378f0d0bf65b2f6bd181.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9a53a8ad788c8fec3aacc9c8a0d8a8dae353cf0a`.

Source path: `GRWTSK/Geometry/AlgebraicGeometry/FinitePresentation/Variant1e042bba64c26a5179d8ba7470fc156fd5b58e841128378f0d0bf65b2f6bd181.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/AlgebraicGeometry/FinitePresentation/Variant1e042bba64c26a5179d8ba7470fc156fd5b58e841128378f0d0bf65b2f6bd181.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.AlgebraicGeometry.Morphisms.QuasiSeparated` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.AlgebraicGeometry.Morphisms.RingHomProperties` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.AlgebraicGeometry.Morphisms.FiniteType` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.AlgebraicGeometry.Properties` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.RingHom.FinitePresentation` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Spectrum.Prime.Chevalley` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [LocallyOfFinitePresentation](../../../../../mathematics/Geometry/AlgebraicGeometry/FinitePresentation/Variant1e042bba64c26a5179d8ba7470fc156fd5b58e841128378f0d0bf65b2f6bd181.lean/declarations/locallyoffinitepresentation--1bb20988da3df44e144d12d8.md) | 42 | `declaration-track:1bb20988da3df44e144d12d8934f7d048ff9978a31e0a64fbe1bd0aa1a77c45f` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/FinitePresentation/Variant1e042bba64c26a5179d8ba7470fc156fd5b58e841128378f0d0bf65b2f6bd181.lean/declarations/instance--2251268ee0871c705484ece5.md) | 47 | `declaration-track:2251268ee0871c705484ece58a3b53c6ee64ab70113d2ce91a314a4a08d03fb4` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/FinitePresentation/Variant1e042bba64c26a5179d8ba7470fc156fd5b58e841128378f0d0bf65b2f6bd181.lean/declarations/instance--23d769d73ed1ac0ced14cbf3.md) | 53 | `declaration-track:23d769d73ed1ac0ced14cbf3f6ea4927870c25e895b9cdb95d13ef85ec578576` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/FinitePresentation/Variant1e042bba64c26a5179d8ba7470fc156fd5b58e841128378f0d0bf65b2f6bd181.lean/declarations/instance--522b0ed594a3ec59a837820e.md) | 58 | `declaration-track:522b0ed594a3ec59a837820e3101ef921f2581440589f10e09c8eb71ebb3f8e7` |
| 5 | `instance` | [locallyOfFinitePresentation_comp](../../../../../mathematics/Geometry/AlgebraicGeometry/FinitePresentation/Variant1e042bba64c26a5179d8ba7470fc156fd5b58e841128378f0d0bf65b2f6bd181.lean/declarations/locallyoffinitepresentation-comp--5ffe8c0b8f47954b13dd33cc.md) | 61 | `declaration-track:5ffe8c0b8f47954b13dd33cc0b42e1e061a6326a83f106d80a58cf997f81920b` |
| 6 | `instance` | [locallyOfFinitePresentation_isStableUnderBaseChange](../../../../../mathematics/Geometry/AlgebraicGeometry/FinitePresentation/Variant1e042bba64c26a5179d8ba7470fc156fd5b58e841128378f0d0bf65b2f6bd181.lean/declarations/locallyoffinitepresentation-isstableunderbasechange--5fbb5d89f1132bed1b825128.md) | 66 | `declaration-track:5fbb5d89f1132bed1b825128b219a199eac72046958061d7f3455a63ed11fedf` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/FinitePresentation/Variant1e042bba64c26a5179d8ba7470fc156fd5b58e841128378f0d0bf65b2f6bd181.lean/declarations/instance--b00603c51b7ab05fcc5a371c.md) | 70 | `declaration-track:b00603c51b7ab05fcc5a371cf37db617321bb7ba5b7c83752e629b89f8ae82cc` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/FinitePresentation/Variant1e042bba64c26a5179d8ba7470fc156fd5b58e841128378f0d0bf65b2f6bd181.lean/declarations/instance--d259fb19cd414036385b0cd8.md) | 74 | `declaration-track:d259fb19cd414036385b0cd84eb5a1ea104e044a663947e1f142cbd89a3079ed` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/FinitePresentation/Variant1e042bba64c26a5179d8ba7470fc156fd5b58e841128378f0d0bf65b2f6bd181.lean/declarations/instance--33d2290ade53a9ebd3fb28fd.md) | 78 | `declaration-track:33d2290ade53a9ebd3fb28fd830aa9e3d95b07ed76ca1e0597016949f29601b5` |
| 10 | `lemma` | [Scheme.Hom.isLocallyConstructible_image](../../../../../mathematics/Geometry/AlgebraicGeometry/FinitePresentation/Variant1e042bba64c26a5179d8ba7470fc156fd5b58e841128378f0d0bf65b2f6bd181.lean/declarations/scheme-hom-islocallyconstructible-image--c83b7c2869aef316ccd8e1f0.md) | 89 | `result-track:c83b7c2869aef316ccd8e1f02059c3ecd2856607c089e48f816ddfc367d0c2c5` |
| 11 | `lemma` | [Scheme.Hom.isConstructible_image](../../../../../mathematics/Geometry/AlgebraicGeometry/FinitePresentation/Variant1e042bba64c26a5179d8ba7470fc156fd5b58e841128378f0d0bf65b2f6bd181.lean/declarations/scheme-hom-isconstructible-image--378c97381565cb4610d3a021.md) | 134 | `result-track:378c97381565cb4610d3a02146c5492c01a2aa4d339fdcbc8a158368ae8e3347` |
| 12 | `lemma` | [Scheme.Hom.isConstructible_preimage](../../../../../mathematics/Geometry/AlgebraicGeometry/FinitePresentation/Variant1e042bba64c26a5179d8ba7470fc156fd5b58e841128378f0d0bf65b2f6bd181.lean/declarations/scheme-hom-isconstructible-preimage--5ce219c59bd797596e3d89ad.md) | 141 | `result-track:5ce219c59bd797596e3d89ad98664cd7065c43ec7ed8bd762d64e04388aff0f5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
