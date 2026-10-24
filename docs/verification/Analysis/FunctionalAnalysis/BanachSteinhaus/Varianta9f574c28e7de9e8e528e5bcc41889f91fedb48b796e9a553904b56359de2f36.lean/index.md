# Verification target: GRWTSK.Analysis.FunctionalAnalysis.BanachSteinhaus.Varianta9f574c28e7de9e8e528e5bcc41889f91fedb48b796e9a553904b56359de2f36

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5e047a4e078270c518b2c1d1e2da5c8ec733cfc8",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/BanachSteinhaus/Varianta9f574c28e7de9e8e528e5bcc41889f91fedb48b796e9a553904b56359de2f36.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSteinhaus/Varianta9f574c28e7de9e8e528e5bcc41889f91fedb48b796e9a553904b56359de2f36.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSteinhaus/Varianta9f574c28e7de9e8e528e5bcc41889f91fedb48b796e9a553904b56359de2f36.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5e047a4e078270c518b2c1d1e2da5c8ec733cfc8`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/BanachSteinhaus/Varianta9f574c28e7de9e8e528e5bcc41889f91fedb48b796e9a553904b56359de2f36.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/BanachSteinhaus/Varianta9f574c28e7de9e8e528e5bcc41889f91fedb48b796e9a553904b56359de2f36.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.NormedSpace.OperatorNorm` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.LocallyConvex.Barrelled` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [banach_steinhaus](../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSteinhaus/Varianta9f574c28e7de9e8e528e5bcc41889f91fedb48b796e9a553904b56359de2f36.lean/declarations/banach-steinhaus--d4408f9ea27048582c5ac686.md) | 41 | `result-track:d4408f9ea27048582c5ac6865e5cae193e67d84271e3bade8bd20269f7895169` |
| 2 | `theorem` | [banach_steinhaus_iSup_nnnorm](../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSteinhaus/Varianta9f574c28e7de9e8e528e5bcc41889f91fedb48b796e9a553904b56359de2f36.lean/declarations/banach-steinhaus-isup-nnnorm--d9c20da5344686983c8f16fa.md) | 54 | `result-track:d9c20da5344686983c8f16fa3c9852b2c5575bef0cdf9bcc7c498af20ce7242e` |
| 3 | `abbrev` | [continuousLinearMapOfTendsto](../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSteinhaus/Varianta9f574c28e7de9e8e528e5bcc41889f91fedb48b796e9a553904b56359de2f36.lean/declarations/continuouslinearmapoftendsto--c68d8235c631598d7645905b.md) | 69 | `declaration-track:c68d8235c631598d7645905b7b802a33a39f6a8dce6eacfa64f2886468c5a324` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
