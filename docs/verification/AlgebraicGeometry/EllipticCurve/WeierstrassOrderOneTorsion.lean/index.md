# Verification target: GRWTSK.AlgebraicGeometry.EllipticCurve.WeierstrassOrderOneTorsion

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2af102534f82b54d009b09917302353a30a90a49",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/AlgebraicGeometry/EllipticCurve/WeierstrassOrderOneTorsion.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/AlgebraicGeometry/EllipticCurve/WeierstrassOrderOneTorsion.lean/index.md) · [Full source](../../../../mathematics/AlgebraicGeometry/EllipticCurve/WeierstrassOrderOneTorsion.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2af102534f82b54d009b09917302353a30a90a49`.

Source path: `GRWTSK/AlgebraicGeometry/EllipticCurve/WeierstrassOrderOneTorsion.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/AlgebraicGeometry/EllipticCurve/WeierstrassOrderOneTorsion.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.AlgebraicGeometry.EllipticCurve.WeierstrassOriginJet`](../../../../mathematics/AlgebraicGeometry/EllipticCurve/WeierstrassOriginJet.lean/index.md) — import line 10; pinned internal source present.
- [`GRWTSK.Algebra.RingTheory.QuadraticCollisionOrder`](../../../../mathematics/Algebra/RingTheory/QuadraticCollisionOrder.lean/index.md) — import line 11; pinned internal source present.
- `Mathlib.GroupTheory.OrderOfElement` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Source](../../../../mathematics/AlgebraicGeometry/EllipticCurve/WeierstrassOrderOneTorsion.lean/declarations/source--256285513b1a0f66565356d6.md) | 24 | `declaration-track:256285513b1a0f66565356d654d8b2cf780de0c2b3426ea27178dafe5acf530d` |
| 2 | `def` | [x](../../../../mathematics/AlgebraicGeometry/EllipticCurve/WeierstrassOrderOneTorsion.lean/declarations/x--91c13f6f37f0a84d6a22c083.md) | 26 | `declaration-track:91c13f6f37f0a84d6a22c0836c775a0b1c744f28ffb138fcb66553fc77764a17` |
| 3 | `def` | [y](../../../../mathematics/AlgebraicGeometry/EllipticCurve/WeierstrassOrderOneTorsion.lean/declarations/y--30d4aebf936b3f4114ff2df3.md) | 27 | `declaration-track:30d4aebf936b3f4114ff2df349f100dd888132df128e42e40c3db3e100253fbb` |
| 4 | `def` | [scalar](../../../../mathematics/AlgebraicGeometry/EllipticCurve/WeierstrassOrderOneTorsion.lean/declarations/scalar--763ff07c299b05438db1862e.md) | 28 | `declaration-track:763ff07c299b05438db1862e67df9fe6d240712e7036e4f7fe5ebf86102c89be` |
| 5 | `theorem` | [neighborhood_square](../../../../mathematics/AlgebraicGeometry/EllipticCurve/WeierstrassOrderOneTorsion.lean/declarations/neighborhood-square--0fabd078c426f506e93539c2.md) | 30 | `result-track:0fabd078c426f506e93539c2daefb058800a96f46b0be0432a24792d3487d60c` |
| 6 | `theorem` | [product_zero](../../../../mathematics/AlgebraicGeometry/EllipticCurve/WeierstrassOrderOneTorsion.lean/declarations/product-zero--3d5dfb169b2ad6e38a9d7761.md) | 34 | `result-track:3d5dfb169b2ad6e38a9d7761a41d3455db3e3f15f7de55862ba4043f719f2889` |
| 7 | `theorem` | [x_square_zero](../../../../mathematics/AlgebraicGeometry/EllipticCurve/WeierstrassOrderOneTorsion.lean/declarations/x-square-zero--dd369043e8092d47f5e978bd.md) | 40 | `result-track:dd369043e8092d47f5e978bd8f8c37e3bd5ccceec774107f636d3627ced5976c` |
| 8 | `theorem` | [x_mul_y_zero](../../../../mathematics/AlgebraicGeometry/EllipticCurve/WeierstrassOrderOneTorsion.lean/declarations/x-mul-y-zero--cee97e7e454ea768a213be0f.md) | 45 | `result-track:cee97e7e454ea768a213be0fb2850006444bb7d7c79a55c4fba854bb4a8c2123` |
| 9 | `theorem` | [y_square_zero](../../../../mathematics/AlgebraicGeometry/EllipticCurve/WeierstrassOrderOneTorsion.lean/declarations/y-square-zero--a9386b23a01d5280d6244589.md) | 49 | `result-track:a9386b23a01d5280d62445899064b59bf558a2ddab26044840a42ce27714b80c` |
| 10 | `theorem` | [B_mul_x_zero](../../../../mathematics/AlgebraicGeometry/EllipticCurve/WeierstrassOrderOneTorsion.lean/declarations/b-mul-x-zero--fea821c9d2fa9fee94d10aa6.md) | 56 | `result-track:fea821c9d2fa9fee94d10aa6c6e4584a862862af5ddb382f9b4b3e756b30939c` |
| 11 | `abbrev` | [Dual](../../../../mathematics/AlgebraicGeometry/EllipticCurve/WeierstrassOrderOneTorsion.lean/declarations/dual--88893195287d403019d961b4.md) | 69 | `declaration-track:88893195287d403019d961b44e66e4a21ec7b7d46c8b5d3e4b4dd59722bd3b29` |
| 12 | `def` | [epsilon](../../../../mathematics/AlgebraicGeometry/EllipticCurve/WeierstrassOrderOneTorsion.lean/declarations/epsilon--c5c90f671ad31881ea7b8b18.md) | 71 | `declaration-track:c5c90f671ad31881ea7b8b18377e8eb9f31de07545f34d93910e9cf7003e7488` |
| 13 | `theorem` | [epsilon_square](../../../../mathematics/AlgebraicGeometry/EllipticCurve/WeierstrassOrderOneTorsion.lean/declarations/epsilon-square--fd3085293c7cb3d6605b8264.md) | 73 | `result-track:fd3085293c7cb3d6605b82640415e2b673aff33f24887c7e307a9d8f712d3460` |
| 14 | `theorem` | [epsilon_ne_zero](../../../../mathematics/AlgebraicGeometry/EllipticCurve/WeierstrassOrderOneTorsion.lean/declarations/epsilon-ne-zero--f5391b1b53bdc05171be50a5.md) | 76 | `result-track:f5391b1b53bdc05171be50a5404f1ab480273c4e6c2cc8849a48e81da7652895` |
| 15 | `def` | [specialEval](../../../../mathematics/AlgebraicGeometry/EllipticCurve/WeierstrassOrderOneTorsion.lean/declarations/specialeval--918e66b45831d266a2e1c80f.md) | 82 | `declaration-track:918e66b45831d266a2e1c80fe15b52217093561f3951b1c05268b552538abaf9` |
| 16 | `theorem` | [special_equation_zero](../../../../mathematics/AlgebraicGeometry/EllipticCurve/WeierstrassOrderOneTorsion.lean/declarations/special-equation-zero--5f1b9d511da9105cd9e530c3.md) | 85 | `result-track:5f1b9d511da9105cd9e530c3cdc33ae9c98011f89f2d49cca71bae6a57c400e6` |
| 17 | `theorem` | [special_origin_map_le](../../../../mathematics/AlgebraicGeometry/EllipticCurve/WeierstrassOrderOneTorsion.lean/declarations/special-origin-map-le--8366a685e9d7f6e94f7ebbd1.md) | 92 | `result-track:8366a685e9d7f6e94f7ebbd1c1fb918fc0b9af95b753d032b956c812269ada53` |
| 18 | `theorem` | [special_origin_square_zero](../../../../mathematics/AlgebraicGeometry/EllipticCurve/WeierstrassOrderOneTorsion.lean/declarations/special-origin-square-zero--1f0632a5c7ca295e283dc4a1.md) | 105 | `result-track:1f0632a5c7ca295e283dc4a1870215b383da373da8681cb2bf7d5b299332e065` |
| 19 | `theorem` | [special_relations_le_kernel](../../../../mathematics/AlgebraicGeometry/EllipticCurve/WeierstrassOrderOneTorsion.lean/declarations/special-relations-le-kernel--aa697be830b973b733f8fcd3.md) | 115 | `result-track:aa697be830b973b733f8fcd3b5d42358dc06480497662783f94867d0e836c197` |
| 20 | `def` | [specialWitness](../../../../mathematics/AlgebraicGeometry/EllipticCurve/WeierstrassOrderOneTorsion.lean/declarations/specialwitness--385c50da3e99e8b6321b2ec1.md) | 126 | `declaration-track:385c50da3e99e8b6321b2ec1d6eff2ebcebab71f0ff35e658b8934d958015afb` |
| 21 | `theorem` | [specialWitness_x](../../../../mathematics/AlgebraicGeometry/EllipticCurve/WeierstrassOrderOneTorsion.lean/declarations/specialwitness-x--e242b7fdf7a99da51412ad22.md) | 130 | `result-track:e242b7fdf7a99da51412ad2222e4506513a295271b8ea6ed2b7b4a1476b35d36` |
| 22 | `theorem` | [specialWitness_y](../../../../mathematics/AlgebraicGeometry/EllipticCurve/WeierstrassOrderOneTorsion.lean/declarations/specialwitness-y--2c407feb5ee18fbb011e40bf.md) | 134 | `result-track:2c407feb5ee18fbb011e40bf673fa2f0806735347d4821373a024e29f7948857` |
| 23 | `theorem` | [x_ne_zero_of_prime_dvd](../../../../mathematics/AlgebraicGeometry/EllipticCurve/WeierstrassOrderOneTorsion.lean/declarations/x-ne-zero-of-prime-dvd--5f9fd75406c6f2b7c95a1d9a.md) | 140 | `result-track:5f9fd75406c6f2b7c95a1d9a4b99130e03652753837037c2d58666aa47a671fb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
