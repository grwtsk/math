# Verification target: GRWTSK.Algebra.UniversalAlgebra.Round.Variantcf06f507f4edc5ebef53e20f4256227275ea705fda80769065221fa6fd68c5c5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a7742ee13dd49b90df96999a0ed819f542ecaca6",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Round/Variantcf06f507f4edc5ebef53e20f4256227275ea705fda80769065221fa6fd68c5c5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Round/Variantcf06f507f4edc5ebef53e20f4256227275ea705fda80769065221fa6fd68c5c5.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Round/Variantcf06f507f4edc5ebef53e20f4256227275ea705fda80769065221fa6fd68c5c5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a7742ee13dd49b90df96999a0ed819f542ecaca6`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Round/Variantcf06f507f4edc5ebef53e20f4256227275ea705fda80769065221fa6fd68c5c5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Round/Variantcf06f507f4edc5ebef53e20f4256227275ea705fda80769065221fa6fd68c5c5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Floor.Ring` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Interval.Set.Group` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [round](../../../../../mathematics/Algebra/UniversalAlgebra/Round/Variantcf06f507f4edc5ebef53e20f4256227275ea705fda80769065221fa6fd68c5c5.lean/declarations/round--a4f6c7daf4848894066cfa47.md) | 49 | `declaration-track:a4f6c7daf4848894066cfa476798c8412eafd50e6c5cb76baadae1a6ef798f4b` |
| 2 | `theorem` | [round_zero](../../../../../mathematics/Algebra/UniversalAlgebra/Round/Variantcf06f507f4edc5ebef53e20f4256227275ea705fda80769065221fa6fd68c5c5.lean/declarations/round-zero--e23377b830606ce1be6a415a.md) | 53 | `result-track:e23377b830606ce1be6a415ae15fa5c6a52b54b7ddce78915f39ee494d64224a` |
| 3 | `theorem` | [round_one](../../../../../mathematics/Algebra/UniversalAlgebra/Round/Variantcf06f507f4edc5ebef53e20f4256227275ea705fda80769065221fa6fd68c5c5.lean/declarations/round-one--588727fd3680bd0a2343b795.md) | 56 | `result-track:588727fd3680bd0a2343b795a0ad985478c94b9cdf147e530418c13f420b69b3` |
| 4 | `theorem` | [round_natCast](../../../../../mathematics/Algebra/UniversalAlgebra/Round/Variantcf06f507f4edc5ebef53e20f4256227275ea705fda80769065221fa6fd68c5c5.lean/declarations/round-natcast--ef250388d5e78eacefa180bf.md) | 59 | `result-track:ef250388d5e78eacefa180bfd9efb6bee5cfbdb8d6cf9c8850d08fd0fea3dd5b` |
| 5 | `theorem` | [round_ofNat](../../../../../mathematics/Algebra/UniversalAlgebra/Round/Variantcf06f507f4edc5ebef53e20f4256227275ea705fda80769065221fa6fd68c5c5.lean/declarations/round-ofnat--7ce8317e86cce5d6d0435362.md) | 62 | `result-track:7ce8317e86cce5d6d04353626488fe312503afb15f937a589fb7c1b2c2aa2bed` |
| 6 | `theorem` | [round_intCast](../../../../../mathematics/Algebra/UniversalAlgebra/Round/Variantcf06f507f4edc5ebef53e20f4256227275ea705fda80769065221fa6fd68c5c5.lean/declarations/round-intcast--434abfffea790355a7f4c0c1.md) | 66 | `result-track:434abfffea790355a7f4c0c1e13e6b661813620a8eecfd878282df15aefb1c2e` |
| 7 | `theorem` | [round_add_intCast](../../../../../mathematics/Algebra/UniversalAlgebra/Round/Variantcf06f507f4edc5ebef53e20f4256227275ea705fda80769065221fa6fd68c5c5.lean/declarations/round-add-intcast--6014b9fd5a5f704ac49d6e45.md) | 69 | `result-track:6014b9fd5a5f704ac49d6e4511e167a45c14d4cbc82d92e887efe5c53ddbdc56` |
| 8 | `theorem` | [round_add_one](../../../../../mathematics/Algebra/UniversalAlgebra/Round/Variantcf06f507f4edc5ebef53e20f4256227275ea705fda80769065221fa6fd68c5c5.lean/declarations/round-add-one--1d8e23ed8179fe5501f91644.md) | 77 | `result-track:1d8e23ed8179fe5501f9164494817a007984e8a18b7c1d097c253a942cf62830` |
| 9 | `theorem` | [round_sub_intCast](../../../../../mathematics/Algebra/UniversalAlgebra/Round/Variantcf06f507f4edc5ebef53e20f4256227275ea705fda80769065221fa6fd68c5c5.lean/declarations/round-sub-intcast--2c588de05092519253b50cba.md) | 81 | `result-track:2c588de05092519253b50cbaa56d7f0fbe58719f8d33bfe0e00e8efa68eb564d` |
| 10 | `theorem` | [round_sub_one](../../../../../mathematics/Algebra/UniversalAlgebra/Round/Variantcf06f507f4edc5ebef53e20f4256227275ea705fda80769065221fa6fd68c5c5.lean/declarations/round-sub-one--6e627513ee307750a3f591fc.md) | 90 | `result-track:6e627513ee307750a3f591fc1e4238934547361da1791f3147bb8fe29530d697` |
| 11 | `theorem` | [round_add_natCast](../../../../../mathematics/Algebra/UniversalAlgebra/Round/Variantcf06f507f4edc5ebef53e20f4256227275ea705fda80769065221fa6fd68c5c5.lean/declarations/round-add-natcast--126bb2b6fdddaa7caee276c7.md) | 94 | `result-track:126bb2b6fdddaa7caee276c773b0beb8c3d009c9bdd07247ae0084db542e4d54` |
| 12 | `theorem` | [round_add_ofNat](../../../../../mathematics/Algebra/UniversalAlgebra/Round/Variantcf06f507f4edc5ebef53e20f4256227275ea705fda80769065221fa6fd68c5c5.lean/declarations/round-add-ofnat--6459a4424d924a0bc75074a8.md) | 101 | `result-track:6459a4424d924a0bc75074a850b58f73ef1d083d3aa8cda1a158bff1cad65c2b` |
| 13 | `theorem` | [round_sub_natCast](../../../../../mathematics/Algebra/UniversalAlgebra/Round/Variantcf06f507f4edc5ebef53e20f4256227275ea705fda80769065221fa6fd68c5c5.lean/declarations/round-sub-natcast--3d25d50e20157a1770576e03.md) | 106 | `result-track:3d25d50e20157a1770576e0321b1888370379c5e43b5871931638cc813d18cc7` |
| 14 | `theorem` | [round_sub_ofNat](../../../../../mathematics/Algebra/UniversalAlgebra/Round/Variantcf06f507f4edc5ebef53e20f4256227275ea705fda80769065221fa6fd68c5c5.lean/declarations/round-sub-ofnat--1210a79ff5e3b64e0ae6d272.md) | 113 | `result-track:1210a79ff5e3b64e0ae6d27245d6ce005e53275b1d58dab69ea36f83040b5506` |
| 15 | `theorem` | [round_intCast_add](../../../../../mathematics/Algebra/UniversalAlgebra/Round/Variantcf06f507f4edc5ebef53e20f4256227275ea705fda80769065221fa6fd68c5c5.lean/declarations/round-intcast-add--46129b66e25368a762510d41.md) | 118 | `result-track:46129b66e25368a762510d418109d5a8011590697f2b777f713d291603dd67e3` |
| 16 | `theorem` | [round_natCast_add](../../../../../mathematics/Algebra/UniversalAlgebra/Round/Variantcf06f507f4edc5ebef53e20f4256227275ea705fda80769065221fa6fd68c5c5.lean/declarations/round-natcast-add--5d72734af751d8d996688c8b.md) | 125 | `result-track:5d72734af751d8d996688c8b7209ebe68d7abd8f77ab6faea8f1a2cb65e86de7` |
| 17 | `theorem` | [round_ofNat_add](../../../../../mathematics/Algebra/UniversalAlgebra/Round/Variantcf06f507f4edc5ebef53e20f4256227275ea705fda80769065221fa6fd68c5c5.lean/declarations/round-ofnat-add--3bb5b45f8fcd3c4ffe6521e6.md) | 132 | `result-track:3bb5b45f8fcd3c4ffe6521e6ba5ffe782dbe31feb989dabd4713f30067aa9d89` |
| 18 | `theorem` | [abs_sub_round_eq_min](../../../../../mathematics/Algebra/UniversalAlgebra/Round/Variantcf06f507f4edc5ebef53e20f4256227275ea705fda80769065221fa6fd68c5c5.lean/declarations/abs-sub-round-eq-min--992dcc3e8f750fc6ca6ecd0d.md) | 136 | `result-track:992dcc3e8f750fc6ca6ecd0defd100828607812400ad678397441ac5233e3962` |
| 19 | `theorem` | [round_le](../../../../../mathematics/Algebra/UniversalAlgebra/Round/Variantcf06f507f4edc5ebef53e20f4256227275ea705fda80769065221fa6fd68c5c5.lean/declarations/round-le--53be883917fa3bcc57e10a8b.md) | 146 | `result-track:53be883917fa3bcc57e10a8b43ba612db9b99404973a68f5acc0c9cd167a68a2` |
| 20 | `theorem` | [round_eq](../../../../../mathematics/Algebra/UniversalAlgebra/Round/Variantcf06f507f4edc5ebef53e20f4256227275ea705fda80769065221fa6fd68c5c5.lean/declarations/round-eq--f4ca849f87e492796474057a.md) | 164 | `result-track:f4ca849f87e492796474057adcec15b7dca3ca4407c910a4019eab2e740e52ac` |
| 21 | `theorem` | [round_two_inv](../../../../../mathematics/Algebra/UniversalAlgebra/Round/Variantcf06f507f4edc5ebef53e20f4256227275ea705fda80769065221fa6fd68c5c5.lean/declarations/round-two-inv--f771d7489dc5b2f1a3a792f1.md) | 186 | `result-track:f771d7489dc5b2f1a3a792f12693ce69803d18875a17a8b2ac2ece6c7d25aa74` |
| 22 | `theorem` | [round_neg_two_inv](../../../../../mathematics/Algebra/UniversalAlgebra/Round/Variantcf06f507f4edc5ebef53e20f4256227275ea705fda80769065221fa6fd68c5c5.lean/declarations/round-neg-two-inv--a643392d2133b58447b54716.md) | 190 | `result-track:a643392d2133b58447b547163e4f279ec2bd8bff1706f14f183cc22aeebd2b48` |
| 23 | `theorem` | [round_eq_zero_iff](../../../../../mathematics/Algebra/UniversalAlgebra/Round/Variantcf06f507f4edc5ebef53e20f4256227275ea705fda80769065221fa6fd68c5c5.lean/declarations/round-eq-zero-iff--fca61d8c85137c484a76832a.md) | 194 | `result-track:fca61d8c85137c484a76832a5592b7778046dbf7bf54d9d83ec5d1b0f7c425d7` |
| 24 | `theorem` | [abs_sub_round](../../../../../mathematics/Algebra/UniversalAlgebra/Round/Variantcf06f507f4edc5ebef53e20f4256227275ea705fda80769065221fa6fd68c5c5.lean/declarations/abs-sub-round--0617a1979001f515d52d09a4.md) | 198 | `result-track:0617a1979001f515d52d09a41e591fae51b8835d63257e6b468910d2f38a0064` |
| 25 | `theorem` | [abs_sub_round_div_natCast_eq](../../../../../mathematics/Algebra/UniversalAlgebra/Round/Variantcf06f507f4edc5ebef53e20f4256227275ea705fda80769065221fa6fd68c5c5.lean/declarations/abs-sub-round-div-natcast-eq--17f38134df4187c26b91714f.md) | 204 | `result-track:17f38134df4187c26b91714f205d44757ab3fce534a0d16692174a05fe0539c5` |
| 26 | `theorem` | [sub_half_lt_round](../../../../../mathematics/Algebra/UniversalAlgebra/Round/Variantcf06f507f4edc5ebef53e20f4256227275ea705fda80769065221fa6fd68c5c5.lean/declarations/sub-half-lt-round--9fc6999674885fc36896fe47.md) | 214 | `result-track:9fc6999674885fc36896fe47b28e60ab82b17fce78b0ee983a1ca0fe9f16d2d7` |
| 27 | `theorem` | [round_le_add_half](../../../../../mathematics/Algebra/UniversalAlgebra/Round/Variantcf06f507f4edc5ebef53e20f4256227275ea705fda80769065221fa6fd68c5c5.lean/declarations/round-le-add-half--635d71f581786426873e578c.md) | 219 | `result-track:635d71f581786426873e578cf1d20a6722643d445d1c71f221824700cd0d2e81` |
| 28 | `theorem` | [map_round](../../../../../mathematics/Algebra/UniversalAlgebra/Round/Variantcf06f507f4edc5ebef53e20f4256227275ea705fda80769065221fa6fd68c5c5.lean/declarations/map-round--aa916993106c8a184f15e064.md) | 233 | `result-track:aa916993106c8a184f15e0648b88f46b66bd7d2deb014bc292deacd1bbf61539` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
