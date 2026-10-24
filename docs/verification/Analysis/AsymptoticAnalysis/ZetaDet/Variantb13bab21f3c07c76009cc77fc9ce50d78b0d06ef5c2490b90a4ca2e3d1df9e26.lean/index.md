# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.ZetaDet.Variantb13bab21f3c07c76009cc77fc9ce50d78b0d06ef5c2490b90a4ca2e3d1df9e26

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "80853b35d77f9b2ef7f21f3fad4cfa67aeb1a6ad",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/ZetaDet/Variantb13bab21f3c07c76009cc77fc9ce50d78b0d06ef5c2490b90a4ca2e3d1df9e26.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaDet/Variantb13bab21f3c07c76009cc77fc9ce50d78b0d06ef5c2490b90a4ca2e3d1df9e26.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaDet/Variantb13bab21f3c07c76009cc77fc9ce50d78b0d06ef5c2490b90a4ca2e3d1df9e26.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `80853b35d77f9b2ef7f21f3fad4cfa67aeb1a6ad`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/ZetaDet/Variantb13bab21f3c07c76009cc77fc9ce50d78b0d06ef5c2490b90a4ca2e3d1df9e26.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/ZetaDet/Variantb13bab21f3c07c76009cc77fc9ce50d78b0d06ef5c2490b90a4ca2e3d1df9e26.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Algebra.Module.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Ring` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.NormedSpace.OperatorNorm` — import line 8; external provider; requires a separately pinned dependency.
- `SpectralProof.Core.Weight` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [tracePower](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaDet/Variantb13bab21f3c07c76009cc77fc9ce50d78b0d06ef5c2490b90a4ca2e3d1df9e26.lean/declarations/tracepower--aa39a40904e9c916e682bc15.md) | 26 | `declaration-track:aa39a40904e9c916e682bc15037b7c8aa8def86767440856084658c942c7925e` |
| 2 | `def` | [zetaDet](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaDet/Variantb13bab21f3c07c76009cc77fc9ce50d78b0d06ef5c2490b90a4ca2e3d1df9e26.lean/declarations/zetadet--496ad147f5d6adaba2eb3eea.md) | 36 | `declaration-track:496ad147f5d6adaba2eb3eeac953dfc5761b6f6f2a54aa07e2e21face0e71db5` |
| 3 | `lemma` | [zetaDet_def](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaDet/Variantb13bab21f3c07c76009cc77fc9ce50d78b0d06ef5c2490b90a4ca2e3d1df9e26.lean/declarations/zetadet-def--56b9bdc705a0d23fda68757b.md) | 40 | `result-track:56b9bdc705a0d23fda68757b646b33b6041c1781ba167dd9f11bac9110e2f8dc` |
| 4 | `lemma` | [zetaDet_converges](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaDet/Variantb13bab21f3c07c76009cc77fc9ce50d78b0d06ef5c2490b90a4ca2e3d1df9e26.lean/declarations/zetadet-converges--297c92b70f61f4e062605186.md) | 46 | `result-track:297c92b70f61f4e0626051860066bb7ba7b239635ddab871696a4715b2b7b67a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
