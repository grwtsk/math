# Verification target: GRWTSK.Geometry.AlgebraicGeometry.FiniteType.Variantab23c24822b38faad6b8cedf1b17e518a65bad381b19bb449037d185c75133f3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d01a1be9cd154a06497e4b8fed7c29df5f66f181",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/AlgebraicGeometry/FiniteType/Variantab23c24822b38faad6b8cedf1b17e518a65bad381b19bb449037d185c75133f3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/AlgebraicGeometry/FiniteType/Variantab23c24822b38faad6b8cedf1b17e518a65bad381b19bb449037d185c75133f3.lean/index.md) · [Full source](../../../../../mathematics/Geometry/AlgebraicGeometry/FiniteType/Variantab23c24822b38faad6b8cedf1b17e518a65bad381b19bb449037d185c75133f3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d01a1be9cd154a06497e4b8fed7c29df5f66f181`.

Source path: `GRWTSK/Geometry/AlgebraicGeometry/FiniteType/Variantab23c24822b38faad6b8cedf1b17e518a65bad381b19bb449037d185c75133f3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/AlgebraicGeometry/FiniteType/Variantab23c24822b38faad6b8cedf1b17e518a65bad381b19bb449037d185c75133f3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.AlgebraicGeometry.Morphisms.RingHomProperties` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.RingHom.FiniteType` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Spectrum.Prime.Jacobson` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [LocallyOfFiniteType](../../../../../mathematics/Geometry/AlgebraicGeometry/FiniteType/Variantab23c24822b38faad6b8cedf1b17e518a65bad381b19bb449037d185c75133f3.lean/declarations/locallyoffinitetype--6fad58f4f27c25f996629f0a.md) | 45 | `declaration-track:6fad58f4f27c25f996629f0a14cd03afbc34173984effdc810484039b28aa69c` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/FiniteType/Variantab23c24822b38faad6b8cedf1b17e518a65bad381b19bb449037d185c75133f3.lean/declarations/instance--ea1f363aeb052225c74f3690.md) | 49 | `declaration-track:ea1f363aeb052225c74f3690fbb5f2b55beb5e08d5ee6e20b0130a651266c539` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/FiniteType/Variantab23c24822b38faad6b8cedf1b17e518a65bad381b19bb449037d185c75133f3.lean/declarations/instance--0c725884cf9842f19745aeaf.md) | 55 | `declaration-track:0c725884cf9842f19745aeafe886a7e83b6b102169c243232395567e22bf784a` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/FiniteType/Variantab23c24822b38faad6b8cedf1b17e518a65bad381b19bb449037d185c75133f3.lean/declarations/instance--dc3d507d8c3f28db4a217d75.md) | 60 | `declaration-track:dc3d507d8c3f28db4a217d75920b99a7f401fc07b2ba2d7b37d169db6590ebe9` |
| 5 | `instance` | [locallyOfFiniteType_comp](../../../../../mathematics/Geometry/AlgebraicGeometry/FiniteType/Variantab23c24822b38faad6b8cedf1b17e518a65bad381b19bb449037d185c75133f3.lean/declarations/locallyoffinitetype-comp--edf7c4b27e00bfd88c6a68f4.md) | 63 | `declaration-track:edf7c4b27e00bfd88c6a68f409711c5be2717a3d4a62147b699e47d1d647d17c` |
| 6 | `theorem` | [locallyOfFiniteType_of_comp](../../../../../mathematics/Geometry/AlgebraicGeometry/FiniteType/Variantab23c24822b38faad6b8cedf1b17e518a65bad381b19bb449037d185c75133f3.lean/declarations/locallyoffinitetype-of-comp--d4ca142a595d6c459c995c97.md) | 67 | `result-track:d4ca142a595d6c459c995c9733d75b2d99328617aa9be0430e608a6b3485733c` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/FiniteType/Variantab23c24822b38faad6b8cedf1b17e518a65bad381b19bb449037d185c75133f3.lean/declarations/instance--1d029b6d9b3982fb2685c151.md) | 71 | `declaration-track:1d029b6d9b3982fb2685c151484234c85295622caf3358fa00067055d2929b92` |
| 8 | `instance` | [locallyOfFiniteType_isStableUnderBaseChange](../../../../../mathematics/Geometry/AlgebraicGeometry/FiniteType/Variantab23c24822b38faad6b8cedf1b17e518a65bad381b19bb449037d185c75133f3.lean/declarations/locallyoffinitetype-isstableunderbasechange--b71d1796f4ce699f494e06b3.md) | 75 | `declaration-track:b71d1796f4ce699f494e06b3ca09749034f10af1088770daa63baccf9081ba8b` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/FiniteType/Variantab23c24822b38faad6b8cedf1b17e518a65bad381b19bb449037d185c75133f3.lean/declarations/instance--6bdc7cf09b07f13dfe4e61d0.md) | 79 | `declaration-track:6bdc7cf09b07f13dfe4e61d071ee2a3d6e4d0fd2e641207ae6a519888ea1d52e` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/FiniteType/Variantab23c24822b38faad6b8cedf1b17e518a65bad381b19bb449037d185c75133f3.lean/declarations/instance--5611910895b7afeadf05b60a.md) | 82 | `declaration-track:5611910895b7afeadf05b60ab55057065dff8ab6aa7b86fae7de9949dceea7b6` |
| 11 | `lemma` | [LocallyOfFiniteType.jacobsonSpace](../../../../../mathematics/Geometry/AlgebraicGeometry/FiniteType/Variantab23c24822b38faad6b8cedf1b17e518a65bad381b19bb449037d185c75133f3.lean/declarations/locallyoffinitetype-jacobsonspace--9baf87cf8cc1c27a5417d2ed.md) | 85 | `result-track:9baf87cf8cc1c27a5417d2ed5f86a9c74f51a2aea037440c35102d8d4f65f4ab` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
