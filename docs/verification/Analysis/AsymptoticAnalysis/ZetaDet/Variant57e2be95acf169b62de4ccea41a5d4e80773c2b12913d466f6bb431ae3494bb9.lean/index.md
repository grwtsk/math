# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.ZetaDet.Variant57e2be95acf169b62de4ccea41a5d4e80773c2b12913d466f6bb431ae3494bb9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e99b075e978235d0f3310393675e2d12236dd057",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/ZetaDet/Variant57e2be95acf169b62de4ccea41a5d4e80773c2b12913d466f6bb431ae3494bb9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaDet/Variant57e2be95acf169b62de4ccea41a5d4e80773c2b12913d466f6bb431ae3494bb9.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaDet/Variant57e2be95acf169b62de4ccea41a5d4e80773c2b12913d466f6bb431ae3494bb9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e99b075e978235d0f3310393675e2d12236dd057`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/ZetaDet/Variant57e2be95acf169b62de4ccea41a5d4e80773c2b12913d466f6bb431ae3494bb9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/ZetaDet/Variant57e2be95acf169b62de4ccea41a5d4e80773c2b12913d466f6bb431ae3494bb9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Algebra.Module.Basic` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Ring` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.NormedSpace.OperatorNorm` — import line 3; external provider; requires a separately pinned dependency.
- `SpectralProof.Core.Weight` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [tracePower](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaDet/Variant57e2be95acf169b62de4ccea41a5d4e80773c2b12913d466f6bb431ae3494bb9.lean/declarations/tracepower--1ad4ab86481624f5cc44238f.md) | 18 | `declaration-track:1ad4ab86481624f5cc44238fdaa678cd7e407207fc2312cf81e0b49afae1fd19` |
| 2 | `def` | [zetaDet](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaDet/Variant57e2be95acf169b62de4ccea41a5d4e80773c2b12913d466f6bb431ae3494bb9.lean/declarations/zetadet--a0c642596c4728b91e6f37ef.md) | 28 | `declaration-track:a0c642596c4728b91e6f37ef2c64f5b2cca0e3da0f72b08daf9f42bd847c2b4e` |
| 3 | `lemma` | [zetaDet_def](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaDet/Variant57e2be95acf169b62de4ccea41a5d4e80773c2b12913d466f6bb431ae3494bb9.lean/declarations/zetadet-def--8d273a89ac3a2d36c2e5734d.md) | 32 | `result-track:8d273a89ac3a2d36c2e5734de04a526b8397ddd4c1a6079f6edeb9e79aad3051` |
| 4 | `lemma` | [zetaDet_converges](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaDet/Variant57e2be95acf169b62de4ccea41a5d4e80773c2b12913d466f6bb431ae3494bb9.lean/declarations/zetadet-converges--ffdee85af5da0d6f2680cfec.md) | 38 | `result-track:ffdee85af5da0d6f2680cfecc328aafa0dde93d6cd58aa4674ed664cba55e7e3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
