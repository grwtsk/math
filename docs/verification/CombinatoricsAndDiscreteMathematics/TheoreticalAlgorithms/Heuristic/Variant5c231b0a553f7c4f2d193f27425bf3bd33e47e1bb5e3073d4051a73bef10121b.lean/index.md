# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Heuristic.Variant5c231b0a553f7c4f2d193f27425bf3bd33e47e1bb5e3073d4051a73bef10121b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e2e38d8c95b7e1d7540459ea61f3bee546aca038",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Heuristic/Variant5c231b0a553f7c4f2d193f27425bf3bd33e47e1bb5e3073d4051a73bef10121b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Heuristic/Variant5c231b0a553f7c4f2d193f27425bf3bd33e47e1bb5e3073d4051a73bef10121b.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Heuristic/Variant5c231b0a553f7c4f2d193f27425bf3bd33e47e1bb5e3073d4051a73bef10121b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e2e38d8c95b7e1d7540459ea61f3bee546aca038`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Heuristic/Variant5c231b0a553f7c4f2d193f27425bf3bd33e47e1bb5e3073d4051a73bef10121b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Heuristic/Variant5c231b0a553f7c4f2d193f27425bf3bd33e47e1bb5e3073d4051a73bef10121b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `LeanCert.Engine.FloatEval` — import line 6; external provider; requires a separately pinned dependency.
- `LeanCert.Engine.Optimization.Box` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [intToFloat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Heuristic/Variant5c231b0a553f7c4f2d193f27425bf3bd33e47e1bb5e3073d4051a73bef10121b.lean/declarations/inttofloat--726e66e5d2c2d5367c806e2d.md) | 44 | `declaration-track:726e66e5d2c2d5367c806e2dff1450d605c0cf8f4fd4f5a0a26a925d5bb4f4e0` |
| 2 | `def` | [ratToFloat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Heuristic/Variant5c231b0a553f7c4f2d193f27425bf3bd33e47e1bb5e3073d4051a73bef10121b.lean/declarations/rattofloat--6cbbb64c4c9b43175776369e.md) | 49 | `declaration-track:6cbbb64c4c9b43175776369e02d35525d241dd117053a00814e3ca98714c97e7` |
| 3 | `structure` | [FloatBox](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Heuristic/Variant5c231b0a553f7c4f2d193f27425bf3bd33e47e1bb5e3073d4051a73bef10121b.lean/declarations/floatbox--df6f552fe3c80aa5d8bde540.md) | 55 | `declaration-track:df6f552fe3c80aa5d8bde540779f38b71933e9dde4dfd9124552715e573597ed` |
| 4 | `def` | [boxToFloatBox](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Heuristic/Variant5c231b0a553f7c4f2d193f27425bf3bd33e47e1bb5e3073d4051a73bef10121b.lean/declarations/boxtofloatbox--bbdb6b51ce574480c022eca3.md) | 63 | `declaration-track:bbdb6b51ce574480c022eca3f915de37d02ba6b6c4f3456a98abdc353350314e` |
| 5 | `def` | [FloatBox.dim](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Heuristic/Variant5c231b0a553f7c4f2d193f27425bf3bd33e47e1bb5e3073d4051a73bef10121b.lean/declarations/floatbox-dim--f115d49467ae8229a0a2784f.md) | 69 | `declaration-track:f115d49467ae8229a0a2784faba5e457c71248fd62daa63a795e021c77072d3c` |
| 6 | `structure` | [PRNG](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Heuristic/Variant5c231b0a553f7c4f2d193f27425bf3bd33e47e1bb5e3073d4051a73bef10121b.lean/declarations/prng--c8c8f6c0d6633ff011deaf59.md) | 75 | `declaration-track:c8c8f6c0d6633ff011deaf595ddbabf11e78b3e21b1e47131cbed6e2f1c36b89` |
| 7 | `def` | [PRNG.new](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Heuristic/Variant5c231b0a553f7c4f2d193f27425bf3bd33e47e1bb5e3073d4051a73bef10121b.lean/declarations/prng-new--4ed9eae6bb224f75bf051f9d.md) | 80 | `declaration-track:4ed9eae6bb224f75bf051f9d1b965bbc430ab0dc6dea6036853c53b28a284982` |
| 8 | `def` | [PRNG.nextUnit](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Heuristic/Variant5c231b0a553f7c4f2d193f27425bf3bd33e47e1bb5e3073d4051a73bef10121b.lean/declarations/prng-nextunit--48c8de88777efb34760e16ce.md) | 84 | `declaration-track:48c8de88777efb34760e16ceaceea1ac231d8f87b0181bf137b404399d081f6f` |
| 9 | `def` | [PRNG.next](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Heuristic/Variant5c231b0a553f7c4f2d193f27425bf3bd33e47e1bb5e3073d4051a73bef10121b.lean/declarations/prng-next--3f4d94a1f135062fdcab650e.md) | 93 | `declaration-track:3f4d94a1f135062fdcab650e5321ab5e520295f7fedf028ea8ca944675a64f2e` |
| 10 | `def` | [PRNG.nextN](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Heuristic/Variant5c231b0a553f7c4f2d193f27425bf3bd33e47e1bb5e3073d4051a73bef10121b.lean/declarations/prng-nextn--4522b05f7340c73d1bc00f36.md) | 98 | `declaration-track:4522b05f7340c73d1bc00f36688b8ae7c7ce0cf4a9bd889e0ef8f6d94eaf7d5d` |
| 11 | `def` | [samplePoint](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Heuristic/Variant5c231b0a553f7c4f2d193f27425bf3bd33e47e1bb5e3073d4051a73bef10121b.lean/declarations/samplepoint--18061686d0c97c271fb0ff66.md) | 110 | `declaration-track:18061686d0c97c271fb0ff66492c8a04f890e19b8060a25a5954a843242b97b0` |
| 12 | `def` | [samplePoints](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Heuristic/Variant5c231b0a553f7c4f2d193f27425bf3bd33e47e1bb5e3073d4051a73bef10121b.lean/declarations/samplepoints--f01b90882bb88e39d63f7a36.md) | 119 | `declaration-track:f01b90882bb88e39d63f7a36c41cde61c25232fe1e91c20cf537f022483abab5` |
| 13 | `def` | [FloatBox.center](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Heuristic/Variant5c231b0a553f7c4f2d193f27425bf3bd33e47e1bb5e3073d4051a73bef10121b.lean/declarations/floatbox-center--f44ebdf6883e8fd03c12b7b3.md) | 129 | `declaration-track:f44ebdf6883e8fd03c12b7b3fb089518e8438598bac0d930564c3ca6c342dd5a` |
| 14 | `def` | [findBestCandidate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Heuristic/Variant5c231b0a553f7c4f2d193f27425bf3bd33e47e1bb5e3073d4051a73bef10121b.lean/declarations/findbestcandidate--776e6a5c090d077401a33569.md) | 141 | `declaration-track:776e6a5c090d077401a3356908cdfc03868dc72e1dfb34cc9d97d34aad76d8e4` |
| 15 | `def` | [findTopCandidates](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Heuristic/Variant5c231b0a553f7c4f2d193f27425bf3bd33e47e1bb5e3073d4051a73bef10121b.lean/declarations/findtopcandidates--3d1659d7556c1f4deeedd23b.md) | 165 | `declaration-track:3d1659d7556c1f4deeedd23b734587970839f6276cf3ff335ccb3a86bb43f903` |
| 16 | `def` | [gridSearch](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Heuristic/Variant5c231b0a553f7c4f2d193f27425bf3bd33e47e1bb5e3073d4051a73bef10121b.lean/declarations/gridsearch--63178d5780e2e2d935bc742c.md) | 194 | `declaration-track:63178d5780e2e2d935bc742ccc1fa06404fcb421974d938768c52745f23794a6` |
| 17 | `def` | [hybridSearch](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Heuristic/Variant5c231b0a553f7c4f2d193f27425bf3bd33e47e1bb5e3073d4051a73bef10121b.lean/declarations/hybridsearch--3fd8ea2102be617ad656ce94.md) | 244 | `declaration-track:3fd8ea2102be617ad656ce94688987d1a17146b4c901d61b15883e6fecd994f1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
