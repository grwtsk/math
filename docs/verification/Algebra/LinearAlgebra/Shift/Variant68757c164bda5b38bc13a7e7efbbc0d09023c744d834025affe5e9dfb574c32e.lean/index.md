# Verification target: GRWTSK.Algebra.LinearAlgebra.Shift.Variant68757c164bda5b38bc13a7e7efbbc0d09023c744d834025affe5e9dfb574c32e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "631de5e102c49fb2f5e6a80323906c2318aab9c4",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Shift/Variant68757c164bda5b38bc13a7e7efbbc0d09023c744d834025affe5e9dfb574c32e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Shift/Variant68757c164bda5b38bc13a7e7efbbc0d09023c744d834025affe5e9dfb574c32e.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Shift/Variant68757c164bda5b38bc13a7e7efbbc0d09023c744d834025affe5e9dfb574c32e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `631de5e102c49fb2f5e6a80323906c2318aab9c4`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Shift/Variant68757c164bda5b38bc13a7e7efbbc0d09023c744d834025affe5e9dfb574c32e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Shift/Variant68757c164bda5b38bc13a7e7efbbc0d09023c744d834025affe5e9dfb574c32e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [shift](../../../../../mathematics/Algebra/LinearAlgebra/Shift/Variant68757c164bda5b38bc13a7e7efbbc0d09023c744d834025affe5e9dfb574c32e.lean/declarations/shift--98b08751eb5228bcc4d00764.md) | 56 | `declaration-track:98b08751eb5228bcc4d0076435c11b8c0d876b9a801e3f2c548fbcaf88bdb8f4` |
| 2 | `theorem` | [direction_shift](../../../../../mathematics/Algebra/LinearAlgebra/Shift/Variant68757c164bda5b38bc13a7e7efbbc0d09023c744d834025affe5e9dfb574c32e.lean/declarations/direction-shift--1c7c9c7e5e741d30931a8f5a.md) | 63 | `result-track:1c7c9c7e5e741d30931a8f5a854b67a625bb23174bafd37977e08105f38ea775` |
| 3 | `theorem` | [shift_top](../../../../../mathematics/Algebra/LinearAlgebra/Shift/Variant68757c164bda5b38bc13a7e7efbbc0d09023c744d834025affe5e9dfb574c32e.lean/declarations/shift-top--881736185f4c455d3197ce0d.md) | 72 | `result-track:881736185f4c455d3197ce0dc023fe142b56015af565ed6bf45ba1ced3ea5200` |
| 4 | `theorem` | [shift_bot](../../../../../mathematics/Algebra/LinearAlgebra/Shift/Variant68757c164bda5b38bc13a7e7efbbc0d09023c744d834025affe5e9dfb574c32e.lean/declarations/shift-bot--9c05e755051c32f7f1165bc3.md) | 76 | `result-track:9c05e755051c32f7f1165bc3e340cb880a3a7e73119104c7a6cbc060b6386b6d` |
| 5 | `theorem` | [shift_eq](../../../../../mathematics/Algebra/LinearAlgebra/Shift/Variant68757c164bda5b38bc13a7e7efbbc0d09023c744d834025affe5e9dfb574c32e.lean/declarations/shift-eq--c8418e54c190188090f555ab.md) | 81 | `result-track:c8418e54c190188090f555ab4cfd6713955fbdad85a4cfbd9be94a9bb2a9f4d4` |
| 6 | `theorem` | [shift_zero](../../../../../mathematics/Algebra/LinearAlgebra/Shift/Variant68757c164bda5b38bc13a7e7efbbc0d09023c744d834025affe5e9dfb574c32e.lean/declarations/shift-zero--3dd08b66108328f968412113.md) | 96 | `result-track:3dd08b66108328f968412113971810aaecf6253d03439f387839218f95e18aa8` |
| 7 | `theorem` | [shift_one](../../../../../mathematics/Algebra/LinearAlgebra/Shift/Variant68757c164bda5b38bc13a7e7efbbc0d09023c744d834025affe5e9dfb574c32e.lean/declarations/shift-one--e9998adf51409760f3127cfe.md) | 103 | `result-track:e9998adf51409760f3127cfe199e14aa0b895e7c37ff9a837921f1e187f4a5a0` |
| 8 | `theorem` | [vadd_mem_shift](../../../../../mathematics/Algebra/LinearAlgebra/Shift/Variant68757c164bda5b38bc13a7e7efbbc0d09023c744d834025affe5e9dfb574c32e.lean/declarations/vadd-mem-shift--9ef20f91aa2cfaab68f033f8.md) | 109 | `result-track:9ef20f91aa2cfaab68f033f8357a5905bedf733bd2668e7808ce6c3c4b02c4c1` |
| 9 | `theorem` | [lineMap_mem_shift](../../../../../mathematics/Algebra/LinearAlgebra/Shift/Variant68757c164bda5b38bc13a7e7efbbc0d09023c744d834025affe5e9dfb574c32e.lean/declarations/linemap-mem-shift--629f70cb6cf48bec44577893.md) | 113 | `result-track:629f70cb6cf48bec44577893f38d3da43eefce56012a534f370fd7c201a7060e` |
| 10 | `theorem` | [affineCombination_mem_shift](../../../../../mathematics/Algebra/LinearAlgebra/Shift/Variant68757c164bda5b38bc13a7e7efbbc0d09023c744d834025affe5e9dfb574c32e.lean/declarations/affinecombination-mem-shift--a1876b49c556358e4e1ae413.md) | 121 | `result-track:a1876b49c556358e4e1ae4139934a53802d4de97db21632ee163a9ad1edc8ebd` |
| 11 | `theorem` | [_root_.GRWTSK.Algebra.LinearAlgebra.Shift.Variantb26d6f6dfdd615e3ba0ab1d43817a31e34ad0f2fec177013ebd68ac288eac1fa.AffineIndependent.affineCombination_mem_shift_iff](../../../../../mathematics/Algebra/LinearAlgebra/Shift/Variant68757c164bda5b38bc13a7e7efbbc0d09023c744d834025affe5e9dfb574c32e.lean/declarations/root-grwtsk-algebra-linearalgebra-shift-variantb26d6f6dfdd615e3ba0ab1d43--54572c84593aa75ecd56b260.md) | 141 | `result-track:54572c84593aa75ecd56b26081dbdd3c0978c83a62732e3ce1ea30b90542751a` |
| 12 | `theorem` | [shift_eq_map_homothety](../../../../../mathematics/Algebra/LinearAlgebra/Shift/Variant68757c164bda5b38bc13a7e7efbbc0d09023c744d834025affe5e9dfb574c32e.lean/declarations/shift-eq-map-homothety--5b36424ef41ff0b4666abb18.md) | 168 | `result-track:5b36424ef41ff0b4666abb186d2b17d11d86c9fcc4d90c98f11702c870e3529a` |
| 13 | `theorem` | [closedInterior_inter_shift_zero](../../../../../mathematics/Algebra/LinearAlgebra/Shift/Variant68757c164bda5b38bc13a7e7efbbc0d09023c744d834025affe5e9dfb574c32e.lean/declarations/closedinterior-inter-shift-zero--da9834a0bb1848c6b5c27a59.md) | 204 | `result-track:da9834a0bb1848c6b5c27a5901984b2a0d948da082cf9de09de02d8fda395add` |
| 14 | `theorem` | [disjoint_closedInterior_shift](../../../../../mathematics/Algebra/LinearAlgebra/Shift/Variant68757c164bda5b38bc13a7e7efbbc0d09023c744d834025affe5e9dfb574c32e.lean/declarations/disjoint-closedinterior-shift--60b99560291c4101b22fcfc6.md) | 222 | `result-track:60b99560291c4101b22fcfc6e9b3a22a44c5d4b615d71a439b298e7c63118f8b` |
| 15 | `theorem` | [closedInterior_inter_shift_aux](../../../../../mathematics/Algebra/LinearAlgebra/Shift/Variant68757c164bda5b38bc13a7e7efbbc0d09023c744d834025affe5e9dfb574c32e.lean/declarations/closedinterior-inter-shift-aux--0e3a16a4e04997c640ec1a6a.md) | 236 | `result-track:0e3a16a4e04997c640ec1a6aa52d3c1761864fe40c91dbc962a2eaad16cb927d` |
| 16 | `theorem` | [closedInterior_inter_shift_eq_homothety](../../../../../mathematics/Algebra/LinearAlgebra/Shift/Variant68757c164bda5b38bc13a7e7efbbc0d09023c744d834025affe5e9dfb574c32e.lean/declarations/closedinterior-inter-shift-eq-homothety--6f234fa3358fe42879b1dcd3.md) | 253 | `result-track:6f234fa3358fe42879b1dcd3bcb29a9af7b5cf380dbac16f97299386af4a050b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
