# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.Assembly.Variant672b5a2c7de3885b1ac235e020b2d33938c4e7fb3a8c93707241d67f2f33aacc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "51701f08771e7e74ad732efe62e87f5699844012",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Assembly/Variant672b5a2c7de3885b1ac235e020b2d33938c4e7fb3a8c93707241d67f2f33aacc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Assembly/Variant672b5a2c7de3885b1ac235e020b2d33938c4e7fb3a8c93707241d67f2f33aacc.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Assembly/Variant672b5a2c7de3885b1ac235e020b2d33938c4e7fb3a8c93707241d67f2f33aacc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `51701f08771e7e74ad732efe62e87f5699844012`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Assembly/Variant672b5a2c7de3885b1ac235e020b2d33938c4e7fb3a8c93707241d67f2f33aacc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Assembly/Variant672b5a2c7de3885b1ac235e020b2d33938c4e7fb3a8c93707241d67f2f33aacc.lean.json)

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
| 1 | `def` | [PrimitiveCharacterHalfPlusEpsilonFamily](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Assembly/Variant672b5a2c7de3885b1ac235e020b2d33938c4e7fb3a8c93707241d67f2f33aacc.lean/declarations/primitivecharacterhalfplusepsilonfamily--7f86eb23b152d08e8e395328.md) | 34 | `declaration-track:7f86eb23b152d08e8e395328ab2973f63b670f0c486e17d5afbe0f8fe9b008ac` |
| 2 | `def` | [UniformHybridDirichletHalfPlusEpsilon](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Assembly/Variant672b5a2c7de3885b1ac235e020b2d33938c4e7fb3a8c93707241d67f2f33aacc.lean/declarations/uniformhybriddirichlethalfplusepsilon--6ed77cecfd213155e9a3ab13.md) | 44 | `declaration-track:6ed77cecfd213155e9a3ab13ea16daac177950c56e0753c32a6d765b40b54357` |
| 3 | `theorem` | [primitiveCharacterHalfPlusEpsilonFamily_implies_dirichletGRH](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Assembly/Variant672b5a2c7de3885b1ac235e020b2d33938c4e7fb3a8c93707241d67f2f33aacc.lean/declarations/primitivecharacterhalfplusepsilonfamily-implies-dirichletgrh--ff877f8f4943e3145b3e79c4.md) | 58 | `result-track:ff877f8f4943e3145b3e79c41c7cc539cebb5b2bece327c6b5d36c0b7e317014` |
| 4 | `theorem` | [dirichletGRH_implies_primitiveCharacterHalfPlusEpsilonFamily](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Assembly/Variant672b5a2c7de3885b1ac235e020b2d33938c4e7fb3a8c93707241d67f2f33aacc.lean/declarations/dirichletgrh-implies-primitivecharacterhalfplusepsilonfamily--37f146dc4761fee7295ab547.md) | 84 | `result-track:37f146dc4761fee7295ab547e4bbaa9044d5cc48187a13e04f17bbe3b441d7b7` |
| 5 | `theorem` | [dirichletGRH_iff_halfPlusEpsilonFamily](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Assembly/Variant672b5a2c7de3885b1ac235e020b2d33938c4e7fb3a8c93707241d67f2f33aacc.lean/declarations/dirichletgrh-iff-halfplusepsilonfamily--3772433c48e9bf1ff03fbeea.md) | 104 | `result-track:3772433c48e9bf1ff03fbeea8069cbaa41f4640fc8a00f82e2e948705fad83f9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
