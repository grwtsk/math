# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.Assembly.Variant5f48ffaaae05af2d104555126881eaa257292f0464e81690980aefac28e1dffc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8cf1856bbf53ad781f54a192f63bb1d0d0b41f6a",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Assembly/Variant5f48ffaaae05af2d104555126881eaa257292f0464e81690980aefac28e1dffc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Assembly/Variant5f48ffaaae05af2d104555126881eaa257292f0464e81690980aefac28e1dffc.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Assembly/Variant5f48ffaaae05af2d104555126881eaa257292f0464e81690980aefac28e1dffc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8cf1856bbf53ad781f54a192f63bb1d0d0b41f6a`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Assembly/Variant5f48ffaaae05af2d104555126881eaa257292f0464e81690980aefac28e1dffc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Assembly/Variant5f48ffaaae05af2d104555126881eaa257292f0464e81690980aefac28e1dffc.lean.json)

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
| 1 | `def` | [PrimitiveCharacterHalfPlusEpsilonFamily](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Assembly/Variant5f48ffaaae05af2d104555126881eaa257292f0464e81690980aefac28e1dffc.lean/declarations/primitivecharacterhalfplusepsilonfamily--f4fe9c8d4fe0fae58cb3963b.md) | 26 | `declaration-track:f4fe9c8d4fe0fae58cb3963b385c793079ef0cf14ba892439ab14dfcc5643ef8` |
| 2 | `def` | [UniformHybridDirichletHalfPlusEpsilon](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Assembly/Variant5f48ffaaae05af2d104555126881eaa257292f0464e81690980aefac28e1dffc.lean/declarations/uniformhybriddirichlethalfplusepsilon--8e0c3fb79ab49cbc0ff35d9d.md) | 36 | `declaration-track:8e0c3fb79ab49cbc0ff35d9d7102a755fb3c29653c0de7fc765743bfe16e3307` |
| 3 | `theorem` | [primitiveCharacterHalfPlusEpsilonFamily_implies_dirichletGRH](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Assembly/Variant5f48ffaaae05af2d104555126881eaa257292f0464e81690980aefac28e1dffc.lean/declarations/primitivecharacterhalfplusepsilonfamily-implies-dirichletgrh--918e0a9438f823efd64e8e16.md) | 50 | `result-track:918e0a9438f823efd64e8e161171c354b7d3dcd39d6d0aa2762ff30cd219b7d7` |
| 4 | `theorem` | [dirichletGRH_implies_primitiveCharacterHalfPlusEpsilonFamily](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Assembly/Variant5f48ffaaae05af2d104555126881eaa257292f0464e81690980aefac28e1dffc.lean/declarations/dirichletgrh-implies-primitivecharacterhalfplusepsilonfamily--030c8a5016cf6cd1ce3931a2.md) | 76 | `result-track:030c8a5016cf6cd1ce3931a2b733d11b3ca5efb551e5fafc357b1db59ecaa1ed` |
| 5 | `theorem` | [dirichletGRH_iff_halfPlusEpsilonFamily](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Assembly/Variant5f48ffaaae05af2d104555126881eaa257292f0464e81690980aefac28e1dffc.lean/declarations/dirichletgrh-iff-halfplusepsilonfamily--2b25fbc7fe5d9f7c9b904be4.md) | 96 | `result-track:2b25fbc7fe5d9f7c9b904be47c3bf4c8ee53561510afff39ecea109975a82376` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
