# Verification target: GRWTSK.Topology.GeneralTopology.Barrelled.Variant6f6dcf7c4d1c9c593b4de33bc67a477c598134e9cfa9a6446b1c9279bd0e87f3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fe988f45065c716f045899324c7627db7047fde4",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Barrelled/Variant6f6dcf7c4d1c9c593b4de33bc67a477c598134e9cfa9a6446b1c9279bd0e87f3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Barrelled/Variant6f6dcf7c4d1c9c593b4de33bc67a477c598134e9cfa9a6446b1c9279bd0e87f3.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Barrelled/Variant6f6dcf7c4d1c9c593b4de33bc67a477c598134e9cfa9a6446b1c9279bd0e87f3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fe988f45065c716f045899324c7627db7047fde4`.

Source path: `GRWTSK/Topology/GeneralTopology/Barrelled/Variant6f6dcf7c4d1c9c593b4de33bc67a477c598134e9cfa9a6446b1c9279bd0e87f3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Barrelled/Variant6f6dcf7c4d1c9c593b4de33bc67a477c598134e9cfa9a6446b1c9279bd0e87f3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.LocallyConvex.WithSeminorms` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Semicontinuous` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Baire.Lemmas` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [BarrelledSpace](../../../../../mathematics/Topology/GeneralTopology/Barrelled/Variant6f6dcf7c4d1c9c593b4de33bc67a477c598134e9cfa9a6446b1c9279bd0e87f3.lean/declarations/barrelledspace--c857ffc154393fea6ab61575.md) | 83 | `declaration-track:c857ffc154393fea6ab61575acddb5345c4c401fff2cd4ce5eb2707ffe2942d6` |
| 2 | `theorem` | [Seminorm.continuous_of_lowerSemicontinuous](../../../../../mathematics/Topology/GeneralTopology/Barrelled/Variant6f6dcf7c4d1c9c593b4de33bc67a477c598134e9cfa9a6446b1c9279bd0e87f3.lean/declarations/seminorm-continuous-of-lowersemicontinuous--50a94c265d2f1f39c52c757a.md) | 88 | `result-track:50a94c265d2f1f39c52c757a9ba1cdc732b3821e7bba145594833e7027441ec8` |
| 3 | `theorem` | [Seminorm.continuous_iSup](../../../../../mathematics/Topology/GeneralTopology/Barrelled/Variant6f6dcf7c4d1c9c593b4de33bc67a477c598134e9cfa9a6446b1c9279bd0e87f3.lean/declarations/seminorm-continuous-isup--fffd3eb5e490df0f00cd8e48.md) | 93 | `result-track:fffd3eb5e490df0f00cd8e487ae038470efa2d6a17426f7628418d27f8e63b69` |
| 4 | `instance` | [BaireSpace.instBarrelledSpace](../../../../../mathematics/Topology/GeneralTopology/Barrelled/Variant6f6dcf7c4d1c9c593b4de33bc67a477c598134e9cfa9a6446b1c9279bd0e87f3.lean/declarations/bairespace-instbarrelledspace--c4d5a18343b6c29eeabc2c72.md) | 115 | `declaration-track:c4d5a18343b6c29eeabc2c72e88f8bbc0aff7b2ed9d09cfa2c57221d934f3f11` |
| 5 | `theorem` | [banach_steinhaus](../../../../../mathematics/Topology/GeneralTopology/Barrelled/Variant6f6dcf7c4d1c9c593b4de33bc67a477c598134e9cfa9a6446b1c9279bd0e87f3.lean/declarations/banach-steinhaus--55833246c98bc41819ff3331.md) | 157 | `result-track:55833246c98bc41819ff3331bccb05ea425d2644a438b4b80e224354c8585f83` |
| 6 | `def` | [continuousLinearMapOfTendsto](../../../../../mathematics/Topology/GeneralTopology/Barrelled/Variant6f6dcf7c4d1c9c593b4de33bc67a477c598134e9cfa9a6446b1c9279bd0e87f3.lean/declarations/continuouslinearmapoftendsto--f9ca838cf927179f4f8449ad.md) | 182 | `declaration-track:f9ca838cf927179f4f8449ad20fce87847b84388af4ad9d328809c1e086dc645` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
