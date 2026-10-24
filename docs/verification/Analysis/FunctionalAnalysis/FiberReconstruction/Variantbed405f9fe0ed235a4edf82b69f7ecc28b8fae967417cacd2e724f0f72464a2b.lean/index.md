# Verification target: GRWTSK.Analysis.FunctionalAnalysis.FiberReconstruction.Variantbed405f9fe0ed235a4edf82b69f7ecc28b8fae967417cacd2e724f0f72464a2b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "be22895bd93705f45ef8cd318889b8580889c226",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/FiberReconstruction/Variantbed405f9fe0ed235a4edf82b69f7ecc28b8fae967417cacd2e724f0f72464a2b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/FiberReconstruction/Variantbed405f9fe0ed235a4edf82b69f7ecc28b8fae967417cacd2e724f0f72464a2b.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/FiberReconstruction/Variantbed405f9fe0ed235a4edf82b69f7ecc28b8fae967417cacd2e724f0f72464a2b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `be22895bd93705f45ef8cd318889b8580889c226`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/FiberReconstruction/Variantbed405f9fe0ed235a4edf82b69f7ecc28b8fae967417cacd2e724f0f72464a2b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/FiberReconstruction/Variantbed405f9fe0ed235a4edf82b69f7ecc28b8fae967417cacd2e724f0f72464a2b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Spectral.Torsion` — import line 1; external provider; requires a separately pinned dependency.
- `Folder.Theorem.Spectral.HeatResidual` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [transportShell](../../../../../mathematics/Analysis/FunctionalAnalysis/FiberReconstruction/Variantbed405f9fe0ed235a4edf82b69f7ecc28b8fae967417cacd2e724f0f72464a2b.lean/declarations/transportshell--120b72d8045e07597b019a7c.md) | 22 | `declaration-track:120b72d8045e07597b019a7c04925bfda945688ae35961b2588494e7d0ec6278` |
| 2 | `theorem` | [heat_residual_reconstruct](../../../../../mathematics/Analysis/FunctionalAnalysis/FiberReconstruction/Variantbed405f9fe0ed235a4edf82b69f7ecc28b8fae967417cacd2e724f0f72464a2b.lean/declarations/heat-residual-reconstruct--a913928e757720479c9c4dcb.md) | 29 | `result-track:a913928e757720479c9c4dcb19a6a68de9749feed2ea9f2cb25252bf91da7934` |
| 3 | `theorem` | [torsion_inverse_reconstruct](../../../../../mathematics/Analysis/FunctionalAnalysis/FiberReconstruction/Variantbed405f9fe0ed235a4edf82b69f7ecc28b8fae967417cacd2e724f0f72464a2b.lean/declarations/torsion-inverse-reconstruct--225fd3fae54fd4685b95ac61.md) | 36 | `result-track:225fd3fae54fd4685b95ac619f3c8b06c55ab9f551a9eed65e8dfa2d34199701` |
| 4 | `theorem` | [shell_decode_encode_reconstruct](../../../../../mathematics/Analysis/FunctionalAnalysis/FiberReconstruction/Variantbed405f9fe0ed235a4edf82b69f7ecc28b8fae967417cacd2e724f0f72464a2b.lean/declarations/shell-decode-encode-reconstruct--30fe3a7d5786638ec5ce8508.md) | 44 | `result-track:30fe3a7d5786638ec5ce8508a995536444268c16cdbcddd2c3c39d22e1777b72` |
| 5 | `def` | [reconstructedLiftedShell](../../../../../mathematics/Analysis/FunctionalAnalysis/FiberReconstruction/Variantbed405f9fe0ed235a4edf82b69f7ecc28b8fae967417cacd2e724f0f72464a2b.lean/declarations/reconstructedliftedshell--2fd777368f6cb7dbc6def025.md) | 49 | `declaration-track:2fd777368f6cb7dbc6def0254dc309fe9b611156666bb202df4000e23e19a6b1` |
| 6 | `theorem` | [spectral_fiber_reconstruction](../../../../../mathematics/Analysis/FunctionalAnalysis/FiberReconstruction/Variantbed405f9fe0ed235a4edf82b69f7ecc28b8fae967417cacd2e724f0f72464a2b.lean/declarations/spectral-fiber-reconstruction--22148c8f737fd656931be9b9.md) | 61 | `result-track:22148c8f737fd656931be9b98253006eb4b3abd77e23fe776a31818740db904a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
