# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.MomentCumulantPartitions.Variant68500435bd7dea58e8e5c73d338b716d7efd2e9d70681d34029af24fc8588771

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b1e37471f094dcd8413ff59986e150191047123a",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/MomentCumulantPartitions/Variant68500435bd7dea58e8e5c73d338b716d7efd2e9d70681d34029af24fc8588771.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MomentCumulantPartitions/Variant68500435bd7dea58e8e5c73d338b716d7efd2e9d70681d34029af24fc8588771.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MomentCumulantPartitions/Variant68500435bd7dea58e8e5c73d338b716d7efd2e9d70681d34029af24fc8588771.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b1e37471f094dcd8413ff59986e150191047123a`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/MomentCumulantPartitions/Variant68500435bd7dea58e8e5c73d338b716d7efd2e9d70681d34029af24fc8588771.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/MomentCumulantPartitions/Variant68500435bd7dea58e8e5c73d338b716d7efd2e9d70681d34029af24fc8588771.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.FiniteFourthCumulant` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Partition.Finpartition` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [DirectionPartition](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MomentCumulantPartitions/Variant68500435bd7dea58e8e5c73d338b716d7efd2e9d70681d34029af24fc8588771.lean/declarations/directionpartition--0877ad8c34b90bf1d9b6b2b9.md) | 38 | `declaration-track:0877ad8c34b90bf1d9b6b2b90eafd5d8bf2af5111949b2bdd96b56238bf42765` |
| 2 | `def` | [oneBlockPartition](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MomentCumulantPartitions/Variant68500435bd7dea58e8e5c73d338b716d7efd2e9d70681d34029af24fc8588771.lean/declarations/oneblockpartition--f8ec4c8c1d0a686844efada5.md) | 46 | `declaration-track:f8ec4c8c1d0a686844efada56f3f006bb9aeb901e4aa00af9ac2485b2470b2d6` |
| 3 | `theorem` | [oneBlockPartition_parts](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MomentCumulantPartitions/Variant68500435bd7dea58e8e5c73d338b716d7efd2e9d70681d34029af24fc8588771.lean/declarations/oneblockpartition-parts--10f80e6952fe1635909d7af4.md) | 51 | `result-track:10f80e6952fe1635909d7af4499e74ca9f03e543b74fc38eab8effaab377e439` |
| 4 | `def` | [partitionWeight](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MomentCumulantPartitions/Variant68500435bd7dea58e8e5c73d338b716d7efd2e9d70681d34029af24fc8588771.lean/declarations/partitionweight--4df8ac705cb1b60dfda5ec8a.md) | 59 | `declaration-track:4df8ac705cb1b60dfda5ec8a5cbd278e8a29f9e2551f543569b740c8bb5695a5` |
| 5 | `def` | [partitionMoment](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MomentCumulantPartitions/Variant68500435bd7dea58e8e5c73d338b716d7efd2e9d70681d34029af24fc8588771.lean/declarations/partitionmoment--905726a7154bfea8e928edbc.md) | 67 | `declaration-track:905726a7154bfea8e928edbccb736c6ab0e35bda4caf279c9632969d35e075f4` |
| 6 | `def` | [properPartitions](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MomentCumulantPartitions/Variant68500435bd7dea58e8e5c73d338b716d7efd2e9d70681d34029af24fc8588771.lean/declarations/properpartitions--833127afb8494c8fc0ae3736.md) | 73 | `declaration-track:833127afb8494c8fc0ae3736553e503b40cfe7ce34219f0856a1e1379169cf36` |
| 7 | `def` | [properPartitionContribution](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MomentCumulantPartitions/Variant68500435bd7dea58e8e5c73d338b716d7efd2e9d70681d34029af24fc8588771.lean/declarations/properpartitioncontribution--a1388aed61d51299adad870e.md) | 79 | `declaration-track:a1388aed61d51299adad870e620281d06b7bd57b95fd955c017e16f7549c4867` |
| 8 | `theorem` | [partitionWeight_oneBlock](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MomentCumulantPartitions/Variant68500435bd7dea58e8e5c73d338b716d7efd2e9d70681d34029af24fc8588771.lean/declarations/partitionweight-oneblock--c788a1a0b409db66369bd38b.md) | 85 | `result-track:c788a1a0b409db66369bd38bcfb313b7a518c1897b92338c535ef1f89c9121b0` |
| 9 | `theorem` | [partitionMoment_eq_oneBlock_add_proper](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MomentCumulantPartitions/Variant68500435bd7dea58e8e5c73d338b716d7efd2e9d70681d34029af24fc8588771.lean/declarations/partitionmoment-eq-oneblock-add-proper--d965d31dc158546cd291e8ba.md) | 94 | `result-track:d965d31dc158546cd291e8ba987558969654423e934cda0350f3f23574baa431` |
| 10 | `theorem` | [univ_not_mem_of_mem_properPartitions](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MomentCumulantPartitions/Variant68500435bd7dea58e8e5c73d338b716d7efd2e9d70681d34029af24fc8588771.lean/declarations/univ-not-mem-of-mem-properpartitions--e9098102cd9fe9f9c8812b45.md) | 126 | `result-track:e9098102cd9fe9f9c8812b45499b14d3d491f5619374843da54bcbefa4651def` |
| 11 | `theorem` | [partitionWeight_congr_of_proper](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MomentCumulantPartitions/Variant68500435bd7dea58e8e5c73d338b716d7efd2e9d70681d34029af24fc8588771.lean/declarations/partitionweight-congr-of-proper--5e157c9571c64b787654b513.md) | 146 | `result-track:5e157c9571c64b787654b5132bc3a9e82565755c3d43a04d78882a5f8a1b5635` |
| 12 | `theorem` | [properPartitionContribution_congr](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MomentCumulantPartitions/Variant68500435bd7dea58e8e5c73d338b716d7efd2e9d70681d34029af24fc8588771.lean/declarations/properpartitioncontribution-congr--3aedb679e670c53b71f21fba.md) | 165 | `result-track:3aedb679e670c53b71f21fba54a557daf2cc06112ffa5259b41f932fabefcd7a` |
| 13 | `def` | [withOneBlockValue](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MomentCumulantPartitions/Variant68500435bd7dea58e8e5c73d338b716d7efd2e9d70681d34029af24fc8588771.lean/declarations/withoneblockvalue--41f90b81e4ceeaf910983a48.md) | 180 | `declaration-track:41f90b81e4ceeaf910983a480f70b8abe5fdaf2ea2534cff3542fb394ed63824` |
| 14 | `theorem` | [withOneBlockValue_univ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MomentCumulantPartitions/Variant68500435bd7dea58e8e5c73d338b716d7efd2e9d70681d34029af24fc8588771.lean/declarations/withoneblockvalue-univ--f62274d65a565c8a1dcbfcd6.md) | 189 | `result-track:f62274d65a565c8a1dcbfcd6c523c5eb9f9ce0df2e1f6bdcf7b6917638f912fb` |
| 15 | `theorem` | [withOneBlockValue_of_ne_univ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MomentCumulantPartitions/Variant68500435bd7dea58e8e5c73d338b716d7efd2e9d70681d34029af24fc8588771.lean/declarations/withoneblockvalue-of-ne-univ--1d48e3e743a449325431e567.md) | 197 | `result-track:1d48e3e743a449325431e567c6fa9de3e3ae8f74d0694e92cceea9766ed98759` |
| 16 | `theorem` | [properPartitionContribution_withOneBlockValue](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MomentCumulantPartitions/Variant68500435bd7dea58e8e5c73d338b716d7efd2e9d70681d34029af24fc8588771.lean/declarations/properpartitioncontribution-withoneblockvalue--a3293be83b8f022db9a1923d.md) | 207 | `result-track:a3293be83b8f022db9a1923d612e20929977d9832776f338e33dc2ba3cfbaa6e` |
| 17 | `def` | [isolatedOneBlockCumulant](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MomentCumulantPartitions/Variant68500435bd7dea58e8e5c73d338b716d7efd2e9d70681d34029af24fc8588771.lean/declarations/isolatedoneblockcumulant--2259f09780ea447f4004f300.md) | 220 | `declaration-track:2259f09780ea447f4004f300b246d723c91e63e6c544e46fd4ee583b120968ec` |
| 18 | `theorem` | [partitionMoment_eq_iff_oneBlock_eq_isolated](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MomentCumulantPartitions/Variant68500435bd7dea58e8e5c73d338b716d7efd2e9d70681d34029af24fc8588771.lean/declarations/partitionmoment-eq-iff-oneblock-eq-isolated--796d9a96be62359364dba9d8.md) | 227 | `result-track:796d9a96be62359364dba9d8748f0fdc661cac00a681fe1d79737f7ed0891968` |
| 19 | `def` | [SatisfiesMomentCumulantRelation](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MomentCumulantPartitions/Variant68500435bd7dea58e8e5c73d338b716d7efd2e9d70681d34029af24fc8588771.lean/declarations/satisfiesmomentcumulantrelation--1bba1d9dab4d9061854b7a09.md) | 243 | `declaration-track:1bba1d9dab4d9061854b7a0918782ecf471fcb7a2a7967437ee58336acece348` |
| 20 | `theorem` | [satisfies_iff_recursive_isolation](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MomentCumulantPartitions/Variant68500435bd7dea58e8e5c73d338b716d7efd2e9d70681d34029af24fc8588771.lean/declarations/satisfies-iff-recursive-isolation--826afdd5a331f7cb185c9a12.md) | 251 | `result-track:826afdd5a331f7cb185c9a123d44f57ff902d43d8f06f677b0e7cf8284f9e192` |
| 21 | `def` | [recursiveCumulantUpdate](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MomentCumulantPartitions/Variant68500435bd7dea58e8e5c73d338b716d7efd2e9d70681d34029af24fc8588771.lean/declarations/recursivecumulantupdate--c03071a254a4846622172f3a.md) | 261 | `declaration-track:c03071a254a4846622172f3a15db2c8b63fce88e677ae2ffb2894680654ce470` |
| 22 | `theorem` | [recursiveCumulantUpdate_univ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MomentCumulantPartitions/Variant68500435bd7dea58e8e5c73d338b716d7efd2e9d70681d34029af24fc8588771.lean/declarations/recursivecumulantupdate-univ--d4ea87efdd3947f5407bc0fc.md) | 270 | `result-track:d4ea87efdd3947f5407bc0fc415e8cc58969249a2a82cca087207aff591ae745` |
| 23 | `theorem` | [properPartitionContribution_recursiveCumulantUpdate](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MomentCumulantPartitions/Variant68500435bd7dea58e8e5c73d338b716d7efd2e9d70681d34029af24fc8588771.lean/declarations/properpartitioncontribution-recursivecumulantupdate--a12b2ce5b2be005f0ca31e7d.md) | 281 | `result-track:a12b2ce5b2be005f0ca31e7df889db217af3910619546c1ad559725338dfb9c0` |
| 24 | `theorem` | [recursiveCumulantUpdate_satisfies](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MomentCumulantPartitions/Variant68500435bd7dea58e8e5c73d338b716d7efd2e9d70681d34029af24fc8588771.lean/declarations/recursivecumulantupdate-satisfies--51426c531c1102927cab7068.md) | 292 | `result-track:51426c531c1102927cab706896bb2a6bccdbc9179df522ccf3e767b3aea9e32b` |
| 25 | `theorem` | [satisfies_of_oneBlock_and_properContribution](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MomentCumulantPartitions/Variant68500435bd7dea58e8e5c73d338b716d7efd2e9d70681d34029af24fc8588771.lean/declarations/satisfies-of-oneblock-and-propercontribution--2be0cc6d9b7a5669407eae27.md) | 305 | `result-track:2be0cc6d9b7a5669407eae275a3d7f5cbe459c0a6a577d2d062907f9f1faa06c` |
| 26 | `theorem` | [oneBlock_unique](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MomentCumulantPartitions/Variant68500435bd7dea58e8e5c73d338b716d7efd2e9d70681d34029af24fc8588771.lean/declarations/oneblock-unique--68102d441a69df606e1494e2.md) | 317 | `result-track:68102d441a69df606e1494e2a6addd25e07ca12ff5a0b6f1e1ba823ed60cc388` |
| 27 | `theorem` | [generatedMoment_reconstruction](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MomentCumulantPartitions/Variant68500435bd7dea58e8e5c73d338b716d7efd2e9d70681d34029af24fc8588771.lean/declarations/generatedmoment-reconstruction--ccf71dfefdbaecab5aefe4f4.md) | 334 | `result-track:ccf71dfefdbaecab5aefe4f48e1d4995a81649cfa94812c0f86cc48e654961ef` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
