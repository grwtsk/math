# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LevelwiseMassPacking.Variantce8da77b91204e551c7f4f0e74090c24dc4aa506cecc12d8802c69aeb0a3fd6f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "26d9b17fb0d0e7666410412a4acff183c8fc621a",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LevelwiseMassPacking/Variantce8da77b91204e551c7f4f0e74090c24dc4aa506cecc12d8802c69aeb0a3fd6f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LevelwiseMassPacking/Variantce8da77b91204e551c7f4f0e74090c24dc4aa506cecc12d8802c69aeb0a3fd6f.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LevelwiseMassPacking/Variantce8da77b91204e551c7f4f0e74090c24dc4aa506cecc12d8802c69aeb0a3fd6f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `26d9b17fb0d0e7666410412a4acff183c8fc621a`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LevelwiseMassPacking/Variantce8da77b91204e551c7f4f0e74090c24dc4aa506cecc12d8802c69aeb0a3fd6f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LevelwiseMassPacking/Variantce8da77b91204e551c7f4f0e74090c24dc4aa506cecc12d8802c69aeb0a3fd6f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [LevelwiseCoefficientPartition](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LevelwiseMassPacking/Variantce8da77b91204e551c7f4f0e74090c24dc4aa506cecc12d8802c69aeb0a3fd6f.lean/declarations/levelwisecoefficientpartition--c91d1ce484bf3490a17ea477.md) | 28 | `declaration-track:c91d1ce484bf3490a17ea4777ced81ee14b7e44e5f509c3f96d45878fc535de3` |
| 2 | `def` | [LevelwiseCoefficientPartition.atDepth](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LevelwiseMassPacking/Variantce8da77b91204e551c7f4f0e74090c24dc4aa506cecc12d8802c69aeb0a3fd6f.lean/declarations/levelwisecoefficientpartition-atdepth--f6da67828a8f51579c69df80.md) | 39 | `declaration-track:f6da67828a8f51579c69df80da99709abd86c0224c57aa027ba1f29c437f3562` |
| 3 | `def` | [LevelwiseCoefficientPartition.nodeMass](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LevelwiseMassPacking/Variantce8da77b91204e551c7f4f0e74090c24dc4aa506cecc12d8802c69aeb0a3fd6f.lean/declarations/levelwisecoefficientpartition-nodemass--58bf4f0eb3430e3db69e3c65.md) | 55 | `declaration-track:58bf4f0eb3430e3db69e3c6516dc0b69519e3dcf57232eb620115cda9ab4a85b` |
| 4 | `theorem` | [LevelwiseCoefficientPartition.sum_nodeMass_le_parent](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LevelwiseMassPacking/Variantce8da77b91204e551c7f4f0e74090c24dc4aa506cecc12d8802c69aeb0a3fd6f.lean/declarations/levelwisecoefficientpartition-sum-nodemass-le-parent--ee14d1fbe41b0ccc0cdb8bed.md) | 68 | `result-track:ee14d1fbe41b0ccc0cdb8bed417bcb325f284163348fb8abad4b6a8789305cf8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
