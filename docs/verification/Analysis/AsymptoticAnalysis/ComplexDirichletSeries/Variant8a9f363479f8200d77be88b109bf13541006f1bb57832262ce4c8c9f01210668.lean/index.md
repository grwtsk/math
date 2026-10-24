# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.ComplexDirichletSeries.Variant8a9f363479f8200d77be88b109bf13541006f1bb57832262ce4c8c9f01210668

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2ec836b78837d40512a8dd164142791f01dbef8c",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/ComplexDirichletSeries/Variant8a9f363479f8200d77be88b109bf13541006f1bb57832262ce4c8c9f01210668.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/ComplexDirichletSeries/Variant8a9f363479f8200d77be88b109bf13541006f1bb57832262ce4c8c9f01210668.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/ComplexDirichletSeries/Variant8a9f363479f8200d77be88b109bf13541006f1bb57832262ce4c8c9f01210668.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2ec836b78837d40512a8dd164142791f01dbef8c`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/ComplexDirichletSeries/Variant8a9f363479f8200d77be88b109bf13541006f1bb57832262ce4c8c9f01210668.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/ComplexDirichletSeries/Variant8a9f363479f8200d77be88b109bf13541006f1bb57832262ce4c8c9f01210668.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Rebuild.AnalyticNumberTheory.ComplexWeights` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.InfiniteSum.Ring` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [complexDirichletTerm](../../../../../mathematics/Analysis/AsymptoticAnalysis/ComplexDirichletSeries/Variant8a9f363479f8200d77be88b109bf13541006f1bb57832262ce4c8c9f01210668.lean/declarations/complexdirichletterm--fe5164df499d883cf1f145e1.md) | 25 | `declaration-track:fe5164df499d883cf1f145e1d15ea100a1712db023f36c15d99b7216852958b7` |
| 2 | `def` | [ComplexDirichletAbsSummable](../../../../../mathematics/Analysis/AsymptoticAnalysis/ComplexDirichletSeries/Variant8a9f363479f8200d77be88b109bf13541006f1bb57832262ce4c8c9f01210668.lean/declarations/complexdirichletabssummable--3bcb4f0ec6e6ae08bda0e9dc.md) | 31 | `declaration-track:3bcb4f0ec6e6ae08bda0e9dc7406244e6bb3b079ba1ce546e00f8f306e3e5c17` |
| 3 | `def` | [complexDirichletSeries](../../../../../mathematics/Analysis/AsymptoticAnalysis/ComplexDirichletSeries/Variant8a9f363479f8200d77be88b109bf13541006f1bb57832262ce4c8c9f01210668.lean/declarations/complexdirichletseries--72dea3c533a44b5535f49493.md) | 36 | `declaration-track:72dea3c533a44b5535f494931c1dc88fb7722da64d90669a21424de084bd54b1` |
| 4 | `theorem` | [complexDirichletSeries_absSummable_of_bounded_coeff](../../../../../mathematics/Analysis/AsymptoticAnalysis/ComplexDirichletSeries/Variant8a9f363479f8200d77be88b109bf13541006f1bb57832262ce4c8c9f01210668.lean/declarations/complexdirichletseries-abssummable-of-bounded-coeff--bd81fd1638e8843e8f881124.md) | 41 | `result-track:bd81fd1638e8843e8f881124c04fbbaf0569c56e315e91427b8f558c19e3a59a` |
| 5 | `def` | [oneArithFnComplex](../../../../../mathematics/Analysis/AsymptoticAnalysis/ComplexDirichletSeries/Variant8a9f363479f8200d77be88b109bf13541006f1bb57832262ce4c8c9f01210668.lean/declarations/onearithfncomplex--b1983c2eb6470333ba5527a9.md) | 62 | `declaration-track:b1983c2eb6470333ba5527a993159fb196666fc13904c45ce925c5b155ea8581` |
| 6 | `theorem` | [complexZeta_terms_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/ComplexDirichletSeries/Variant8a9f363479f8200d77be88b109bf13541006f1bb57832262ce4c8c9f01210668.lean/declarations/complexzeta-terms-summable--0ef9ff5399bab3b6c90e37ce.md) | 65 | `result-track:0ef9ff5399bab3b6c90e37ce3463542e386ce0c720795c118049c09f22757d28` |
| 7 | `theorem` | [complexDirichletSeries_add](../../../../../mathematics/Analysis/AsymptoticAnalysis/ComplexDirichletSeries/Variant8a9f363479f8200d77be88b109bf13541006f1bb57832262ce4c8c9f01210668.lean/declarations/complexdirichletseries-add--ae748720978867be3188b561.md) | 80 | `result-track:ae748720978867be3188b56160aef243f088956d10ecd80e129174604d4b73d3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
