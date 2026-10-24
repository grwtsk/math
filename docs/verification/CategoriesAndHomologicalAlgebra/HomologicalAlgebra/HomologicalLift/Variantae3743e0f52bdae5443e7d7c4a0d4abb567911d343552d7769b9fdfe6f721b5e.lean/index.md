# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.HomologicalAlgebra.HomologicalLift.Variantae3743e0f52bdae5443e7d7c4a0d4abb567911d343552d7769b9fdfe6f721b5e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f49b25e556e6a7bbb6a23a0427c61d595aad90ee",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologicalLift/Variantae3743e0f52bdae5443e7d7c4a0d4abb567911d343552d7769b9fdfe6f721b5e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologicalLift/Variantae3743e0f52bdae5443e7d7c4a0d4abb567911d343552d7769b9fdfe6f721b5e.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologicalLift/Variantae3743e0f52bdae5443e7d7c4a0d4abb567911d343552d7769b9fdfe6f721b5e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f49b25e556e6a7bbb6a23a0427c61d595aad90ee`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologicalLift/Variantae3743e0f52bdae5443e7d7c4a0d4abb567911d343552d7769b9fdfe6f721b5e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologicalLift/Variantae3743e0f52bdae5443e7d7c4a0d4abb567911d343552d7769b9fdfe6f721b5e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Homology.ShortComplex.ModuleCat` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Homology.ShortComplex.HomologicalComplex` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Torsion` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [IntegralChainComplex](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologicalLift/Variantae3743e0f52bdae5443e7d7c4a0d4abb567911d343552d7769b9fdfe6f721b5e.lean/declarations/integralchaincomplex--1a5cd99edf2363e0701b8048.md) | 27 | `declaration-track:1a5cd99edf2363e0701b8048860db2993ab9803c2ed7df251db2c81968ecf6b9` |
| 2 | `structure` | [HomologicalLift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologicalLift/Variantae3743e0f52bdae5443e7d7c4a0d4abb567911d343552d7769b9fdfe6f721b5e.lean/declarations/homologicallift--64d8855dcf29d53271f08c18.md) | 33 | `declaration-track:64d8855dcf29d53271f08c189a063077a32903cad1697266e60cf15df7585171` |
| 3 | `def` | [homologyIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologicalLift/Variantae3743e0f52bdae5443e7d7c4a0d4abb567911d343552d7769b9fdfe6f721b5e.lean/declarations/homologyiso--d91dfef81678703ad00d6fab.md) | 50 | `declaration-track:d91dfef81678703ad00d6fab0c9c8837dc25cf156646f2f48b2e380956ac0638` |
| 4 | `def` | [homologyAddEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologicalLift/Variantae3743e0f52bdae5443e7d7c4a0d4abb567911d343552d7769b9fdfe6f721b5e.lean/declarations/homologyaddequiv--aaafd2e1bb24559c4a4594dd.md) | 55 | `declaration-track:aaafd2e1bb24559c4a4594ddfe1919e75316604a2576c74028688e8a13c48c56` |
| 5 | `theorem` | [homologyAddEquiv_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologicalLift/Variantae3743e0f52bdae5443e7d7c4a0d4abb567911d343552d7769b9fdfe6f721b5e.lean/declarations/homologyaddequiv-apply--c07c70c44952c7231508f804.md) | 60 | `result-track:c07c70c44952c7231508f80495e7be6132af993ad3f6452ebf377071338e794a` |
| 6 | `theorem` | [homologyIso_hom_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologicalLift/Variantae3743e0f52bdae5443e7d7c4a0d4abb567911d343552d7769b9fdfe6f721b5e.lean/declarations/homologyiso-hom-inv--0ebb3b2715822f20f8ac393a.md) | 65 | `result-track:0ebb3b2715822f20f8ac393a2c53c4c91e08c0a5cf43523e6732d7923ca8af6e` |
| 7 | `theorem` | [homologyIso_inv_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologicalLift/Variantae3743e0f52bdae5443e7d7c4a0d4abb567911d343552d7769b9fdfe6f721b5e.lean/declarations/homologyiso-inv-hom--9d0e9240ae10948ad2029f6a.md) | 70 | `result-track:9d0e9240ae10948ad2029f6adfbfdeb613f6e4b201c792d9f937e17e55bf3282` |
| 8 | `theorem` | [homologyIso_isOfFinAddOrder_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologicalLift/Variantae3743e0f52bdae5443e7d7c4a0d4abb567911d343552d7769b9fdfe6f721b5e.lean/declarations/homologyiso-isoffinaddorder-iff--f723de2110af224481f54a35.md) | 75 | `result-track:f723de2110af224481f54a3572188c5f864ccb1045ecb32081a1680753e545a6` |
| 9 | `theorem` | [homologyIso_isOfFinOrder_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologicalLift/Variantae3743e0f52bdae5443e7d7c4a0d4abb567911d343552d7769b9fdfe6f721b5e.lean/declarations/homologyiso-isoffinorder-iff--33b0ce30fb05b5142a68f167.md) | 84 | `result-track:33b0ce30fb05b5142a68f167982f2307a340f3f3e609621bde10d2933a111957` |
| 10 | `theorem` | [homologyIso_addOrderOf](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologicalLift/Variantae3743e0f52bdae5443e7d7c4a0d4abb567911d343552d7769b9fdfe6f721b5e.lean/declarations/homologyiso-addorderof--bd487bd781969ac32dd4fd32.md) | 91 | `result-track:bd487bd781969ac32dd4fd32fb0029c9c9340db840f8662a7691c06416d76b50` |
| 11 | `def` | [homologyTorsionEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologicalLift/Variantae3743e0f52bdae5443e7d7c4a0d4abb567911d343552d7769b9fdfe6f721b5e.lean/declarations/homologytorsionequiv--d3674b6bb23d230f9f82d721.md) | 98 | `declaration-track:d3674b6bb23d230f9f82d7210fa79452a8971518443880de250ff5fc59ba7d04` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
