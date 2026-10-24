# Verification target: GRWTSK.Algebra.UniversalAlgebra.Monoid.Variantd7d9729999c601b3847cd19fbbd70ffd4107058e933118a909f5f72a7b4c776f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1066e06513fdf8d8f2e0eaa21f3f54e73fd965bb",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Monoid/Variantd7d9729999c601b3847cd19fbbd70ffd4107058e933118a909f5f72a7b4c776f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Monoid/Variantd7d9729999c601b3847cd19fbbd70ffd4107058e933118a909f5f72a7b4c776f.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Monoid/Variantd7d9729999c601b3847cd19fbbd70ffd4107058e933118a909f5f72a7b4c776f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1066e06513fdf8d8f2e0eaa21f3f54e73fd965bb`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Monoid/Variantd7d9729999c601b3847cd19fbbd70ffd4107058e933118a909f5f72a7b4c776f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Monoid/Variantd7d9729999c601b3847cd19fbbd70ffd4107058e933118a909f5f72a7b4c776f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Set.Intervals.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Function` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Monoid.Cancel.Defs` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Monoid.Canonical.Defs` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Basic` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Ici_add_bij](../../../../../mathematics/Algebra/UniversalAlgebra/Monoid/Variantd7d9729999c601b3847cd19fbbd70ffd4107058e933118a909f5f72a7b4c776f.lean/declarations/ici-add-bij--3fb7493e1da9d194d5cfba40.md) | 36 | `result-track:3fb7493e1da9d194d5cfba403d66ed00f4885da1fac62a0a4bd20af7788d7a3d` |
| 2 | `theorem` | [Ioi_add_bij](../../../../../mathematics/Algebra/UniversalAlgebra/Monoid/Variantd7d9729999c601b3847cd19fbbd70ffd4107058e933118a909f5f72a7b4c776f.lean/declarations/ioi-add-bij--b2a2ebbf4831ec2344987079.md) | 44 | `result-track:b2a2ebbf4831ec234498707989eeb44e9b436655897861578c320280c5723a40` |
| 3 | `theorem` | [Icc_add_bij](../../../../../mathematics/Algebra/UniversalAlgebra/Monoid/Variantd7d9729999c601b3847cd19fbbd70ffd4107058e933118a909f5f72a7b4c776f.lean/declarations/icc-add-bij--cb5ff2d235f84b4eb1fe0382.md) | 53 | `result-track:cb5ff2d235f84b4eb1fe0382d7b36f097d83dfa816aa5a3e06e4448b7d40e834` |
| 4 | `theorem` | [Ioo_add_bij](../../../../../mathematics/Algebra/UniversalAlgebra/Monoid/Variantd7d9729999c601b3847cd19fbbd70ffd4107058e933118a909f5f72a7b4c776f.lean/declarations/ioo-add-bij--e54f1908cdf7ae88f302a3d4.md) | 60 | `result-track:e54f1908cdf7ae88f302a3d464b7ddd42d84f2de3f34b3a8dc92c183f37f8a6d` |
| 5 | `theorem` | [Ioc_add_bij](../../../../../mathematics/Algebra/UniversalAlgebra/Monoid/Variantd7d9729999c601b3847cd19fbbd70ffd4107058e933118a909f5f72a7b4c776f.lean/declarations/ioc-add-bij--0219aa4ab9adcbe95ab1631a.md) | 67 | `result-track:0219aa4ab9adcbe95ab1631a8401f8e3e89c66b44a3e26b022bf6d71e9e6c631` |
| 6 | `theorem` | [Ico_add_bij](../../../../../mathematics/Algebra/UniversalAlgebra/Monoid/Variantd7d9729999c601b3847cd19fbbd70ffd4107058e933118a909f5f72a7b4c776f.lean/declarations/ico-add-bij--877b75873df9ba91b91932c3.md) | 74 | `result-track:877b75873df9ba91b91932c359f06405723c2262cd2f4e820a842184785d7b49` |
| 7 | `theorem` | [image_add_const_Ici](../../../../../mathematics/Algebra/UniversalAlgebra/Monoid/Variantd7d9729999c601b3847cd19fbbd70ffd4107058e933118a909f5f72a7b4c776f.lean/declarations/image-add-const-ici--0d88b533e61b6b4c27c74e6f.md) | 87 | `result-track:0d88b533e61b6b4c27c74e6fa3625e2410604911457999fdd0bc5e88a2e2c882` |
| 8 | `theorem` | [image_add_const_Ioi](../../../../../mathematics/Algebra/UniversalAlgebra/Monoid/Variantd7d9729999c601b3847cd19fbbd70ffd4107058e933118a909f5f72a7b4c776f.lean/declarations/image-add-const-ioi--4a5b6799422be4d07de8fd5a.md) | 92 | `result-track:4a5b6799422be4d07de8fd5ace390726459b97ef94b12cbc54c2f420c705d3fd` |
| 9 | `theorem` | [image_add_const_Icc](../../../../../mathematics/Algebra/UniversalAlgebra/Monoid/Variantd7d9729999c601b3847cd19fbbd70ffd4107058e933118a909f5f72a7b4c776f.lean/declarations/image-add-const-icc--b40b6fa2884377187e2ba131.md) | 97 | `result-track:b40b6fa2884377187e2ba1318746a3e05548b71f177c6fa8ccc4ca5391c6866f` |
| 10 | `theorem` | [image_add_const_Ico](../../../../../mathematics/Algebra/UniversalAlgebra/Monoid/Variantd7d9729999c601b3847cd19fbbd70ffd4107058e933118a909f5f72a7b4c776f.lean/declarations/image-add-const-ico--046155562113e2641ac9a54c.md) | 102 | `result-track:046155562113e2641ac9a54cc1ea91c2b380d36d303c547b35009cf7ae736624` |
| 11 | `theorem` | [image_add_const_Ioc](../../../../../mathematics/Algebra/UniversalAlgebra/Monoid/Variantd7d9729999c601b3847cd19fbbd70ffd4107058e933118a909f5f72a7b4c776f.lean/declarations/image-add-const-ioc--f8dd9c42fc17999f69fd2d20.md) | 107 | `result-track:f8dd9c42fc17999f69fd2d20955812c3685325ed45eda6d1f29168055f526351` |
| 12 | `theorem` | [image_add_const_Ioo](../../../../../mathematics/Algebra/UniversalAlgebra/Monoid/Variantd7d9729999c601b3847cd19fbbd70ffd4107058e933118a909f5f72a7b4c776f.lean/declarations/image-add-const-ioo--dc1fe3ce836086a6ccebda69.md) | 112 | `result-track:dc1fe3ce836086a6ccebda69b394a5acdf1445fca36bba5cdebb5e0a2c45afde` |
| 13 | `theorem` | [image_const_add_Ici](../../../../../mathematics/Algebra/UniversalAlgebra/Monoid/Variantd7d9729999c601b3847cd19fbbd70ffd4107058e933118a909f5f72a7b4c776f.lean/declarations/image-const-add-ici--a0495fb0bf6747c530a86e16.md) | 122 | `result-track:a0495fb0bf6747c530a86e1626854479742de29c7d35ab151d41941f224df4be` |
| 14 | `theorem` | [image_const_add_Ioi](../../../../../mathematics/Algebra/UniversalAlgebra/Monoid/Variantd7d9729999c601b3847cd19fbbd70ffd4107058e933118a909f5f72a7b4c776f.lean/declarations/image-const-add-ioi--aa2181f22efac11373610667.md) | 127 | `result-track:aa2181f22efac1137361066704050d71d2a6d68558ec65698f54d7fdceb55da8` |
| 15 | `theorem` | [image_const_add_Icc](../../../../../mathematics/Algebra/UniversalAlgebra/Monoid/Variantd7d9729999c601b3847cd19fbbd70ffd4107058e933118a909f5f72a7b4c776f.lean/declarations/image-const-add-icc--27074901f887b843c01a0d3e.md) | 132 | `result-track:27074901f887b843c01a0d3eca429f17b4b41bdf9fd606705412c480c50b0341` |
| 16 | `theorem` | [image_const_add_Ico](../../../../../mathematics/Algebra/UniversalAlgebra/Monoid/Variantd7d9729999c601b3847cd19fbbd70ffd4107058e933118a909f5f72a7b4c776f.lean/declarations/image-const-add-ico--fcc3a04c9ab12f296dfeec35.md) | 137 | `result-track:fcc3a04c9ab12f296dfeec351c25829c785372e3b4bf855e1d9ebdfcd24b7899` |
| 17 | `theorem` | [image_const_add_Ioc](../../../../../mathematics/Algebra/UniversalAlgebra/Monoid/Variantd7d9729999c601b3847cd19fbbd70ffd4107058e933118a909f5f72a7b4c776f.lean/declarations/image-const-add-ioc--36b7c90e65c6782c884064b8.md) | 142 | `result-track:36b7c90e65c6782c884064b8789ebb5bb5fe09e7554114d3c6285d6b5c0c9eed` |
| 18 | `theorem` | [image_const_add_Ioo](../../../../../mathematics/Algebra/UniversalAlgebra/Monoid/Variantd7d9729999c601b3847cd19fbbd70ffd4107058e933118a909f5f72a7b4c776f.lean/declarations/image-const-add-ioo--849155555932fc17985b91c7.md) | 147 | `result-track:849155555932fc17985b91c754e5341a9397ef31f9151cbbf7266461958acf36` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
