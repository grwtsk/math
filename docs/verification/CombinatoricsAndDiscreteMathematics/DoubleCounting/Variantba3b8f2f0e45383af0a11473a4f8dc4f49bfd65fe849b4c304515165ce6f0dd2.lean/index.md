# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.DoubleCounting.Variantba3b8f2f0e45383af0a11473a4f8dc4f49bfd65fe849b4c304515165ce6f0dd2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "97809a650d3040f2fda7382a919df7ecae1b1bf0",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/DoubleCounting/Variantba3b8f2f0e45383af0a11473a4f8dc4f49bfd65fe849b4c304515165ce6f0dd2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoubleCounting/Variantba3b8f2f0e45383af0a11473a4f8dc4f49bfd65fe849b4c304515165ce6f0dd2.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoubleCounting/Variantba3b8f2f0e45383af0a11473a4f8dc4f49bfd65fe849b4c304515165ce6f0dd2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `97809a650d3040f2fda7382a919df7ecae1b1bf0`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/DoubleCounting/Variantba3b8f2f0e45383af0a11473a4f8dc4f49bfd65fe849b4c304515165ce6f0dd2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/DoubleCounting/Variantba3b8f2f0e45383af0a11473a4f8dc4f49bfd65fe849b4c304515165ce6f0dd2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Ring.Finset` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.BigOperators.Group.Finset` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Ring.Nat` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [bipartiteBelow](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoubleCounting/Variantba3b8f2f0e45383af0a11473a4f8dc4f49bfd65fe849b4c304515165ce6f0dd2.lean/declarations/bipartitebelow--47d24e698ba90c5cb02e56b8.md) | 61 | `declaration-track:47d24e698ba90c5cb02e56b8ea315d8912ac0cc1a30929b56a6d56b693d1a799` |
| 2 | `def` | [bipartiteAbove](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoubleCounting/Variantba3b8f2f0e45383af0a11473a4f8dc4f49bfd65fe849b4c304515165ce6f0dd2.lean/declarations/bipartiteabove--53f839f4df366093bac23a03.md) | 64 | `declaration-track:53f839f4df366093bac23a03979480863256ae63b9a7f0d0f947cb92c646e71e` |
| 3 | `theorem` | [bipartiteBelow_swap](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoubleCounting/Variantba3b8f2f0e45383af0a11473a4f8dc4f49bfd65fe849b4c304515165ce6f0dd2.lean/declarations/bipartitebelow-swap--fefcf28a7c3bc681cfe8f0c4.md) | 66 | `result-track:fefcf28a7c3bc681cfe8f0c41481c704e4f0abba9a3bd72d038a61aebc81d45d` |
| 4 | `theorem` | [bipartiteAbove_swap](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoubleCounting/Variantba3b8f2f0e45383af0a11473a4f8dc4f49bfd65fe849b4c304515165ce6f0dd2.lean/declarations/bipartiteabove-swap--e857353c7ebf0bb25a50f225.md) | 68 | `result-track:e857353c7ebf0bb25a50f225d78e4ee2a49b08d705e92d7daf6cff271aa318f1` |
| 5 | `theorem` | [coe_bipartiteBelow](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoubleCounting/Variantba3b8f2f0e45383af0a11473a4f8dc4f49bfd65fe849b4c304515165ce6f0dd2.lean/declarations/coe-bipartitebelow--a852391e76bfed92880692e3.md) | 71 | `result-track:a852391e76bfed92880692e386fdf5b875c6446d4a9f119ef69fe7ba1317b1e5` |
| 6 | `theorem` | [coe_bipartiteAbove](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoubleCounting/Variantba3b8f2f0e45383af0a11473a4f8dc4f49bfd65fe849b4c304515165ce6f0dd2.lean/declarations/coe-bipartiteabove--ae7e6fa099aca1d1303ae6d0.md) | 74 | `result-track:ae7e6fa099aca1d1303ae6d0d92caa7e20f3b586320422c8045d5996bf97382f` |
| 7 | `theorem` | [mem_bipartiteBelow](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoubleCounting/Variantba3b8f2f0e45383af0a11473a4f8dc4f49bfd65fe849b4c304515165ce6f0dd2.lean/declarations/mem-bipartitebelow--798a38074734904bc46035d8.md) | 79 | `result-track:798a38074734904bc46035d8928a692a846820667ffb23a76dd61a7d4360dc1a` |
| 8 | `theorem` | [mem_bipartiteAbove](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoubleCounting/Variantba3b8f2f0e45383af0a11473a4f8dc4f49bfd65fe849b4c304515165ce6f0dd2.lean/declarations/mem-bipartiteabove--294b111095ad7845636a869f.md) | 82 | `result-track:294b111095ad7845636a869f80ac2d544c0a99f93b6ce628e02b590e46e0f8f1` |
| 9 | `theorem` | [prod_prod_bipartiteAbove_eq_prod_prod_bipartiteBelow](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoubleCounting/Variantba3b8f2f0e45383af0a11473a4f8dc4f49bfd65fe849b4c304515165ce6f0dd2.lean/declarations/prod-prod-bipartiteabove-eq-prod-prod-bipartitebelow--99d20674054d9f4ecda27ab8.md) | 85 | `result-track:99d20674054d9f4ecda27ab83c4643d67d058bfc801ff7665bc35854987ac53d` |
| 10 | `theorem` | [sum_card_bipartiteAbove_eq_sum_card_bipartiteBelow](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoubleCounting/Variantba3b8f2f0e45383af0a11473a4f8dc4f49bfd65fe849b4c304515165ce6f0dd2.lean/declarations/sum-card-bipartiteabove-eq-sum-card-bipartitebelow--1d486f355b82598154985c14.md) | 91 | `result-track:1d486f355b82598154985c14a5c50d240817d5afa83ecf5d48aedcfed0e70a74` |
| 11 | `theorem` | [card_nsmul_le_card_nsmul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoubleCounting/Variantba3b8f2f0e45383af0a11473a4f8dc4f49bfd65fe849b4c304515165ce6f0dd2.lean/declarations/card-nsmul-le-card-nsmul--528f4cc6a51adac7c295306f.md) | 102 | `result-track:528f4cc6a51adac7c295306fc27b2b07efa8155fb4614afdb5cb41cad166f534` |
| 12 | `theorem` | [card_nsmul_le_card_nsmul'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoubleCounting/Variantba3b8f2f0e45383af0a11473a4f8dc4f49bfd65fe849b4c304515165ce6f0dd2.lean/declarations/card-nsmul-le-card-nsmul--d11572c56384ba046794198c.md) | 115 | `result-track:d11572c56384ba046794198ce7963d0a422ec92670ed490ffde7e8227a1230d1` |
| 13 | `theorem` | [card_nsmul_lt_card_nsmul_of_lt_of_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoubleCounting/Variantba3b8f2f0e45383af0a11473a4f8dc4f49bfd65fe849b4c304515165ce6f0dd2.lean/declarations/card-nsmul-lt-card-nsmul-of-lt-of-le--c6cb894d4cb0ea1a52eaa771.md) | 130 | `result-track:c6cb894d4cb0ea1a52eaa7714eb602d3b3660a58685532c01a54cc0f98420c26` |
| 14 | `theorem` | [card_nsmul_lt_card_nsmul_of_le_of_lt](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoubleCounting/Variantba3b8f2f0e45383af0a11473a4f8dc4f49bfd65fe849b4c304515165ce6f0dd2.lean/declarations/card-nsmul-lt-card-nsmul-of-le-of-lt--8ed5791004f4b54d95b74b59.md) | 144 | `result-track:8ed5791004f4b54d95b74b59b8f9492948e8f94beff4db4c49da86f17d1a2caa` |
| 15 | `theorem` | [card_nsmul_lt_card_nsmul_of_lt_of_le'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoubleCounting/Variantba3b8f2f0e45383af0a11473a4f8dc4f49bfd65fe849b4c304515165ce6f0dd2.lean/declarations/card-nsmul-lt-card-nsmul-of-lt-of-le--85ae6d4fd68d7b651c7b6a66.md) | 158 | `result-track:85ae6d4fd68d7b651c7b6a663b927c10baa98af6ebe20e6d66b7e1c1bb1f2c05` |
| 16 | `theorem` | [card_nsmul_lt_card_nsmul_of_le_of_lt'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoubleCounting/Variantba3b8f2f0e45383af0a11473a4f8dc4f49bfd65fe849b4c304515165ce6f0dd2.lean/declarations/card-nsmul-lt-card-nsmul-of-le-of-lt--56ab1b244572ea55b0617d33.md) | 167 | `result-track:56ab1b244572ea55b0617d33b200297a897f1d073ea1feb0834f5b2404f9a57d` |
| 17 | `theorem` | [card_mul_le_card_mul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoubleCounting/Variantba3b8f2f0e45383af0a11473a4f8dc4f49bfd65fe849b4c304515165ce6f0dd2.lean/declarations/card-mul-le-card-mul--b74f10be3d168a250ebc827f.md) | 178 | `result-track:b74f10be3d168a250ebc827f705b479c8183039f4bb4305be62c32be686e4349` |
| 18 | `theorem` | [card_mul_le_card_mul'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoubleCounting/Variantba3b8f2f0e45383af0a11473a4f8dc4f49bfd65fe849b4c304515165ce6f0dd2.lean/declarations/card-mul-le-card-mul--e4c32b0bfb26f214c865862e.md) | 183 | `result-track:e4c32b0bfb26f214c865862e49071ccef80665ded0ab98c51374501bf675ecf4` |
| 19 | `theorem` | [card_mul_eq_card_mul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoubleCounting/Variantba3b8f2f0e45383af0a11473a4f8dc4f49bfd65fe849b4c304515165ce6f0dd2.lean/declarations/card-mul-eq-card-mul--1e9473c7c921b810a42ccd9a.md) | 188 | `result-track:1e9473c7c921b810a42ccd9a8aa80c0df9e146d364858c7ae2cccebf434ed971` |
| 20 | `theorem` | [card_le_card_of_forall_subsingleton](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoubleCounting/Variantba3b8f2f0e45383af0a11473a4f8dc4f49bfd65fe849b4c304515165ce6f0dd2.lean/declarations/card-le-card-of-forall-subsingleton--bdffc0f67221a91d80ebf8e0.md) | 194 | `result-track:bdffc0f67221a91d80ebf8e07640a19a12a6781dc52ead5cd7ff634bce8bc86a` |
| 21 | `theorem` | [card_le_card_of_forall_subsingleton'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoubleCounting/Variantba3b8f2f0e45383af0a11473a4f8dc4f49bfd65fe849b4c304515165ce6f0dd2.lean/declarations/card-le-card-of-forall-subsingleton--4a8fb2e004b79cd6eab95b49.md) | 206 | `result-track:4a8fb2e004b79cd6eab95b49e024291423de75abcc623e4154b5999ed114f92d` |
| 22 | `theorem` | [card_le_card_of_leftTotal_unique](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoubleCounting/Variantba3b8f2f0e45383af0a11473a4f8dc4f49bfd65fe849b4c304515165ce6f0dd2.lean/declarations/card-le-card-of-lefttotal-unique--063a71542a97df4099906512.md) | 220 | `result-track:063a71542a97df40999065123cdf727e1a3fa365be0e9f5b9683363defc3f9ce` |
| 23 | `theorem` | [card_le_card_of_rightTotal_unique](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoubleCounting/Variantba3b8f2f0e45383af0a11473a4f8dc4f49bfd65fe849b4c304515165ce6f0dd2.lean/declarations/card-le-card-of-righttotal-unique--1acd792a7325dd6ea1b07d33.md) | 224 | `result-track:1acd792a7325dd6ea1b07d33027c1f1e128d9439ca9816986bce39f913b963f4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
