# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.LatticeGroupLoci.Variant31d2f3bf796ba36083972717039b1f8fe81bd3bb9be1b0fd9ef7c938ffaf71c7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e358fc7dee844c4f6c9166df19e54d0daf73c30b",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeGroupLoci/Variant31d2f3bf796ba36083972717039b1f8fe81bd3bb9be1b0fd9ef7c938ffaf71c7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeGroupLoci/Variant31d2f3bf796ba36083972717039b1f8fe81bd3bb9be1b0fd9ef7c938ffaf71c7.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeGroupLoci/Variant31d2f3bf796ba36083972717039b1f8fe81bd3bb9be1b0fd9ef7c938ffaf71c7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e358fc7dee844c4f6c9166df19e54d0daf73c30b`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeGroupLoci/Variant31d2f3bf796ba36083972717039b1f8fe81bd3bb9be1b0fd9ef7c938ffaf71c7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeGroupLoci/Variant31d2f3bf796ba36083972717039b1f8fe81bd3bb9be1b0fd9ef7c938ffaf71c7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Think.SourceTree.Legacy.Compression.GroupLoci` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [LatticeGroupLocusMoveKind](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeGroupLoci/Variant31d2f3bf796ba36083972717039b1f8fe81bd3bb9be1b0fd9ef7c938ffaf71c7.lean/declarations/latticegrouplocusmovekind--a7f4dfec7425343e93b83410.md) | 21 | `declaration-track:a7f4dfec7425343e93b834100d1bd3c7d9eee96644cb0e0c91c112a0607e1977` |
| 2 | `inductive` | [LatticeGroupLocusMoveClass](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeGroupLoci/Variant31d2f3bf796ba36083972717039b1f8fe81bd3bb9be1b0fd9ef7c938ffaf71c7.lean/declarations/latticegrouplocusmoveclass--318425109b903b62a7013f2c.md) | 37 | `declaration-track:318425109b903b62a7013f2c5a2757983bdcdcb3e1983736d4e5c3b8ced1dbf4` |
| 3 | `def` | [classifyLatticeGroupLocusMove](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeGroupLoci/Variant31d2f3bf796ba36083972717039b1f8fe81bd3bb9be1b0fd9ef7c938ffaf71c7.lean/declarations/classifylatticegrouplocusmove--5d4fac369c936972528a0840.md) | 43 | `declaration-track:5d4fac369c936972528a08401c2049d8b475a8ccf6420bee72880ed14db5e280` |
| 4 | `theorem` | [identity_lattice_group_locus_move_invertible](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeGroupLoci/Variant31d2f3bf796ba36083972717039b1f8fe81bd3bb9be1b0fd9ef7c938ffaf71c7.lean/declarations/identity-lattice-group-locus-move-invertible--bb8e245329df3c7007e4da87.md) | 59 | `result-track:bb8e245329df3c7007e4da87fb0d5cc5c94c4fd48fcc070ad833d494988c83d4` |
| 5 | `theorem` | [braid_lattice_group_locus_move_invertible](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeGroupLoci/Variant31d2f3bf796ba36083972717039b1f8fe81bd3bb9be1b0fd9ef7c938ffaf71c7.lean/declarations/braid-lattice-group-locus-move-invertible--95fe9b8af94209d5822e5b3b.md) | 63 | `result-track:95fe9b8af94209d5822e5b3b2a127c83b2679b9f10fe35ca5132a0f3550addcc` |
| 6 | `theorem` | [quotient_lattice_group_locus_move_reducing](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeGroupLoci/Variant31d2f3bf796ba36083972717039b1f8fe81bd3bb9be1b0fd9ef7c938ffaf71c7.lean/declarations/quotient-lattice-group-locus-move-reducing--1d04212677bda3ce66d72fcd.md) | 67 | `result-track:1d04212677bda3ce66d72fcd6fc303aebe067a8fde0f499018e9629c97ec5e01` |
| 7 | `theorem` | [canonicalize_lattice_group_locus_move_reducing](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeGroupLoci/Variant31d2f3bf796ba36083972717039b1f8fe81bd3bb9be1b0fd9ef7c938ffaf71c7.lean/declarations/canonicalize-lattice-group-locus-move-reducing--15bd9d2b222f5f4454e4cce5.md) | 71 | `result-track:15bd9d2b222f5f4454e4cce58fec00a6d0e6698e176b7f18ab1474f09daeada0` |
| 8 | `theorem` | [normalize_lattice_group_locus_move_reducing](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeGroupLoci/Variant31d2f3bf796ba36083972717039b1f8fe81bd3bb9be1b0fd9ef7c938ffaf71c7.lean/declarations/normalize-lattice-group-locus-move-reducing--d2837f3113d618df126e2993.md) | 75 | `result-track:d2837f3113d618df126e29938f7a0eb1f43d2603f625002c242b30b13009d480` |
| 9 | `theorem` | [macroPlaceholder_lattice_group_locus_move_residue](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeGroupLoci/Variant31d2f3bf796ba36083972717039b1f8fe81bd3bb9be1b0fd9ef7c938ffaf71c7.lean/declarations/macroplaceholder-lattice-group-locus-move-residue--f90af1e9f97c30cf5421ffaf.md) | 79 | `result-track:f90af1e9f97c30cf5421ffaf97704de92a955959bd6fc5740246f9130e7cb66d` |
| 10 | `inductive` | [InvertibleLatticeGroupLocusRewrite](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeGroupLoci/Variant31d2f3bf796ba36083972717039b1f8fe81bd3bb9be1b0fd9ef7c938ffaf71c7.lean/declarations/invertiblelatticegrouplocusrewrite--7c333adc661f4eae26757310.md) | 89 | `declaration-track:7c333adc661f4eae267573106a20ef2d6278bb41f5e7ba398b42c5fe640e97f4` |
| 11 | `def` | [SameLatticeGroupLocusOrbit](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeGroupLoci/Variant31d2f3bf796ba36083972717039b1f8fe81bd3bb9be1b0fd9ef7c938ffaf71c7.lean/declarations/samelatticegrouplocusorbit--b8d9378636d7ee5863fe0d10.md) | 101 | `declaration-track:b8d9378636d7ee5863fe0d1062abf041e9af6c12b6773d692a5410e37403a17f` |
| 12 | `theorem` | [sameLatticeGroupLocusOrbit_refl](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeGroupLoci/Variant31d2f3bf796ba36083972717039b1f8fe81bd3bb9be1b0fd9ef7c938ffaf71c7.lean/declarations/samelatticegrouplocusorbit-refl--47af3bde68345eb782efaae5.md) | 105 | `result-track:47af3bde68345eb782efaae564ce2bb0a20caff69270cf00153f3d101bc9db07` |
| 13 | `theorem` | [sameLatticeGroupLocusOrbit_symm](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeGroupLoci/Variant31d2f3bf796ba36083972717039b1f8fe81bd3bb9be1b0fd9ef7c938ffaf71c7.lean/declarations/samelatticegrouplocusorbit-symm--c8cdcf941bd9ad166e685458.md) | 110 | `result-track:c8cdcf941bd9ad166e68545893ab96b1816f05dd89fc7f5b83489b4f0af269cc` |
| 14 | `theorem` | [sameLatticeGroupLocusOrbit_trans](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeGroupLoci/Variant31d2f3bf796ba36083972717039b1f8fe81bd3bb9be1b0fd9ef7c938ffaf71c7.lean/declarations/samelatticegrouplocusorbit-trans--9aafa2955717988af3469b7c.md) | 117 | `result-track:9aafa2955717988af3469b7c42e18c5cb7e4fde7f97abeff39a828618cc851fe` |
| 15 | `structure` | [PreservesLatticeGroupLoci](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeGroupLoci/Variant31d2f3bf796ba36083972717039b1f8fe81bd3bb9be1b0fd9ef7c938ffaf71c7.lean/declarations/preserveslatticegrouploci--0fa44254e0e41626e84dc52c.md) | 132 | `declaration-track:0fa44254e0e41626e84dc52c08d54855ca0dfeaf8e435a79cdbf74c5969adb75` |
| 16 | `def` | [latticeGroupLoci_refl](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeGroupLoci/Variant31d2f3bf796ba36083972717039b1f8fe81bd3bb9be1b0fd9ef7c938ffaf71c7.lean/declarations/latticegrouploci-refl--77ae8324ad0a2734e9525b38.md) | 160 | `declaration-track:77ae8324ad0a2734e9525b38dc76c307d17481699432d71ea4412be79b173211` |
| 17 | `def` | [latticeGroupLoci_symm](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeGroupLoci/Variant31d2f3bf796ba36083972717039b1f8fe81bd3bb9be1b0fd9ef7c938ffaf71c7.lean/declarations/latticegrouploci-symm--b470c820a662618687dc10bf.md) | 187 | `declaration-track:b470c820a662618687dc10bf3aedbf1e282367b2cba03c45682367588c909dd6` |
| 18 | `def` | [latticeGroupLoci_trans](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeGroupLoci/Variant31d2f3bf796ba36083972717039b1f8fe81bd3bb9be1b0fd9ef7c938ffaf71c7.lean/declarations/latticegrouploci-trans--e9cd9790650048e49915d11f.md) | 203 | `declaration-track:e9cd9790650048e49915d11fc1ca9a2c366d94e2e3abc948aab6f1f5722eddaf` |
| 19 | `theorem` | [invertible_lattice_group_locus_rewrite_preserves_lattice_group_loci](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeGroupLoci/Variant31d2f3bf796ba36083972717039b1f8fe81bd3bb9be1b0fd9ef7c938ffaf71c7.lean/declarations/invertible-lattice-group-locus-rewrite-preserves-lattice-group-loci--5d0c4b9fcbf43b3b79bf5ff1.md) | 241 | `result-track:5d0c4b9fcbf43b3b79bf5ff1d2fa6ca0210569f8e014d4c98252670b2009cc7a` |
| 20 | `theorem` | [invertible_lattice_group_locus_rewrite_preserves_lookup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeGroupLoci/Variant31d2f3bf796ba36083972717039b1f8fe81bd3bb9be1b0fd9ef7c938ffaf71c7.lean/declarations/invertible-lattice-group-locus-rewrite-preserves-lookup--a316cf4e76d0213f49172faa.md) | 256 | `result-track:a316cf4e76d0213f49172faa87882b98f74d9954afbba4738dd1f7e4438ecb1b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
