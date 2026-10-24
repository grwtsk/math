# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.BitVecStructureTest.Variantd85836d3fd9e1ee391bd21b22ea45377ad828f1f4ff1eba7e045ef438fe7cb57

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "010f8453e01211bf73103087aa9208ae10fd7b61",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BitVecStructureTest/Variantd85836d3fd9e1ee391bd21b22ea45377ad828f1f4ff1eba7e045ef438fe7cb57.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BitVecStructureTest/Variantd85836d3fd9e1ee391bd21b22ea45377ad828f1f4ff1eba7e045ef438fe7cb57.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BitVecStructureTest/Variantd85836d3fd9e1ee391bd21b22ea45377ad828f1f4ff1eba7e045ef438fe7cb57.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `010f8453e01211bf73103087aa9208ae10fd7b61`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BitVecStructureTest/Variantd85836d3fd9e1ee391bd21b22ea45377ad828f1f4ff1eba7e045ef438fe7cb57.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BitVecStructureTest/Variantd85836d3fd9e1ee391bd21b22ea45377ad828f1f4ff1eba7e045ef438fe7cb57.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Plausible.Arbitrary` — import line 1; external provider; requires a separately pinned dependency.
- `Plausible.DeriveArbitrary` — import line 2; external provider; requires a separately pinned dependency.
- `Plausible.Attr` — import line 3; external provider; requires a separately pinned dependency.
- `Plausible.Testable` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [DummyInductive](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BitVecStructureTest/Variantd85836d3fd9e1ee391bd21b22ea45377ad828f1f4ff1eba7e045ef438fe7cb57.lean/declarations/dummyinductive--577dc8764b45f31efe99bab9.md) | 12 | `declaration-track:577dc8764b45f31efe99bab91e28cb665d22764788e2153378b7b4ec26df39eb` |
| 2 | `def` | [shrinkDummyInductive](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BitVecStructureTest/Variantd85836d3fd9e1ee391bd21b22ea45377ad828f1f4ff1eba7e045ef438fe7cb57.lean/declarations/shrinkdummyinductive--b21dc31065947d82fa37f9b0.md) | 68 | `declaration-track:b21dc31065947d82fa37f9b0470cd74a89dc7cff82b6bdd6b3aa96d6c202d173` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BitVecStructureTest/Variantd85836d3fd9e1ee391bd21b22ea45377ad828f1f4ff1eba7e045ef438fe7cb57.lean/declarations/instance--71ffc87b0ebb4e349a6221a3.md) | 75 | `declaration-track:71ffc87b0ebb4e349a6221a3c2be1f5e60a850ba6fb9ef851da82d1382f7063c` |
| 4 | `def` | [BitVecEqualsTwo](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BitVecStructureTest/Variantd85836d3fd9e1ee391bd21b22ea45377ad828f1f4ff1eba7e045ef438fe7cb57.lean/declarations/bitvecequalstwo--b985de745d87b7b5681e8ef1.md) | 82 | `declaration-track:b985de745d87b7b5681e8ef1eb6448c44909435737c2be422aa6c4c2f040d24c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
