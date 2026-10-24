# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Lemmas.Variantbb5bdc53ec2bb0fb0ff47e68558e3777047d96183546254036baa9502f3f3df8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "af553a75b952aa7203e28e11c5e44e0aa672d0e0",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantbb5bdc53ec2bb0fb0ff47e68558e3777047d96183546254036baa9502f3f3df8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantbb5bdc53ec2bb0fb0ff47e68558e3777047d96183546254036baa9502f3f3df8.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantbb5bdc53ec2bb0fb0ff47e68558e3777047d96183546254036baa9502f3f3df8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `af553a75b952aa7203e28e11c5e44e0aa672d0e0`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantbb5bdc53ec2bb0fb0ff47e68558e3777047d96183546254036baa9502f3f3df8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantbb5bdc53ec2bb0fb0ff47e68558e3777047d96183546254036baa9502f3f3df8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Batteries.Data.Fin.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Batteries.Data.List.Lemmas` — import line 12; external provider; requires a separately pinned dependency.
- `Batteries.Util.ProofWanted` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [coe_clamp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantbb5bdc53ec2bb0fb0ff47e68558e3777047d96183546254036baa9502f3f3df8.lean/declarations/coe-clamp--760ad90e9971bdccbd2544cc.md) | 24 | `result-track:760ad90e9971bdccbd2544cc5b8770c7351054010f7cdb46d490e4346207b77e` |
| 2 | `theorem` | [findSome?_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantbb5bdc53ec2bb0fb0ff47e68558e3777047d96183546254036baa9502f3f3df8.lean/declarations/findsome-zero--86c77531eb2d4668322785e9.md) | 28 | `result-track:86c77531eb2d4668322785e9e159a36e9bdb2546a1eab5bfcf8cbf0580f5263e` |
| 3 | `theorem` | [findSome?_one](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantbb5bdc53ec2bb0fb0ff47e68558e3777047d96183546254036baa9502f3f3df8.lean/declarations/findsome-one--a88377e4c5190e389c8c7bbf.md) | 30 | `result-track:a88377e4c5190e389c8c7bbfad4ef86e89ad84ff182be20e5d313ef09d5aaf39` |
| 4 | `theorem` | [findSome?_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantbb5bdc53ec2bb0fb0ff47e68558e3777047d96183546254036baa9502f3f3df8.lean/declarations/findsome-succ--a780476346d168737aa0c346.md) | 32 | `result-track:a780476346d168737aa0c346264acaef0bef662c2e8391647019cffdd7fd062e` |
| 5 | `theorem` | [findSome?_succ_of_some](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantbb5bdc53ec2bb0fb0ff47e68558e3777047d96183546254036baa9502f3f3df8.lean/declarations/findsome-succ-of-some--a69a9bc621c54eafe0f22216.md) | 42 | `result-track:a69a9bc621c54eafe0f22216b0897227bfae6574eff92c50655b9e4e04a8fce9` |
| 6 | `theorem` | [findSome?_succ_of_isSome](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantbb5bdc53ec2bb0fb0ff47e68558e3777047d96183546254036baa9502f3f3df8.lean/declarations/findsome-succ-of-issome--b352171ecb21a4c3f1944baf.md) | 45 | `result-track:b352171ecb21a4c3f1944bafaa340dc59453ad1c1ddb3878fcfbe00a4d97031f` |
| 7 | `theorem` | [findSome?_succ_of_none](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantbb5bdc53ec2bb0fb0ff47e68558e3777047d96183546254036baa9502f3f3df8.lean/declarations/findsome-succ-of-none--7c3bce35944ce813ad227713.md) | 48 | `result-track:7c3bce35944ce813ad227713ba3d3dba240277df81e9bda5ee96a620a2615d6c` |
| 8 | `theorem` | [findSome?_succ_of_isNone](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantbb5bdc53ec2bb0fb0ff47e68558e3777047d96183546254036baa9502f3f3df8.lean/declarations/findsome-succ-of-isnone--2c4aeafb90b1409379266332.md) | 51 | `result-track:2c4aeafb90b1409379266332a9c5c1c6d232b41ffcf0e4688e41ead5a6232f93` |
| 9 | `theorem` | [exists_of_findSome?_eq_some](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantbb5bdc53ec2bb0fb0ff47e68558e3777047d96183546254036baa9502f3f3df8.lean/declarations/exists-of-findsome-eq-some--a432e505cf1e057edb16e953.md) | 54 | `result-track:a432e505cf1e057edb16e9538adc0f7850a379452fa8d3b1a640d3569b7b57b7` |
| 10 | `theorem` | [eq_none_of_findSome?_eq_none](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantbb5bdc53ec2bb0fb0ff47e68558e3777047d96183546254036baa9502f3f3df8.lean/declarations/eq-none-of-findsome-eq-none--bde83f2280481ab99c742f81.md) | 69 | `result-track:bde83f2280481ab99c742f81291c4f089c9b51f37d0681aa3bc9e4f6d37c3f0d` |
| 11 | `theorem` | [findSome?_isSome_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantbb5bdc53ec2bb0fb0ff47e68558e3777047d96183546254036baa9502f3f3df8.lean/declarations/findsome-issome-iff--9d2072cbf5e9fccc9567d2f0.md) | 85 | `result-track:9d2072cbf5e9fccc9567d2f06a95b2c64da91a23a03a7a628e4591baa08f3042` |
| 12 | `theorem` | [findSome?_eq_none_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantbb5bdc53ec2bb0fb0ff47e68558e3777047d96183546254036baa9502f3f3df8.lean/declarations/findsome-eq-none-iff--55a73beb7ac362d100380b63.md) | 97 | `result-track:55a73beb7ac362d100380b63e4dd585bafaed260b7e8c358da61539dae367930` |
| 13 | `theorem` | [findSome?_isNone_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantbb5bdc53ec2bb0fb0ff47e68558e3777047d96183546254036baa9502f3f3df8.lean/declarations/findsome-isnone-iff--d6d5f3ea41fdce07f32420c3.md) | 108 | `result-track:d6d5f3ea41fdce07f32420c300501760e730da919372882f8d55c6a534789dbb` |
| 14 | `theorem` | [map_findSome?](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantbb5bdc53ec2bb0fb0ff47e68558e3777047d96183546254036baa9502f3f3df8.lean/declarations/map-findsome--98e7ea1d41e5542e62ab7be8.md) | 111 | `result-track:98e7ea1d41e5542e62ab7be8cfec68fb733448dc088d423e98515250afe0375c` |
| 15 | `theorem` | [findSome?_guard](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantbb5bdc53ec2bb0fb0ff47e68558e3777047d96183546254036baa9502f3f3df8.lean/declarations/findsome-guard--bb8f2c7e76eac89683a6023c.md) | 117 | `result-track:bb8f2c7e76eac89683a6023cb670ce8c758fed2e6b5e24de6e26601e1e025087` |
| 16 | `theorem` | [findSome?_eq_findSome?_finRange](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantbb5bdc53ec2bb0fb0ff47e68558e3777047d96183546254036baa9502f3f3df8.lean/declarations/findsome-eq-findsome-finrange--acc7732ffed23d1e0ccfd87e.md) | 119 | `result-track:acc7732ffed23d1e0ccfd87ec72ab2a7c1e9b5db1845127c99d10e550ad99f74` |
| 17 | `theorem` | [find?_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantbb5bdc53ec2bb0fb0ff47e68558e3777047d96183546254036baa9502f3f3df8.lean/declarations/find-zero--6d6922c3649b245cebe5f966.md) | 129 | `result-track:6d6922c3649b245cebe5f9665bb4db9af059fe3c3076f5df83195c5a8ebfaf0f` |
| 18 | `theorem` | [find?_one](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantbb5bdc53ec2bb0fb0ff47e68558e3777047d96183546254036baa9502f3f3df8.lean/declarations/find-one--3648d19f89031c48de96199d.md) | 131 | `result-track:3648d19f89031c48de96199d51932821a0aa3f9b128b46e1784b5f927bb4b4d2` |
| 19 | `theorem` | [find?_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantbb5bdc53ec2bb0fb0ff47e68558e3777047d96183546254036baa9502f3f3df8.lean/declarations/find-succ--5b98b28354db417da0426cf4.md) | 133 | `result-track:5b98b28354db417da0426cf415a7d9b89fde190bb368c008e3aa01536a1ef1f8` |
| 20 | `theorem` | [eq_true_of_find?_eq_some](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantbb5bdc53ec2bb0fb0ff47e68558e3777047d96183546254036baa9502f3f3df8.lean/declarations/eq-true-of-find-eq-some--02fc693b8361f6cbb7a0812f.md) | 138 | `result-track:02fc693b8361f6cbb7a0812f62838f6d6c860c7fec89939b1474e42c203720c6` |
| 21 | `theorem` | [eq_false_of_find?_eq_none](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantbb5bdc53ec2bb0fb0ff47e68558e3777047d96183546254036baa9502f3f3df8.lean/declarations/eq-false-of-find-eq-none--ea8318c6cd669654f86b7c3d.md) | 146 | `result-track:ea8318c6cd669654f86b7c3d5a7d5881036b7794ea372dabec3ba23df4b160b3` |
| 22 | `theorem` | [find?_isSome_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantbb5bdc53ec2bb0fb0ff47e68558e3777047d96183546254036baa9502f3f3df8.lean/declarations/find-issome-iff--1730a484d93f95ec276be633.md) | 153 | `result-track:1730a484d93f95ec276be6335582071742d041ea06ce20f4c379bdb4c7066a79` |
| 23 | `theorem` | [find?_isNone_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantbb5bdc53ec2bb0fb0ff47e68558e3777047d96183546254036baa9502f3f3df8.lean/declarations/find-isnone-iff--e0ff8b0aa9cb694093438fa7.md) | 156 | `result-track:e0ff8b0aa9cb694093438fa73f0209f41f2d8b7339c5a1917665d3bcca8d48b3` |
| 24 | `theorem` | [find?_eq_none_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantbb5bdc53ec2bb0fb0ff47e68558e3777047d96183546254036baa9502f3f3df8.lean/declarations/find-eq-none-iff--91660a5ab6c080e05ba67ea8.md) | 161 | `result-track:91660a5ab6c080e05ba67ea871f1a89282557c5d252a970200e2a363121ce0d8` |
| 25 | `theorem` | [find?_eq_find?_finRange](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantbb5bdc53ec2bb0fb0ff47e68558e3777047d96183546254036baa9502f3f3df8.lean/declarations/find-eq-find-finrange--869eed09803bbd665074bfbe.md) | 164 | `result-track:869eed09803bbd665074bfbedf8ffa64d365d328a486ac640e352a63993844b1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
