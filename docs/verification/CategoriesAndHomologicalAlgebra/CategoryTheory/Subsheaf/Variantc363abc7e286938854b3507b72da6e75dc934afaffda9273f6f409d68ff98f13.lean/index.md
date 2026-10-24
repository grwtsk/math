# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Subsheaf.Variantc363abc7e286938854b3507b72da6e75dc934afaffda9273f6f409d68ff98f13

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e973cc1676dbcf324f097fd0e9c1d41c34ed9476",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Variantc363abc7e286938854b3507b72da6e75dc934afaffda9273f6f409d68ff98f13.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Variantc363abc7e286938854b3507b72da6e75dc934afaffda9273f6f409d68ff98f13.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Variantc363abc7e286938854b3507b72da6e75dc934afaffda9273f6f409d68ff98f13.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e973cc1676dbcf324f097fd0e9c1d41c34ed9476`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Variantc363abc7e286938854b3507b72da6e75dc934afaffda9273f6f409d68ff98f13.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Variantc363abc7e286938854b3507b72da6e75dc934afaffda9273f6f409d68ff98f13.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Elementwise` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.FunctorCategory.EpiMono` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.CategoryTheory.Elementwise` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sites.ConcreteSheafification` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Subpresheaf.Image` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Subpresheaf.Sieves` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Subpresheaf.sheafify](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Variantc363abc7e286938854b3507b72da6e75dc934afaffda9273f6f409d68ff98f13.lean/declarations/subpresheaf-sheafify--b35b58d9b847c47bea5bef1b.md) | 48 | `declaration-track:b35b58d9b847c47bea5bef1b33601567e7213c5d6e5b0268aba09565c5309279` |
| 2 | `theorem` | [Subpresheaf.le_sheafify](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Variantc363abc7e286938854b3507b72da6e75dc934afaffda9273f6f409d68ff98f13.lean/declarations/subpresheaf-le-sheafify--26b07e7b7b002d82e96e2dc9.md) | 57 | `result-track:26b07e7b7b002d82e96e2dc94b4d5ef73faebe167cc54e0a23ff203935cfb0bc` |
| 3 | `theorem` | [Subpresheaf.eq_sheafify](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Variantc363abc7e286938854b3507b72da6e75dc934afaffda9273f6f409d68ff98f13.lean/declarations/subpresheaf-eq-sheafify--74023a4745e4d66fd0093504.md) | 67 | `result-track:74023a4745e4d66fd0093504d36aeaac3cc60ddf771ae9785b9961f9e101fa80` |
| 4 | `theorem` | [Subpresheaf.sheafify_isSheaf](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Variantc363abc7e286938854b3507b72da6e75dc934afaffda9273f6f409d68ff98f13.lean/declarations/subpresheaf-sheafify-issheaf--d54dd513d3935b9079a39a13.md) | 78 | `result-track:d54dd513d3935b9079a39a131afac4fb00cbc7ef21d3bc5b37e4b055726836f2` |
| 5 | `theorem` | [Subpresheaf.eq_sheafify_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Variantc363abc7e286938854b3507b72da6e75dc934afaffda9273f6f409d68ff98f13.lean/declarations/subpresheaf-eq-sheafify-iff--1e3729292c2dc679bd3548f0.md) | 119 | `result-track:1e3729292c2dc679bd3548f061e479a4224b4a568485ff5ec42f2fc7d37c90a4` |
| 6 | `theorem` | [Subpresheaf.isSheaf_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Variantc363abc7e286938854b3507b72da6e75dc934afaffda9273f6f409d68ff98f13.lean/declarations/subpresheaf-issheaf-iff--329608ac7e6e6d3f46b577e2.md) | 123 | `result-track:329608ac7e6e6d3f46b577e24423d0800438bbebed791827a728bc4628366a09` |
| 7 | `theorem` | [Subpresheaf.sheafify_sheafify](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Variantc363abc7e286938854b3507b72da6e75dc934afaffda9273f6f409d68ff98f13.lean/declarations/subpresheaf-sheafify-sheafify--930049946cc45b017b69e16c.md) | 130 | `result-track:930049946cc45b017b69e16c4fc9a7665d4b1d119ab4e2aade1b103249358bf1` |
| 8 | `def` | [Subpresheaf.sheafifyLift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Variantc363abc7e286938854b3507b72da6e75dc934afaffda9273f6f409d68ff98f13.lean/declarations/subpresheaf-sheafifylift--5cfa71d22a8c6545b72eb3e6.md) | 135 | `declaration-track:5cfa71d22a8c6545b72eb3e6d31d71fc25c9bd2697db8e42011093e6cdc12e63` |
| 9 | `theorem` | [Subpresheaf.to_sheafifyLift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Variantc363abc7e286938854b3507b72da6e75dc934afaffda9273f6f409d68ff98f13.lean/declarations/subpresheaf-to-sheafifylift--3faf554b9cde7a7f2cf3c879.md) | 156 | `result-track:3faf554b9cde7a7f2cf3c8794a20fc2d4fadd8c0c5a553303963c39797d98894` |
| 10 | `theorem` | [Subpresheaf.to_sheafify_lift_unique](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Variantc363abc7e286938854b3507b72da6e75dc934afaffda9273f6f409d68ff98f13.lean/declarations/subpresheaf-to-sheafify-lift-unique--1b8eb0c51fc75b1ac42237c3.md) | 166 | `result-track:1b8eb0c51fc75b1ac42237c32db86df62bb3a46e469219839e94bf94af89882b` |
| 11 | `theorem` | [Subpresheaf.sheafify_le](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Variantc363abc7e286938854b3507b72da6e75dc934afaffda9273f6f409d68ff98f13.lean/declarations/subpresheaf-sheafify-le--ed50c0a304876fafac93fb75.md) | 177 | `result-track:ed50c0a304876fafac93fb752402423d21f56a6ad9200a4cb2fdc756c8e2f4b3` |
| 12 | `def` | [Subpresheaf.toRangeSheafify](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Variantc363abc7e286938854b3507b72da6e75dc934afaffda9273f6f409d68ff98f13.lean/declarations/subpresheaf-torangesheafify--0d1a47986ea5c8d367e23b35.md) | 195 | `declaration-track:0d1a47986ea5c8d367e23b35758e16bdc928d4a8d76dc4c3a606c3516533c994` |
| 13 | `def` | [Sheaf.image](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Variantc363abc7e286938854b3507b72da6e75dc934afaffda9273f6f409d68ff98f13.lean/declarations/sheaf-image--d0d67b3dd47cc7a84467c18d.md) | 202 | `declaration-track:d0d67b3dd47cc7a84467c18df602dfef30c76312744f92661e5ae068b3a811e3` |
| 14 | `def` | [Sheaf.toImage](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Variantc363abc7e286938854b3507b72da6e75dc934afaffda9273f6f409d68ff98f13.lean/declarations/sheaf-toimage--0925da729ec5388c030a8d44.md) | 211 | `declaration-track:0925da729ec5388c030a8d4405d79187fbc4b9d7458f0f32d8c2246053cf7a84` |
| 15 | `def` | [Sheaf.imageι](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Variantc363abc7e286938854b3507b72da6e75dc934afaffda9273f6f409d68ff98f13.lean/declarations/sheaf-image--c393d79e01e6119fc652165b.md) | 216 | `declaration-track:c393d79e01e6119fc652165b4d1635d4da5ab2b2d4773f6621ecc0e24ea9f51a` |
| 16 | `theorem` | [Sheaf.toImage_ι](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Variantc363abc7e286938854b3507b72da6e75dc934afaffda9273f6f409d68ff98f13.lean/declarations/sheaf-toimage--a7025addaeabfe7378ed375f.md) | 221 | `result-track:a7025addaeabfe7378ed375fedf08d48fd172b977b62a905bf64632f2c173e88` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Variantc363abc7e286938854b3507b72da6e75dc934afaffda9273f6f409d68ff98f13.lean/declarations/instance--7c230eb70766fc4ccd9c2622.md) | 226 | `declaration-track:7c230eb70766fc4ccd9c262236422b99973d3d814e67078e362e4adee1dbbe1d` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Variantc363abc7e286938854b3507b72da6e75dc934afaffda9273f6f409d68ff98f13.lean/declarations/instance--092ba6b361421096578cf373.md) | 232 | `declaration-track:092ba6b361421096578cf3735ce9c61a0f17755ab44b9a7633eebd5b864dc2af` |
| 19 | `def` | [imageMonoFactorization](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Variantc363abc7e286938854b3507b72da6e75dc934afaffda9273f6f409d68ff98f13.lean/declarations/imagemonofactorization--662a9846bc3b0aaec6090fd6.md) | 246 | `declaration-track:662a9846bc3b0aaec6090fd68ac68f239ed65e4f32333cdf043459e61875489a` |
| 20 | `def` | [imageFactorization](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Variantc363abc7e286938854b3507b72da6e75dc934afaffda9273f6f409d68ff98f13.lean/declarations/imagefactorization--2edbfe145b9967fc1d132a95.md) | 253 | `declaration-track:2edbfe145b9967fc1d132a95c2a9e5300618ad362bd66bfddff83d212a87f158` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Variantc363abc7e286938854b3507b72da6e75dc934afaffda9273f6f409d68ff98f13.lean/declarations/instance--dfffad6e1eee1b6dfcd67b3f.md) | 276 | `declaration-track:dfffad6e1eee1b6dfcd67b3fadaabb0bd93ce89b108c735742c41c58f2219ff7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
