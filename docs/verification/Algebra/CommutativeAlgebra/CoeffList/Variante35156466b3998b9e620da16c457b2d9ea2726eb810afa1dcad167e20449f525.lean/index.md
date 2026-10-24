# Verification target: GRWTSK.Algebra.CommutativeAlgebra.CoeffList.Variante35156466b3998b9e620da16c457b2d9ea2726eb810afa1dcad167e20449f525

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7ae92a560262bb6d9d367dc1a9fa3c1667635f28",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/CoeffList/Variante35156466b3998b9e620da16c457b2d9ea2726eb810afa1dcad167e20449f525.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/CoeffList/Variante35156466b3998b9e620da16c457b2d9ea2726eb810afa1dcad167e20449f525.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/CoeffList/Variante35156466b3998b9e620da16c457b2d9ea2726eb810afa1dcad167e20449f525.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7ae92a560262bb6d9d367dc1a9fa3c1667635f28`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/CoeffList/Variante35156466b3998b9e620da16c457b2d9ea2726eb810afa1dcad167e20449f525.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/CoeffList/Variante35156466b3998b9e620da16c457b2d9ea2726eb810afa1dcad167e20449f525.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Polynomial.Degree.Definitions` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Polynomial.EraseLead` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.List.Range` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [coeffList](../../../../../mathematics/Algebra/CommutativeAlgebra/CoeffList/Variante35156466b3998b9e620da16c457b2d9ea2726eb810afa1dcad167e20449f525.lean/declarations/coefflist--0ad20046ac3833c5c476aa3c.md) | 45 | `declaration-track:0ad20046ac3833c5c476aa3c3961e679b37c9a9f4da416cbebf26105daef7d0b` |
| 2 | `theorem` | [coeffList_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/CoeffList/Variante35156466b3998b9e620da16c457b2d9ea2726eb810afa1dcad167e20449f525.lean/declarations/coefflist-zero--e4e530454ca90a9cdb0d2208.md) | 52 | `result-track:e4e530454ca90a9cdb0d22081800a4f3c61f750795147a3818657d4c2e19b190` |
| 3 | `theorem` | [coeffList_eq_nil](../../../../../mathematics/Algebra/CommutativeAlgebra/CoeffList/Variante35156466b3998b9e620da16c457b2d9ea2726eb810afa1dcad167e20449f525.lean/declarations/coefflist-eq-nil--8d9add26315b2653466e4031.md) | 57 | `result-track:8d9add26315b2653466e4031a4d33de04e07a30d0a4e0d21f1b610e5d669e370` |
| 4 | `theorem` | [coeffList_C](../../../../../mathematics/Algebra/CommutativeAlgebra/CoeffList/Variante35156466b3998b9e620da16c457b2d9ea2726eb810afa1dcad167e20449f525.lean/declarations/coefflist-c--40eada8e4ab8d56d8d6459b8.md) | 61 | `result-track:40eada8e4ab8d56d8d6459b82a6fe5c6d713115636721c22991ef4753ac4de01` |
| 5 | `theorem` | [coeffList_eq_cons_leadingCoeff](../../../../../mathematics/Algebra/CommutativeAlgebra/CoeffList/Variante35156466b3998b9e620da16c457b2d9ea2726eb810afa1dcad167e20449f525.lean/declarations/coefflist-eq-cons-leadingcoeff--2e68ca61e92aca23f98e988c.md) | 64 | `result-track:2e68ca61e92aca23f98e988c4209cc19362023794929beb0df1a3ad0c7637241` |
| 6 | `theorem` | [head?_coeffList](../../../../../mathematics/Algebra/CommutativeAlgebra/CoeffList/Variante35156466b3998b9e620da16c457b2d9ea2726eb810afa1dcad167e20449f525.lean/declarations/head-coefflist--40cd30ed742ced0b9c7718bc.md) | 69 | `result-track:40cd30ed742ced0b9c7718bcdcafd1b4710fb0ca6e5fd52d266862e1331ad3e4` |
| 7 | `theorem` | [head_coeffList](../../../../../mathematics/Algebra/CommutativeAlgebra/CoeffList/Variante35156466b3998b9e620da16c457b2d9ea2726eb810afa1dcad167e20449f525.lean/declarations/head-coefflist--e82fc3b7bc9f374b65e1fb1b.md) | 73 | `result-track:e82fc3b7bc9f374b65e1fb1b0dde4a1a56ba869b6941a5db809ddc5507c82d8b` |
| 8 | `theorem` | [length_coeffList_eq_withBotSucc_degree](../../../../../mathematics/Algebra/CommutativeAlgebra/CoeffList/Variante35156466b3998b9e620da16c457b2d9ea2726eb810afa1dcad167e20449f525.lean/declarations/length-coefflist-eq-withbotsucc-degree--d7621a289802b07af98c4300.md) | 79 | `result-track:d7621a289802b07af98c4300073ec3bf0bdc1de9650f57036414c33ea29284c3` |
| 9 | `theorem` | [length_coeffList_eq_ite](../../../../../mathematics/Algebra/CommutativeAlgebra/CoeffList/Variante35156466b3998b9e620da16c457b2d9ea2726eb810afa1dcad167e20449f525.lean/declarations/length-coefflist-eq-ite--3ee70d3aaabefb1bed235519.md) | 83 | `result-track:3ee70d3aaabefb1bed2355196bf39ff1a62edc36ee8ed673232f26e7e0ca2182` |
| 10 | `theorem` | [leadingCoeff_cons_eraseLead](../../../../../mathematics/Algebra/CommutativeAlgebra/CoeffList/Variante35156466b3998b9e620da16c457b2d9ea2726eb810afa1dcad167e20449f525.lean/declarations/leadingcoeff-cons-eraselead--9410fa48cf0f66ab41a80e21.md) | 87 | `result-track:9410fa48cf0f66ab41a80e214b8ac258e65c67fdd7d8ac7985277384e3837745` |
| 11 | `theorem` | [coeffList_monomial](../../../../../mathematics/Algebra/CommutativeAlgebra/CoeffList/Variante35156466b3998b9e620da16c457b2d9ea2726eb810afa1dcad167e20449f525.lean/declarations/coefflist-monomial--7a2565aaff67c7a2d12b3099.md) | 96 | `result-track:7a2565aaff67c7a2d12b3099a6aa3240c5683946ac939e7ec4e43a94832261b0` |
| 12 | `theorem` | [coeffList_eraseLead](../../../../../mathematics/Algebra/CommutativeAlgebra/CoeffList/Variante35156466b3998b9e620da16c457b2d9ea2726eb810afa1dcad167e20449f525.lean/declarations/coefflist-eraselead--b7ed18ba464c96da306f42f6.md) | 110 | `result-track:b7ed18ba464c96da306f42f61f00ed6b2f214cd56c67258513b441ad7b54f8e3` |
| 13 | `theorem` | [coeffList_neg](../../../../../mathematics/Algebra/CommutativeAlgebra/CoeffList/Variante35156466b3998b9e620da16c457b2d9ea2726eb810afa1dcad167e20449f525.lean/declarations/coefflist-neg--b1e777900e67af308b4e8b3c.md) | 161 | `result-track:b1e777900e67af308b4e8b3c420d46eb871461f9dfae2a6f6f51f89b9c2892f6` |
| 14 | `theorem` | [coeffList_C_mul](../../../../../mathematics/Algebra/CommutativeAlgebra/CoeffList/Variante35156466b3998b9e620da16c457b2d9ea2726eb810afa1dcad167e20449f525.lean/declarations/coefflist-c-mul--2c2fde46dd4ef9a67ceb78bf.md) | 171 | `result-track:2c2fde46dd4ef9a67ceb78bfb151d890ba84b74c040da2588e35d1ff75701d09` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
