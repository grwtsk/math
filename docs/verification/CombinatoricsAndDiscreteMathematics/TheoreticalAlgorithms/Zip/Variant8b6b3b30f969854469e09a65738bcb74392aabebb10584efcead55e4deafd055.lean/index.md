# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Zip.Variant8b6b3b30f969854469e09a65738bcb74392aabebb10584efcead55e4deafd055

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6e4827db5ef275970daa8a10a885d6bfb37c18a8",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Variant8b6b3b30f969854469e09a65738bcb74392aabebb10584efcead55e4deafd055.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Variant8b6b3b30f969854469e09a65738bcb74392aabebb10584efcead55e4deafd055.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Variant8b6b3b30f969854469e09a65738bcb74392aabebb10584efcead55e4deafd055.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6e4827db5ef275970daa8a10a885d6bfb37c18a8`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Variant8b6b3b30f969854469e09a65738bcb74392aabebb10584efcead55e4deafd055.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Variant8b6b3b30f969854469e09a65738bcb74392aabebb10584efcead55e4deafd055.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Iterators.Lemmas.Basic` — import line 17; external provider; requires a separately pinned dependency.
- `Init.Data.Iterators.Lemmas.Consumers.Access` — import line 18; external provider; requires a separately pinned dependency.
- `Init.Data.Iterators.Lemmas.Consumers.Collect` — import line 19; external provider; requires a separately pinned dependency.
- `Init.Data.List.ToArray` — import line 20; external provider; requires a separately pinned dependency.
- `Init.Data.List.Zip` — import line 21; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Iter.Intermediate.zip](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Variant8b6b3b30f969854469e09a65738bcb74392aabebb10584efcead55e4deafd055.lean/declarations/iter-intermediate-zip--d3ae06fdeb404359ba4dbbac.md) | 41 | `declaration-track:d3ae06fdeb404359ba4dbbacf5348cd9f999c48b6494b21219e6309de3b29620` |
| 2 | `theorem` | [Iter.Intermediate.zip_inj](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Variant8b6b3b30f969854469e09a65738bcb74392aabebb10584efcead55e4deafd055.lean/declarations/iter-intermediate-zip-inj--e52fe17ff1cdeb882fd33733.md) | 52 | `result-track:e52fe17ff1cdeb882fd33733eddcd7f4734b14f787540d245ec4088250f5bd62` |
| 3 | `theorem` | [Iter.Intermediate.zip_surj](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Variant8b6b3b30f969854469e09a65738bcb74392aabebb10584efcead55e4deafd055.lean/declarations/iter-intermediate-zip-surj--ec3fc0bb2e08b481200fff42.md) | 64 | `result-track:ec3fc0bb2e08b481200fff42aeeaa1132a04992173aeabffc720c44dcfdcb350` |
| 4 | `theorem` | [Iter.zip_eq_intermediateZip](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Variant8b6b3b30f969854469e09a65738bcb74392aabebb10584efcead55e4deafd055.lean/declarations/iter-zip-eq-intermediatezip--647e46f65584beca418455ac.md) | 74 | `result-track:647e46f65584beca418455ac06c3f93cda81175658ae85c3e2a18841277e8091` |
| 5 | `theorem` | [Iter.step_intermediateZip](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Variant8b6b3b30f969854469e09a65738bcb74392aabebb10584efcead55e4deafd055.lean/declarations/iter-step-intermediatezip--01d1fe23d0b995b9534707f5.md) | 80 | `result-track:01d1fe23d0b995b9534707f5a4b7efd550725917da02ef6cf0fa42516f8fc8ec` |
| 6 | `theorem` | [Iter.toList_intermediateZip_of_finite](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Variant8b6b3b30f969854469e09a65738bcb74392aabebb10584efcead55e4deafd055.lean/declarations/iter-tolist-intermediatezip-of-finite--9935d850f6dadbd284bf149c.md) | 119 | `result-track:9935d850f6dadbd284bf149c26d28fdbddb523a8c044b35d2b8d0ed1b612e360` |
| 7 | `theorem` | [Iter.atIdxSlow?_intermediateZip](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Variant8b6b3b30f969854469e09a65738bcb74392aabebb10584efcead55e4deafd055.lean/declarations/iter-atidxslow-intermediatezip--20b31a159f6ea4b91f1c5b53.md) | 189 | `result-track:20b31a159f6ea4b91f1c5b53d3e6a8fd6c36ccec44c8ac107fc14a5229c6a3a5` |
| 8 | `theorem` | [Iter.atIdxSlow?_zip](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Variant8b6b3b30f969854469e09a65738bcb74392aabebb10584efcead55e4deafd055.lean/declarations/iter-atidxslow-zip--97871d9f0de04bfa8b53bbb3.md) | 267 | `result-track:97871d9f0de04bfa8b53bbb3cd9350970be9c958ed9ac281eeff8c4f6f481633` |
| 9 | `theorem` | [Iter.toList_zip_of_finite](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Variant8b6b3b30f969854469e09a65738bcb74392aabebb10584efcead55e4deafd055.lean/declarations/iter-tolist-zip-of-finite--648040a2d357134ea88da385.md) | 274 | `result-track:648040a2d357134ea88da38547d0d4442c4ace9b5cbddf07d5a95a1a1aaa9a0b` |
| 10 | `theorem` | [Iter.toList_zip_of_finite_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Variant8b6b3b30f969854469e09a65738bcb74392aabebb10584efcead55e4deafd055.lean/declarations/iter-tolist-zip-of-finite-left--0fc4f185f303d0066adbde36.md) | 280 | `result-track:0fc4f185f303d0066adbde36ada0a56d3082c564d994b73b077752e3d7f11e31` |
| 11 | `theorem` | [Iter.toList_zip_of_finite_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Variant8b6b3b30f969854469e09a65738bcb74392aabebb10584efcead55e4deafd055.lean/declarations/iter-tolist-zip-of-finite-right--2aa6a2375cf8a7a082d9a00b.md) | 300 | `result-track:2aa6a2375cf8a7a082d9a00b0f5e10b45a0c88b354327d3fafb52eb3e8d10a42` |
| 12 | `theorem` | [Iter.toListRev_zip_of_finite](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Variant8b6b3b30f969854469e09a65738bcb74392aabebb10584efcead55e4deafd055.lean/declarations/iter-tolistrev-zip-of-finite--f4af407d8c0fd77d3887e43a.md) | 321 | `result-track:f4af407d8c0fd77d3887e43a84330e212ba397386de1cba1b0b6471c90530d36` |
| 13 | `theorem` | [Iter.toListRev_zip_of_finite_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Variant8b6b3b30f969854469e09a65738bcb74392aabebb10584efcead55e4deafd055.lean/declarations/iter-tolistrev-zip-of-finite-left--f37e2900cdcf07ccf5ca0b4e.md) | 327 | `result-track:f37e2900cdcf07ccf5ca0b4e2480846e661dfb52ef402735e6fa624bb85d1497` |
| 14 | `theorem` | [Iter.toListRev_zip_of_finite_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Variant8b6b3b30f969854469e09a65738bcb74392aabebb10584efcead55e4deafd055.lean/declarations/iter-tolistrev-zip-of-finite-right--2a856db27bf26a339ab47a4a.md) | 333 | `result-track:2a856db27bf26a339ab47a4a9c100f5ace224069a0c533fa5e70d357379ab041` |
| 15 | `theorem` | [Iter.toArray_zip_of_finite](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Variant8b6b3b30f969854469e09a65738bcb74392aabebb10584efcead55e4deafd055.lean/declarations/iter-toarray-zip-of-finite--de43ef1336d04a76bb0f2781.md) | 340 | `result-track:de43ef1336d04a76bb0f278136ab468c27e1cd5cf5e7ac807198eb9daea6e5a3` |
| 16 | `theorem` | [Iter.toArray_zip_of_finite_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Variant8b6b3b30f969854469e09a65738bcb74392aabebb10584efcead55e4deafd055.lean/declarations/iter-toarray-zip-of-finite-left--0733ecfa7461f6860e3bb689.md) | 346 | `result-track:0733ecfa7461f6860e3bb6892cc53591603d2a55efc8e502130e85f90948bded` |
| 17 | `theorem` | [Iter.toArray_zip_of_finite_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Variant8b6b3b30f969854469e09a65738bcb74392aabebb10584efcead55e4deafd055.lean/declarations/iter-toarray-zip-of-finite-right--c0338a9f77854c15c92819de.md) | 352 | `result-track:c0338a9f77854c15c92819de5b7a0cdfecb2726d79efdd437b67b4e75d91e99c` |
| 18 | `theorem` | [Iter.toList_take_zip](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Variant8b6b3b30f969854469e09a65738bcb74392aabebb10584efcead55e4deafd055.lean/declarations/iter-tolist-take-zip--9e66b6c359795cfa9bf3fb6d.md) | 359 | `result-track:9e66b6c359795cfa9bf3fb6d82857dc3aaa575b0eba83d726f1dfade594654a6` |
| 19 | `theorem` | [Iter.toListRev_take_zip](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Variant8b6b3b30f969854469e09a65738bcb74392aabebb10584efcead55e4deafd055.lean/declarations/iter-tolistrev-take-zip--1df2739769d6dc988dc2ab19.md) | 370 | `result-track:1df2739769d6dc988dc2ab1901f3a527e2602d57d211e11509346b2ad8d769b9` |
| 20 | `theorem` | [Iter.toArray_take_zip](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Variant8b6b3b30f969854469e09a65738bcb74392aabebb10584efcead55e4deafd055.lean/declarations/iter-toarray-take-zip--552c141cad73a7173fb23465.md) | 377 | `result-track:552c141cad73a7173fb23465c9e0c0a4ccac588b9741567b2179f0e646da361f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
