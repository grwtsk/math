# Verification target: GRWTSK.Analysis.FunctionalAnalysis.BanachSpaces.NormedSpaces.RCLike.Variantccbe554ef8ad4d258279b8e91f134f0c419766103c5a142a28305949886d4066

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a918890d4c64be6470cf4271c234c76b8c2c98eb",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/RCLike/Variantccbe554ef8ad4d258279b8e91f134f0c419766103c5a142a28305949886d4066.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/RCLike/Variantccbe554ef8ad4d258279b8e91f134f0c419766103c5a142a28305949886d4066.lean/index.md) · [Full source](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/RCLike/Variantccbe554ef8ad4d258279b8e91f134f0c419766103c5a142a28305949886d4066.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a918890d4c64be6470cf4271c234c76b8c2c98eb`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/RCLike/Variantccbe554ef8ad4d258279b8e91f134f0c419766103c5a142a28305949886d4066.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/RCLike/Variantccbe554ef8ad4d258279b8e91f134f0c419766103c5a142a28305949886d4066.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.RCLike.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.NormedSpace.OperatorNorm.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.NormedSpace.Pointwise` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [RCLike.norm_coe_norm](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/RCLike/Variantccbe554ef8ad4d258279b8e91f134f0c419766103c5a142a28305949886d4066.lean/declarations/rclike-norm-coe-norm--94ddc6ad05f9cb7eec141ef8.md) | 34 | `result-track:94ddc6ad05f9cb7eec141ef8e1b0832108e598a3f3ca5cc94f2619cae2c135cd` |
| 2 | `theorem` | [norm_smul_inv_norm](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/RCLike/Variantccbe554ef8ad4d258279b8e91f134f0c419766103c5a142a28305949886d4066.lean/declarations/norm-smul-inv-norm--3f68d2fbb5d404ef176d347b.md) | 40 | `result-track:3f68d2fbb5d404ef176d347b22fb68ecf90e003ac06eaaaa601a25bd31b7e443` |
| 3 | `theorem` | [norm_smul_inv_norm'](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/RCLike/Variantccbe554ef8ad4d258279b8e91f134f0c419766103c5a142a28305949886d4066.lean/declarations/norm-smul-inv-norm--85a868d9a2e7330b85c10f43.md) | 45 | `result-track:85a868d9a2e7330b85c10f430e17621033e11ff30614f4d1e4067155d828e6e9` |
| 4 | `theorem` | [LinearMap.bound_of_sphere_bound](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/RCLike/Variantccbe554ef8ad4d258279b8e91f134f0c419766103c5a142a28305949886d4066.lean/declarations/linearmap-bound-of-sphere-bound--139deaa5104fae3bce6cdbf5.md) | 50 | `result-track:139deaa5104fae3bce6cdbf57ed1e868b8e3977119cda625a86345b048e57bf9` |
| 5 | `theorem` | [LinearMap.bound_of_ball_bound'](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/RCLike/Variantccbe554ef8ad4d258279b8e91f134f0c419766103c5a142a28305949886d4066.lean/declarations/linearmap-bound-of-ball-bound--4175981a3cacabfee71a3f33.md) | 74 | `result-track:4175981a3cacabfee71a3f3376c12a43ad772c4205bcf316278306697408051b` |
| 6 | `theorem` | [ContinuousLinearMap.opNorm_bound_of_ball_bound](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/RCLike/Variantccbe554ef8ad4d258279b8e91f134f0c419766103c5a142a28305949886d4066.lean/declarations/continuouslinearmap-opnorm-bound-of-ball-bound--f622739c19ee2fd00ad2b1a5.md) | 78 | `result-track:f622739c19ee2fd00ad2b1a5b4e0fda1b2ea1afea142e1c9bd7295707a7e1b1b` |
| 7 | `theorem` | [NormedSpace.sphere_nonempty_rclike](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/RCLike/Variantccbe554ef8ad4d258279b8e91f134f0c419766103c5a142a28305949886d4066.lean/declarations/normedspace-sphere-nonempty-rclike--86ea0f92a8bf388676cde397.md) | 90 | `result-track:86ea0f92a8bf388676cde397b37d625929de2a7b3080810556bbdc5f44fd681a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
