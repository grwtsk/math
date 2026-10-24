# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.RatAddSound.Variantd24b464cca6d07b3f9d51fa23f94d3dc97784e8f1d6de634cf699c66cc876440

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0ba143a5e2f63cd00abe496a1a92efba4f69e737",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RatAddSound/Variantd24b464cca6d07b3f9d51fa23f94d3dc97784e8f1d6de634cf699c66cc876440.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RatAddSound/Variantd24b464cca6d07b3f9d51fa23f94d3dc97784e8f1d6de634cf699c66cc876440.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RatAddSound/Variantd24b464cca6d07b3f9d51fa23f94d3dc97784e8f1d6de634cf699c66cc876440.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0ba143a5e2f63cd00abe496a1a92efba4f69e737`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RatAddSound/Variantd24b464cca6d07b3f9d51fa23f94d3dc97784e8f1d6de634cf699c66cc876440.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RatAddSound/Variantd24b464cca6d07b3f9d51fa23f94d3dc97784e8f1d6de634cf699c66cc876440.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.ByCases` — import line 15; external provider; requires a separately pinned dependency.
- `Init.Data.Array.Range` — import line 16; external provider; requires a separately pinned dependency.
- `Init.Data.Int.OfNat` — import line 17; external provider; requires a separately pinned dependency.
- `Init.Data.Nat.Internal.Linear` — import line 18; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [mem_of_necessary_assignment](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RatAddSound/Variantd24b464cca6d07b3f9d51fa23f94d3dc97784e8f1d6de634cf699c66cc876440.lean/declarations/mem-of-necessary-assignment--649500d90e1bab3c93fca0ec.md) | 39 | `result-track:649500d90e1bab3c93fca0ecc07b60438c0303f0cd1ddff4dc652e121e7d39e6` |
| 2 | `theorem` | [entails_of_irrelevant_assignment](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RatAddSound/Variantd24b464cca6d07b3f9d51fa23f94d3dc97784e8f1d6de634cf699c66cc876440.lean/declarations/entails-of-irrelevant-assignment--5bcaf3b83d3992e3609575ba.md) | 58 | `result-track:5bcaf3b83d3992e3609575bac381e17c9351416b46111f494640674a755534bb` |
| 3 | `theorem` | [assignmentsInvariant_insertRatUnits](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RatAddSound/Variantd24b464cca6d07b3f9d51fa23f94d3dc97784e8f1d6de634cf699c66cc876440.lean/declarations/assignmentsinvariant-insertratunits--6c20aaf732c423838e4a0734.md) | 77 | `result-track:6c20aaf732c423838e4a0734d7ac250b5aa74d4868077045fa9e020859ac55a7` |
| 4 | `theorem` | [sat_of_confirmRupHint_of_insertRat_fold](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RatAddSound/Variantd24b464cca6d07b3f9d51fa23f94d3dc97784e8f1d6de634cf699c66cc876440.lean/declarations/sat-of-confirmruphint-of-insertrat-fold--892bc7cb7e7d590af79fa066.md) | 194 | `result-track:892bc7cb7e7d590af79fa06678bf6659d5dce42a2fe8352696dd05b82e751cb2` |
| 5 | `theorem` | [sat_of_insertRat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RatAddSound/Variantd24b464cca6d07b3f9d51fa23f94d3dc97784e8f1d6de634cf699c66cc876440.lean/declarations/sat-of-insertrat--776337bf5eef5cd6e4b6a695.md) | 250 | `result-track:776337bf5eef5cd6e4b6a695ea85911c8f431f8c56f65a4461fea564f204ca57` |
| 6 | `theorem` | [safe_insert_of_performRupCheck_insertRat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RatAddSound/Variantd24b464cca6d07b3f9d51fa23f94d3dc97784e8f1d6de634cf699c66cc876440.lean/declarations/safe-insert-of-performrupcheck-insertrat--c4010f34fc6ed12c3e2d32d1.md) | 347 | `result-track:c4010f34fc6ed12c3e2d32d126aafe8d55d8a9e4586e784d0d268c7ca0247382` |
| 7 | `theorem` | [assignmentsInvariant_performRupCheck_of_assignmentsInvariant](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RatAddSound/Variantd24b464cca6d07b3f9d51fa23f94d3dc97784e8f1d6de634cf699c66cc876440.lean/declarations/assignmentsinvariant-performrupcheck-of-assignmentsinvariant--ffc87f4a5b1e56f4ff11d0cf.md) | 363 | `result-track:ffc87f4a5b1e56f4ff11d0cf32e69917e78c72e6782c7f9d13d23ae921f76ee8` |
| 8 | `theorem` | [c_without_negPivot_of_performRatCheck_success](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RatAddSound/Variantd24b464cca6d07b3f9d51fa23f94d3dc97784e8f1d6de634cf699c66cc876440.lean/declarations/c-without-negpivot-of-performratcheck-success--304233607bdd03219823687f.md) | 394 | `result-track:304233607bdd03219823687f0ab24f2c502575e9b7c5fb9e5f6cad8913a80e0e` |
| 9 | `theorem` | [existsRatHint_of_ratHintsExhaustive](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RatAddSound/Variantd24b464cca6d07b3f9d51fa23f94d3dc97784e8f1d6de634cf699c66cc876440.lean/declarations/existsrathint-of-rathintsexhaustive--1192a546a77beea256c3c93e.md) | 413 | `result-track:1192a546a77beea256c3c93e0e12e2f2d45f4f5e7a7304985ecea2cc15a1c8d4` |
| 10 | `theorem` | [performRatCheck_success_of_performRatCheck_fold_success](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RatAddSound/Variantd24b464cca6d07b3f9d51fa23f94d3dc97784e8f1d6de634cf699c66cc876440.lean/declarations/performratcheck-success-of-performratcheck-fold-success--395108fad0ccedced7411075.md) | 445 | `result-track:395108fad0ccedced741107551c1bfe454cd7a117ab5fa71ba3dd007f59cff21` |
| 11 | `theorem` | [safe_insert_of_performRatCheck_fold_success](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RatAddSound/Variantd24b464cca6d07b3f9d51fa23f94d3dc97784e8f1d6de634cf699c66cc876440.lean/declarations/safe-insert-of-performratcheck-fold-success--e2132c5264c322e309d6a963.md) | 484 | `result-track:e2132c5264c322e309d6a963fb359133f53f5b90c1e1db7cf5accca6bf139b66` |
| 12 | `theorem` | [ratAdd_sound](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RatAddSound/Variantd24b464cca6d07b3f9d51fa23f94d3dc97784e8f1d6de634cf699c66cc876440.lean/declarations/ratadd-sound--5112850e3424022c8e29128d.md) | 586 | `result-track:5112850e3424022c8e29128daec96846236d5614d339cef80da2d83c1e25ef10` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
