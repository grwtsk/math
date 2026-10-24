# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Attempt03.Variant36da9724754a616735834451e2b083ba3904d834c4af73c213c122cd19a8314b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bdab93e1e1ff38ad80a6d0e4e0387b5a50cf38c1",
  "lexical_observation_count": 39,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Attempt03/Variant36da9724754a616735834451e2b083ba3904d834c4af73c213c122cd19a8314b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Attempt03/Variant36da9724754a616735834451e2b083ba3904d834c4af73c213c122cd19a8314b.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Attempt03/Variant36da9724754a616735834451e2b083ba3904d834c4af73c213c122cd19a8314b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bdab93e1e1ff38ad80a6d0e4e0387b5a50cf38c1`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Attempt03/Variant36da9724754a616735834451e2b083ba3904d834c4af73c213c122cd19a8314b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Attempt03/Variant36da9724754a616735834451e2b083ba3904d834c4af73c213c122cd19a8314b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Log.Deriv` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Harmonic.EulerMascheroni` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum.Prime` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [log_two_lower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Attempt03/Variant36da9724754a616735834451e2b083ba3904d834c4af73c213c122cd19a8314b.lean/declarations/log-two-lower--b115fb0f0f40518ec9ec4630.md) | 21 | `result-track:b115fb0f0f40518ec9ec46306128623c3cee9f545537aee4eb4fc666e5ace19d` |
| 2 | `theorem` | [log_two_fine_lower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Attempt03/Variant36da9724754a616735834451e2b083ba3904d834c4af73c213c122cd19a8314b.lean/declarations/log-two-fine-lower--a2703eb307afdf4f3b35869c.md) | 26 | `result-track:a2703eb307afdf4f3b35869c8ef081cef03c99b7e9b3a3c6199e5d737eb07600` |
| 3 | `theorem` | [log_two_upper](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Attempt03/Variant36da9724754a616735834451e2b083ba3904d834c4af73c213c122cd19a8314b.lean/declarations/log-two-upper--63333d67beaf9c5cab8c113b.md) | 31 | `result-track:63333d67beaf9c5cab8c113b557424488fdb23ade6e5f06009865ef59412ea36` |
| 4 | `theorem` | [log_three_lower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Attempt03/Variant36da9724754a616735834451e2b083ba3904d834c4af73c213c122cd19a8314b.lean/declarations/log-three-lower--271c860d6c5922dae6d1b294.md) | 36 | `result-track:271c860d6c5922dae6d1b294564fefd7b71d3616514135322a8cac8339b84518` |
| 5 | `def` | [stieltjesLowerFour](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Attempt03/Variant36da9724754a616735834451e2b083ba3904d834c4af73c213c122cd19a8314b.lean/declarations/stieltjeslowerfour--fdda502907fa9a58dcbdb96e.md) | 42 | `declaration-track:fdda502907fa9a58dcbdb96e2b365d4885a1c32e8821f2ef5d9f69d8c85b1bf9` |
| 6 | `theorem` | [stieltjesLowerFour_gt_neg_quarter](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Attempt03/Variant36da9724754a616735834451e2b083ba3904d834c4af73c213c122cd19a8314b.lean/declarations/stieltjeslowerfour-gt-neg-quarter--0b79fbec6c1eeaff1b78265d.md) | 44 | `result-track:0b79fbec6c1eeaff1b78265d827f7f3ee196244a48746179379d7b2ef9f8dafd` |
| 7 | `theorem` | [log_3_lower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Attempt03/Variant36da9724754a616735834451e2b083ba3904d834c4af73c213c122cd19a8314b.lean/declarations/log-3-lower--053d0cc683bfefadcdb6d79c.md) | 53 | `result-track:053d0cc683bfefadcdb6d79c7558e8a2572d54f5208b9939d7b962c1aebd0b91` |
| 8 | `theorem` | [log_5_lower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Attempt03/Variant36da9724754a616735834451e2b083ba3904d834c4af73c213c122cd19a8314b.lean/declarations/log-5-lower--560b2610e69d61d0df7acd88.md) | 66 | `result-track:560b2610e69d61d0df7acd888a270f3396e42624228762345987e046720e4899` |
| 9 | `theorem` | [log_7_lower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Attempt03/Variant36da9724754a616735834451e2b083ba3904d834c4af73c213c122cd19a8314b.lean/declarations/log-7-lower--389f6e22ecbbbbeda9a3321b.md) | 79 | `result-track:389f6e22ecbbbbeda9a3321b28e08beab76694030302ffc7405fc49390437e66` |
| 10 | `theorem` | [log_11_lower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Attempt03/Variant36da9724754a616735834451e2b083ba3904d834c4af73c213c122cd19a8314b.lean/declarations/log-11-lower--2b14384f45ef907ca9c99995.md) | 92 | `result-track:2b14384f45ef907ca9c999957101b4535a43dfa3b93b5da5bee75e4dab45eed3` |
| 11 | `theorem` | [log_13_lower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Attempt03/Variant36da9724754a616735834451e2b083ba3904d834c4af73c213c122cd19a8314b.lean/declarations/log-13-lower--0716979b49a2f9e9539a2213.md) | 105 | `result-track:0716979b49a2f9e9539a221318dbe21961cbca149e9dba263af56a3b4688b3c8` |
| 12 | `theorem` | [log_17_lower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Attempt03/Variant36da9724754a616735834451e2b083ba3904d834c4af73c213c122cd19a8314b.lean/declarations/log-17-lower--b4f3e353624a13b88a4b9d62.md) | 118 | `result-track:b4f3e353624a13b88a4b9d62259fa499628be2bd8d1ff1859f769ebc0a7f1324` |
| 13 | `theorem` | [log_19_lower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Attempt03/Variant36da9724754a616735834451e2b083ba3904d834c4af73c213c122cd19a8314b.lean/declarations/log-19-lower--46a5d78a7efd9eb9a0c8d780.md) | 131 | `result-track:46a5d78a7efd9eb9a0c8d780379c154d8285e4e77fb4082c83f1d0aab8e59e27` |
| 14 | `theorem` | [log_23_lower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Attempt03/Variant36da9724754a616735834451e2b083ba3904d834c4af73c213c122cd19a8314b.lean/declarations/log-23-lower--d65a7b532ce043f49f351157.md) | 144 | `result-track:d65a7b532ce043f49f351157a4e43dcc1e5f16c2a421c5be37f99e847f9f937f` |
| 15 | `theorem` | [log_29_lower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Attempt03/Variant36da9724754a616735834451e2b083ba3904d834c4af73c213c122cd19a8314b.lean/declarations/log-29-lower--0e1405feb0408120ef8d6b47.md) | 157 | `result-track:0e1405feb0408120ef8d6b472bd2fc7caea32c9acbd47b21c2a343cbc4a0cae9` |
| 16 | `theorem` | [log_31_lower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Attempt03/Variant36da9724754a616735834451e2b083ba3904d834c4af73c213c122cd19a8314b.lean/declarations/log-31-lower--86e81da8987eff987c6a0198.md) | 170 | `result-track:86e81da8987eff987c6a0198b8c341dbf9357891474f25b7a65d0f546a23c166` |
| 17 | `theorem` | [log_37_lower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Attempt03/Variant36da9724754a616735834451e2b083ba3904d834c4af73c213c122cd19a8314b.lean/declarations/log-37-lower--5a270fec13c2bad6eb81a8ba.md) | 183 | `result-track:5a270fec13c2bad6eb81a8ba197bb556d99e72ef3a48e493d9ebdf288cb26567` |
| 18 | `theorem` | [log_41_lower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Attempt03/Variant36da9724754a616735834451e2b083ba3904d834c4af73c213c122cd19a8314b.lean/declarations/log-41-lower--ffd6b065b2ab7e3f3c19fe1b.md) | 196 | `result-track:ffd6b065b2ab7e3f3c19fe1bd286693f4c7f6bb8b79cbcb67d609b1495dda89f` |
| 19 | `theorem` | [log_43_lower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Attempt03/Variant36da9724754a616735834451e2b083ba3904d834c4af73c213c122cd19a8314b.lean/declarations/log-43-lower--75f59c2e9f2ecf33bbd17766.md) | 209 | `result-track:75f59c2e9f2ecf33bbd1776600e3e32287e07ca0380459384db6d825b1dcdae3` |
| 20 | `theorem` | [log_47_lower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Attempt03/Variant36da9724754a616735834451e2b083ba3904d834c4af73c213c122cd19a8314b.lean/declarations/log-47-lower--c3f7838ca908b42a3ce7080c.md) | 222 | `result-track:c3f7838ca908b42a3ce7080c520e8a165087e5ae604eaa9e493ee75119ec2a13` |
| 21 | `theorem` | [log_53_lower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Attempt03/Variant36da9724754a616735834451e2b083ba3904d834c4af73c213c122cd19a8314b.lean/declarations/log-53-lower--212279fc75a076da5a552ecb.md) | 235 | `result-track:212279fc75a076da5a552ecb05fd4ac02135084364acafe83db9efffd9587782` |
| 22 | `theorem` | [log_59_lower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Attempt03/Variant36da9724754a616735834451e2b083ba3904d834c4af73c213c122cd19a8314b.lean/declarations/log-59-lower--8d4aa75488ec2d5eb6b4df63.md) | 248 | `result-track:8d4aa75488ec2d5eb6b4df63b5a54af6d17d37a88332a8eeb6d8cc7f314a1b08` |
| 23 | `theorem` | [log_61_lower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Attempt03/Variant36da9724754a616735834451e2b083ba3904d834c4af73c213c122cd19a8314b.lean/declarations/log-61-lower--878a6e4e75c6fbabb96e0b5e.md) | 261 | `result-track:878a6e4e75c6fbabb96e0b5ee6296a069e7e454a1cf08c20fd56129cfdfe537c` |
| 24 | `theorem` | [log_67_lower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Attempt03/Variant36da9724754a616735834451e2b083ba3904d834c4af73c213c122cd19a8314b.lean/declarations/log-67-lower--dd9641a8df1c57327044fe54.md) | 274 | `result-track:dd9641a8df1c57327044fe54b157230348a02c1942dfed3eba5fba62a5c0dbf0` |
| 25 | `theorem` | [log_71_lower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Attempt03/Variant36da9724754a616735834451e2b083ba3904d834c4af73c213c122cd19a8314b.lean/declarations/log-71-lower--ca6c1eff31b191babd00b306.md) | 287 | `result-track:ca6c1eff31b191babd00b306f955da6f61bf31551ee52dda29dab56905e3df01` |
| 26 | `theorem` | [log_73_lower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Attempt03/Variant36da9724754a616735834451e2b083ba3904d834c4af73c213c122cd19a8314b.lean/declarations/log-73-lower--7ad270ad2906d33c1d7299cb.md) | 300 | `result-track:7ad270ad2906d33c1d7299cbf51d043c1f036b69844f574a8ea943f394d7b107` |
| 27 | `theorem` | [log_79_lower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Attempt03/Variant36da9724754a616735834451e2b083ba3904d834c4af73c213c122cd19a8314b.lean/declarations/log-79-lower--9fbc800db1a928f95beb97bc.md) | 313 | `result-track:9fbc800db1a928f95beb97bc6a50c61fb1e5df9d36169f89b82da18607a00ac7` |
| 28 | `theorem` | [log_83_lower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Attempt03/Variant36da9724754a616735834451e2b083ba3904d834c4af73c213c122cd19a8314b.lean/declarations/log-83-lower--3f0fb271155a139e6a6231a8.md) | 326 | `result-track:3f0fb271155a139e6a6231a8b3732713dbfa278fea59e57c4ec861e82feb6ab8` |
| 29 | `theorem` | [log_89_lower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Attempt03/Variant36da9724754a616735834451e2b083ba3904d834c4af73c213c122cd19a8314b.lean/declarations/log-89-lower--07cac8c34b7470021b31767c.md) | 339 | `result-track:07cac8c34b7470021b31767c663d6425b247411896657676e46fa9ab2a7b9218` |
| 30 | `theorem` | [log_97_lower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Attempt03/Variant36da9724754a616735834451e2b083ba3904d834c4af73c213c122cd19a8314b.lean/declarations/log-97-lower--1693fa22b6df6e9c83b1ebe8.md) | 352 | `result-track:1693fa22b6df6e9c83b1ebe890e3f51cb8d5caf21e937d888311fd5dccadf068` |
| 31 | `def` | [primeInventory](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Attempt03/Variant36da9724754a616735834451e2b083ba3904d834c4af73c213c122cd19a8314b.lean/declarations/primeinventory--64b4b3d81c2d7c51abbec3d5.md) | 365 | `declaration-track:64b4b3d81c2d7c51abbec3d5e3870aff4f08a0d81b3f1fa94c3730e404cba81d` |
| 32 | `def` | [certifiedLogLower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Attempt03/Variant36da9724754a616735834451e2b083ba3904d834c4af73c213c122cd19a8314b.lean/declarations/certifiedloglower--e5820c6647fada74a4a9e7a9.md) | 367 | `declaration-track:e5820c6647fada74a4a9e7a9dd450d9fdd909536a8b97443baedba62e1731320` |
| 33 | `def` | [powerCoefficient](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Attempt03/Variant36da9724754a616735834451e2b083ba3904d834c4af73c213c122cd19a8314b.lean/declarations/powercoefficient--b3c375a28d16bbc382acf154.md) | 370 | `declaration-track:b3c375a28d16bbc382acf15444a84d897b0bb581b7aadc0b36d44b3bffc5de39` |
| 34 | `def` | [finiteProperPowerMoment](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Attempt03/Variant36da9724754a616735834451e2b083ba3904d834c4af73c213c122cd19a8314b.lean/declarations/finiteproperpowermoment--6aea6b9d4694ffd97ca277cd.md) | 372 | `declaration-track:6aea6b9d4694ffd97ca277cd9080f2b376a506e19606848935bb038dec20604f` |
| 35 | `theorem` | [inventory_primes](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Attempt03/Variant36da9724754a616735834451e2b083ba3904d834c4af73c213c122cd19a8314b.lean/declarations/inventory-primes--47632deed09c3f7f0f9ae0b2.md) | 375 | `result-track:47632deed09c3f7f0f9ae0b2e140f6adab268274590a7f48e130637dd4efc335` |
| 36 | `theorem` | [inventory_log_lower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Attempt03/Variant36da9724754a616735834451e2b083ba3904d834c4af73c213c122cd19a8314b.lean/declarations/inventory-log-lower--f817910d264b5cab489a44d9.md) | 381 | `result-track:f817910d264b5cab489a44d912ffd8efee7ade23ec7950a3673c8c4fe0a728b4` |
| 37 | `theorem` | [finiteProperPowerMoment_gt_nine_quarters](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Attempt03/Variant36da9724754a616735834451e2b083ba3904d834c4af73c213c122cd19a8314b.lean/declarations/finiteproperpowermoment-gt-nine-quarters--bdb659648071e37b4c2f0160.md) | 412 | `result-track:bdb659648071e37b4c2f016013e49ca26fee23a96ff104e41c9cd295cf444579` |
| 38 | `theorem` | [finiteProperPowerMoment_eq_atoms](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Attempt03/Variant36da9724754a616735834451e2b083ba3904d834c4af73c213c122cd19a8314b.lean/declarations/finiteproperpowermoment-eq-atoms--388b0e5862987bfc4fa51dcd.md) | 431 | `result-track:388b0e5862987bfc4fa51dcd568324798fea0631c64444637bd860af745b9025` |
| 39 | `theorem` | [intercept_positive_of_actual_bridges](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Attempt03/Variant36da9724754a616735834451e2b083ba3904d834c4af73c213c122cd19a8314b.lean/declarations/intercept-positive-of-actual-bridges--2dfb71c1179b1460101565dd.md) | 443 | `result-track:2dfb71c1179b1460101565dd812d423643cb82bfb28abedb4aae5f8fe72ff288` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
