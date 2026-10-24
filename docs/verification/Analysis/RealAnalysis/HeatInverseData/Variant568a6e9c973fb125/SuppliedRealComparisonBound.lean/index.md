# Verification target: GRWTSK.Analysis.RealAnalysis.HeatInverseData.Variant568a6e9c973fb125.SuppliedRealComparisonBound

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0a379ce2e6675368238563fa8542fb51c96fff7a",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/HeatInverseData/Variant568a6e9c973fb125/SuppliedRealComparisonBound.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/HeatInverseData/Variant568a6e9c973fb125/SuppliedRealComparisonBound.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/HeatInverseData/Variant568a6e9c973fb125/SuppliedRealComparisonBound.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0a379ce2e6675368238563fa8542fb51c96fff7a`.

Source path: `GRWTSK/Analysis/RealAnalysis/HeatInverseData/Variant568a6e9c973fb125/SuppliedRealComparisonBound.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/HeatInverseData/Variant568a6e9c973fb125/SuppliedRealComparisonBound.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.SimpleTypeTheory.FunctionTypes.HeatInverseData.Variant568a6e9c973fb125.TwoSidedInverse`](../../../../../../mathematics/FoundationsLogicAndTypeTheory/TypeTheory/SimpleTypeTheory/FunctionTypes/HeatInverseData/Variant568a6e9c973fb125/TwoSidedInverse.lean/index.md) — import line 19; pinned internal source present.
- `Folder.Spectral.Heat` — import line 21; external provider; requires a separately pinned dependency.
- `Folder.Spectral.Residual` — import line 22; external provider; requires a separately pinned dependency.
- `Folder.Theorem.Spectral.HeatResidual` — import line 23; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [StableInverse](../../../../../../mathematics/Analysis/RealAnalysis/HeatInverseData/Variant568a6e9c973fb125/SuppliedRealComparisonBound.lean/declarations/stableinverse--6abe0d183b4fbdfe8cf9c100.md) | 43 | `declaration-track:6abe0d183b4fbdfe8cf9c100ab77cc2920c8319bc28129d89fc858b82bb0c2aa` |
| 2 | `theorem` | [stable_inverse_has_lipschitz_bound](../../../../../../mathematics/Analysis/RealAnalysis/HeatInverseData/Variant568a6e9c973fb125/SuppliedRealComparisonBound.lean/declarations/stable-inverse-has-lipschitz-bound--820c1d772f26824bdbb506f4.md) | 51 | `result-track:820c1d772f26824bdbb506f430db4422bd392b90f291f0ba6e1aea02e67b0835` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
