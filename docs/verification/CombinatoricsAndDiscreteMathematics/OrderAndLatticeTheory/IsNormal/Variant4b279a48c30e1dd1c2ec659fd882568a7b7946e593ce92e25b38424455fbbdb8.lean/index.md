# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.IsNormal.Variant4b279a48c30e1dd1c2ec659fd882568a7b7946e593ce92e25b38424455fbbdb8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b433687e092d1b44738896c31d91f5bebddd0d01",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/IsNormal/Variant4b279a48c30e1dd1c2ec659fd882568a7b7946e593ce92e25b38424455fbbdb8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/IsNormal/Variant4b279a48c30e1dd1c2ec659fd882568a7b7946e593ce92e25b38424455fbbdb8.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/IsNormal/Variant4b279a48c30e1dd1c2ec659fd882568a7b7946e593ce92e25b38424455fbbdb8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b433687e092d1b44738896c31d91f5bebddd0d01`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/IsNormal/Variant4b279a48c30e1dd1c2ec659fd882568a7b7946e593ce92e25b38424455fbbdb8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/IsNormal/Variant4b279a48c30e1dd1c2ec659fd882568a7b7946e593ce92e25b38424455fbbdb8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.SuccPred.InitialSeg` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [IsNormal](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/IsNormal/Variant4b279a48c30e1dd1c2ec659fd882568a7b7946e593ce92e25b38424455fbbdb8.lean/declarations/isnormal--d8a67591c4aa6963b6e86440.md) | 31 | `declaration-track:d8a67591c4aa6963b6e86440fdff863cb257555501f5925ebafa66e74898c0cb` |
| 2 | `theorem` | [of_mem_lowerBounds_upperBounds](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/IsNormal/Variant4b279a48c30e1dd1c2ec659fd882568a7b7946e593ce92e25b38424455fbbdb8.lean/declarations/of-mem-lowerbounds-upperbounds--b8226223a580f9151c5da45c.md) | 41 | `result-track:b8226223a580f9151c5da45c3ef034f1bdcb428218d595a753ffe1fb14827dd6` |
| 3 | `theorem` | [of_succ_lt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/IsNormal/Variant4b279a48c30e1dd1c2ec659fd882568a7b7946e593ce92e25b38424455fbbdb8.lean/declarations/of-succ-lt--abcba9d4b2049d805495f672.md) | 47 | `result-track:abcba9d4b2049d805495f6722ac5b4f0b9fdc81d1b5417fd2f2e0841bdf6f789` |
| 4 | `theorem` | [le_iff_forall_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/IsNormal/Variant4b279a48c30e1dd1c2ec659fd882568a7b7946e593ce92e25b38424455fbbdb8.lean/declarations/le-iff-forall-le--db7d1bd387bb489c3e83e264.md) | 64 | `result-track:db7d1bd387bb489c3e83e264b42e5e7142e5dc47cb9ae3fd9b7517d92fc90229` |
| 5 | `theorem` | [lt_iff_exists_lt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/IsNormal/Variant4b279a48c30e1dd1c2ec659fd882568a7b7946e593ce92e25b38424455fbbdb8.lean/declarations/lt-iff-exists-lt--ef842ddb8e77aa04852c1598.md) | 68 | `result-track:ef842ddb8e77aa04852c1598b606a7e7ad7235db33c1d20756755684050b6d3c` |
| 6 | `theorem` | [map_isSuccLimit](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/IsNormal/Variant4b279a48c30e1dd1c2ec659fd882568a7b7946e593ce92e25b38424455fbbdb8.lean/declarations/map-issucclimit--200054ef69f0f454a8f030ae.md) | 72 | `result-track:200054ef69f0f454a8f030ae50a4249c301e6e46359a5908edd877878eb950ec` |
| 7 | `theorem` | [map_isLUB](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/IsNormal/Variant4b279a48c30e1dd1c2ec659fd882568a7b7946e593ce92e25b38424455fbbdb8.lean/declarations/map-islub--9c5dc56cc0ade393c4b14be3.md) | 81 | `result-track:9c5dc56cc0ade393c4b14be3d08dd970e20795800197cbcee8acdc4bcbb3c07e` |
| 8 | `theorem` | [_root_.InitialSeg.isNormal](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/IsNormal/Variant4b279a48c30e1dd1c2ec659fd882568a7b7946e593ce92e25b38424455fbbdb8.lean/declarations/root-initialseg-isnormal--c44f8e152cefbd1781a27561.md) | 96 | `result-track:c44f8e152cefbd1781a2756162b7fee6a82bf1450f851e574e08fd2ee645c26f` |
| 9 | `theorem` | [_root_.PrincipalSeg.isNormal](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/IsNormal/Variant4b279a48c30e1dd1c2ec659fd882568a7b7946e593ce92e25b38424455fbbdb8.lean/declarations/root-principalseg-isnormal--071479708f06b271c071dd7b.md) | 102 | `result-track:071479708f06b271c071dd7b93cc8c2ef362020a536d8e893050f6924bc5027e` |
| 10 | `theorem` | [_root_.OrderIso.isNormal](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/IsNormal/Variant4b279a48c30e1dd1c2ec659fd882568a7b7946e593ce92e25b38424455fbbdb8.lean/declarations/root-orderiso-isnormal--99e9324f1c165c9c7e8187ae.md) | 105 | `result-track:99e9324f1c165c9c7e8187ae2ec5b3e0df26db55504561d5cd209f75aabbd071` |
| 11 | `theorem` | [id](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/IsNormal/Variant4b279a48c30e1dd1c2ec659fd882568a7b7946e593ce92e25b38424455fbbdb8.lean/declarations/id--9660d1db523abc554cc38abb.md) | 108 | `result-track:9660d1db523abc554cc38abb7f8225fd2b0e568ad055ea79df0b89f457fab980` |
| 12 | `theorem` | [comp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/IsNormal/Variant4b279a48c30e1dd1c2ec659fd882568a7b7946e593ce92e25b38424455fbbdb8.lean/declarations/comp--112346242c23aed07c31aa74.md) | 111 | `result-track:112346242c23aed07c31aa7413c4a0819509cee7497eb3715a64a49975adbf3c` |
| 13 | `theorem` | [map_sSup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/IsNormal/Variant4b279a48c30e1dd1c2ec659fd882568a7b7946e593ce92e25b38424455fbbdb8.lean/declarations/map-ssup--01e87e5dc35823e0dbee7e92.md) | 123 | `result-track:01e87e5dc35823e0dbee7e924cc67fbc60ed334d8f39d8c18cf7f01fabec26d9` |
| 14 | `theorem` | [map_iSup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/IsNormal/Variant4b279a48c30e1dd1c2ec659fd882568a7b7946e593ce92e25b38424455fbbdb8.lean/declarations/map-isup--6c30bd51d5f979b4103decc7.md) | 127 | `result-track:6c30bd51d5f979b4103decc7dd9d51ef670a0c016001d07e73b1f161c4d886b1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
