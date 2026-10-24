# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.Assembly.Variante4bf82d9f5c5327a3e02b22150f279d9fdd747ceb4e0b538242ba26ff77ba1b8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6db8cedf300cd54cc7f1f07b81eb0389398be206",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Assembly/Variante4bf82d9f5c5327a3e02b22150f279d9fdd747ceb4e0b538242ba26ff77ba1b8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Assembly/Variante4bf82d9f5c5327a3e02b22150f279d9fdd747ceb4e0b538242ba26ff77ba1b8.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Assembly/Variante4bf82d9f5c5327a3e02b22150f279d9fdd747ceb4e0b538242ba26ff77ba1b8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6db8cedf300cd54cc7f1f07b81eb0389398be206`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Assembly/Variante4bf82d9f5c5327a3e02b22150f279d9fdd747ceb4e0b538242ba26ff77ba1b8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Assembly/Variante4bf82d9f5c5327a3e02b22150f279d9fdd747ceb4e0b538242ba26ff77ba1b8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [PrimitiveCharacterHalfPlusEpsilonFamily](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Assembly/Variante4bf82d9f5c5327a3e02b22150f279d9fdd747ceb4e0b538242ba26ff77ba1b8.lean/declarations/primitivecharacterhalfplusepsilonfamily--a728f9c786b259ede4002c8b.md) | 34 | `declaration-track:a728f9c786b259ede4002c8b8000323c97921149feda2a72305a1514149ab52b` |
| 2 | `def` | [UniformHybridDirichletHalfPlusEpsilon](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Assembly/Variante4bf82d9f5c5327a3e02b22150f279d9fdd747ceb4e0b538242ba26ff77ba1b8.lean/declarations/uniformhybriddirichlethalfplusepsilon--266bd98f7dc6b759b40f6f77.md) | 44 | `declaration-track:266bd98f7dc6b759b40f6f77dcfb430f6d8cf6474f5cf11f0dde9160009217d0` |
| 3 | `theorem` | [primitiveCharacterHalfPlusEpsilonFamily_implies_dirichletGRH](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Assembly/Variante4bf82d9f5c5327a3e02b22150f279d9fdd747ceb4e0b538242ba26ff77ba1b8.lean/declarations/primitivecharacterhalfplusepsilonfamily-implies-dirichletgrh--1fbfb07050ebd4eedff00d10.md) | 58 | `result-track:1fbfb07050ebd4eedff00d101f4a5c0d07f75d50b194e8b0ab0ee4d5f3826807` |
| 4 | `theorem` | [dirichletGRH_implies_primitiveCharacterHalfPlusEpsilonFamily](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Assembly/Variante4bf82d9f5c5327a3e02b22150f279d9fdd747ceb4e0b538242ba26ff77ba1b8.lean/declarations/dirichletgrh-implies-primitivecharacterhalfplusepsilonfamily--02190987223ceeb437137f18.md) | 84 | `result-track:02190987223ceeb437137f18d1e8561f80b7f2d16025624308a3b6ebd3ca478a` |
| 5 | `theorem` | [dirichletGRH_iff_halfPlusEpsilonFamily](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Assembly/Variante4bf82d9f5c5327a3e02b22150f279d9fdd747ceb4e0b538242ba26ff77ba1b8.lean/declarations/dirichletgrh-iff-halfplusepsilonfamily--517cb2101f03c7401671f2ef.md) | 104 | `result-track:517cb2101f03c7401671f2efde84e2e30dd02e02bf5f6613542cf6584cdd0be8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
