# Verification target: GRWTSK.Algebra.LinearAlgebra.StdBasis.Variantd8c46979ba0dc15ea007632486aa792529f031476b10865e6b2769fb3c80e256

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e5ee7fce804fdf1004b65c281aa892a32fc9eb89",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/StdBasis/Variantd8c46979ba0dc15ea007632486aa792529f031476b10865e6b2769fb3c80e256.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/StdBasis/Variantd8c46979ba0dc15ea007632486aa792529f031476b10865e6b2769fb3c80e256.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/StdBasis/Variantd8c46979ba0dc15ea007632486aa792529f031476b10865e6b2769fb3c80e256.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e5ee7fce804fdf1004b65c281aa892a32fc9eb89`.

Source path: `GRWTSK/Algebra/LinearAlgebra/StdBasis/Variantd8c46979ba0dc15ea007632486aa792529f031476b10865e6b2769fb3c80e256.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/StdBasis/Variantd8c46979ba0dc15ea007632486aa792529f031476b10865e6b2769fb3c80e256.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Matrix.Basis` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Basis` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Pi` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [stdBasis](../../../../../mathematics/Algebra/LinearAlgebra/StdBasis/Variantd8c46979ba0dc15ea007632486aa792529f031476b10865e6b2769fb3c80e256.lean/declarations/stdbasis--8df0bd344437f4fe83bb7043.md) | 56 | `declaration-track:8df0bd344437f4fe83bb7043dae0929115a16a036d8de033a09d832c9d109e01` |
| 2 | `theorem` | [stdBasis_apply](../../../../../mathematics/Algebra/LinearAlgebra/StdBasis/Variantd8c46979ba0dc15ea007632486aa792529f031476b10865e6b2769fb3c80e256.lean/declarations/stdbasis-apply--bdff2d2fe7361891f349176c.md) | 60 | `result-track:bdff2d2fe7361891f349176c80a2779ffdd1e300075b9c29010d87d3e678e698` |
| 3 | `theorem` | [stdBasis_apply'](../../../../../mathematics/Algebra/LinearAlgebra/StdBasis/Variantd8c46979ba0dc15ea007632486aa792529f031476b10865e6b2769fb3c80e256.lean/declarations/stdbasis-apply--0f27580a313073041c9c2978.md) | 65 | `result-track:0f27580a313073041c9c2978362b2c02ec9bddc397bdc8d0f332210f779c1381` |
| 4 | `theorem` | [coe_stdBasis](../../../../../mathematics/Algebra/LinearAlgebra/StdBasis/Variantd8c46979ba0dc15ea007632486aa792529f031476b10865e6b2769fb3c80e256.lean/declarations/coe-stdbasis--836888d7c0f87ddbd583d53a.md) | 70 | `result-track:836888d7c0f87ddbd583d53a297e8336a04d2865c59593e4c18ba4e7904d073f` |
| 5 | `theorem` | [stdBasis_same](../../../../../mathematics/Algebra/LinearAlgebra/StdBasis/Variantd8c46979ba0dc15ea007632486aa792529f031476b10865e6b2769fb3c80e256.lean/declarations/stdbasis-same--64da75f9a1b60d7009ce4e4f.md) | 75 | `result-track:64da75f9a1b60d7009ce4e4f1e9d49cdc466cd58a13167cc2a12e86a15f05f4b` |
| 6 | `theorem` | [stdBasis_ne](../../../../../mathematics/Algebra/LinearAlgebra/StdBasis/Variantd8c46979ba0dc15ea007632486aa792529f031476b10865e6b2769fb3c80e256.lean/declarations/stdbasis-ne--e8b63c9171322295846cb760.md) | 79 | `result-track:e8b63c9171322295846cb760c53db84f3fd317fa2e6782eb0904fa1e958231e3` |
| 7 | `theorem` | [stdBasis_eq_pi_diag](../../../../../mathematics/Algebra/LinearAlgebra/StdBasis/Variantd8c46979ba0dc15ea007632486aa792529f031476b10865e6b2769fb3c80e256.lean/declarations/stdbasis-eq-pi-diag--d6f8787f6a6db1f83bd6dd8d.md) | 83 | `result-track:d6f8787f6a6db1f83bd6dd8d1254148988e3099d10631eab4744c51a4f25dd40` |
| 8 | `theorem` | [ker_stdBasis](../../../../../mathematics/Algebra/LinearAlgebra/StdBasis/Variantd8c46979ba0dc15ea007632486aa792529f031476b10865e6b2769fb3c80e256.lean/declarations/ker-stdbasis--8e9b31a9041b64404238fc30.md) | 90 | `result-track:8e9b31a9041b64404238fc30dc0c0f1f0f84be9ef87d81121a1840dd0ecb4c0a` |
| 9 | `theorem` | [proj_comp_stdBasis](../../../../../mathematics/Algebra/LinearAlgebra/StdBasis/Variantd8c46979ba0dc15ea007632486aa792529f031476b10865e6b2769fb3c80e256.lean/declarations/proj-comp-stdbasis--7712dafba64178afa16b8c1c.md) | 94 | `result-track:7712dafba64178afa16b8c1c8b50b958692006127ff538c6f16e97d29b5cd0e5` |
| 10 | `theorem` | [proj_stdBasis_same](../../../../../mathematics/Algebra/LinearAlgebra/StdBasis/Variantd8c46979ba0dc15ea007632486aa792529f031476b10865e6b2769fb3c80e256.lean/declarations/proj-stdbasis-same--dc0ab20b2fbb91344aa650bc.md) | 98 | `result-track:dc0ab20b2fbb91344aa650bcff05d76e2a8d36a72f24d56d425edeada8288156` |
| 11 | `theorem` | [proj_stdBasis_ne](../../../../../mathematics/Algebra/LinearAlgebra/StdBasis/Variantd8c46979ba0dc15ea007632486aa792529f031476b10865e6b2769fb3c80e256.lean/declarations/proj-stdbasis-ne--8360298f7a329edb57b60cb3.md) | 102 | `result-track:8360298f7a329edb57b60cb3e4d90db18f8b64b536d6bb7f97b2f3e9819671a1` |
| 12 | `theorem` | [iSup_range_stdBasis_le_iInf_ker_proj](../../../../../mathematics/Algebra/LinearAlgebra/StdBasis/Variantd8c46979ba0dc15ea007632486aa792529f031476b10865e6b2769fb3c80e256.lean/declarations/isup-range-stdbasis-le-iinf-ker-proj--60a3e2e1b7c2f0ede1b83ffe.md) | 106 | `result-track:60a3e2e1b7c2f0ede1b83ffeb39feb014485fd7932795011885a42b487cd027a` |
| 13 | `theorem` | [iInf_ker_proj_le_iSup_range_stdBasis](../../../../../mathematics/Algebra/LinearAlgebra/StdBasis/Variantd8c46979ba0dc15ea007632486aa792529f031476b10865e6b2769fb3c80e256.lean/declarations/iinf-ker-proj-le-isup-range-stdbasis--47be897a4d094a9281f86631.md) | 116 | `result-track:47be897a4d094a9281f86631d1a5db6be394c7103c01f294b511b4f27b3e5ff4` |
| 14 | `theorem` | [iSup_range_stdBasis_eq_iInf_ker_proj](../../../../../mathematics/Algebra/LinearAlgebra/StdBasis/Variantd8c46979ba0dc15ea007632486aa792529f031476b10865e6b2769fb3c80e256.lean/declarations/isup-range-stdbasis-eq-iinf-ker-proj--34e07e148a0ba8fcf36bb4e0.md) | 133 | `result-track:34e07e148a0ba8fcf36bb4e0f42cc007ee23cc5754f4754aaf101fd8a1e366f3` |
| 15 | `theorem` | [iSup_range_stdBasis](../../../../../mathematics/Algebra/LinearAlgebra/StdBasis/Variantd8c46979ba0dc15ea007632486aa792529f031476b10865e6b2769fb3c80e256.lean/declarations/isup-range-stdbasis--8e6658de2690fca66236a47a.md) | 142 | `result-track:8e6658de2690fca66236a47a6efd83c2126fc13f075659cb0e66faea4c777343` |
| 16 | `theorem` | [disjoint_stdBasis_stdBasis](../../../../../mathematics/Algebra/LinearAlgebra/StdBasis/Variantd8c46979ba0dc15ea007632486aa792529f031476b10865e6b2769fb3c80e256.lean/declarations/disjoint-stdbasis-stdbasis--6ad15177eb434a5f5dc6faa8.md) | 150 | `result-track:6ad15177eb434a5f5dc6faa8f603352d9320e2047a67277ab0b822653c075ae5` |
| 17 | `theorem` | [stdBasis_eq_single](../../../../../mathematics/Algebra/LinearAlgebra/StdBasis/Variantd8c46979ba0dc15ea007632486aa792529f031476b10865e6b2769fb3c80e256.lean/declarations/stdbasis-eq-single--b054e04c706c3256fb11e334.md) | 166 | `result-track:b054e04c706c3256fb11e3344ddfbe44c8fd1d8e77c0c4975d2152354c5b8ca5` |
| 18 | `theorem` | [linearIndependent_stdBasis](../../../../../mathematics/Algebra/LinearAlgebra/StdBasis/Variantd8c46979ba0dc15ea007632486aa792529f031476b10865e6b2769fb3c80e256.lean/declarations/linearindependent-stdbasis--a8035ee5687872acd9c47490.md) | 185 | `result-track:a8035ee5687872acd9c47490b535d6e4f60892c2f7043cceca277898319bf9b4` |
| 19 | `def` | [basis](../../../../../mathematics/Algebra/LinearAlgebra/StdBasis/Variantd8c46979ba0dc15ea007632486aa792529f031476b10865e6b2769fb3c80e256.lean/declarations/basis--a941a263c07056e74e521660.md) | 227 | `declaration-track:a941a263c07056e74e521660ab2909dab395aefe0d43fed6c95375d04948dd94` |
| 20 | `theorem` | [basis_repr_stdBasis](../../../../../mathematics/Algebra/LinearAlgebra/StdBasis/Variantd8c46979ba0dc15ea007632486aa792529f031476b10865e6b2769fb3c80e256.lean/declarations/basis-repr-stdbasis--2dd37d779266c3d5e8887625.md) | 241 | `result-track:2dd37d779266c3d5e8887625723ae933634cd96d07f76f5129d830447dd90b29` |
| 21 | `theorem` | [basis_apply](../../../../../mathematics/Algebra/LinearAlgebra/StdBasis/Variantd8c46979ba0dc15ea007632486aa792529f031476b10865e6b2769fb3c80e256.lean/declarations/basis-apply--de697c460cd57c94cbf95284.md) | 265 | `result-track:de697c460cd57c94cbf952841f0ac040e7c950f034bb8f481efcf2884315a552` |
| 22 | `theorem` | [basis_repr](../../../../../mathematics/Algebra/LinearAlgebra/StdBasis/Variantd8c46979ba0dc15ea007632486aa792529f031476b10865e6b2769fb3c80e256.lean/declarations/basis-repr--4cd560ab5c0c02b84a910251.md) | 271 | `result-track:4cd560ab5c0c02b84a9102514ccb49726eb0191ff3f9f574ddfe1e8d748b0366` |
| 23 | `def` | [basisFun](../../../../../mathematics/Algebra/LinearAlgebra/StdBasis/Variantd8c46979ba0dc15ea007632486aa792529f031476b10865e6b2769fb3c80e256.lean/declarations/basisfun--46851a578d872c1479728d81.md) | 283 | `declaration-track:46851a578d872c1479728d81d4b18966319676109083960f8fc8f2b43cc97ff5` |
| 24 | `theorem` | [basisFun_apply](../../../../../mathematics/Algebra/LinearAlgebra/StdBasis/Variantd8c46979ba0dc15ea007632486aa792529f031476b10865e6b2769fb3c80e256.lean/declarations/basisfun-apply--4caddb2e21e5758c53c6132f.md) | 288 | `result-track:4caddb2e21e5758c53c6132f3e1b9c2704228b7c2f4e81130623435f72a3345b` |
| 25 | `theorem` | [basisFun_repr](../../../../../mathematics/Algebra/LinearAlgebra/StdBasis/Variantd8c46979ba0dc15ea007632486aa792529f031476b10865e6b2769fb3c80e256.lean/declarations/basisfun-repr--168f9981964fa2c07f5a6661.md) | 294 | `result-track:168f9981964fa2c07f5a666179d04f243962752e554bba906f19fdc4118c6326` |
| 26 | `theorem` | [basisFun_equivFun](../../../../../mathematics/Algebra/LinearAlgebra/StdBasis/Variantd8c46979ba0dc15ea007632486aa792529f031476b10865e6b2769fb3c80e256.lean/declarations/basisfun-equivfun--319e497dbfbfa59d15ba99ba.md) | 298 | `result-track:319e497dbfbfa59d15ba99ba991a7f21924148f72d1e850265de60c94154ceb7` |
| 27 | `def` | [stdBasis](../../../../../mathematics/Algebra/LinearAlgebra/StdBasis/Variantd8c46979ba0dc15ea007632486aa792529f031476b10865e6b2769fb3c80e256.lean/declarations/stdbasis--7312b34ccb58f0547fcc514d.md) | 313 | `declaration-track:7312b34ccb58f0547fcc514d00df38961a19e1205bc7fbecb1dee1cb542b2fb3` |
| 28 | `theorem` | [stdBasis_eq_stdBasisMatrix](../../../../../mathematics/Algebra/LinearAlgebra/StdBasis/Variantd8c46979ba0dc15ea007632486aa792529f031476b10865e6b2769fb3c80e256.lean/declarations/stdbasis-eq-stdbasismatrix--3abccc6ea39d53ecc563bc3f.md) | 319 | `result-track:3abccc6ea39d53ecc563bc3f8c7e487b7eae29d41c72fddcec183e42620ae2ab` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
