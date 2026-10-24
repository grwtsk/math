# Verification target: GRWTSK.Analysis.FunctionalAnalysis.BanachSteinhaus.Variantad130f13405251968f35ebf5d4f0ad03c36ac2a14cc6aaecde1c4033f1ae3b7c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a11ba115a86f9e3e979541bfcc933d52516f2c1a",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/BanachSteinhaus/Variantad130f13405251968f35ebf5d4f0ad03c36ac2a14cc6aaecde1c4033f1ae3b7c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSteinhaus/Variantad130f13405251968f35ebf5d4f0ad03c36ac2a14cc6aaecde1c4033f1ae3b7c.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSteinhaus/Variantad130f13405251968f35ebf5d4f0ad03c36ac2a14cc6aaecde1c4033f1ae3b7c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a11ba115a86f9e3e979541bfcc933d52516f2c1a`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/BanachSteinhaus/Variantad130f13405251968f35ebf5d4f0ad03c36ac2a14cc6aaecde1c4033f1ae3b7c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/BanachSteinhaus/Variantad130f13405251968f35ebf5d4f0ad03c36ac2a14cc6aaecde1c4033f1ae3b7c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.NormedSpace.OperatorNorm` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.LocallyConvex.Barrelled` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [banach_steinhaus](../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSteinhaus/Variantad130f13405251968f35ebf5d4f0ad03c36ac2a14cc6aaecde1c4033f1ae3b7c.lean/declarations/banach-steinhaus--5fa6257eaacd82f8b9657fbc.md) | 33 | `result-track:5fa6257eaacd82f8b9657fbc16d542f28d11aa2babf1e6fdc340fbb406def2c7` |
| 2 | `theorem` | [banach_steinhaus_iSup_nnnorm](../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSteinhaus/Variantad130f13405251968f35ebf5d4f0ad03c36ac2a14cc6aaecde1c4033f1ae3b7c.lean/declarations/banach-steinhaus-isup-nnnorm--dace6d9a79e5b2b2e96f723f.md) | 46 | `result-track:dace6d9a79e5b2b2e96f723fd315d4a751248bb3ddd920deeefc13e47bb398ee` |
| 3 | `abbrev` | [continuousLinearMapOfTendsto](../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSteinhaus/Variantad130f13405251968f35ebf5d4f0ad03c36ac2a14cc6aaecde1c4033f1ae3b7c.lean/declarations/continuouslinearmapoftendsto--47f72e56051e524417428b10.md) | 61 | `declaration-track:47f72e56051e524417428b1060ede48060925c51ab3c6c905b244062be1b94c2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
