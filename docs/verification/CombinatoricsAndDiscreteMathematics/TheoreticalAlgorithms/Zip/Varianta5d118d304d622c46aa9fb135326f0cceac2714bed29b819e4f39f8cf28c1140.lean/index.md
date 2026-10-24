# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Zip.Varianta5d118d304d622c46aa9fb135326f0cceac2714bed29b819e4f39f8cf28c1140

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c83eeaf95c2c5e2139b4d5d288e7be2588c51241",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Varianta5d118d304d622c46aa9fb135326f0cceac2714bed29b819e4f39f8cf28c1140.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Varianta5d118d304d622c46aa9fb135326f0cceac2714bed29b819e4f39f8cf28c1140.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Varianta5d118d304d622c46aa9fb135326f0cceac2714bed29b819e4f39f8cf28c1140.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c83eeaf95c2c5e2139b4d5d288e7be2588c51241`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Varianta5d118d304d622c46aa9fb135326f0cceac2714bed29b819e4f39f8cf28c1140.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Varianta5d118d304d622c46aa9fb135326f0cceac2714bed29b819e4f39f8cf28c1140.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Iterators.Lemmas.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Init.Data.Iterators.Lemmas.Consumers.Access` — import line 13; external provider; requires a separately pinned dependency.
- `Init.Data.Iterators.Lemmas.Consumers.Collect` — import line 14; external provider; requires a separately pinned dependency.
- `Init.Data.List.ToArray` — import line 15; external provider; requires a separately pinned dependency.
- `Init.Data.List.Zip` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Iter.Intermediate.zip](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Varianta5d118d304d622c46aa9fb135326f0cceac2714bed29b819e4f39f8cf28c1140.lean/declarations/iter-intermediate-zip--d6c66fe94333123f168bce5c.md) | 33 | `declaration-track:d6c66fe94333123f168bce5c508168dbf00f06b91cf38542db742fd1d53ab33c` |
| 2 | `theorem` | [Iter.Intermediate.zip_inj](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Varianta5d118d304d622c46aa9fb135326f0cceac2714bed29b819e4f39f8cf28c1140.lean/declarations/iter-intermediate-zip-inj--e9c549922305f9156044dbac.md) | 44 | `result-track:e9c549922305f9156044dbac536127e920e889f01160f9c77ebadbd35d0980e6` |
| 3 | `theorem` | [Iter.Intermediate.zip_surj](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Varianta5d118d304d622c46aa9fb135326f0cceac2714bed29b819e4f39f8cf28c1140.lean/declarations/iter-intermediate-zip-surj--b840ccef0ae0d8375806fb53.md) | 56 | `result-track:b840ccef0ae0d8375806fb532a8754af7ba27772b255845bd937eacdff4b08d7` |
| 4 | `theorem` | [Iter.zip_eq_intermediateZip](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Varianta5d118d304d622c46aa9fb135326f0cceac2714bed29b819e4f39f8cf28c1140.lean/declarations/iter-zip-eq-intermediatezip--ac898b5c85d3923c28639227.md) | 66 | `result-track:ac898b5c85d3923c28639227c56836bf5700ea2c076e9a6c92cda2ec34d94484` |
| 5 | `theorem` | [Iter.step_intermediateZip](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Varianta5d118d304d622c46aa9fb135326f0cceac2714bed29b819e4f39f8cf28c1140.lean/declarations/iter-step-intermediatezip--5b8ecc7a5ebd2faae291e4e7.md) | 72 | `result-track:5b8ecc7a5ebd2faae291e4e7d14cd9cdfcbb9be5e0d68dc1b6bd0a8e2f06a415` |
| 6 | `theorem` | [Iter.toList_intermediateZip_of_finite](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Varianta5d118d304d622c46aa9fb135326f0cceac2714bed29b819e4f39f8cf28c1140.lean/declarations/iter-tolist-intermediatezip-of-finite--35d00a1e11f142eef4c52768.md) | 111 | `result-track:35d00a1e11f142eef4c527688335ab08103b83a8c70606e96ea3aae127f045d2` |
| 7 | `theorem` | [Iter.atIdxSlow?_intermediateZip](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Varianta5d118d304d622c46aa9fb135326f0cceac2714bed29b819e4f39f8cf28c1140.lean/declarations/iter-atidxslow-intermediatezip--54a42ce3ec96f3a0b8b8f4fb.md) | 181 | `result-track:54a42ce3ec96f3a0b8b8f4fba6299442813874c73d3182ceb2cf861e7e82aa4d` |
| 8 | `theorem` | [Iter.atIdxSlow?_zip](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Varianta5d118d304d622c46aa9fb135326f0cceac2714bed29b819e4f39f8cf28c1140.lean/declarations/iter-atidxslow-zip--7a85be71265338312df53045.md) | 259 | `result-track:7a85be71265338312df53045b2a2f6d7feec022e45c925a0ffb7baa79de2790a` |
| 9 | `theorem` | [Iter.toList_zip_of_finite](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Varianta5d118d304d622c46aa9fb135326f0cceac2714bed29b819e4f39f8cf28c1140.lean/declarations/iter-tolist-zip-of-finite--291725d8b9c200787544c498.md) | 266 | `result-track:291725d8b9c200787544c498d73804317af28615b6939d17780acac33bc10435` |
| 10 | `theorem` | [Iter.toList_zip_of_finite_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Varianta5d118d304d622c46aa9fb135326f0cceac2714bed29b819e4f39f8cf28c1140.lean/declarations/iter-tolist-zip-of-finite-left--1f86c4d4edac28220be9c1db.md) | 272 | `result-track:1f86c4d4edac28220be9c1db8a70a19636ce07140d6c67d7c5f4428e44ae6e6d` |
| 11 | `theorem` | [Iter.toList_zip_of_finite_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Varianta5d118d304d622c46aa9fb135326f0cceac2714bed29b819e4f39f8cf28c1140.lean/declarations/iter-tolist-zip-of-finite-right--e036c9617fe7ca04fb47163a.md) | 292 | `result-track:e036c9617fe7ca04fb47163a14405826ad9634ac8b02f3dcd1dd3cd8b8cb0252` |
| 12 | `theorem` | [Iter.toListRev_zip_of_finite](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Varianta5d118d304d622c46aa9fb135326f0cceac2714bed29b819e4f39f8cf28c1140.lean/declarations/iter-tolistrev-zip-of-finite--9c7544e8985ff0ebd0c9e3b9.md) | 313 | `result-track:9c7544e8985ff0ebd0c9e3b9721fc8375b505bcaf77652c1de2f3efd87d30dd3` |
| 13 | `theorem` | [Iter.toListRev_zip_of_finite_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Varianta5d118d304d622c46aa9fb135326f0cceac2714bed29b819e4f39f8cf28c1140.lean/declarations/iter-tolistrev-zip-of-finite-left--655e6c6e5e7598e0ddb45eb9.md) | 319 | `result-track:655e6c6e5e7598e0ddb45eb9877f6084f3aea0726329cdd858553b4241fa1234` |
| 14 | `theorem` | [Iter.toListRev_zip_of_finite_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Varianta5d118d304d622c46aa9fb135326f0cceac2714bed29b819e4f39f8cf28c1140.lean/declarations/iter-tolistrev-zip-of-finite-right--022cc9cda7b6004fb730815a.md) | 325 | `result-track:022cc9cda7b6004fb730815ab4c0342ce0b6db31797475b30d9271597b1aafd1` |
| 15 | `theorem` | [Iter.toArray_zip_of_finite](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Varianta5d118d304d622c46aa9fb135326f0cceac2714bed29b819e4f39f8cf28c1140.lean/declarations/iter-toarray-zip-of-finite--bf10fa6279f6eb3c4e6fb290.md) | 332 | `result-track:bf10fa6279f6eb3c4e6fb290d1f69cf2c70f8f17a64e4e6553d961114168a438` |
| 16 | `theorem` | [Iter.toArray_zip_of_finite_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Varianta5d118d304d622c46aa9fb135326f0cceac2714bed29b819e4f39f8cf28c1140.lean/declarations/iter-toarray-zip-of-finite-left--8de34254fe59b78c278e06db.md) | 338 | `result-track:8de34254fe59b78c278e06dbb770262c3d37438d258e026838e56c7755c05c28` |
| 17 | `theorem` | [Iter.toArray_zip_of_finite_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Varianta5d118d304d622c46aa9fb135326f0cceac2714bed29b819e4f39f8cf28c1140.lean/declarations/iter-toarray-zip-of-finite-right--1be904820c937896c5ff8f0f.md) | 344 | `result-track:1be904820c937896c5ff8f0fbd7fe9df76eefa75084924e85ffd030f2aa26078` |
| 18 | `theorem` | [Iter.toList_take_zip](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Varianta5d118d304d622c46aa9fb135326f0cceac2714bed29b819e4f39f8cf28c1140.lean/declarations/iter-tolist-take-zip--f0907199fb270ce357d29c63.md) | 351 | `result-track:f0907199fb270ce357d29c631b50e338bdd05c3b831899a7656985cbab1d9ef6` |
| 19 | `theorem` | [Iter.toListRev_take_zip](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Varianta5d118d304d622c46aa9fb135326f0cceac2714bed29b819e4f39f8cf28c1140.lean/declarations/iter-tolistrev-take-zip--baac5eaebf16245e1c6ee994.md) | 362 | `result-track:baac5eaebf16245e1c6ee99483e2d1e0bfb8aeeb847452076b52008e88968057` |
| 20 | `theorem` | [Iter.toArray_take_zip](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Varianta5d118d304d622c46aa9fb135326f0cceac2714bed29b819e4f39f8cf28c1140.lean/declarations/iter-toarray-take-zip--4c484e166cc1a27a3d35822c.md) | 369 | `result-track:4c484e166cc1a27a3d35822c87d8a8791e23a4c0c6108703e27c2d5c56ddfb1a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
