# Verification target: GRWTSK.Algebra.LinearAlgebra.DivisionRing.Variante77eee96c2edd36c26fe7c8b690c60356d00b9a06d6f62ebb9e2d12b6d22ab21

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6656116797961d4db3a0a963e51cb2e86864a815",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/DivisionRing/Variante77eee96c2edd36c26fe7c8b690c60356d00b9a06d6f62ebb9e2d12b6d22ab21.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/DivisionRing/Variante77eee96c2edd36c26fe7c8b690c60356d00b9a06d6f62ebb9e2d12b6d22ab21.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/DivisionRing/Variante77eee96c2edd36c26fe7c8b690c60356d00b9a06d6f62ebb9e2d12b6d22ab21.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6656116797961d4db3a0a963e51cb2e86864a815`.

Source path: `GRWTSK/Algebra/LinearAlgebra/DivisionRing/Variante77eee96c2edd36c26fe7c8b690c60356d00b9a06d6f62ebb9e2d12b6d22ab21.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/DivisionRing/Variante77eee96c2edd36c26fe7c8b690c60356d00b9a06d6f62ebb9e2d12b6d22ab21.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Basis.VectorSpace` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Dimension.Finite` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Dimension.RankNullity` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Basis.finite_ofVectorSpaceIndex_of_rank_lt_aleph0](../../../../../mathematics/Algebra/LinearAlgebra/DivisionRing/Variante77eee96c2edd36c26fe7c8b690c60356d00b9a06d6f62ebb9e2d12b6d22ab21.lean/declarations/basis-finite-ofvectorspaceindex-of-rank-lt-aleph0--1ebdd604c1d4f33b7f513495.md) | 49 | `result-track:1ebdd604c1d4f33b7f5134950144d9455f724d6ae7669d0c4eb2d0a09085128d` |
| 2 | `theorem` | [rank_quotient_add_rank_of_divisionRing](../../../../../mathematics/Algebra/LinearAlgebra/DivisionRing/Variante77eee96c2edd36c26fe7c8b690c60356d00b9a06d6f62ebb9e2d12b6d22ab21.lean/declarations/rank-quotient-add-rank-of-divisionring--80eed2776141ef2f30ee70e0.md) | 54 | `result-track:80eed2776141ef2f30ee70e04177c1b37ac65bd4c0a8ff80dc6ecdc1de82136b` |
| 3 | `instance` | [DivisionRing.hasRankNullity](../../../../../mathematics/Algebra/LinearAlgebra/DivisionRing/Variante77eee96c2edd36c26fe7c8b690c60356d00b9a06d6f62ebb9e2d12b6d22ab21.lean/declarations/divisionring-hasranknullity--ceb3c94dc478175105e87bdd.md) | 60 | `declaration-track:ceb3c94dc478175105e87bdd29b435851dc62dcd48c394f17fca3906ec5335da` |
| 4 | `theorem` | [rank_add_rank_split](../../../../../mathematics/Algebra/LinearAlgebra/DivisionRing/Variante77eee96c2edd36c26fe7c8b690c60356d00b9a06d6f62ebb9e2d12b6d22ab21.lean/declarations/rank-add-rank-split--5207999064ad617fd2618cd2.md) | 76 | `result-track:5207999064ad617fd2618cd2dece6084e1e8f71fde692ebca2c8a588c83581b6` |
| 5 | `theorem` | [linearIndependent_of_top_le_span_of_card_eq_finrank](../../../../../mathematics/Algebra/LinearAlgebra/DivisionRing/Variante77eee96c2edd36c26fe7c8b690c60356d00b9a06d6f62ebb9e2d12b6d22ab21.lean/declarations/linearindependent-of-top-le-span-of-card-eq-finrank--86e25c9bba98703257c45e12.md) | 115 | `result-track:86e25c9bba98703257c45e129860a95d1623a5df23f095761e9919042867342f` |
| 6 | `theorem` | [linearIndependent_iff_card_eq_finrank_span](../../../../../mathematics/Algebra/LinearAlgebra/DivisionRing/Variante77eee96c2edd36c26fe7c8b690c60356d00b9a06d6f62ebb9e2d12b6d22ab21.lean/declarations/linearindependent-iff-card-eq-finrank-span--fd7af0537fd6d84a56eb6ffe.md) | 162 | `result-track:fd7af0537fd6d84a56eb6ffe4512cf89251b952fbc053b09d864e0708fc5e2b9` |
| 7 | `theorem` | [linearIndependent_iff_card_le_finrank_span](../../../../../mathematics/Algebra/LinearAlgebra/DivisionRing/Variante77eee96c2edd36c26fe7c8b690c60356d00b9a06d6f62ebb9e2d12b6d22ab21.lean/declarations/linearindependent-iff-card-le-finrank-span--ddbd01bbb99f92bee99a2c47.md) | 184 | `result-track:ddbd01bbb99f92bee99a2c476bdea6ba8100d03d312e45a01ccc9e574321c8ff` |
| 8 | `def` | [basisOfTopLeSpanOfCardEqFinrank](../../../../../mathematics/Algebra/LinearAlgebra/DivisionRing/Variante77eee96c2edd36c26fe7c8b690c60356d00b9a06d6f62ebb9e2d12b6d22ab21.lean/declarations/basisoftoplespanofcardeqfinrank--44f24cd91b970385e951b25d.md) | 189 | `declaration-track:44f24cd91b970385e951b25d3f9e7853acef03369bac9b819fa42b72b9194513` |
| 9 | `theorem` | [coe_basisOfTopLeSpanOfCardEqFinrank](../../../../../mathematics/Algebra/LinearAlgebra/DivisionRing/Variante77eee96c2edd36c26fe7c8b690c60356d00b9a06d6f62ebb9e2d12b6d22ab21.lean/declarations/coe-basisoftoplespanofcardeqfinrank--454b6a6064bdd78c259feb79.md) | 194 | `result-track:454b6a6064bdd78c259feb796f44cdb96d9106598e29c861a8862fae0640dcb8` |
| 10 | `def` | [finsetBasisOfTopLeSpanOfCardEqFinrank](../../../../../mathematics/Algebra/LinearAlgebra/DivisionRing/Variante77eee96c2edd36c26fe7c8b690c60356d00b9a06d6f62ebb9e2d12b6d22ab21.lean/declarations/finsetbasisoftoplespanofcardeqfinrank--44ddeccc4080473392da6097.md) | 201 | `declaration-track:44ddeccc4080473392da60979fad572af033d52929c09dce3d66e65503cc7c1f` |
| 11 | `def` | [setBasisOfTopLeSpanOfCardEqFinrank](../../../../../mathematics/Algebra/LinearAlgebra/DivisionRing/Variante77eee96c2edd36c26fe7c8b690c60356d00b9a06d6f62ebb9e2d12b6d22ab21.lean/declarations/setbasisoftoplespanofcardeqfinrank--1fa60f3a0e6a6ed5b01170ce.md) | 209 | `declaration-track:1fa60f3a0e6a6ed5b01170ce71a17c4de768e10e11da20b5670aba436db1fca4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
