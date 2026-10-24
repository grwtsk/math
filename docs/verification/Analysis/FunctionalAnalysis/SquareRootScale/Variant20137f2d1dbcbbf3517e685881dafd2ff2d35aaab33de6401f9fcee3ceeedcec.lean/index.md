# Verification target: GRWTSK.Analysis.FunctionalAnalysis.SquareRootScale.Variant20137f2d1dbcbbf3517e685881dafd2ff2d35aaab33de6401f9fcee3ceeedcec

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6a24a481ccaae1ab6a020d5260854cb806ab348a",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/SquareRootScale/Variant20137f2d1dbcbbf3517e685881dafd2ff2d35aaab33de6401f9fcee3ceeedcec.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/SquareRootScale/Variant20137f2d1dbcbbf3517e685881dafd2ff2d35aaab33de6401f9fcee3ceeedcec.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/SquareRootScale/Variant20137f2d1dbcbbf3517e685881dafd2ff2d35aaab33de6401f9fcee3ceeedcec.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6a24a481ccaae1ab6a020d5260854cb806ab348a`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/SquareRootScale/Variant20137f2d1dbcbbf3517e685881dafd2ff2d35aaab33de6401f9fcee3ceeedcec.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/SquareRootScale/Variant20137f2d1dbcbbf3517e685881dafd2ff2d35aaab33de6401f9fcee3ceeedcec.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.SemiLocalDefect.ResidueDeflection.Arithmetic.WeilSpecialization` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Log.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [PacketSquareRootScale](../../../../../mathematics/Analysis/FunctionalAnalysis/SquareRootScale/Variant20137f2d1dbcbbf3517e685881dafd2ff2d35aaab33de6401f9fcee3ceeedcec.lean/declarations/packetsquarerootscale--161ab1d3b684572a1c5fc174.md) | 27 | `declaration-track:161ab1d3b684572a1c5fc174c40077ee6718f10a94c9f081bb9c0961653c763e` |
| 2 | `constant` | [(anonymous)](../../../../../mathematics/Analysis/FunctionalAnalysis/SquareRootScale/Variant20137f2d1dbcbbf3517e685881dafd2ff2d35aaab33de6401f9fcee3ceeedcec.lean/declarations/constant--a6f8b0d0d767f10ef377ae6a.md) | 51 | `declaration-track:a6f8b0d0d767f10ef377ae6a30489c4d85e93c71d2d99d25ac63ee52337a7164` |
| 3 | `constant` | [*](../../../../../mathematics/Analysis/FunctionalAnalysis/SquareRootScale/Variant20137f2d1dbcbbf3517e685881dafd2ff2d35aaab33de6401f9fcee3ceeedcec.lean/declarations/anonymous--fbe9fe605bd2518a777c2371.md) | 59 | `declaration-track:fbe9fe605bd2518a777c2371ec456add43d486d5ed5ce10e7a471f2813e99e81` |
| 4 | `def` | [PacketSquareRootScale.weight](../../../../../mathematics/Analysis/FunctionalAnalysis/SquareRootScale/Variant20137f2d1dbcbbf3517e685881dafd2ff2d35aaab33de6401f9fcee3ceeedcec.lean/declarations/packetsquarerootscale-weight--d5bf4aa6b0259e7c608b2f25.md) | 65 | `declaration-track:d5bf4aa6b0259e7c608b2f252c4f378d879ab2af8260edb20993414aa5e18019` |
| 5 | `theorem` | [PacketSquareRootScale.weight_nonnegative](../../../../../mathematics/Analysis/FunctionalAnalysis/SquareRootScale/Variant20137f2d1dbcbbf3517e685881dafd2ff2d35aaab33de6401f9fcee3ceeedcec.lean/declarations/packetsquarerootscale-weight-nonnegative--9a24f6e1c80933eb85eb044d.md) | 88 | `result-track:9a24f6e1c80933eb85eb044da0c8165c6a06d42e9cebcc5ad6f4eaeb9aa6219a` |
| 6 | `structure` | [ArithmeticResidualSquareRootScale](../../../../../mathematics/Analysis/FunctionalAnalysis/SquareRootScale/Variant20137f2d1dbcbbf3517e685881dafd2ff2d35aaab33de6401f9fcee3ceeedcec.lean/declarations/arithmeticresidualsquarerootscale--39868b2197074d0aec46caee.md) | 120 | `declaration-track:39868b2197074d0aec46caee018fb6aedc44260f30a68871b5cd5fe6f5cb115b` |
| 7 | `constant` | [(anonymous)](../../../../../mathematics/Analysis/FunctionalAnalysis/SquareRootScale/Variant20137f2d1dbcbbf3517e685881dafd2ff2d35aaab33de6401f9fcee3ceeedcec.lean/declarations/constant--f2f7ffed6bd760fd48f9d144.md) | 140 | `declaration-track:f2f7ffed6bd760fd48f9d14466a11f9f2d1e7ce71ee63330e9fdbc401f50a806` |
| 8 | `constant` | [*](../../../../../mathematics/Analysis/FunctionalAnalysis/SquareRootScale/Variant20137f2d1dbcbbf3517e685881dafd2ff2d35aaab33de6401f9fcee3ceeedcec.lean/declarations/anonymous--9b04a257c9b12abc179a7a2f.md) | 149 | `declaration-track:9b04a257c9b12abc179a7a2f8ed65bbf45b6ab3f94da83d7582dba1bbd5f45eb` |
| 9 | `theorem` | [arithmeticTrace_squareRoot_transport_bound](../../../../../mathematics/Analysis/FunctionalAnalysis/SquareRootScale/Variant20137f2d1dbcbbf3517e685881dafd2ff2d35aaab33de6401f9fcee3ceeedcec.lean/declarations/arithmetictrace-squareroot-transport-bound--30eaf41215813ad544f2a7fb.md) | 152 | `result-track:30eaf41215813ad544f2a7fb2594923d6c7b93bae6aa54776cb107b63e695a3f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
