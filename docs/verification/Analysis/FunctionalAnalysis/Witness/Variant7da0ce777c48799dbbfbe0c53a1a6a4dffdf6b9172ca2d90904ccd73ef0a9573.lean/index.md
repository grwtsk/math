# Verification target: GRWTSK.Analysis.FunctionalAnalysis.Witness.Variant7da0ce777c48799dbbfbe0c53a1a6a4dffdf6b9172ca2d90904ccd73ef0a9573

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "109c6c95f92940d780e6bbf9afcb1b3222764051",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/Witness/Variant7da0ce777c48799dbbfbe0c53a1a6a4dffdf6b9172ca2d90904ccd73ef0a9573.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/Witness/Variant7da0ce777c48799dbbfbe0c53a1a6a4dffdf6b9172ca2d90904ccd73ef0a9573.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/Witness/Variant7da0ce777c48799dbbfbe0c53a1a6a4dffdf6b9172ca2d90904ccd73ef0a9573.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `109c6c95f92940d780e6bbf9afcb1b3222764051`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/Witness/Variant7da0ce777c48799dbbfbe0c53a1a6a4dffdf6b9172ca2d90904ccd73ef0a9573.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/Witness/Variant7da0ce777c48799dbbfbe0c53a1a6a4dffdf6b9172ca2d90904ccd73ef0a9573.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Spectral.Energy` — import line 6; external provider; requires a separately pinned dependency.
- `Folder.Spectral.Expansion` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Witness](../../../../../mathematics/Analysis/FunctionalAnalysis/Witness/Variant7da0ce777c48799dbbfbe0c53a1a6a4dffdf6b9172ca2d90904ccd73ef0a9573.lean/declarations/witness--c03253c8150f64261aea30cd.md) | 30 | `declaration-track:c03253c8150f64261aea30cda08ca4ebf941ffbbf70835fe17b5d4526383d251` |
| 2 | `def` | [Consistent](../../../../../mathematics/Analysis/FunctionalAnalysis/Witness/Variant7da0ce777c48799dbbfbe0c53a1a6a4dffdf6b9172ca2d90904ccd73ef0a9573.lean/declarations/consistent--68d8d5b9094718f4cdcaed16.md) | 33 | `declaration-track:68d8d5b9094718f4cdcaed16145071f97be188ceaa5bd50d3ebd6e4db494ac6d` |
| 3 | `def` | [meanWitness](../../../../../mathematics/Analysis/FunctionalAnalysis/Witness/Variant7da0ce777c48799dbbfbe0c53a1a6a4dffdf6b9172ca2d90904ccd73ef0a9573.lean/declarations/meanwitness--2362f71907a0ef8fc3fa30e6.md) | 40 | `declaration-track:2362f71907a0ef8fc3fa30e682da41edf3821b60d785ce2ce2297f2f79cf8689` |
| 4 | `def` | [energyWitness](../../../../../mathematics/Analysis/FunctionalAnalysis/Witness/Variant7da0ce777c48799dbbfbe0c53a1a6a4dffdf6b9172ca2d90904ccd73ef0a9573.lean/declarations/energywitness--5cab18d3a56f58df724179d7.md) | 44 | `declaration-track:5cab18d3a56f58df724179d775ebddd5206f4ff8d3648103480a02782b5ef8fa` |
| 5 | `def` | [cellCountWitness](../../../../../mathematics/Analysis/FunctionalAnalysis/Witness/Variant7da0ce777c48799dbbfbe0c53a1a6a4dffdf6b9172ca2d90904ccd73ef0a9573.lean/declarations/cellcountwitness--f03ffcaa988419fbc9aa7b48.md) | 49 | `declaration-track:f03ffcaa988419fbc9aa7b48b1b0e28b6cde00c4dee8a91d8d9284f75a851021` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
