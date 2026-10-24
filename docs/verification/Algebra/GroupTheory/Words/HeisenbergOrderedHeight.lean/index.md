# Verification target: GRWTSK.GroupTheory.Words.HeisenbergOrderedHeight

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ba84257e8855fb69a9612d48f78280e63964723c",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/GroupTheory/Words/HeisenbergOrderedHeight.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Words/HeisenbergOrderedHeight.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Words/HeisenbergOrderedHeight.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ba84257e8855fb69a9612d48f78280e63964723c`.

Source path: `GRWTSK/GroupTheory/Words/HeisenbergOrderedHeight.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/GroupTheory/Words/HeisenbergOrderedHeight.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.GroupTheory.Words.IntegralHeisenbergPrimitive`](../../../../../mathematics/Algebra/GroupTheory/Words/IntegralHeisenbergPrimitive.lean/index.md) — import line 1; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [centralHeight](../../../../../mathematics/Algebra/GroupTheory/Words/HeisenbergOrderedHeight.lean/declarations/centralheight--6e85936da5e298237aafdc44.md) | 21 | `declaration-track:6e85936da5e298237aafdc4474ba92a0f0a22a81bc2d548c7d2126616566ab0c` |
| 2 | `def` | [horizontalDeterminant](../../../../../mathematics/Algebra/GroupTheory/Words/HeisenbergOrderedHeight.lean/declarations/horizontaldeterminant--af03d2f9aff076811e720542.md) | 24 | `declaration-track:af03d2f9aff076811e720542095daa3f4e0b87b0cf32dfbb8268cbe0f35d5edc` |
| 3 | `theorem` | [centralHeight_mul](../../../../../mathematics/Algebra/GroupTheory/Words/HeisenbergOrderedHeight.lean/declarations/centralheight-mul--fc9bc2469dc88526fe4ac2e5.md) | 28 | `result-track:fc9bc2469dc88526fe4ac2e5f542031a99fda54f64e6d2d25f718961e35773a3` |
| 4 | `theorem` | [swap_defect](../../../../../mathematics/Algebra/GroupTheory/Words/HeisenbergOrderedHeight.lean/declarations/swap-defect--4d6ac2af683e8decd1d47658.md) | 32 | `result-track:4d6ac2af683e8decd1d47658de91fb8258e9381a26c687fd9787ae04f80a5493` |
| 5 | `theorem` | [same_height_iff_determinant_zero](../../../../../mathematics/Algebra/GroupTheory/Words/HeisenbergOrderedHeight.lean/declarations/same-height-iff-determinant-zero--5e311df2d457b9583d453243.md) | 38 | `result-track:5e311df2d457b9583d453243ab4c4756f259d18278a8c7af9210bbab7003113a` |
| 6 | `theorem` | [X_Y_height](../../../../../mathematics/Algebra/GroupTheory/Words/HeisenbergOrderedHeight.lean/declarations/x-y-height--a1e954d65ed4ff84a3a97066.md) | 44 | `result-track:a1e954d65ed4ff84a3a9706616cedec6a3591a4c74166abfcb5f9325d984d20e` |
| 7 | `theorem` | [Y_X_height](../../../../../mathematics/Algebra/GroupTheory/Words/HeisenbergOrderedHeight.lean/declarations/y-x-height--2dbde4a56faf411cf3395198.md) | 47 | `result-track:2dbde4a56faf411cf3395198e169d061aa92e7277b88dde588132e4b284b740e` |
| 8 | `theorem` | [X_Y_height_ne_Y_X](../../../../../mathematics/Algebra/GroupTheory/Words/HeisenbergOrderedHeight.lean/declarations/x-y-height-ne-y-x--9a7a50a86c6b8cad2a872f07.md) | 50 | `result-track:9a7a50a86c6b8cad2a872f07f89622cdddadc4014afcccfd34f033b3d4386779` |
| 9 | `def` | [inputHeightSum](../../../../../mathematics/Algebra/GroupTheory/Words/HeisenbergOrderedHeight.lean/declarations/inputheightsum--6c44d92a6cfd8d5cc963ed80.md) | 57 | `declaration-track:6c44d92a6cfd8d5cc963ed808ad8ae3171a82a8ef54816e03f28b8eeb3ff1458` |
| 10 | `def` | [horizontalYSum](../../../../../mathematics/Algebra/GroupTheory/Words/HeisenbergOrderedHeight.lean/declarations/horizontalysum--5481034a4932a491b247395b.md) | 61 | `declaration-track:5481034a4932a491b247395bdde298d1e993cbc3140675615f456ac6631c40e3` |
| 11 | `def` | [orderedArea](../../../../../mathematics/Algebra/GroupTheory/Words/HeisenbergOrderedHeight.lean/declarations/orderedarea--85801435396af9284ec9a2e2.md) | 66 | `declaration-track:85801435396af9284ec9a2e202d5973943ed36a4ce88d52dd05ba6b2d6bc3cc8` |
| 12 | `theorem` | [prod_y](../../../../../mathematics/Algebra/GroupTheory/Words/HeisenbergOrderedHeight.lean/declarations/prod-y--13a42feca12db367a2b2a813.md) | 70 | `result-track:13a42feca12db367a2b2a81343ce80ee5387ac6c6543014d2333707a6eb06128` |
| 13 | `theorem` | [ordered_product_height](../../../../../mathematics/Algebra/GroupTheory/Words/HeisenbergOrderedHeight.lean/declarations/ordered-product-height--d5c6c17eb949d365ad3f9322.md) | 80 | `result-track:d5c6c17eb949d365ad3f93227a2642e48278857bfc58413f3518063dba509679` |
| 14 | `theorem` | [central_conjugation_height](../../../../../mathematics/Algebra/GroupTheory/Words/HeisenbergOrderedHeight.lean/declarations/central-conjugation-height--4acdc2a10638076171cc61cb.md) | 91 | `result-track:4acdc2a10638076171cc61cb3377ee9fab6725024c6eba7a9d996098b7fd57d2` |
| 15 | `def` | [coordinates](../../../../../mathematics/Algebra/GroupTheory/Words/HeisenbergOrderedHeight.lean/declarations/coordinates--bc6719200482438dd70ba04b.md) | 100 | `declaration-track:bc6719200482438dd70ba04bd23124ee22f0804cb272d54cb1da5d2b5ceb7a13` |
| 16 | `def` | [fromCoordinates](../../../../../mathematics/Algebra/GroupTheory/Words/HeisenbergOrderedHeight.lean/declarations/fromcoordinates--d3c0b390b670f2135e244f71.md) | 102 | `declaration-track:d3c0b390b670f2135e244f71c7e55d9325a519fd2aa4b9ec90edafeab693fe01` |
| 17 | `theorem` | [fromCoordinates_coordinates](../../../../../mathematics/Algebra/GroupTheory/Words/HeisenbergOrderedHeight.lean/declarations/fromcoordinates-coordinates--33fb4cdfa6c457307d55c204.md) | 105 | `result-track:33fb4cdfa6c457307d55c204308f69c48141c92c55119e505cbeb416f7289456` |
| 18 | `theorem` | [coordinates_fromCoordinates](../../../../../mathematics/Algebra/GroupTheory/Words/HeisenbergOrderedHeight.lean/declarations/coordinates-fromcoordinates--9fff9311321bb75de3adc529.md) | 110 | `result-track:9fff9311321bb75de3adc529888840731870eb0520e4c8679f690515065f2bf4` |
| 19 | `theorem` | [reconstructed_height](../../../../../mathematics/Algebra/GroupTheory/Words/HeisenbergOrderedHeight.lean/declarations/reconstructed-height--bbdb57dc96899d04efb65b43.md) | 116 | `result-track:bbdb57dc96899d04efb65b43324ed6afbde379f6c46df9c7322cc1698843327d` |
| 20 | `def` | [horizontalProjection](../../../../../mathematics/Algebra/GroupTheory/Words/HeisenbergOrderedHeight.lean/declarations/horizontalprojection--3e4e191a53d0b0d58e8dcb40.md) | 120 | `declaration-track:3e4e191a53d0b0d58e8dcb4075bc90f2c0dc3029de4994a3fa08c4c9bde671ac` |
| 21 | `theorem` | [horizontal_Z_identity_collision](../../../../../mathematics/Algebra/GroupTheory/Words/HeisenbergOrderedHeight.lean/declarations/horizontal-z-identity-collision--797a46c87c26b9d19dd5cfb0.md) | 122 | `result-track:797a46c87c26b9d19dd5cfb0977aa363fcd1bee848fa258db987efd1b210e8b3` |
| 22 | `theorem` | [central_height_Z_identity_different](../../../../../mathematics/Algebra/GroupTheory/Words/HeisenbergOrderedHeight.lean/declarations/central-height-z-identity-different--10230b013b990c9d335415a0.md) | 126 | `result-track:10230b013b990c9d335415a0de600a27b9f0f787c90871853b8151d008444c1b` |
| 23 | `theorem` | [no_height_decoder_from_horizontal](../../../../../mathematics/Algebra/GroupTheory/Words/HeisenbergOrderedHeight.lean/declarations/no-height-decoder-from-horizontal--e4bea51b3cf61227581f8572.md) | 132 | `result-track:e4bea51b3cf61227581f857271d40082b86fb74156ba9069de6191925a27c96f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
