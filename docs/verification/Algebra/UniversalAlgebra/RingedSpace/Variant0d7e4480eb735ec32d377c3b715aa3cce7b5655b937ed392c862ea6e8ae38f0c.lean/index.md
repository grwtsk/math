# Verification target: GRWTSK.Algebra.UniversalAlgebra.RingedSpace.Variant0d7e4480eb735ec32d377c3b715aa3cce7b5655b937ed392c862ea6e8ae38f0c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2e2437950591d8597a199a7ff6dcee555cb86b11",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/RingedSpace/Variant0d7e4480eb735ec32d377c3b715aa3cce7b5655b937ed392c862ea6e8ae38f0c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/RingedSpace/Variant0d7e4480eb735ec32d377c3b715aa3cce7b5655b937ed392c862ea6e8ae38f0c.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/RingedSpace/Variant0d7e4480eb735ec32d377c3b715aa3cce7b5655b937ed392c862ea6e8ae38f0c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2e2437950591d8597a199a7ff6dcee555cb86b11`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/RingedSpace/Variant0d7e4480eb735ec32d377c3b715aa3cce7b5655b937ed392c862ea6e8ae38f0c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/RingedSpace/Variant0d7e4480eb735ec32d377c3b715aa3cce7b5655b937ed392c862ea6e8ae38f0c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.Ring.FilteredColimits` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.AlgebraicGeometry.SheafedSpace` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Sheaves.Stalks` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.Ring.Colimits` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.Ring.Limits` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [RingedSpace](../../../../../mathematics/Algebra/UniversalAlgebra/RingedSpace/Variant0d7e4480eb735ec32d377c3b715aa3cce7b5655b937ed392c862ea6e8ae38f0c.lean/declarations/ringedspace--bf633fcbc57ad813e0bb17a0.md) | 47 | `declaration-track:bf633fcbc57ad813e0bb17a008a15b792b7dafd3875058ec0f4de98a1f082cd5` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/RingedSpace/Variant0d7e4480eb735ec32d377c3b715aa3cce7b5655b937ed392c862ea6e8ae38f0c.lean/declarations/instance--bc924b0da51cf21c114979c1.md) | 59 | `declaration-track:bc924b0da51cf21c114979c1d6a402e8d4d66310893102c65a7bf3c2d710baf8` |
| 3 | `theorem` | [isUnit_res_of_isUnit_germ](../../../../../mathematics/Algebra/UniversalAlgebra/RingedSpace/Variant0d7e4480eb735ec32d377c3b715aa3cce7b5655b937ed392c862ea6e8ae38f0c.lean/declarations/isunit-res-of-isunit-germ--df78f63cef3ea05410828d24.md) | 66 | `result-track:df78f63cef3ea05410828d24a7daf44a0451616a5a1d51c72556b4a88d65e37c` |
| 4 | `theorem` | [isUnit_of_isUnit_germ](../../../../../mathematics/Algebra/UniversalAlgebra/RingedSpace/Variant0d7e4480eb735ec32d377c3b715aa3cce7b5655b937ed392c862ea6e8ae38f0c.lean/declarations/isunit-of-isunit-germ--ed38e7a2435481fd68796629.md) | 92 | `result-track:ed38e7a2435481fd687966290756723bb201392b7573e0b7b3671981978e0656` |
| 5 | `def` | [basicOpen](../../../../../mathematics/Algebra/UniversalAlgebra/RingedSpace/Variant0d7e4480eb735ec32d377c3b715aa3cce7b5655b937ed392c862ea6e8ae38f0c.lean/declarations/basicopen--613d59ec80ca9fa4b2728694.md) | 141 | `declaration-track:613d59ec80ca9fa4b2728694c2d458164c0ef2d99177a03cdf839c0c33eab74b` |
| 6 | `theorem` | [mem_basicOpen](../../../../../mathematics/Algebra/UniversalAlgebra/RingedSpace/Variant0d7e4480eb735ec32d377c3b715aa3cce7b5655b937ed392c862ea6e8ae38f0c.lean/declarations/mem-basicopen--d93470976ba741626b512828.md) | 161 | `result-track:d93470976ba741626b5128285cbe460ee6e2cd66f2852f8ef6d20ec5d3d34aae` |
| 7 | `theorem` | [mem_top_basicOpen](../../../../../mathematics/Algebra/UniversalAlgebra/RingedSpace/Variant0d7e4480eb735ec32d377c3b715aa3cce7b5655b937ed392c862ea6e8ae38f0c.lean/declarations/mem-top-basicopen--d91bd6a24f2b8060ab821606.md) | 170 | `result-track:d91bd6a24f2b8060ab821606118ce46213e1af20fcaae2a83f2bbaeff3506701` |
| 8 | `theorem` | [basicOpen_le](../../../../../mathematics/Algebra/UniversalAlgebra/RingedSpace/Variant0d7e4480eb735ec32d377c3b715aa3cce7b5655b937ed392c862ea6e8ae38f0c.lean/declarations/basicopen-le--b10c4a2adad523d6dca81b4a.md) | 176 | `result-track:b10c4a2adad523d6dca81b4afb7b9496540a6335fab166ec229caa831ecb9a2a` |
| 9 | `theorem` | [isUnit_res_basicOpen](../../../../../mathematics/Algebra/UniversalAlgebra/RingedSpace/Variant0d7e4480eb735ec32d377c3b715aa3cce7b5655b937ed392c862ea6e8ae38f0c.lean/declarations/isunit-res-basicopen--63d27df3c3cbd63598a4ce46.md) | 182 | `result-track:63d27df3c3cbd63598a4ce46bda104c4248ba4ed2c94613fa6a62fefc12024ac` |
| 10 | `theorem` | [basicOpen_res](../../../../../mathematics/Algebra/UniversalAlgebra/RingedSpace/Variant0d7e4480eb735ec32d377c3b715aa3cce7b5655b937ed392c862ea6e8ae38f0c.lean/declarations/basicopen-res--3c8efa5c9902520bca5c554b.md) | 192 | `result-track:3c8efa5c9902520bca5c554bc76dc09a4e38d7b93a575367e366d6737c83c584` |
| 11 | `theorem` | [basicOpen_res_eq](../../../../../mathematics/Algebra/UniversalAlgebra/RingedSpace/Variant0d7e4480eb735ec32d377c3b715aa3cce7b5655b937ed392c862ea6e8ae38f0c.lean/declarations/basicopen-res-eq--b4421b8b8e15413469159566.md) | 213 | `result-track:b4421b8b8e154134691595661b59505ebf159901603ad0eadd5c52708c4cc116` |
| 12 | `theorem` | [basicOpen_mul](../../../../../mathematics/Algebra/UniversalAlgebra/RingedSpace/Variant0d7e4480eb735ec32d377c3b715aa3cce7b5655b937ed392c862ea6e8ae38f0c.lean/declarations/basicopen-mul--750702f1de558e6ba04f9ce7.md) | 225 | `result-track:750702f1de558e6ba04f9ce7626e22f8bd451ed99fb95fd2ee53f7e3cc7ae88f` |
| 13 | `theorem` | [basicOpen_of_isUnit](../../../../../mathematics/Algebra/UniversalAlgebra/RingedSpace/Variant0d7e4480eb735ec32d377c3b715aa3cce7b5655b937ed392c862ea6e8ae38f0c.lean/declarations/basicopen-of-isunit--e189d34ee92f66915680ccb4.md) | 236 | `result-track:e189d34ee92f66915680ccb416cd41afb00c005da0cb9b4e3f5ca18d0ef96382` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
