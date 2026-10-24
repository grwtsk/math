# Verification target: GRWTSK.NumberTheory.AutomorphicForms.ModularForms.MDifferentiable.Variant2a7b82f9e961cf95e38ac663b62119abcda3695412e327ab0c7a55dbe28dbae9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "27b12b5eac5059370f0b312d21a1db74ae329716",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AutomorphicForms/ModularForms/MDifferentiable/Variant2a7b82f9e961cf95e38ac663b62119abcda3695412e327ab0c7a55dbe28dbae9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/MDifferentiable/Variant2a7b82f9e961cf95e38ac663b62119abcda3695412e327ab0c7a55dbe28dbae9.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/MDifferentiable/Variant2a7b82f9e961cf95e38ac663b62119abcda3695412e327ab0c7a55dbe28dbae9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `27b12b5eac5059370f0b312d21a1db74ae329716`.

Source path: `GRWTSK/NumberTheory/AutomorphicForms/ModularForms/MDifferentiable/Variant2a7b82f9e961cf95e38ac663b62119abcda3695412e327ab0c7a55dbe28dbae9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AutomorphicForms/ModularForms/MDifferentiable/Variant2a7b82f9e961cf95e38ac663b62119abcda3695412e327ab0c7a55dbe28dbae9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.ModularForms.EisensteinSeries.UniformConvergence` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.UpperHalfPlane.Manifold` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.LocallyUniformLimit` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Geometry.Manifold.MFDeriv.FDeriv` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [div_linear_zpow_differentiableOn](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/MDifferentiable/Variant2a7b82f9e961cf95e38ac663b62119abcda3695412e327ab0c7a55dbe28dbae9.lean/declarations/div-linear-zpow-differentiableon--29ec2b614cba51177cbae3e4.md) | 36 | `result-track:29ec2b614cba51177cbae3e4c76bd0afa2415caf89dbf8c12295b741fc57a503` |
| 2 | `lemma` | [eisSummand_extension_differentiableOn](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/MDifferentiable/Variant2a7b82f9e961cf95e38ac663b62119abcda3695412e327ab0c7a55dbe28dbae9.lean/declarations/eissummand-extension-differentiableon--d3be1ddf6b4faaccf841c242.md) | 49 | `result-track:d3be1ddf6b4faaccf841c2428274092b665773a6ac40bebea1dec780be37a21c` |
| 3 | `theorem` | [eisensteinSeries_SIF_MDifferentiable](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/MDifferentiable/Variant2a7b82f9e961cf95e38ac663b62119abcda3695412e327ab0c7a55dbe28dbae9.lean/declarations/eisensteinseries-sif-mdifferentiable--02c8145208bcfd97bc67c1d1.md) | 57 | `result-track:02c8145208bcfd97bc67c1d11514ec2349a84a9f0ae1aa5281819ffb2a62f1d7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
