# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.IsFundamentalgroup.Variant12c8da75d2364826be93c0c50c7d38be21475f08f81a8ca1d6ad0fa0c5be63db

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4427f23db89bac18eeb6fe13501d962b290fba3a",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/IsFundamentalgroup/Variant12c8da75d2364826be93c0c50c7d38be21475f08f81a8ca1d6ad0fa0c5be63db.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsFundamentalgroup/Variant12c8da75d2364826be93c0c50c7d38be21475f08f81a8ca1d6ad0fa0c5be63db.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsFundamentalgroup/Variant12c8da75d2364826be93c0c50c7d38be21475f08f81a8ca1d6ad0fa0c5be63db.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4427f23db89bac18eeb6fe13501d962b290fba3a`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/IsFundamentalgroup/Variant12c8da75d2364826be93c0c50c7d38be21475f08f81a8ca1d6ad0fa0c5be63db.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/IsFundamentalgroup/Variant12c8da75d2364826be93c0c50c7d38be21475f08f81a8ca1d6ad0fa0c5be63db.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Galois.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Galois.Topology` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Galois.Prorepresentability` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.OpenSubgroup` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IsNaturalSMul](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsFundamentalgroup/Variant12c8da75d2364826be93c0c50c7d38be21475f08f81a8ca1d6ad0fa0c5be63db.lean/declarations/isnaturalsmul--f97ab5f922c744f64d4c3e75.md) | 72 | `declaration-track:f97ab5f922c744f64d4c3e75631a47b95995284c0f279185a5309ecc6ecfb964` |
| 2 | `def` | [isoOnObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsFundamentalgroup/Variant12c8da75d2364826be93c0c50c7d38be21475f08f81a8ca1d6ad0fa0c5be63db.lean/declarations/isoonobj--293336bb679e2a92d668c751.md) | 77 | `declaration-track:293336bb679e2a92d668c75149fb5c2f53ccbc47806f90815ccdec0c0974e5e6` |
| 3 | `def` | [toAut](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsFundamentalgroup/Variant12c8da75d2364826be93c0c50c7d38be21475f08f81a8ca1d6ad0fa0c5be63db.lean/declarations/toaut--cba4c49ba161e8aa458b9268.md) | 89 | `declaration-track:cba4c49ba161e8aa458b92685983c0899d0d2494deda2f7e0bfd9135d11af9bd` |
| 4 | `lemma` | [toAut_hom_app_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsFundamentalgroup/Variant12c8da75d2364826be93c0c50c7d38be21475f08f81a8ca1d6ad0fa0c5be63db.lean/declarations/toaut-hom-app-apply--b3c2ec0f2516e599a6aeb24a.md) | 106 | `result-track:b3c2ec0f2516e599a6aeb24a19249f4ae96f7e6968282c1a267f6f22b141b2d8` |
| 5 | `lemma` | [toAut_injective_of_non_trivial](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsFundamentalgroup/Variant12c8da75d2364826be93c0c50c7d38be21475f08f81a8ca1d6ad0fa0c5be63db.lean/declarations/toaut-injective-of-non-trivial--469f5c860ded4f1d6de38727.md) | 110 | `result-track:469f5c860ded4f1d6de3872773b299a73afee85850f55ad893f19c371f6114ce` |
| 6 | `lemma` | [toAut_continuous](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsFundamentalgroup/Variant12c8da75d2364826be93c0c50c7d38be21475f08f81a8ca1d6ad0fa0c5be63db.lean/declarations/toaut-continuous--f1878b1378bad2a749506d74.md) | 122 | `result-track:f1878b1378bad2a749506d744c722336e8aed2087a328145819999974f4f4e6b` |
| 7 | `lemma` | [action_ext_of_isGalois](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsFundamentalgroup/Variant12c8da75d2364826be93c0c50c7d38be21475f08f81a8ca1d6ad0fa0c5be63db.lean/declarations/action-ext-of-isgalois--7b624861831d36058c781861.md) | 135 | `result-track:7b624861831d36058c7818610fd46c048079eb50c11e617738416fab527cd031` |
| 8 | `lemma` | [toAut_surjective_isGalois](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsFundamentalgroup/Variant12c8da75d2364826be93c0c50c7d38be21475f08f81a8ca1d6ad0fa0c5be63db.lean/declarations/toaut-surjective-isgalois--9f1788e91c1e07f028be508a.md) | 145 | `result-track:9f1788e91c1e07f028be508accfa9d0507b914d93514eef479c13a52a2472837` |
| 9 | `lemma` | [toAut_surjective_isGalois_finite_family](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsFundamentalgroup/Variant12c8da75d2364826be93c0c50c7d38be21475f08f81a8ca1d6ad0fa0c5be63db.lean/declarations/toaut-surjective-isgalois-finite-family--eacc2705d60c83849df9fc9d.md) | 152 | `result-track:eacc2705d60c83849df9fc9dac1aed84d42a7d7f31d485af52c6bd24ef85c51a` |
| 10 | `lemma` | [toAut_surjective_of_isPretransitive](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsFundamentalgroup/Variant12c8da75d2364826be93c0c50c7d38be21475f08f81a8ca1d6ad0fa0c5be63db.lean/declarations/toaut-surjective-of-ispretransitive--2967d8d138521f9164f5e04a.md) | 178 | `result-track:2967d8d138521f9164f5e04a49c2db55494cff421f0e6696dac8d1e134eaa3b6` |
| 11 | `lemma` | [isPretransitive_of_surjective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsFundamentalgroup/Variant12c8da75d2364826be93c0c50c7d38be21475f08f81a8ca1d6ad0fa0c5be63db.lean/declarations/ispretransitive-of-surjective--ce65e14927fe1116bdb29d39.md) | 214 | `result-track:ce65e14927fe1116bdb29d39b4eca7d8c4fc78dccff97c7ca13801ba01eb5a1a` |
| 12 | `class` | [IsFundamentalGroup](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsFundamentalgroup/Variant12c8da75d2364826be93c0c50c7d38be21475f08f81a8ca1d6ad0fa0c5be63db.lean/declarations/isfundamentalgroup--9edeaea54fcbe91341ee0a48.md) | 232 | `declaration-track:9edeaea54fcbe91341ee0a48f2fac2fb6a0f9d3e942b2e61f3dd3c424f8c69ed` |
| 13 | `lemma` | [non_trivial](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsFundamentalgroup/Variant12c8da75d2364826be93c0c50c7d38be21475f08f81a8ca1d6ad0fa0c5be63db.lean/declarations/non-trivial--7deb5c87cdf7257e29710330.md) | 244 | `result-track:7deb5c87cdf7257e297103300d3526cccdbd45217b0435efe455efb398075eb3` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsFundamentalgroup/Variant12c8da75d2364826be93c0c50c7d38be21475f08f81a8ca1d6ad0fa0c5be63db.lean/declarations/instance--39f1f8a6d463d7df728b7976.md) | 252 | `declaration-track:39f1f8a6d463d7df728b7976e5fcd6a3a7d1579cbc4646278add39da792e15f1` |
| 15 | `lemma` | [toAut_bijective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsFundamentalgroup/Variant12c8da75d2364826be93c0c50c7d38be21475f08f81a8ca1d6ad0fa0c5be63db.lean/declarations/toaut-bijective--fec8ecba58d6898133d307dd.md) | 262 | `result-track:fec8ecba58d6898133d307dd62d0bc6ce234817d4c655e8df5e2b82939cfa11d` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsFundamentalgroup/Variant12c8da75d2364826be93c0c50c7d38be21475f08f81a8ca1d6ad0fa0c5be63db.lean/declarations/instance--d8e45e0f2d115c5c541d6dce.md) | 266 | `declaration-track:d8e45e0f2d115c5c541d6dcefc77bacff334483ad29227f2e28949e88a150887` |
| 17 | `def` | [toAutMulEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsFundamentalgroup/Variant12c8da75d2364826be93c0c50c7d38be21475f08f81a8ca1d6ad0fa0c5be63db.lean/declarations/toautmulequiv--f9caa5bd24e77e2832c18fa2.md) | 271 | `declaration-track:f9caa5bd24e77e2832c18fa2969fdbbf2e4350ae51be8e16cce29d8a3a0be356` |
| 18 | `lemma` | [toAut_isHomeomorph](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsFundamentalgroup/Variant12c8da75d2364826be93c0c50c7d38be21475f08f81a8ca1d6ad0fa0c5be63db.lean/declarations/toaut-ishomeomorph--6898455c9cf18f13d7ccd7fc.md) | 274 | `result-track:6898455c9cf18f13d7ccd7fc7b49c168437c1519dca28846100b8df04ee07567` |
| 19 | `lemma` | [toAutMulEquiv_isHomeomorph](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsFundamentalgroup/Variant12c8da75d2364826be93c0c50c7d38be21475f08f81a8ca1d6ad0fa0c5be63db.lean/declarations/toautmulequiv-ishomeomorph--0852a5b4286eac6e5d6654bc.md) | 278 | `result-track:0852a5b4286eac6e5d6654bc3a31e2c23b8af590041f2f2eeca999cac4255293` |
| 20 | `def` | [toAutHomeo](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsFundamentalgroup/Variant12c8da75d2364826be93c0c50c7d38be21475f08f81a8ca1d6ad0fa0c5be63db.lean/declarations/toauthomeo--ca03a9db983f18caaf889d24.md) | 282 | `declaration-track:ca03a9db983f18caaf889d240f12a5ee708b34baf385c7dec43f46dc4ecf7d0c` |
| 21 | `lemma` | [toAutMulEquiv_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsFundamentalgroup/Variant12c8da75d2364826be93c0c50c7d38be21475f08f81a8ca1d6ad0fa0c5be63db.lean/declarations/toautmulequiv-apply--2efd108846cce63381d643f0.md) | 287 | `result-track:2efd108846cce63381d643f0c74becf3240f292c721650143c1aacf60cfa85c6` |
| 22 | `lemma` | [toAutHomeo_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsFundamentalgroup/Variant12c8da75d2364826be93c0c50c7d38be21475f08f81a8ca1d6ad0fa0c5be63db.lean/declarations/toauthomeo-apply--63a8898db041c712bee1edd7.md) | 290 | `result-track:63a8898db041c712bee1edd7536103967bdff6dd14a5b1bde7242c29dd3029a6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
