# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.Lemmas.Variant826fba0f0fcb823ae8c4668564f4c1aca411bc34cc57bd7206c31618267d996e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b159b7faa0a04331c88be529cb1b9a8b27a28c4c",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/Lemmas/Variant826fba0f0fcb823ae8c4668564f4c1aca411bc34cc57bd7206c31618267d996e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/FoundationsLogicAndTypeTheory/Lemmas/Variant826fba0f0fcb823ae8c4668564f4c1aca411bc34cc57bd7206c31618267d996e.lean/index.md) · [Full source](../../../../mathematics/FoundationsLogicAndTypeTheory/Lemmas/Variant826fba0f0fcb823ae8c4668564f4c1aca411bc34cc57bd7206c31618267d996e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b159b7faa0a04331c88be529cb1b9a8b27a28c4c`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/Lemmas/Variant826fba0f0fcb823ae8c4668564f4c1aca411bc34cc57bd7206c31618267d996e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/Lemmas/Variant826fba0f0fcb823ae8c4668564f4c1aca411bc34cc57bd7206c31618267d996e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Set.Function` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Int.Order.Lemmas` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Int.Bitwise` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Cast.Basic` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Order.Lemmas` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [le_coe_nat_sub](../../../../mathematics/FoundationsLogicAndTypeTheory/Lemmas/Variant826fba0f0fcb823ae8c4668564f4c1aca411bc34cc57bd7206c31618267d996e.lean/declarations/le-coe-nat-sub--a74747c2163b08bfe35b00a1.md) | 27 | `result-track:a74747c2163b08bfe35b00a1c89f789459609c3c375b3bbc83e2ebfe94b11c7a` |
| 2 | `theorem` | [succ_coe_nat_pos](../../../../mathematics/FoundationsLogicAndTypeTheory/Lemmas/Variant826fba0f0fcb823ae8c4668564f4c1aca411bc34cc57bd7206c31618267d996e.lean/declarations/succ-coe-nat-pos--b499c9cb06e61f547d6291d1.md) | 37 | `result-track:b499c9cb06e61f547d6291d17945555f5c57191703fbc4ab805cee9d2c4ecde7` |
| 3 | `theorem` | [natAbs_eq_iff_sq_eq](../../../../mathematics/FoundationsLogicAndTypeTheory/Lemmas/Variant826fba0f0fcb823ae8c4668564f4c1aca411bc34cc57bd7206c31618267d996e.lean/declarations/natabs-eq-iff-sq-eq--f29b38e7078db6dcd5d9fc61.md) | 46 | `result-track:f29b38e7078db6dcd5d9fc61b260180d0b2e366a341c9ea214251c7d371068ce` |
| 4 | `theorem` | [natAbs_lt_iff_sq_lt](../../../../mathematics/FoundationsLogicAndTypeTheory/Lemmas/Variant826fba0f0fcb823ae8c4668564f4c1aca411bc34cc57bd7206c31618267d996e.lean/declarations/natabs-lt-iff-sq-lt--a6ec54f490d15307edf0bbf1.md) | 51 | `result-track:a6ec54f490d15307edf0bbf146c5a9cb85d94be9c06da46bf72c9a32c49c030e` |
| 5 | `theorem` | [natAbs_le_iff_sq_le](../../../../mathematics/FoundationsLogicAndTypeTheory/Lemmas/Variant826fba0f0fcb823ae8c4668564f4c1aca411bc34cc57bd7206c31618267d996e.lean/declarations/natabs-le-iff-sq-le--ebaf1c4120149d94bcf0a8f8.md) | 56 | `result-track:ebaf1c4120149d94bcf0a8f8305c8cfbdae2021482ae19e7dcd60c667e2f3103` |
| 6 | `theorem` | [natAbs_inj_of_nonneg_of_nonneg](../../../../mathematics/FoundationsLogicAndTypeTheory/Lemmas/Variant826fba0f0fcb823ae8c4668564f4c1aca411bc34cc57bd7206c31618267d996e.lean/declarations/natabs-inj-of-nonneg-of-nonneg--b4583561201d9cef794c6a9f.md) | 61 | `result-track:b4583561201d9cef794c6a9f93fc01b74f174941e91be6827128df9ea110c082` |
| 7 | `theorem` | [natAbs_inj_of_nonpos_of_nonpos](../../../../mathematics/FoundationsLogicAndTypeTheory/Lemmas/Variant826fba0f0fcb823ae8c4668564f4c1aca411bc34cc57bd7206c31618267d996e.lean/declarations/natabs-inj-of-nonpos-of-nonpos--8e01bf79e3e914fa5eb369e9.md) | 65 | `result-track:8e01bf79e3e914fa5eb369e938867dbaa1bf5a899cc358955b65d1305413dda2` |
| 8 | `theorem` | [natAbs_inj_of_nonneg_of_nonpos](../../../../mathematics/FoundationsLogicAndTypeTheory/Lemmas/Variant826fba0f0fcb823ae8c4668564f4c1aca411bc34cc57bd7206c31618267d996e.lean/declarations/natabs-inj-of-nonneg-of-nonpos--56865a18113eb555da811376.md) | 71 | `result-track:56865a18113eb555da811376aae793961d5dcbb621e1f956f8e4ae79f91fc772` |
| 9 | `theorem` | [natAbs_inj_of_nonpos_of_nonneg](../../../../mathematics/FoundationsLogicAndTypeTheory/Lemmas/Variant826fba0f0fcb823ae8c4668564f4c1aca411bc34cc57bd7206c31618267d996e.lean/declarations/natabs-inj-of-nonpos-of-nonneg--0b8a27666a13318279ff96b0.md) | 76 | `result-track:0b8a27666a13318279ff96b0aa93d2d4d27a32ed275a1572f008ec2e9c35708e` |
| 10 | `theorem` | [strictMonoOn_natAbs](../../../../mathematics/FoundationsLogicAndTypeTheory/Lemmas/Variant826fba0f0fcb823ae8c4668564f4c1aca411bc34cc57bd7206c31618267d996e.lean/declarations/strictmonoon-natabs--21ba64b77b1c2142a6652f8e.md) | 85 | `result-track:21ba64b77b1c2142a6652f8eb8418e0064bdfd3c0d00be650fd655a66728d0cc` |
| 11 | `theorem` | [strictAntiOn_natAbs](../../../../mathematics/FoundationsLogicAndTypeTheory/Lemmas/Variant826fba0f0fcb823ae8c4668564f4c1aca411bc34cc57bd7206c31618267d996e.lean/declarations/strictantion-natabs--aa84b35b1f91e0fae1cb6968.md) | 89 | `result-track:aa84b35b1f91e0fae1cb6968ba7b85ac64753bd17bfc78fa33eb415643191a96` |
| 12 | `theorem` | [injOn_natAbs_Ici](../../../../mathematics/FoundationsLogicAndTypeTheory/Lemmas/Variant826fba0f0fcb823ae8c4668564f4c1aca411bc34cc57bd7206c31618267d996e.lean/declarations/injon-natabs-ici--dffeeeee3eb48b43de233523.md) | 94 | `result-track:dffeeeee3eb48b43de23352363e93c320ae9fa7144f194d5959b5f9be8ab1e44` |
| 13 | `theorem` | [injOn_natAbs_Iic](../../../../mathematics/FoundationsLogicAndTypeTheory/Lemmas/Variant826fba0f0fcb823ae8c4668564f4c1aca411bc34cc57bd7206c31618267d996e.lean/declarations/injon-natabs-iic--94c28b1e9f9769d31a0e05c1.md) | 98 | `result-track:94c28b1e9f9769d31a0e05c16db00098fd4c4d0c3e29b1dcd1212a01646aa5ca` |
| 14 | `theorem` | [toNat_of_nonpos](../../../../mathematics/FoundationsLogicAndTypeTheory/Lemmas/Variant826fba0f0fcb823ae8c4668564f4c1aca411bc34cc57bd7206c31618267d996e.lean/declarations/tonat-of-nonpos--81e7374be62c2eebfc8d2927.md) | 107 | `result-track:81e7374be62c2eebfc8d2927d51670c8aadf974220add0c3f4f681eba50ae4e5` |
| 15 | `theorem` | [div2_bit](../../../../mathematics/FoundationsLogicAndTypeTheory/Lemmas/Variant826fba0f0fcb823ae8c4668564f4c1aca411bc34cc57bd7206c31618267d996e.lean/declarations/div2-bit--9a73d8c3c572e054849100cf.md) | 122 | `result-track:9a73d8c3c572e054849100cf7bc61ae72c02d52b04f6ac49f39487f977742c27` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
