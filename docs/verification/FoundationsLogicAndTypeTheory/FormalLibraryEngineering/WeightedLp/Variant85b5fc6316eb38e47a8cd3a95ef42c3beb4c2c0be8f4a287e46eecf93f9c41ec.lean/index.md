# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.WeightedLp.Variant85b5fc6316eb38e47a8cd3a95ef42c3beb4c2c0be8f4a287e46eecf93f9c41ec

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "64b9cd723da85ebbfd50db2653b3133cdb020c8c",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WeightedLp/Variant85b5fc6316eb38e47a8cd3a95ef42c3beb4c2c0be8f4a287e46eecf93f9c41ec.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WeightedLp/Variant85b5fc6316eb38e47a8cd3a95ef42c3beb4c2c0be8f4a287e46eecf93f9c41ec.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WeightedLp/Variant85b5fc6316eb38e47a8cd3a95ef42c3beb4c2c0be8f4a287e46eecf93f9c41ec.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `64b9cd723da85ebbfd50db2653b3133cdb020c8c`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WeightedLp/Variant85b5fc6316eb38e47a8cd3a95ef42c3beb4c2c0be8f4a287e46eecf93f9c41ec.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WeightedLp/Variant85b5fc6316eb38e47a8cd3a95ef42c3beb4c2c0be8f4a287e46eecf93f9c41ec.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Think.SourceTree.Legacy.Analysis.Decoupling.ExtensionOperator` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Weight](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WeightedLp/Variant85b5fc6316eb38e47a8cd3a95ef42c3beb4c2c0be8f4a287e46eecf93f9c41ec.lean/declarations/weight--f407b8ea7814d93c8eb36b23.md) | 17 | `declaration-track:f407b8ea7814d93c8eb36b2357fb8aa824b91966b101c1124e1ee93750bd449c` |
| 2 | `def` | [weightedLpNorm](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WeightedLp/Variant85b5fc6316eb38e47a8cd3a95ef42c3beb4c2c0be8f4a287e46eecf93f9c41ec.lean/declarations/weightedlpnorm--5e139674287e50ee7f59a692.md) | 26 | `declaration-track:5e139674287e50ee7f59a692bf461748db751d74b300f7a53c7d864552f3d51a` |
| 3 | `structure` | [WeightedNormSurface](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WeightedLp/Variant85b5fc6316eb38e47a8cd3a95ef42c3beb4c2c0be8f4a287e46eecf93f9c41ec.lean/declarations/weightednormsurface--436155d689a8669dcf0df158.md) | 32 | `declaration-track:436155d689a8669dcf0df158a3c8c18936ddb3b3bdefd2aaf46b1ba294e6c101` |
| 4 | `def` | [weightedLpResidue](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WeightedLp/Variant85b5fc6316eb38e47a8cd3a95ef42c3beb4c2c0be8f4a287e46eecf93f9c41ec.lean/declarations/weightedlpresidue--5bfdef0a2ad4e290bc880cb7.md) | 38 | `declaration-track:5bfdef0a2ad4e290bc880cb7eca5aec021301f0ef987eb4813079ffd66b8474d` |
| 5 | `def` | [defaultWeightedNormSurface](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WeightedLp/Variant85b5fc6316eb38e47a8cd3a95ef42c3beb4c2c0be8f4a287e46eecf93f9c41ec.lean/declarations/defaultweightednormsurface--6c6da70edb6260d83305adf1.md) | 41 | `declaration-track:6c6da70edb6260d83305adf1c6db21a933228d93c12bd6b665317ed06a18046e` |
| 6 | `theorem` | [weighted_lp_surface_is_open_residue](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WeightedLp/Variant85b5fc6316eb38e47a8cd3a95ef42c3beb4c2c0be8f4a287e46eecf93f9c41ec.lean/declarations/weighted-lp-surface-is-open-residue--f59fa5fd4afca25b391fd572.md) | 47 | `result-track:f59fa5fd4afca25b391fd572f2a20a943eb288621b2cd7d3aea09b4cff85a023` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
