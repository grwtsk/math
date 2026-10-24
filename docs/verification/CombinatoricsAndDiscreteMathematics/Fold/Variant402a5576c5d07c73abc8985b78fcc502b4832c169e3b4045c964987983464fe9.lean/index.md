# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Fold.Variant402a5576c5d07c73abc8985b78fcc502b4832c169e3b4045c964987983464fe9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a2abe54ffc071bad07d910c5a9b03f5deb25d72a",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Fold/Variant402a5576c5d07c73abc8985b78fcc502b4832c169e3b4045c964987983464fe9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fold/Variant402a5576c5d07c73abc8985b78fcc502b4832c169e3b4045c964987983464fe9.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fold/Variant402a5576c5d07c73abc8985b78fcc502b4832c169e3b4045c964987983464fe9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a2abe54ffc071bad07d910c5a9b03f5deb25d72a`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Fold/Variant402a5576c5d07c73abc8985b78fcc502b4832c169e3b4045c964987983464fe9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Fold/Variant402a5576c5d07c73abc8985b78fcc502b4832c169e3b4045c964987983464fe9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Multiset.Dedup` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.List.MinMax` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [fold](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fold/Variant402a5576c5d07c73abc8985b78fcc502b4832c169e3b4045c964987983464fe9.lean/declarations/fold--a60179e8a90b9da68e083a2f.md) | 31 | `declaration-track:a60179e8a90b9da68e083a2fd630ffa59764a01cb2d78f56078510d3a034f4e5` |
| 2 | `theorem` | [fold_eq_foldr](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fold/Variant402a5576c5d07c73abc8985b78fcc502b4832c169e3b4045c964987983464fe9.lean/declarations/fold-eq-foldr--e467a0fca8db0d038ed0fff3.md) | 35 | `result-track:e467a0fca8db0d038ed0fff3db9e6f825fdef612e00ca527b8c23cfcad6b22fc` |
| 3 | `theorem` | [coe_fold_r](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fold/Variant402a5576c5d07c73abc8985b78fcc502b4832c169e3b4045c964987983464fe9.lean/declarations/coe-fold-r--d7812247856367de46c3a225.md) | 41 | `result-track:d7812247856367de46c3a225c4b1d495f6fff87b696d316731a108ca758fd2ec` |
| 4 | `theorem` | [coe_fold_l](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fold/Variant402a5576c5d07c73abc8985b78fcc502b4832c169e3b4045c964987983464fe9.lean/declarations/coe-fold-l--8a2a37b32acbfe74e7861d12.md) | 45 | `result-track:8a2a37b32acbfe74e7861d125173222f9cb29562b00448bbc2b53bcbfe26cb17` |
| 5 | `theorem` | [fold_eq_foldl](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fold/Variant402a5576c5d07c73abc8985b78fcc502b4832c169e3b4045c964987983464fe9.lean/declarations/fold-eq-foldl--1c2eb487956b02b79d7a9747.md) | 49 | `result-track:1c2eb487956b02b79d7a9747d7b42a51a2814e0e7dede944174f5b05cf983494` |
| 6 | `theorem` | [fold_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fold/Variant402a5576c5d07c73abc8985b78fcc502b4832c169e3b4045c964987983464fe9.lean/declarations/fold-zero--da9ec49f91f7a8c15ff4330d.md) | 55 | `result-track:da9ec49f91f7a8c15ff4330d046d61e285b1909c688392115e306f60c90f466a` |
| 7 | `theorem` | [fold_cons_left](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fold/Variant402a5576c5d07c73abc8985b78fcc502b4832c169e3b4045c964987983464fe9.lean/declarations/fold-cons-left--b2872e619506af348fb45d0f.md) | 60 | `result-track:b2872e619506af348fb45d0f0384bab7cade188f62c388a3957a9f5d505fc892` |
| 8 | `theorem` | [fold_cons_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fold/Variant402a5576c5d07c73abc8985b78fcc502b4832c169e3b4045c964987983464fe9.lean/declarations/fold-cons-right--f4242e662d36ed6794dd6f9d.md) | 64 | `result-track:f4242e662d36ed6794dd6f9d397a42597de90bfdccaaabe9fc347e6626704e26` |
| 9 | `theorem` | [fold_cons'_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fold/Variant402a5576c5d07c73abc8985b78fcc502b4832c169e3b4045c964987983464fe9.lean/declarations/fold-cons-right--b7de091d9820ece110ac5b25.md) | 68 | `result-track:b7de091d9820ece110ac5b259597dd968c9491fcefde8a9d8fffe25c1c6fbf8e` |
| 10 | `theorem` | [fold_cons'_left](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fold/Variant402a5576c5d07c73abc8985b78fcc502b4832c169e3b4045c964987983464fe9.lean/declarations/fold-cons-left--734d7eebf7500f26087c28a0.md) | 72 | `result-track:734d7eebf7500f26087c28a0db461cb538d69cc94d8d3895e9a9c50be6aa1ee8` |
| 11 | `theorem` | [fold_add](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fold/Variant402a5576c5d07c73abc8985b78fcc502b4832c169e3b4045c964987983464fe9.lean/declarations/fold-add--b4cf4ec007315fd2792c0597.md) | 76 | `result-track:b4cf4ec007315fd2792c05977ea7353f57fdba8834d878eddbba0511fa76f667` |
| 12 | `theorem` | [fold_bind](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fold/Variant402a5576c5d07c73abc8985b78fcc502b4832c169e3b4045c964987983464fe9.lean/declarations/fold-bind--aa0dae17cb6502d9ae890bdd.md) | 83 | `result-track:aa0dae17cb6502d9ae890bdd04abb802ab17451c871219ecb4daa4ae06a0fa72` |
| 13 | `theorem` | [fold_singleton](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fold/Variant402a5576c5d07c73abc8985b78fcc502b4832c169e3b4045c964987983464fe9.lean/declarations/fold-singleton--b267314b3df20871b0e5eab8.md) | 91 | `result-track:b267314b3df20871b0e5eab84aac5cd0fcde36c14c412113156611c97eb481d1` |
| 14 | `theorem` | [fold_distrib](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fold/Variant402a5576c5d07c73abc8985b78fcc502b4832c169e3b4045c964987983464fe9.lean/declarations/fold-distrib--198311854d187cc63481065c.md) | 95 | `result-track:198311854d187cc63481065cd181469cab3d2e67bae7a2d9b2f97ed446272190` |
| 15 | `theorem` | [fold_hom](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fold/Variant402a5576c5d07c73abc8985b78fcc502b4832c169e3b4045c964987983464fe9.lean/declarations/fold-hom--9715944a069b3324e806e256.md) | 103 | `result-track:9715944a069b3324e806e25626741181ba3e5062a68767d7d562be5093e02a48` |
| 16 | `theorem` | [fold_union_inter](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fold/Variant402a5576c5d07c73abc8985b78fcc502b4832c169e3b4045c964987983464fe9.lean/declarations/fold-union-inter--03942f3995253454f26ee911.md) | 109 | `result-track:03942f3995253454f26ee911a007cbf7808e90bd654b222a342dd154c797f172` |
| 17 | `theorem` | [fold_dedup_idem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fold/Variant402a5576c5d07c73abc8985b78fcc502b4832c169e3b4045c964987983464fe9.lean/declarations/fold-dedup-idem--f67536e8c94eefbfb2762820.md) | 115 | `result-track:f67536e8c94eefbfb276282021cb3f059772e5e9a6397609da6e03903148f442` |
| 18 | `theorem` | [max_le_of_forall_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fold/Variant402a5576c5d07c73abc8985b78fcc502b4832c169e3b4045c964987983464fe9.lean/declarations/max-le-of-forall-le--63cf59f7501626dc7d62f0ad.md) | 127 | `result-track:63cf59f7501626dc7d62f0ad08d55792fd1afd77db5401ec288df742cddce7c7` |
| 19 | `theorem` | [max_nat_le_of_forall_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fold/Variant402a5576c5d07c73abc8985b78fcc502b4832c169e3b4045c964987983464fe9.lean/declarations/max-nat-le-of-forall-le--a4ccdd2f840526b9f75db4fb.md) | 133 | `result-track:a4ccdd2f840526b9f75db4fbf33d908d03a9fda250d0f6d649755433dacb2435` |
| 20 | `theorem` | [le_smul_dedup](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fold/Variant402a5576c5d07c73abc8985b78fcc502b4832c169e3b4045c964987983464fe9.lean/declarations/le-smul-dedup--01603f251e664e7527b31cda.md) | 141 | `result-track:01603f251e664e7527b31cda40331ef781462fdf852b2d6cf392e2d01952e27f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
