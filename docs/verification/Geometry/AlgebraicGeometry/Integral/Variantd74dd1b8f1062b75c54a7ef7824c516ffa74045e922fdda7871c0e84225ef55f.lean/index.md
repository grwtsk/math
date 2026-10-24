# Verification target: GRWTSK.Geometry.AlgebraicGeometry.Integral.Variantd74dd1b8f1062b75c54a7ef7824c516ffa74045e922fdda7871c0e84225ef55f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "efe9c105a51420c9924baa66c8b0519d2f223dc3",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/AlgebraicGeometry/Integral/Variantd74dd1b8f1062b75c54a7ef7824c516ffa74045e922fdda7871c0e84225ef55f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/AlgebraicGeometry/Integral/Variantd74dd1b8f1062b75c54a7ef7824c516ffa74045e922fdda7871c0e84225ef55f.lean/index.md) · [Full source](../../../../../mathematics/Geometry/AlgebraicGeometry/Integral/Variantd74dd1b8f1062b75c54a7ef7824c516ffa74045e922fdda7871c0e84225ef55f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `efe9c105a51420c9924baa66c8b0519d2f223dc3`.

Source path: `GRWTSK/Geometry/AlgebraicGeometry/Integral/Variantd74dd1b8f1062b75c54a7ef7824c516ffa74045e922fdda7871c0e84225ef55f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/AlgebraicGeometry/Integral/Variantd74dd1b8f1062b75c54a7ef7824c516ffa74045e922fdda7871c0e84225ef55f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.AlgebraicGeometry.Morphisms.AffineAnd` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.AlgebraicGeometry.Morphisms.ClosedImmersion` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.AlgebraicGeometry.Morphisms.UniversallyClosed` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.RingHom.Integral` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.PolynomialAlgebra` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IsIntegralHom](../../../../../mathematics/Geometry/AlgebraicGeometry/Integral/Variantd74dd1b8f1062b75c54a7ef7824c516ffa74045e922fdda7871c0e84225ef55f.lean/declarations/isintegralhom--051ac67b82f01345cecdc4c8.md) | 34 | `declaration-track:051ac67b82f01345cecdc4c810c50d3b8b1c2eb1167addbf38031d493a28b1c6` |
| 2 | `instance` | [hasAffineProperty](../../../../../mathematics/Geometry/AlgebraicGeometry/Integral/Variantd74dd1b8f1062b75c54a7ef7824c516ffa74045e922fdda7871c0e84225ef55f.lean/declarations/hasaffineproperty--540ed01f53416d3f59aca124.md) | 39 | `declaration-track:540ed01f53416d3f59aca124d65de885d6238ebe950911b99b784ca433971145` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Integral/Variantd74dd1b8f1062b75c54a7ef7824c516ffa74045e922fdda7871c0e84225ef55f.lean/declarations/instance--e81293939eb3ab3ec35f1493.md) | 47 | `declaration-track:e81293939eb3ab3ec35f149300e72870157cad982a535c375c130ca9759712bb` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Integral/Variantd74dd1b8f1062b75c54a7ef7824c516ffa74045e922fdda7871c0e84225ef55f.lean/declarations/instance--0a021b05106d822e54757f73.md) | 51 | `declaration-track:0a021b05106d822e54757f731ee385cb5f55a0771e8b27fd12d623ee24c26e12` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Integral/Variantd74dd1b8f1062b75c54a7ef7824c516ffa74045e922fdda7871c0e84225ef55f.lean/declarations/instance--df844e7605f1807cb210cb14.md) | 55 | `declaration-track:df844e7605f1807cb210cb149c651ad3a772fb65f40a362c01997c93610dc881` |
| 6 | `lemma` | [SpecMap_iff](../../../../../mathematics/Geometry/AlgebraicGeometry/Integral/Variantd74dd1b8f1062b75c54a7ef7824c516ffa74045e922fdda7871c0e84225ef55f.lean/declarations/specmap-iff--2921e3b54f95ad0926d88765.md) | 58 | `result-track:2921e3b54f95ad0926d88765065e9b3d999a0b1bb92179ecbfea5e057a662bfa` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Integral/Variantd74dd1b8f1062b75c54a7ef7824c516ffa74045e922fdda7871c0e84225ef55f.lean/declarations/instance--1cbd7d8bf67e90d6f7656f22.md) | 65 | `declaration-track:1cbd7d8bf67e90d6f7656f223f3e7c71094a4df69c4861b4a8a2e14e0a23be41` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Integral/Variantd74dd1b8f1062b75c54a7ef7824c516ffa74045e922fdda7871c0e84225ef55f.lean/declarations/instance--4bc761b8e6eb0c8a44f6af39.md) | 67 | `declaration-track:4bc761b8e6eb0c8a44f6af391ddc323cdb94467ea468fb1b47723dd859e9f2ac` |
| 9 | `lemma` | [iff_universallyClosed_and_isAffineHom](../../../../../mathematics/Geometry/AlgebraicGeometry/Integral/Variantd74dd1b8f1062b75c54a7ef7824c516ffa74045e922fdda7871c0e84225ef55f.lean/declarations/iff-universallyclosed-and-isaffinehom--f035b1e340b0ee6693cec1db.md) | 89 | `result-track:f035b1e340b0ee6693cec1db609524e9c702e4c4ee608d1e1e71b035ea4e51b7` |
| 10 | `lemma` | [eq_universallyClosed_inf_isAffineHom](../../../../../mathematics/Geometry/AlgebraicGeometry/Integral/Variantd74dd1b8f1062b75c54a7ef7824c516ffa74045e922fdda7871c0e84225ef55f.lean/declarations/eq-universallyclosed-inf-isaffinehom--c44e8a95446eb0ff70026e45.md) | 115 | `result-track:c44e8a95446eb0ff70026e451b12ebb095cc078635e4e47e7840fd40872696c5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
