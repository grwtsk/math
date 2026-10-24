# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Order.Variante7ca7c7a28757c20deab13f67c522b2ec660d6529bcf04b5c199455aeaabc63a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5f78e7dee4e3d036526ff7a34e69447d562cfba8",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Order/Variante7ca7c7a28757c20deab13f67c522b2ec660d6529bcf04b5c199455aeaabc63a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variante7ca7c7a28757c20deab13f67c522b2ec660d6529bcf04b5c199455aeaabc63a.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variante7ca7c7a28757c20deab13f67c522b2ec660d6529bcf04b5c199455aeaabc63a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5f78e7dee4e3d036526ff7a34e69447d562cfba8`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Order/Variante7ca7c7a28757c20deab13f67c522b2ec660d6529bcf04b5c199455aeaabc63a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Order/Variante7ca7c7a28757c20deab13f67c522b2ec660d6529bcf04b5c199455aeaabc63a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Lattice.Fold` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Order` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Finite.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Finite.Range` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Atoms` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [toOrderBot](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variante7ca7c7a28757c20deab13f67c522b2ec660d6529bcf04b5c199455aeaabc63a.lean/declarations/toorderbot--85e47bf51eee0dcc4b83006a.md) | 68 | `declaration-track:85e47bf51eee0dcc4b83006a815f5ebef5a10c14f6c24990adfebd694acf918a` |
| 2 | `abbrev` | [toOrderTop](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variante7ca7c7a28757c20deab13f67c522b2ec660d6529bcf04b5c199455aeaabc63a.lean/declarations/toordertop--3181f67fb790316ba9b3bcce.md) | 74 | `declaration-track:3181f67fb790316ba9b3bcce22ca3ae9672fded2b33a369b56d9cdc9dc1e8729` |
| 3 | `abbrev` | [toBoundedOrder](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variante7ca7c7a28757c20deab13f67c522b2ec660d6529bcf04b5c199455aeaabc63a.lean/declarations/toboundedorder--131bc1b48fc5b6ab458119bf.md) | 80 | `declaration-track:131bc1b48fc5b6ab458119bf73774f8be0ebb1cb9b77e7861eacd400754ceb64` |
| 4 | `abbrev` | [toCompleteLattice](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variante7ca7c7a28757c20deab13f67c522b2ec660d6529bcf04b5c199455aeaabc63a.lean/declarations/tocompletelattice--ebcfb1d1fd4f2b1e455012fb.md) | 92 | `declaration-track:ebcfb1d1fd4f2b1e455012fb0802231b4478c37c30385f08b26bbfd9daa8f916` |
| 5 | `abbrev` | [toCompleteDistribLatticeMinimalAxioms](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variante7ca7c7a28757c20deab13f67c522b2ec660d6529bcf04b5c199455aeaabc63a.lean/declarations/tocompletedistriblatticeminimalaxioms--9dbb734771fd278edc1a53d5.md) | 104 | `declaration-track:9dbb734771fd278edc1a53d584a3afa255adbc8aa00074ff9eb58d500cd67d30` |
| 6 | `abbrev` | [toCompleteDistribLattice](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variante7ca7c7a28757c20deab13f67c522b2ec660d6529bcf04b5c199455aeaabc63a.lean/declarations/tocompletedistriblattice--a713bde83c39271f00f96976.md) | 120 | `declaration-track:a713bde83c39271f00f9697603fd48e417598d3d49bb318ae7c52b12fadb8463` |
| 7 | `abbrev` | [toCompleteLinearOrder](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variante7ca7c7a28757c20deab13f67c522b2ec660d6529bcf04b5c199455aeaabc63a.lean/declarations/tocompletelinearorder--4c430b7e6c0c3822ac3c2023.md) | 129 | `declaration-track:4c430b7e6c0c3822ac3c2023ca0ed64cb3dfacd3e47d44199d9e3a6fa719b821` |
| 8 | `abbrev` | [toCompleteBooleanAlgebra](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variante7ca7c7a28757c20deab13f67c522b2ec660d6529bcf04b5c199455aeaabc63a.lean/declarations/tocompletebooleanalgebra--36ef4469341cd078b202bf63.md) | 135 | `declaration-track:36ef4469341cd078b202bf6326873fdb4c859830bbb169e012f14c1cedb9be6b` |
| 9 | `abbrev` | [toCompleteAtomicBooleanAlgebra](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variante7ca7c7a28757c20deab13f67c522b2ec660d6529bcf04b5c199455aeaabc63a.lean/declarations/tocompleteatomicbooleanalgebra--a945d3737a7153dc786f6fdb.md) | 143 | `declaration-track:a945d3737a7153dc786f6fdb338498de0b5faf43d9bbf239e2f3385e0a535b5f` |
| 10 | `abbrev` | [toCompleteLatticeOfNonempty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variante7ca7c7a28757c20deab13f67c522b2ec660d6529bcf04b5c199455aeaabc63a.lean/declarations/tocompletelatticeofnonempty--597727fe9980cf18e46d571b.md) | 156 | `declaration-track:597727fe9980cf18e46d571b4e4902251d3183ec6d99a96ba15a89b7b5b2d1da` |
| 11 | `abbrev` | [toCompleteLinearOrderOfNonempty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variante7ca7c7a28757c20deab13f67c522b2ec660d6529bcf04b5c199455aeaabc63a.lean/declarations/tocompletelinearorderofnonempty--67c0833d0ea3ac5950efc7d3.md) | 163 | `declaration-track:67c0833d0ea3ac5950efc7d31c35ac6f8e863e70020c3ab34e7fa1e275db7478` |
| 12 | `instance` | [Fin.completeLinearOrder](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variante7ca7c7a28757c20deab13f67c522b2ec660d6529bcf04b5c199455aeaabc63a.lean/declarations/fin-completelinearorder--f4c60e6414aa7a5d92c75093.md) | 173 | `declaration-track:f4c60e6414aa7a5d92c75093ead190a73b23df5b2c991a83b1347508a69b7b8b` |
| 13 | `instance` | [Bool.completeBooleanAlgebra](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variante7ca7c7a28757c20deab13f67c522b2ec660d6529bcf04b5c199455aeaabc63a.lean/declarations/bool-completebooleanalgebra--a26cf989477edc9f8c1388fc.md) | 176 | `declaration-track:a26cf989477edc9f8c1388fc387dc59c82b1053fa1a2b930b5c80337118c281c` |
| 14 | `instance` | [Bool.completeLinearOrder](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variante7ca7c7a28757c20deab13f67c522b2ec660d6529bcf04b5c199455aeaabc63a.lean/declarations/bool-completelinearorder--1b30fd478734b3b7c2a9c1f5.md) | 179 | `declaration-track:1b30fd478734b3b7c2a9c1f5e82996907d213fbad42771e572f25439e51fa5ce` |
| 15 | `instance` | [Bool.completeAtomicBooleanAlgebra](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variante7ca7c7a28757c20deab13f67c522b2ec660d6529bcf04b5c199455aeaabc63a.lean/declarations/bool-completeatomicbooleanalgebra--576a73dd4048deac8533fe70.md) | 184 | `declaration-track:576a73dd4048deac8533fe70e8d86e0eb148f6a16e338e77b97eaf29e5e17117` |
| 16 | `theorem` | [Directed.finite_set_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variante7ca7c7a28757c20deab13f67c522b2ec660d6529bcf04b5c199455aeaabc63a.lean/declarations/directed-finite-set-le--5ffb0a1bcd992903e1563250.md) | 193 | `result-track:5ffb0a1bcd992903e15632506f061cd3a1d4a30ed577ba3ab95d0c6c75316fd9` |
| 17 | `theorem` | [Directed.finite_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variante7ca7c7a28757c20deab13f67c522b2ec660d6529bcf04b5c199455aeaabc63a.lean/declarations/directed-finite-le--deb57681e4077b082f48d137.md) | 197 | `result-track:deb57681e4077b082f48d137770c97305704d692ee0fa04ac7078cb24b355cf4` |
| 18 | `theorem` | [Finite.exists_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variante7ca7c7a28757c20deab13f67c522b2ec660d6529bcf04b5c199455aeaabc63a.lean/declarations/finite-exists-le--97133baa3fc00de236f17cac.md) | 204 | `result-track:97133baa3fc00de236f17cac180dca4ea895168545696ad1cfbd98c349b07594` |
| 19 | `theorem` | [Finite.exists_ge](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variante7ca7c7a28757c20deab13f67c522b2ec660d6529bcf04b5c199455aeaabc63a.lean/declarations/finite-exists-ge--1026b68b410baa6ccac58cfe.md) | 207 | `result-track:1026b68b410baa6ccac58cfe0f5d02525e8d22e7fcb64d382cf8f9f246fe5071` |
| 20 | `theorem` | [Set.Finite.exists_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variante7ca7c7a28757c20deab13f67c522b2ec660d6529bcf04b5c199455aeaabc63a.lean/declarations/set-finite-exists-le--3595c0a17c3c4d29e7d3bdf5.md) | 210 | `result-track:3595c0a17c3c4d29e7d3bdf51b05979d6a6d155949b40ffbd6d3e4e966c5ed55` |
| 21 | `theorem` | [Set.Finite.exists_ge](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variante7ca7c7a28757c20deab13f67c522b2ec660d6529bcf04b5c199455aeaabc63a.lean/declarations/set-finite-exists-ge--f6392cff70e8f58702405bfe.md) | 214 | `result-track:f6392cff70e8f58702405bfeee80b35842f2c234fdd57924521bb4fd4c5a39a5` |
| 22 | `theorem` | [Finite.bddAbove_range](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variante7ca7c7a28757c20deab13f67c522b2ec660d6529bcf04b5c199455aeaabc63a.lean/declarations/finite-bddabove-range--932527af54e2114dcc1a88ca.md) | 219 | `result-track:932527af54e2114dcc1a88cab1251763d46ac3da2b7ec2733f96cf146fd1a93a` |
| 23 | `theorem` | [Finite.bddBelow_range](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variante7ca7c7a28757c20deab13f67c522b2ec660d6529bcf04b5c199455aeaabc63a.lean/declarations/finite-bddbelow-range--e8c4fee2ddb6ada9499a5106.md) | 226 | `result-track:e8c4fee2ddb6ada9499a5106005e3e30278837a29ff8287c3593d8272a990cdd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
