# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.RelabelFin.Variant10cbfce8b86a85721ec9ab6d8ba149edcd477b435d0531aba796e80f5eefb700

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "de788c6b9ca883c15ca393200d06c1a7e1660f05",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RelabelFin/Variant10cbfce8b86a85721ec9ab6d8ba149edcd477b435d0531aba796e80f5eefb700.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RelabelFin/Variant10cbfce8b86a85721ec9ab6d8ba149edcd477b435d0531aba796e80f5eefb700.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RelabelFin/Variant10cbfce8b86a85721ec9ab6d8ba149edcd477b435d0531aba796e80f5eefb700.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `de788c6b9ca883c15ca393200d06c1a7e1660f05`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RelabelFin/Variant10cbfce8b86a85721ec9ab6d8ba149edcd477b435d0531aba796e80f5eefb700.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RelabelFin/Variant10cbfce8b86a85721ec9ab6d8ba149edcd477b435d0531aba796e80f5eefb700.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Option.Lemmas` — import line 16; external provider; requires a separately pinned dependency.
- `Init.Omega` — import line 17; external provider; requires a separately pinned dependency.
- `Init.Data.List.Impl` — import line 18; external provider; requires a separately pinned dependency.
- `Init.Data.List.MinMax` — import line 19; external provider; requires a separately pinned dependency.
- `Init.TacticsExtra` — import line 21; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Clause.maxLiteral](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RelabelFin/Variant10cbfce8b86a85721ec9ab6d8ba149edcd477b435d0531aba796e80f5eefb700.lean/declarations/clause-maxliteral--84ccfbb44b87c032d77e69f6.md) | 36 | `declaration-track:84ccfbb44b87c032d77e69f6f1305fdcbabc51e0d58aace42af180b08c2115af` |
| 2 | `theorem` | [Clause.of_maxLiteral_eq_some](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RelabelFin/Variant10cbfce8b86a85721ec9ab6d8ba149edcd477b435d0531aba796e80f5eefb700.lean/declarations/clause-of-maxliteral-eq-some--d0bd5f2b2946d7714cfdb9b3.md) | 38 | `result-track:d0bd5f2b2946d7714cfdb9b391283c58243565fe23032860d6bb0df99e276e08` |
| 3 | `theorem` | [Clause.maxLiteral_eq_some_of_mem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RelabelFin/Variant10cbfce8b86a85721ec9ab6d8ba149edcd477b435d0531aba796e80f5eefb700.lean/declarations/clause-maxliteral-eq-some-of-mem--e35956d169401be056b94bdf.md) | 50 | `result-track:e35956d169401be056b94bdf19a9c20e046c91bdddd0defaa9174297bca280e5` |
| 4 | `theorem` | [Clause.of_maxLiteral_eq_none](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RelabelFin/Variant10cbfce8b86a85721ec9ab6d8ba149edcd477b435d0531aba796e80f5eefb700.lean/declarations/clause-of-maxliteral-eq-none--a47abb86f6b3dc55621ea45c.md) | 59 | `result-track:a47abb86f6b3dc55621ea45cc2508fa3159a8d0cda89281fb9627f45a88f2247` |
| 5 | `def` | [maxLiteral](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RelabelFin/Variant10cbfce8b86a85721ec9ab6d8ba149edcd477b435d0531aba796e80f5eefb700.lean/declarations/maxliteral--64f8089601b006558c60f965.md) | 68 | `declaration-track:64f8089601b006558c60f965b4b57d1706a438eb04085506f878a3c237d0d27e` |
| 6 | `theorem` | [of_maxLiteral_eq_some'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RelabelFin/Variant10cbfce8b86a85721ec9ab6d8ba149edcd477b435d0531aba796e80f5eefb700.lean/declarations/of-maxliteral-eq-some--950711b553105fb4625d8129.md) | 71 | `result-track:950711b553105fb4625d812941b97323e07db6c5d2184c4d8064de5b587613ad` |
| 7 | `theorem` | [of_maxLiteral_eq_some](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RelabelFin/Variant10cbfce8b86a85721ec9ab6d8ba149edcd477b435d0531aba796e80f5eefb700.lean/declarations/of-maxliteral-eq-some--381c4713ab788c1bcda6763c.md) | 78 | `result-track:381c4713ab788c1bcda6763cedb999de83c1dbb911728113f7b9e635b52c51bf` |
| 8 | `theorem` | [of_maxLiteral_eq_none](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RelabelFin/Variant10cbfce8b86a85721ec9ab6d8ba149edcd477b435d0531aba796e80f5eefb700.lean/declarations/of-maxliteral-eq-none--abd00935611e987f531b0082.md) | 88 | `result-track:abd00935611e987f531b0082fb8621610ea1fdac4b3a42d37ccfcea390b82271` |
| 9 | `def` | [numLiterals](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RelabelFin/Variant10cbfce8b86a85721ec9ab6d8ba149edcd477b435d0531aba796e80f5eefb700.lean/declarations/numliterals--8789e0d758303f08f1df711a.md) | 100 | `declaration-track:8789e0d758303f08f1df711a126056027414f247b919be96d0024ecf3228079b` |
| 10 | `theorem` | [lt_numLiterals](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RelabelFin/Variant10cbfce8b86a85721ec9ab6d8ba149edcd477b435d0531aba796e80f5eefb700.lean/declarations/lt-numliterals--be213a611aec67da88a8aba9.md) | 105 | `result-track:be213a611aec67da88a8aba9236a04b13f375e23ee1451339adb3cf329b79358` |
| 11 | `theorem` | [numLiterals_pos](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RelabelFin/Variant10cbfce8b86a85721ec9ab6d8ba149edcd477b435d0531aba796e80f5eefb700.lean/declarations/numliterals-pos--f661f5b70af4c28f36f48aac.md) | 113 | `result-track:f661f5b70af4c28f36f48aaca9d292ab861072992bd45266e3984e5161902552` |
| 12 | `def` | [relabelFin](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RelabelFin/Variant10cbfce8b86a85721ec9ab6d8ba149edcd477b435d0531aba796e80f5eefb700.lean/declarations/relabelfin--4262e9ba08951404631e9dd0.md) | 122 | `declaration-track:4262e9ba08951404631e9dd07fa496cc8e9f8c0d7eafe8509011d6669dd99887` |
| 13 | `theorem` | [not_exists_mem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RelabelFin/Variant10cbfce8b86a85721ec9ab6d8ba149edcd477b435d0531aba796e80f5eefb700.lean/declarations/not-exists-mem--3721e0b36893f8ce200df4c8.md) | 134 | `result-track:3721e0b36893f8ce200df4c8733b01db97d8cb9b2a627e71f07d5ad6a9d8f618` |
| 14 | `theorem` | [unsat_relabelFin](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RelabelFin/Variant10cbfce8b86a85721ec9ab6d8ba149edcd477b435d0531aba796e80f5eefb700.lean/declarations/unsat-relabelfin--9f01ee1a337d4ecc8c43fc30.md) | 154 | `result-track:9f01ee1a337d4ecc8c43fc306d2d5e6edbef7d99a109b3891a420a6f1bfe83de` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
