# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.SemistandardTableau.Variantd598988f92ed491ace60119d6b5fd9d3b9bc4f0c40cb27e16eed2d5373f6e964

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "25d57ee09a070346a30e9c6ed24b2657c1abcaa2",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/SemistandardTableau/Variantd598988f92ed491ace60119d6b5fd9d3b9bc4f0c40cb27e16eed2d5373f6e964.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SemistandardTableau/Variantd598988f92ed491ace60119d6b5fd9d3b9bc4f0c40cb27e16eed2d5373f6e964.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SemistandardTableau/Variantd598988f92ed491ace60119d6b5fd9d3b9bc4f0c40cb27e16eed2d5373f6e964.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `25d57ee09a070346a30e9c6ed24b2657c1abcaa2`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/SemistandardTableau/Variantd598988f92ed491ace60119d6b5fd9d3b9bc4f0c40cb27e16eed2d5373f6e964.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/SemistandardTableau/Variantd598988f92ed491ace60119d6b5fd9d3b9bc4f0c40cb27e16eed2d5373f6e964.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [SemistandardYoungTableau](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SemistandardTableau/Variantd598988f92ed491ace60119d6b5fd9d3b9bc4f0c40cb27e16eed2d5373f6e964.lean/declarations/semistandardyoungtableau--3e19c737b889732bd84946f7.md) | 56 | `declaration-track:3e19c737b889732bd84946f7e4b0e971c7f5a8286e90ac3dbb0ba76d0fb373f0` |
| 2 | `instance` | [instFunLike](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SemistandardTableau/Variantd598988f92ed491ace60119d6b5fd9d3b9bc4f0c40cb27e16eed2d5373f6e964.lean/declarations/instfunlike--83394ea16c7bc723ceb4f7b0.md) | 69 | `declaration-track:83394ea16c7bc723ceb4f7b0105373c93b4e4638fef51eab5f72958040bde16a` |
| 3 | `theorem` | [to_fun_eq_coe](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SemistandardTableau/Variantd598988f92ed491ace60119d6b5fd9d3b9bc4f0c40cb27e16eed2d5373f6e964.lean/declarations/to-fun-eq-coe--9aea5ac3d0c513da0ea04c8f.md) | 77 | `result-track:9aea5ac3d0c513da0ea04c8fbb27ae3285b3a46900c3b0c21055c591b457affd` |
| 4 | `theorem` | [ext](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SemistandardTableau/Variantd598988f92ed491ace60119d6b5fd9d3b9bc4f0c40cb27e16eed2d5373f6e964.lean/declarations/ext--1560915f764ff28a83d5cd6e.md) | 82 | `result-track:1560915f764ff28a83d5cd6ea95eb866e12fa1a81f6a78ea0e73bf248d91a6da` |
| 5 | `def` | [copy](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SemistandardTableau/Variantd598988f92ed491ace60119d6b5fd9d3b9bc4f0c40cb27e16eed2d5373f6e964.lean/declarations/copy--4736e46abafa09ceb41ddab5.md) | 90 | `declaration-track:4736e46abafa09ceb41ddab5c45cdb923073cc59cbdecd0ed551a2125f37078c` |
| 6 | `theorem` | [coe_copy](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SemistandardTableau/Variantd598988f92ed491ace60119d6b5fd9d3b9bc4f0c40cb27e16eed2d5373f6e964.lean/declarations/coe-copy--0ced2c842a0c37623a654ecb.md) | 98 | `result-track:0ced2c842a0c37623a654ecbb80d49d1d19e95307c591eadd4c585095ce42341` |
| 7 | `theorem` | [copy_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SemistandardTableau/Variantd598988f92ed491ace60119d6b5fd9d3b9bc4f0c40cb27e16eed2d5373f6e964.lean/declarations/copy-eq--941b38ce1c63992d2d7c76d0.md) | 102 | `result-track:941b38ce1c63992d2d7c76d0b0f40b800de1bf545ede049f45dbc1a647197d5c` |
| 8 | `theorem` | [row_weak](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SemistandardTableau/Variantd598988f92ed491ace60119d6b5fd9d3b9bc4f0c40cb27e16eed2d5373f6e964.lean/declarations/row-weak--fab50d4e0b748528293970fe.md) | 106 | `result-track:fab50d4e0b748528293970fe2557a9faa289bf7459456e7cd5abf64aa65c3f5a` |
| 9 | `theorem` | [col_strict](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SemistandardTableau/Variantd598988f92ed491ace60119d6b5fd9d3b9bc4f0c40cb27e16eed2d5373f6e964.lean/declarations/col-strict--6fcf276cc1d12aa864ad266d.md) | 110 | `result-track:6fcf276cc1d12aa864ad266d99c1497054464d6d3d97fbdeedfbafab9d9d0bb1` |
| 10 | `theorem` | [zeros](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SemistandardTableau/Variantd598988f92ed491ace60119d6b5fd9d3b9bc4f0c40cb27e16eed2d5373f6e964.lean/declarations/zeros--c6e7c3209f8a1a1371a8fe0b.md) | 114 | `result-track:c6e7c3209f8a1a1371a8fe0b8231b4aeff4053923a4a47261623bc02088dec68` |
| 11 | `theorem` | [row_weak_of_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SemistandardTableau/Variantd598988f92ed491ace60119d6b5fd9d3b9bc4f0c40cb27e16eed2d5373f6e964.lean/declarations/row-weak-of-le--355d432ab790e79f518595db.md) | 118 | `result-track:355d432ab790e79f518595db2033386e7c79ee87acd9c57c6c9c4187cefaf064` |
| 12 | `theorem` | [col_weak](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SemistandardTableau/Variantd598988f92ed491ace60119d6b5fd9d3b9bc4f0c40cb27e16eed2d5373f6e964.lean/declarations/col-weak--07032db6da229793b5901124.md) | 124 | `result-track:07032db6da229793b590112493fa0ee5ec835f00b38b7075dbfb4bb785402579` |
| 13 | `def` | [highestWeight](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SemistandardTableau/Variantd598988f92ed491ace60119d6b5fd9d3b9bc4f0c40cb27e16eed2d5373f6e964.lean/declarations/highestweight--d0449cdd2470cc1f05208d4e.md) | 131 | `declaration-track:d0449cdd2470cc1f05208d4eac6220a72e46e6d23409744253522a4a16eeff4e` |
| 14 | `theorem` | [highestWeight_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SemistandardTableau/Variantd598988f92ed491ace60119d6b5fd9d3b9bc4f0c40cb27e16eed2d5373f6e964.lean/declarations/highestweight-apply--a6baa677d24c55ef70d2f6ec.md) | 140 | `result-track:a6baa677d24c55ef70d2f6ec06b136dcb00229acef0556dee0f929890670759a` |
| 15 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SemistandardTableau/Variantd598988f92ed491ace60119d6b5fd9d3b9bc4f0c40cb27e16eed2d5373f6e964.lean/declarations/instance--16aeb081a9471be7be7bd12d.md) | 144 | `declaration-track:16aeb081a9471be7be7bd12d1335804fecc651e12ae271e55e720635efef534f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
