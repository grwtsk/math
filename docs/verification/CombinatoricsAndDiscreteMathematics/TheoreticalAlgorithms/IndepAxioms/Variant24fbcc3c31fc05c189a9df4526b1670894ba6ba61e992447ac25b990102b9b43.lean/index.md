# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.IndepAxioms.Variant24fbcc3c31fc05c189a9df4526b1670894ba6ba61e992447ac25b990102b9b43

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6709a937797d5763a647c6ef29537e0e3261628c",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IndepAxioms/Variant24fbcc3c31fc05c189a9df4526b1670894ba6ba61e992447ac25b990102b9b43.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IndepAxioms/Variant24fbcc3c31fc05c189a9df4526b1670894ba6ba61e992447ac25b990102b9b43.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IndepAxioms/Variant24fbcc3c31fc05c189a9df4526b1670894ba6ba61e992447ac25b990102b9b43.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6709a937797d5763a647c6ef29537e0e3261628c`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IndepAxioms/Variant24fbcc3c31fc05c189a9df4526b1670894ba6ba61e992447ac25b990102b9b43.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IndepAxioms/Variant24fbcc3c31fc05c189a9df4526b1670894ba6ba61e992447ac25b990102b9b43.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Interval.Finset.Nat` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Finite.Lattice` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Matroid.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [IndepMatroid](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IndepAxioms/Variant24fbcc3c31fc05c189a9df4526b1670894ba6ba61e992447ac25b990102b9b43.lean/declarations/indepmatroid--d38ec0b3324d054e8d087b26.md) | 122 | `declaration-track:d38ec0b3324d054e8d087b266d41e4867fc946eff5fdee017136faad1f7c5f15` |
| 2 | `def` | [matroid](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IndepAxioms/Variant24fbcc3c31fc05c189a9df4526b1670894ba6ba61e992447ac25b990102b9b43.lean/declarations/matroid--532c93ea715b0bdc5d64f11c.md) | 137 | `declaration-track:532c93ea715b0bdc5d64f11c439fc8f38a8dc5735800b81b829d8b1765c807cf` |
| 3 | `theorem` | [matroid_indep_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IndepAxioms/Variant24fbcc3c31fc05c189a9df4526b1670894ba6ba61e992447ac25b990102b9b43.lean/declarations/matroid-indep-iff--05f09d4a45404fd333f8ed85.md) | 164 | `result-track:05f09d4a45404fd333f8ed85b93f40a099d762844c80a19351d2fc4313f65ef1` |
| 4 | `def` | [ofFinitary](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IndepAxioms/Variant24fbcc3c31fc05c189a9df4526b1670894ba6ba61e992447ac25b990102b9b43.lean/declarations/offinitary--bbde6242e3d2fb3cae0b9f08.md) | 171 | `declaration-track:bbde6242e3d2fb3cae0b9f0859aa161a631540e4133700c0ca9ecbd8d3e3ea4d` |
| 5 | `theorem` | [ofFinitary_indep](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IndepAxioms/Variant24fbcc3c31fc05c189a9df4526b1670894ba6ba61e992447ac25b990102b9b43.lean/declarations/offinitary-indep--edc2637fadc3ea803ecdb00c.md) | 198 | `result-track:edc2637fadc3ea803ecdb00c41b4362a8fa0bf7b29fa7d441f5895040f57a03d` |
| 6 | `instance` | [ofFinitary_finitary](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IndepAxioms/Variant24fbcc3c31fc05c189a9df4526b1670894ba6ba61e992447ac25b990102b9b43.lean/declarations/offinitary-finitary--23eaddf25717d5cc2c0b9fa6.md) | 203 | `declaration-track:23eaddf25717d5cc2c0b9fa6c4d344b577485cddd2294db870cff0802636e092` |
| 7 | `def` | [ofFinitaryCardAugment](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IndepAxioms/Variant24fbcc3c31fc05c189a9df4526b1670894ba6ba61e992447ac25b990102b9b43.lean/declarations/offinitarycardaugment--c556eeebd81a775cf9ded053.md) | 211 | `declaration-track:c556eeebd81a775cf9ded053ac1affda3160a7989a28d655de6d6b93640e10c6` |
| 8 | `theorem` | [ofFinitaryCardAugment_indep](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IndepAxioms/Variant24fbcc3c31fc05c189a9df4526b1670894ba6ba61e992447ac25b990102b9b43.lean/declarations/offinitarycardaugment-indep--3717b31d6168604bee84de27.md) | 292 | `result-track:3717b31d6168604bee84de27671138695cae4a514e3d70eaa9540686dba6234b` |
| 9 | `instance` | [ofFinitaryCardAugment_finitary](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IndepAxioms/Variant24fbcc3c31fc05c189a9df4526b1670894ba6ba61e992447ac25b990102b9b43.lean/declarations/offinitarycardaugment-finitary--e5ff9e61c56ce60cbe6064d7.md) | 297 | `declaration-track:e5ff9e61c56ce60cbe6064d703874c6d7a3cc8038c979086b6ce2d60d65b0c57` |
| 10 | `theorem` | [_root_.Matroid.existsMaximalSubsetProperty_of_bdd](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IndepAxioms/Variant24fbcc3c31fc05c189a9df4526b1670894ba6ba61e992447ac25b990102b9b43.lean/declarations/root-matroid-existsmaximalsubsetproperty-of-bdd--cb8a4ed2f5d1ddec98eda399.md) | 305 | `result-track:cb8a4ed2f5d1ddec98eda39956dd248494f2f190f956472a635eade5b0188d20` |
| 11 | `def` | [ofBdd](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IndepAxioms/Variant24fbcc3c31fc05c189a9df4526b1670894ba6ba61e992447ac25b990102b9b43.lean/declarations/ofbdd--c1aab333a77bd354da4765ff.md) | 327 | `declaration-track:c1aab333a77bd354da4765ffefd652ab9f7825d38e051e61f871c01ab6d99741` |
| 12 | `theorem` | [ofBdd_indep](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IndepAxioms/Variant24fbcc3c31fc05c189a9df4526b1670894ba6ba61e992447ac25b990102b9b43.lean/declarations/ofbdd-indep--9288e730ca59a23625528045.md) | 342 | `result-track:9288e730ca59a236255280459f45d51bb557f9fb26a2f0a5a62af619bfb831d6` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IndepAxioms/Variant24fbcc3c31fc05c189a9df4526b1670894ba6ba61e992447ac25b990102b9b43.lean/declarations/instance--14238ade8b3822ae18daa0c7.md) | 347 | `declaration-track:14238ade8b3822ae18daa0c738615bb8b63d606cf0d2d5939156f90d0e31bb6d` |
| 14 | `def` | [ofBddAugment](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IndepAxioms/Variant24fbcc3c31fc05c189a9df4526b1670894ba6ba61e992447ac25b990102b9b43.lean/declarations/ofbddaugment--aabc7c00139fb096a0b30746.md) | 358 | `declaration-track:aabc7c00139fb096a0b3074689895f41e123b61a7c1ef79f2c67ec4ec12d87af` |
| 15 | `theorem` | [ofBddAugment_E](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IndepAxioms/Variant24fbcc3c31fc05c189a9df4526b1670894ba6ba61e992447ac25b990102b9b43.lean/declarations/ofbddaugment-e--97a670748b872308abf055f3.md) | 384 | `result-track:97a670748b872308abf055f3b5c8333707fb076a258567bd993a594a18a3b79e` |
| 16 | `theorem` | [ofBddAugment_indep](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IndepAxioms/Variant24fbcc3c31fc05c189a9df4526b1670894ba6ba61e992447ac25b990102b9b43.lean/declarations/ofbddaugment-indep--56dc72458a74b60fd63bfd27.md) | 388 | `result-track:56dc72458a74b60fd63bfd277966bff840ebc6cc00463e4e1810115c7c16d5f7` |
| 17 | `instance` | [ofBddAugment_rankFinite](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IndepAxioms/Variant24fbcc3c31fc05c189a9df4526b1670894ba6ba61e992447ac25b990102b9b43.lean/declarations/ofbddaugment-rankfinite--f66a556d9695620004e1518e.md) | 392 | `declaration-track:f66a556d9695620004e1518e518020c9a2bbc5096c3d3a84119a4f1dfd6b3d84` |
| 18 | `def` | [ofFinite](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IndepAxioms/Variant24fbcc3c31fc05c189a9df4526b1670894ba6ba61e992447ac25b990102b9b43.lean/declarations/offinite--ee380738b5d7d8540df2a64f.md) | 400 | `declaration-track:ee380738b5d7d8540df2a64f517da7b251c366a327f0ffbe7d7214db752824a8` |
| 19 | `theorem` | [ofFinite_E](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IndepAxioms/Variant24fbcc3c31fc05c189a9df4526b1670894ba6ba61e992447ac25b990102b9b43.lean/declarations/offinite-e--1dbf90c83e3b03ab2410810c.md) | 417 | `result-track:1dbf90c83e3b03ab2410810c73a0eeda671965347255182be809178c162ada17` |
| 20 | `theorem` | [ofFinite_indep](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IndepAxioms/Variant24fbcc3c31fc05c189a9df4526b1670894ba6ba61e992447ac25b990102b9b43.lean/declarations/offinite-indep--0359611a5e7958ab805c39c4.md) | 421 | `result-track:0359611a5e7958ab805c39c4b32e0f3e9e9f5bce7170f414689374c0803e0685` |
| 21 | `instance` | [ofFinite_finite](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IndepAxioms/Variant24fbcc3c31fc05c189a9df4526b1670894ba6ba61e992447ac25b990102b9b43.lean/declarations/offinite-finite--b65882dc9de9619c0cc88164.md) | 425 | `declaration-track:b65882dc9de9619c0cc881645d92c71ce55746294ca763dfa5bcaa1820693d2f` |
| 22 | `def` | [ofFinset](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IndepAxioms/Variant24fbcc3c31fc05c189a9df4526b1670894ba6ba61e992447ac25b990102b9b43.lean/declarations/offinset--09800f7c7592514450b8a57e.md) | 432 | `declaration-track:09800f7c7592514450b8a57e7d7807c73b403e4d3d496d65f091c6188b55cf58` |
| 23 | `theorem` | [ofFinset_E](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IndepAxioms/Variant24fbcc3c31fc05c189a9df4526b1670894ba6ba61e992447ac25b990102b9b43.lean/declarations/offinset-e--3ffddb72602ffd0335e9c375.md) | 452 | `result-track:3ffddb72602ffd0335e9c375eec6aa4fbd1522ae654882e5c88cbde2aa455fb8` |
| 24 | `theorem` | [ofFinset_indep](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IndepAxioms/Variant24fbcc3c31fc05c189a9df4526b1670894ba6ba61e992447ac25b990102b9b43.lean/declarations/offinset-indep--b8a1f23d5477b9469712b2ce.md) | 456 | `result-track:b8a1f23d5477b9469712b2ce8f97bf444250901cda735b853e17f905dc1f24a2` |
| 25 | `theorem` | [ofFinset_indep'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IndepAxioms/Variant24fbcc3c31fc05c189a9df4526b1670894ba6ba61e992447ac25b990102b9b43.lean/declarations/offinset-indep--ecf2804dafbefe93051d035b.md) | 464 | `result-track:ecf2804dafbefe93051d035bbdcffca4e259a3d94cf20cc67f44b921d471c289` |
| 26 | `def` | [ofExistsMatroid](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IndepAxioms/Variant24fbcc3c31fc05c189a9df4526b1670894ba6ba61e992447ac25b990102b9b43.lean/declarations/ofexistsmatroid--b13570914198131437b7420c.md) | 480 | `declaration-track:b13570914198131437b7420c638be1fcbeeccc180b2bb4a0a7d8b9128b78449c` |
| 27 | `def` | [ofBase](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IndepAxioms/Variant24fbcc3c31fc05c189a9df4526b1670894ba6ba61e992447ac25b990102b9b43.lean/declarations/ofbase--832708e08cdbca442f81c63f.md) | 493 | `declaration-track:832708e08cdbca442f81c63f58d5ba4212f09487892c3187d65f46e6d2008c7b` |
| 28 | `def` | [ofExistsFiniteIsBase](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IndepAxioms/Variant24fbcc3c31fc05c189a9df4526b1670894ba6ba61e992447ac25b990102b9b43.lean/declarations/ofexistsfiniteisbase--7b6762dc268025d27c098795.md) | 507 | `declaration-track:7b6762dc268025d27c098795ccc7279e52bafc503db52751095cab0df72a5264` |
| 29 | `theorem` | [ofExistsFiniteIsBase_isBase](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IndepAxioms/Variant24fbcc3c31fc05c189a9df4526b1670894ba6ba61e992447ac25b990102b9b43.lean/declarations/ofexistsfiniteisbase-isbase--95684dbab534188a0745e67a.md) | 522 | `result-track:95684dbab534188a0745e67a78e9b4c0cdf8deecfacc673713ca80177fa18b11` |
| 30 | `instance` | [ofExistsFiniteIsBase_rankFinite](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IndepAxioms/Variant24fbcc3c31fc05c189a9df4526b1670894ba6ba61e992447ac25b990102b9b43.lean/declarations/ofexistsfiniteisbase-rankfinite--c41dfd0767fae518bfca6719.md) | 526 | `declaration-track:c41dfd0767fae518bfca67198b58828ae5cb83b30e24c7a5125989aa155d3298` |
| 31 | `def` | [ofIsBaseOfFinite](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IndepAxioms/Variant24fbcc3c31fc05c189a9df4526b1670894ba6ba61e992447ac25b990102b9b43.lean/declarations/ofisbaseoffinite--16ec5525c2866b1b24d6889d.md) | 534 | `declaration-track:16ec5525c2866b1b24d6889dd97779d5e92bb357527010b5a29c23ca778f1522` |
| 32 | `theorem` | [ofIsBaseOfFinite_E](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IndepAxioms/Variant24fbcc3c31fc05c189a9df4526b1670894ba6ba61e992447ac25b990102b9b43.lean/declarations/ofisbaseoffinite-e--084b3cd48deb2516ee77456d.md) | 544 | `result-track:084b3cd48deb2516ee77456d431eac71bbe603d31f3968918c7ff215165e0d9e` |
| 33 | `theorem` | [ofIsBaseOfFinite_isBase](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IndepAxioms/Variant24fbcc3c31fc05c189a9df4526b1670894ba6ba61e992447ac25b990102b9b43.lean/declarations/ofisbaseoffinite-isbase--5dc7ecba7e3465030386634c.md) | 548 | `result-track:5dc7ecba7e3465030386634c5005212e3ed3fb2b0fc9d81b69bd25b6fb927d12` |
| 34 | `instance` | [ofBaseOfFinite_finite](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IndepAxioms/Variant24fbcc3c31fc05c189a9df4526b1670894ba6ba61e992447ac25b990102b9b43.lean/declarations/ofbaseoffinite-finite--7e21537f487804827037b28f.md) | 552 | `declaration-track:7e21537f487804827037b28fd085495914c05d9d108ef404acf04a1b9ca74f7c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
