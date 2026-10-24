# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.CountingPrinciples.SourceComponents.Variant260d671f2639f412.PredictiveMemoryCardinality

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9a8266f7ef3b336c12301ffdeb4addd133cb3852",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CountingPrinciples/SourceComponents/Variant260d671f2639f412/PredictiveMemoryCardinality.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CountingPrinciples/SourceComponents/Variant260d671f2639f412/PredictiveMemoryCardinality.lean/index.md) · [Full source](../../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CountingPrinciples/SourceComponents/Variant260d671f2639f412/PredictiveMemoryCardinality.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9a8266f7ef3b336c12301ffdeb4addd133cb3852`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CountingPrinciples/SourceComponents/Variant260d671f2639f412/PredictiveMemoryCardinality.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CountingPrinciples/SourceComponents/Variant260d671f2639f412/PredictiveMemoryCardinality.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.Causal.CausalState` — import line 19; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Card` — import line 20; external provider; requires a separately pinned dependency.
- `Mathlib.SetTheory.Cardinal.Finite` — import line 21; external provider; requires a separately pinned dependency.
- [`GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.SourceComponents.Variant260d671f2639f412.PredictiveRepresentationDynamics`](../../../../../../../mathematics/FoundationsLogicAndTypeTheory/TypeTheory/DependentTypeTheory/SourceComponents/Variant260d671f2639f412/PredictiveRepresentationDynamics.lean/index.md) — import line 22; pinned internal source present.
- [`GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.QuotientTypes.SourceComponents.Variant260d671f2639f412.EffectiveMemoryFactor`](../../../../../../../mathematics/FoundationsLogicAndTypeTheory/TypeTheory/DependentTypeTheory/QuotientTypes/SourceComponents/Variant260d671f2639f412/EffectiveMemoryFactor.lean/index.md) — import line 23; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [card_causalState_le_effectiveMemory](../../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CountingPrinciples/SourceComponents/Variant260d671f2639f412/PredictiveMemoryCardinality.lean/declarations/card-causalstate-le-effectivememory--b2178819264eaad8c00451ae.md) | 61 | `result-track:b2178819264eaad8c00451ae5b4fd83ce18cded2a0324f23999b064b332aeabb` |
| 2 | `theorem` | [card_effectiveMemory_le_memory](../../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CountingPrinciples/SourceComponents/Variant260d671f2639f412/PredictiveMemoryCardinality.lean/declarations/card-effectivememory-le-memory--f9cf7c64abe04f4328215a0e.md) | 70 | `result-track:f9cf7c64abe04f4328215a0e4d3b78099d618dc81e79b74cf284a28b11bde7d1` |
| 3 | `theorem` | [card_causalState_le_memory](../../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CountingPrinciples/SourceComponents/Variant260d671f2639f412/PredictiveMemoryCardinality.lean/declarations/card-causalstate-le-memory--fb83ae851191617e933165f0.md) | 78 | `result-track:fb83ae851191617e933165f09d0beb1ad16c26b290d42e86f29131276c14e7ed` |
| 4 | `theorem` | [card_causalState_le_memory_of_finite_memory](../../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CountingPrinciples/SourceComponents/Variant260d671f2639f412/PredictiveMemoryCardinality.lean/declarations/card-causalstate-le-memory-of-finite-memory--8f7937ac8257651a36008586.md) | 92 | `result-track:8f7937ac8257651a360085867ac20d0a2df1a9ccbc8b9795c2664bbafc21d8e9` |
| 5 | `theorem` | [card_causalState_le_memory_of_finite_state](../../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CountingPrinciples/SourceComponents/Variant260d671f2639f412/PredictiveMemoryCardinality.lean/declarations/card-causalstate-le-memory-of-finite-state--9fd5174e4e7d13f7ccc3634c.md) | 109 | `result-track:9fd5174e4e7d13f7ccc3634c87fd3a1b7d952af65069269a74edccdaecbfc2c6` |
| 6 | `theorem` | [natCard_causalState_le_memory](../../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CountingPrinciples/SourceComponents/Variant260d671f2639f412/PredictiveMemoryCardinality.lean/declarations/natcard-causalstate-le-memory--91f49cfd615aa25cda45f3f5.md) | 121 | `result-track:91f49cfd615aa25cda45f3f5124111558d48b25efc45c05df3d0aa8c5c9425ff` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
