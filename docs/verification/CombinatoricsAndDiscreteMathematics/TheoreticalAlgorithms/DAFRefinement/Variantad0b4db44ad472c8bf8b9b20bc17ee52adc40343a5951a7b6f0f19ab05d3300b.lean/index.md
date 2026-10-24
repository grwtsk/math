# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.DAFRefinement.Variantad0b4db44ad472c8bf8b9b20bc17ee52adc40343a5951a7b6f0f19ab05d3300b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1225823c83dfe0bb84082bfdaf9eb4d542ed892a",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DAFRefinement/Variantad0b4db44ad472c8bf8b9b20bc17ee52adc40343a5951a7b6f0f19ab05d3300b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DAFRefinement/Variantad0b4db44ad472c8bf8b9b20bc17ee52adc40343a5951a7b6f0f19ab05d3300b.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DAFRefinement/Variantad0b4db44ad472c8bf8b9b20bc17ee52adc40343a5951a7b6f0f19ab05d3300b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1225823c83dfe0bb84082bfdaf9eb4d542ed892a`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DAFRefinement/Variantad0b4db44ad472c8bf8b9b20bc17ee52adc40343a5951a7b6f0f19ab05d3300b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DAFRefinement/Variantad0b4db44ad472c8bf8b9b20bc17ee52adc40343a5951a7b6f0f19ab05d3300b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.Refinement` — import line 1; external provider; requires a separately pinned dependency.
- `BitMatrix.Core.Basic` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mapSpecSystem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DAFRefinement/Variantad0b4db44ad472c8bf8b9b20bc17ee52adc40343a5951a7b6f0f19ab05d3300b.lean/declarations/mapspecsystem--bf2b7c6b9e88310c7cbc145b.md) | 20 | `declaration-track:bf2b7c6b9e88310c7cbc145ba28bc128e810572eced92f43aefa612de05718e8` |
| 2 | `def` | [mapImplSystem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DAFRefinement/Variantad0b4db44ad472c8bf8b9b20bc17ee52adc40343a5951a7b6f0f19ab05d3300b.lean/declarations/mapimplsystem--36540d81b548d4c681c3272b.md) | 29 | `declaration-track:36540d81b548d4c681c3272b836aea01437ea931a4c06c203bc7acd455845d7a` |
| 3 | `def` | [mapRefinement](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DAFRefinement/Variantad0b4db44ad472c8bf8b9b20bc17ee52adc40343a5951a7b6f0f19ab05d3300b.lean/declarations/maprefinement--db96f1f66dcb4f61d58f101c.md) | 38 | `declaration-track:db96f1f66dcb4f61d58f101cbe9575958769eb2d6bfe88fb5098b67a650b1576` |
| 4 | `theorem` | [mapRefinement_abstract](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DAFRefinement/Variantad0b4db44ad472c8bf8b9b20bc17ee52adc40343a5951a7b6f0f19ab05d3300b.lean/declarations/maprefinement-abstract--aca50a645c78176dfb21bae4.md) | 52 | `result-track:aca50a645c78176dfb21bae4860fbf12720c5af62bd24931f3a559525834d03c` |
| 5 | `theorem` | [mapRefinement_step_sound](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DAFRefinement/Variantad0b4db44ad472c8bf8b9b20bc17ee52adc40343a5951a7b6f0f19ab05d3300b.lean/declarations/maprefinement-step-sound--1feab641e988e8fdfb976ed2.md) | 58 | `result-track:1feab641e988e8fdfb976ed2daed85506f21d2f7524e38db498d68bc1d748897` |
| 6 | `theorem` | [refines_iff_abstract_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DAFRefinement/Variantad0b4db44ad472c8bf8b9b20bc17ee52adc40343a5951a7b6f0f19ab05d3300b.lean/declarations/refines-iff-abstract-eq--09e0d91bbf56929eacbeb6a1.md) | 68 | `result-track:09e0d91bbf56929eacbeb6a124a13cbfb22353f22864e23f68abffa619fae8ed` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
