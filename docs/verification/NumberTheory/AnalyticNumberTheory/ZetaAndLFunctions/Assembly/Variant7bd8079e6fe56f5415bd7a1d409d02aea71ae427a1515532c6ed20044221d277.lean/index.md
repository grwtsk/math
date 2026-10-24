# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.Assembly.Variant7bd8079e6fe56f5415bd7a1d409d02aea71ae427a1515532c6ed20044221d277

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "239dcf40696ea0f1bb02606c0021386425cb2595",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Assembly/Variant7bd8079e6fe56f5415bd7a1d409d02aea71ae427a1515532c6ed20044221d277.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Assembly/Variant7bd8079e6fe56f5415bd7a1d409d02aea71ae427a1515532c6ed20044221d277.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Assembly/Variant7bd8079e6fe56f5415bd7a1d409d02aea71ae427a1515532c6ed20044221d277.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `239dcf40696ea0f1bb02606c0021386425cb2595`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Assembly/Variant7bd8079e6fe56f5415bd7a1d409d02aea71ae427a1515532c6ed20044221d277.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Assembly/Variant7bd8079e6fe56f5415bd7a1d409d02aea71ae427a1515532c6ed20044221d277.lean.json)

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
| 1 | `def` | [PrimitiveCharacterHalfPlusEpsilonFamily](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Assembly/Variant7bd8079e6fe56f5415bd7a1d409d02aea71ae427a1515532c6ed20044221d277.lean/declarations/primitivecharacterhalfplusepsilonfamily--5b9ae03fa3d9c2ec95e1f677.md) | 35 | `declaration-track:5b9ae03fa3d9c2ec95e1f67762514f44b19cafb37f8b4c0283a22ce9d4b0c229` |
| 2 | `def` | [UniformHybridDirichletHalfPlusEpsilon](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Assembly/Variant7bd8079e6fe56f5415bd7a1d409d02aea71ae427a1515532c6ed20044221d277.lean/declarations/uniformhybriddirichlethalfplusepsilon--4a0fe47f6addff26ea6946b8.md) | 45 | `declaration-track:4a0fe47f6addff26ea6946b8b88cedfd01a31ca8c40cda44fc6790f7a0ef4a61` |
| 3 | `theorem` | [primitiveCharacterHalfPlusEpsilonFamily_implies_dirichletGRH_of_mellinInterface](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Assembly/Variant7bd8079e6fe56f5415bd7a1d409d02aea71ae427a1515532c6ed20044221d277.lean/declarations/primitivecharacterhalfplusepsilonfamily-implies-dirichletgrh-of-mellinin--fd2dbf7b17734df0e7b4b816.md) | 59 | `result-track:fd2dbf7b17734df0e7b4b8163272b420d72b683c335fe24225b927020f449440` |
| 4 | `theorem` | [dirichletGRH_of_pointwiseHalfPlusEpsilon](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Assembly/Variant7bd8079e6fe56f5415bd7a1d409d02aea71ae427a1515532c6ed20044221d277.lean/declarations/dirichletgrh-of-pointwisehalfplusepsilon--6296e93164a82d5853f99fd9.md) | 80 | `result-track:6296e93164a82d5853f99fd94ba04a05814745fdd5ec8affe84855de295cba9c` |
| 5 | `theorem` | [primitiveCharacterHalfPlusEpsilonFamily_implies_dirichletGRH](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Assembly/Variant7bd8079e6fe56f5415bd7a1d409d02aea71ae427a1515532c6ed20044221d277.lean/declarations/primitivecharacterhalfplusepsilonfamily-implies-dirichletgrh--cd8dcf679a1e533d1628da2b.md) | 97 | `result-track:cd8dcf679a1e533d1628da2b139ea942eb053e1a36a6c43c74d9b2ff3500c20d` |
| 6 | `theorem` | [dirichletGRH_implies_primitiveCharacterHalfPlusEpsilonFamily](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Assembly/Variant7bd8079e6fe56f5415bd7a1d409d02aea71ae427a1515532c6ed20044221d277.lean/declarations/dirichletgrh-implies-primitivecharacterhalfplusepsilonfamily--d2f09793e48421b2b0581b47.md) | 107 | `result-track:d2f09793e48421b2b0581b4743999b83a64cf00e579386a07f2d818694313cb6` |
| 7 | `theorem` | [dirichletGRH_iff_halfPlusEpsilonFamily](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Assembly/Variant7bd8079e6fe56f5415bd7a1d409d02aea71ae427a1515532c6ed20044221d277.lean/declarations/dirichletgrh-iff-halfplusepsilonfamily--8d52823112cfb64e0d3558eb.md) | 127 | `result-track:8d52823112cfb64e0d3558ebb514020f9652683c4522f901b6f6865fee02684c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
