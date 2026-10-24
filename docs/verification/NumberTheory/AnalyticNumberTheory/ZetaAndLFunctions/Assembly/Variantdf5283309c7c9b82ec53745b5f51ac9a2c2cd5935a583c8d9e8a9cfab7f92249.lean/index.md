# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.Assembly.Variantdf5283309c7c9b82ec53745b5f51ac9a2c2cd5935a583c8d9e8a9cfab7f92249

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f4c3e7f6443768d2c01e9264cb83b68d378badae",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Assembly/Variantdf5283309c7c9b82ec53745b5f51ac9a2c2cd5935a583c8d9e8a9cfab7f92249.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Assembly/Variantdf5283309c7c9b82ec53745b5f51ac9a2c2cd5935a583c8d9e8a9cfab7f92249.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Assembly/Variantdf5283309c7c9b82ec53745b5f51ac9a2c2cd5935a583c8d9e8a9cfab7f92249.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f4c3e7f6443768d2c01e9264cb83b68d378badae`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Assembly/Variantdf5283309c7c9b82ec53745b5f51ac9a2c2cd5935a583c8d9e8a9cfab7f92249.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Assembly/Variantdf5283309c7c9b82ec53745b5f51ac9a2c2cd5935a583c8d9e8a9cfab7f92249.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [PrimitiveCharacterHalfPlusEpsilonFamily](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Assembly/Variantdf5283309c7c9b82ec53745b5f51ac9a2c2cd5935a583c8d9e8a9cfab7f92249.lean/declarations/primitivecharacterhalfplusepsilonfamily--77b3c57071cf6e35f72702c2.md) | 26 | `declaration-track:77b3c57071cf6e35f72702c20cdacc4f1b9054203c4de5a1830a098fb84f40d8` |
| 2 | `def` | [UniformHybridDirichletHalfPlusEpsilon](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Assembly/Variantdf5283309c7c9b82ec53745b5f51ac9a2c2cd5935a583c8d9e8a9cfab7f92249.lean/declarations/uniformhybriddirichlethalfplusepsilon--01d325f3e6e0267b18f83c53.md) | 36 | `declaration-track:01d325f3e6e0267b18f83c5373ee9c772df1e568ea88ae964b267e36652b68f6` |
| 3 | `theorem` | [primitiveCharacterHalfPlusEpsilonFamily_implies_dirichletGRH](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Assembly/Variantdf5283309c7c9b82ec53745b5f51ac9a2c2cd5935a583c8d9e8a9cfab7f92249.lean/declarations/primitivecharacterhalfplusepsilonfamily-implies-dirichletgrh--ab3150d2b428f265e65284c0.md) | 50 | `result-track:ab3150d2b428f265e65284c022f1b2156da07b68215ad6346dcad6e1514139d5` |
| 4 | `theorem` | [dirichletGRH_implies_primitiveCharacterHalfPlusEpsilonFamily](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Assembly/Variantdf5283309c7c9b82ec53745b5f51ac9a2c2cd5935a583c8d9e8a9cfab7f92249.lean/declarations/dirichletgrh-implies-primitivecharacterhalfplusepsilonfamily--f5a59bf925e3bbeec9ee8bcb.md) | 76 | `result-track:f5a59bf925e3bbeec9ee8bcbc4c1bb900f7a3c5480b94dce76fb34c39bc6ed0d` |
| 5 | `theorem` | [dirichletGRH_iff_halfPlusEpsilonFamily](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Assembly/Variantdf5283309c7c9b82ec53745b5f51ac9a2c2cd5935a583c8d9e8a9cfab7f92249.lean/declarations/dirichletgrh-iff-halfplusepsilonfamily--e10352abb03b32099fe67e96.md) | 95 | `result-track:e10352abb03b32099fe67e962f350e911c3f4b4fb3a0dfac0e1dc56d82381d3b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
