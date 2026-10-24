# Verification target: GRWTSK.Algebra.LinearAlgebra.MapDomain.Variant1225f8f4be9055604cce70d69c49b058fa189671008fdebdb3e73584421330e6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6e853f214a8e7b25bc85da4c43ba4881a25cd32f",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/MapDomain/Variant1225f8f4be9055604cce70d69c49b058fa189671008fdebdb3e73584421330e6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/MapDomain/Variant1225f8f4be9055604cce70d69c49b058fa189671008fdebdb3e73584421330e6.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/MapDomain/Variant1225f8f4be9055604cce70d69c49b058fa189671008fdebdb3e73584421330e6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6e853f214a8e7b25bc85da4c43ba4881a25cd32f`.

Source path: `GRWTSK/Algebra/LinearAlgebra/MapDomain/Variant1225f8f4be9055604cce70d69c49b058fa189671008fdebdb3e73584421330e6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/MapDomain/Variant1225f8f4be9055604cce70d69c49b058fa189671008fdebdb3e73584421330e6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.BigOperators` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.Submodule.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.MonoidAlgebra.Defs` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finsupp.SMul` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Finsupp.LSum` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [mapDomain](../../../../../mathematics/Algebra/LinearAlgebra/MapDomain/Variant1225f8f4be9055604cce70d69c49b058fa189671008fdebdb3e73584421330e6.lean/declarations/mapdomain--08e89c08ac04f09a8b20f132.md) | 33 | `declaration-track:08e89c08ac04f09a8b20f1324e6d4b9a26c6f4296ec51a88a3c2a4c821a750e8` |
| 2 | `lemma` | [mapDomain_sum](../../../../../mathematics/Algebra/LinearAlgebra/MapDomain/Variant1225f8f4be9055604cce70d69c49b058fa189671008fdebdb3e73584421330e6.lean/declarations/mapdomain-sum--bdd4527feae40cad6c086c02.md) | 35 | `result-track:bdd4527feae40cad6c086c02e212438592679393a43d9b1f0b8b7f7598b2fa55` |
| 3 | `lemma` | [mapDomain_single](../../../../../mathematics/Algebra/LinearAlgebra/MapDomain/Variant1225f8f4be9055604cce70d69c49b058fa189671008fdebdb3e73584421330e6.lean/declarations/mapdomain-single--60e97b5ebf5bfa949e7ec748.md) | 38 | `result-track:60e97b5ebf5bfa949e7ec748affbe763abd496c7a6ff2a7675246e8428b4c302` |
| 4 | `lemma` | [mapDomain_injective](../../../../../mathematics/Algebra/LinearAlgebra/MapDomain/Variant1225f8f4be9055604cce70d69c49b058fa189671008fdebdb3e73584421330e6.lean/declarations/mapdomain-injective--471cf05106d0ec926eab84ff.md) | 40 | `result-track:471cf05106d0ec926eab84ff9b5a85262ce1570a629a790135160681ba31660a` |
| 5 | `theorem` | [mapDomain_one](../../../../../mathematics/Algebra/LinearAlgebra/MapDomain/Variant1225f8f4be9055604cce70d69c49b058fa189671008fdebdb3e73584421330e6.lean/declarations/mapdomain-one--11aa83674ba5e116b8ce4965.md) | 54 | `result-track:11aa83674ba5e116b8ce496574f7fb98084298e0164dcb65559a84d16426e1ca` |
| 6 | `theorem` | [mapDomain_mul](../../../../../mathematics/Algebra/LinearAlgebra/MapDomain/Variant1225f8f4be9055604cce70d69c49b058fa189671008fdebdb3e73584421330e6.lean/declarations/mapdomain-mul--0886349072d73cac416196f2.md) | 60 | `result-track:0886349072d73cac416196f2014c4dfed5d46929d2a13ac588e371e585fee5a8` |
| 7 | `def` | [mapDomainRingHom](../../../../../mathematics/Algebra/LinearAlgebra/MapDomain/Variant1225f8f4be9055604cce70d69c49b058fa189671008fdebdb3e73584421330e6.lean/declarations/mapdomainringhom--7bc20b91fe8a56c04f9d1b6a.md) | 80 | `declaration-track:7bc20b91fe8a56c04f9d1b6a4ac4d51e5869fe2d7c19d0b7a41cc6ce410c86cc` |
| 8 | `abbrev` | [mapDomain](../../../../../mathematics/Algebra/LinearAlgebra/MapDomain/Variant1225f8f4be9055604cce70d69c49b058fa189671008fdebdb3e73584421330e6.lean/declarations/mapdomain--4147d50281a1cbeafc3df6a9.md) | 95 | `declaration-track:4147d50281a1cbeafc3df6a9617addb82e696cebc3305199573ac3717f92b2b0` |
| 9 | `lemma` | [mapDomain_sum](../../../../../mathematics/Algebra/LinearAlgebra/MapDomain/Variant1225f8f4be9055604cce70d69c49b058fa189671008fdebdb3e73584421330e6.lean/declarations/mapdomain-sum--85824f6b6647c4f75aed9106.md) | 97 | `result-track:85824f6b6647c4f75aed9106a9090d8cbfffc6e650fe3596be0ceb2c7478f70a` |
| 10 | `lemma` | [mapDomain_single](../../../../../mathematics/Algebra/LinearAlgebra/MapDomain/Variant1225f8f4be9055604cce70d69c49b058fa189671008fdebdb3e73584421330e6.lean/declarations/mapdomain-single--aed3abab35ffafce1149892a.md) | 100 | `result-track:aed3abab35ffafce1149892a4f7393a8372e576f1c0e2a2fd5be9707ac12bea7` |
| 11 | `lemma` | [mapDomain_injective](../../../../../mathematics/Algebra/LinearAlgebra/MapDomain/Variant1225f8f4be9055604cce70d69c49b058fa189671008fdebdb3e73584421330e6.lean/declarations/mapdomain-injective--2bd792a2d465d6fe4cb5224c.md) | 102 | `result-track:2bd792a2d465d6fe4cb5224cde5b7961a6cd2166d0de608326f74d1543e91611` |
| 12 | `theorem` | [mapDomain_one](../../../../../mathematics/Algebra/LinearAlgebra/MapDomain/Variant1225f8f4be9055604cce70d69c49b058fa189671008fdebdb3e73584421330e6.lean/declarations/mapdomain-one--61a94602c41e9193e9554725.md) | 113 | `result-track:61a94602c41e9193e955472595f0b2b3fa4dabe3a50db793ea022f02b419aa7f` |
| 13 | `theorem` | [mapDomain_mul](../../../../../mathematics/Algebra/LinearAlgebra/MapDomain/Variant1225f8f4be9055604cce70d69c49b058fa189671008fdebdb3e73584421330e6.lean/declarations/mapdomain-mul--f85da31d3d0418c6664ab642.md) | 120 | `result-track:f85da31d3d0418c6664ab642e3d10c9142787678d2fb796cda31ad2ba935de4e` |
| 14 | `def` | [mapDomainRingHom](../../../../../mathematics/Algebra/LinearAlgebra/MapDomain/Variant1225f8f4be9055604cce70d69c49b058fa189671008fdebdb3e73584421330e6.lean/declarations/mapdomainringhom--b1c693ac8a6917676bca6d6e.md) | 136 | `declaration-track:b1c693ac8a6917676bca6d6ea8af486d31c067504fb59d57e9c255c494da5640` |
| 15 | `def` | [AddMonoidAlgebra.toMultiplicative](../../../../../mathematics/Algebra/LinearAlgebra/MapDomain/Variant1225f8f4be9055604cce70d69c49b058fa189671008fdebdb3e73584421330e6.lean/declarations/addmonoidalgebra-tomultiplicative--12123cfffdd9bfd3207382a7.md) | 158 | `declaration-track:12123cfffdd9bfd3207382a72485e1521b2d03a56100c0841dc34e2836172eed` |
| 16 | `def` | [MonoidAlgebra.toAdditive](../../../../../mathematics/Algebra/LinearAlgebra/MapDomain/Variant1225f8f4be9055604cce70d69c49b058fa189671008fdebdb3e73584421330e6.lean/declarations/monoidalgebra-toadditive--3499ddd8268b44f36614de23.md) | 171 | `declaration-track:3499ddd8268b44f36614de2368d6c0ea1de4597b0d02540192781350c71d5f79` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
