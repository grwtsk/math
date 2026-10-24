# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.Assembly.Variantfd77e02f63d3aa33f0c006f313a4d2c448dffd77ee42b5da714597fb1c469e67

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3ca7108c4107fdd92c36ba79b98cea2c3ad596c0",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Assembly/Variantfd77e02f63d3aa33f0c006f313a4d2c448dffd77ee42b5da714597fb1c469e67.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Assembly/Variantfd77e02f63d3aa33f0c006f313a4d2c448dffd77ee42b5da714597fb1c469e67.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Assembly/Variantfd77e02f63d3aa33f0c006f313a4d2c448dffd77ee42b5da714597fb1c469e67.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3ca7108c4107fdd92c36ba79b98cea2c3ad596c0`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Assembly/Variantfd77e02f63d3aa33f0c006f313a4d2c448dffd77ee42b5da714597fb1c469e67.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Assembly/Variantfd77e02f63d3aa33f0c006f313a4d2c448dffd77ee42b5da714597fb1c469e67.lean.json)

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
| 1 | `def` | [PrimitiveCharacterHalfPlusEpsilonFamily](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Assembly/Variantfd77e02f63d3aa33f0c006f313a4d2c448dffd77ee42b5da714597fb1c469e67.lean/declarations/primitivecharacterhalfplusepsilonfamily--179449a4c3d61703914aeb42.md) | 34 | `declaration-track:179449a4c3d61703914aeb42510a90570ade7dcab65a93ffc433daa00aac6fbe` |
| 2 | `def` | [UniformHybridDirichletHalfPlusEpsilon](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Assembly/Variantfd77e02f63d3aa33f0c006f313a4d2c448dffd77ee42b5da714597fb1c469e67.lean/declarations/uniformhybriddirichlethalfplusepsilon--0fff66af2fc77e4db8c936b9.md) | 44 | `declaration-track:0fff66af2fc77e4db8c936b9e10652dbe102e7db90847e1a62518a15fa314467` |
| 3 | `theorem` | [primitiveCharacterHalfPlusEpsilonFamily_implies_dirichletGRH](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Assembly/Variantfd77e02f63d3aa33f0c006f313a4d2c448dffd77ee42b5da714597fb1c469e67.lean/declarations/primitivecharacterhalfplusepsilonfamily-implies-dirichletgrh--0783dc20f3c7f569d0ff664b.md) | 58 | `result-track:0783dc20f3c7f569d0ff664b3afb62e48d93c4886230bd7fefe52c15cfbcf452` |
| 4 | `theorem` | [dirichletGRH_implies_primitiveCharacterHalfPlusEpsilonFamily](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Assembly/Variantfd77e02f63d3aa33f0c006f313a4d2c448dffd77ee42b5da714597fb1c469e67.lean/declarations/dirichletgrh-implies-primitivecharacterhalfplusepsilonfamily--6396b0f46801dfe73c938e9f.md) | 84 | `result-track:6396b0f46801dfe73c938e9faefde4d92f109daafb22e1b6652bba56331adf3f` |
| 5 | `theorem` | [dirichletGRH_iff_halfPlusEpsilonFamily](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Assembly/Variantfd77e02f63d3aa33f0c006f313a4d2c448dffd77ee42b5da714597fb1c469e67.lean/declarations/dirichletgrh-iff-halfplusepsilonfamily--a9853911f7cb2d530ef05428.md) | 103 | `result-track:a9853911f7cb2d530ef05428c987f771cccb989d4fa1be16a90671821a097a80` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
