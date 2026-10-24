# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.RupAddSound.Variant2d02293c26357d17f81371a1dd1330a1805da9efc4636a013365ade4b1a5b530

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6c1af8fbcc72a021cd3bc9f7d894e3ac965bd79b",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RupAddSound/Variant2d02293c26357d17f81371a1dd1330a1805da9efc4636a013365ade4b1a5b530.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RupAddSound/Variant2d02293c26357d17f81371a1dd1330a1805da9efc4636a013365ade4b1a5b530.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RupAddSound/Variant2d02293c26357d17f81371a1dd1330a1805da9efc4636a013365ade4b1a5b530.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6c1af8fbcc72a021cd3bc9f7d894e3ac965bd79b`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RupAddSound/Variant2d02293c26357d17f81371a1dd1330a1805da9efc4636a013365ade4b1a5b530.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RupAddSound/Variant2d02293c26357d17f81371a1dd1330a1805da9efc4636a013365ade4b1a5b530.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.ByCases` — import line 10; external provider; requires a separately pinned dependency.
- `Init.Data.Array.Bootstrap` — import line 11; external provider; requires a separately pinned dependency.
- `Init.Data.Int.OfNat` — import line 12; external provider; requires a separately pinned dependency.
- `Init.Data.Nat.Internal.Linear` — import line 13; external provider; requires a separately pinned dependency.
- `Init.Data.Nat.Simproc` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [contradiction_of_insertUnit_success](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RupAddSound/Variant2d02293c26357d17f81371a1dd1330a1805da9efc4636a013365ade4b1a5b530.lean/declarations/contradiction-of-insertunit-success--3c0e4d9bdbf2971252d61a59.md) | 32 | `result-track:3c0e4d9bdbf2971252d61a59b42bbfb6ad71ade98c14fdb95990340a169f8c32` |
| 2 | `theorem` | [contradiction_of_insertUnit_fold_success](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RupAddSound/Variant2d02293c26357d17f81371a1dd1330a1805da9efc4636a013365ade4b1a5b530.lean/declarations/contradiction-of-insertunit-fold-success--255f70aa433165e53d871775.md) | 77 | `result-track:255f70aa433165e53d871775397f77959e633f516ee73587fd635d4627d5481d` |
| 3 | `theorem` | [mem_insertUnit_units](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RupAddSound/Variant2d02293c26357d17f81371a1dd1330a1805da9efc4636a013365ade4b1a5b530.lean/declarations/mem-insertunit-units--4d971410ba8a20af96486fc8.md) | 103 | `result-track:4d971410ba8a20af96486fc85f69ceb68ea05f582c1914f24933e77d02803be1` |
| 4 | `theorem` | [mem_insertUnit_fold_units](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RupAddSound/Variant2d02293c26357d17f81371a1dd1330a1805da9efc4636a013365ade4b1a5b530.lean/declarations/mem-insertunit-fold-units--9327da2f2da8c3effeb2d92a.md) | 112 | `result-track:9327da2f2da8c3effeb2d92a2e637ee0b47b755c4bf7dc5e39e5c88d81ef2bce` |
| 5 | `theorem` | [sat_of_insertRup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RupAddSound/Variant2d02293c26357d17f81371a1dd1330a1805da9efc4636a013365ade4b1a5b530.lean/declarations/sat-of-insertrup--05a2f9b410dbe9f839300c0b.md) | 125 | `result-track:05a2f9b410dbe9f839300c0b8e227ee90a5def1aac7f86e813a00d299b2cc430` |
| 6 | `theorem` | [safe_insert_of_insertRup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RupAddSound/Variant2d02293c26357d17f81371a1dd1330a1805da9efc4636a013365ade4b1a5b530.lean/declarations/safe-insert-of-insertrup--1ccef3de8aaffc9594cb093b.md) | 222 | `result-track:1ccef3de8aaffc9594cb093ba55648eaf1ddf90b467f054c924b5039fe2417a2` |
| 7 | `theorem` | [assignmentsInvariant_insertRupUnits_of_assignmentsInvariant](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RupAddSound/Variant2d02293c26357d17f81371a1dd1330a1805da9efc4636a013365ade4b1a5b530.lean/declarations/assignmentsinvariant-insertrupunits-of-assignmentsinvariant--b7c1bda469d7b88d9389535a.md) | 236 | `result-track:b7c1bda469d7b88d9389535ac4821a525f5d944810c7cb661b1f3e1a7a80285f` |
| 8 | `def` | [ConfirmRupHintFoldEntailsMotive](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RupAddSound/Variant2d02293c26357d17f81371a1dd1330a1805da9efc4636a013365ade4b1a5b530.lean/declarations/confirmruphintfoldentailsmotive--66d402e76343f55d24eed1e4.md) | 359 | `declaration-track:66d402e76343f55d24eed1e49a82adfc038c825c4e4c4b0000164c83f733e905` |
| 9 | `theorem` | [unsat_of_encounteredBoth](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RupAddSound/Variant2d02293c26357d17f81371a1dd1330a1805da9efc4636a013365ade4b1a5b530.lean/declarations/unsat-of-encounteredboth--4ac350e32a25737d966cb4ab.md) | 364 | `result-track:4ac350e32a25737d966cb4ab78a0cdb749aab1143752ff81b489c29422e6ec54` |
| 10 | `def` | [ReducePostconditionInductionMotive](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RupAddSound/Variant2d02293c26357d17f81371a1dd1330a1805da9efc4636a013365ade4b1a5b530.lean/declarations/reducepostconditioninductionmotive--a953406009cdc553b9c14425.md) | 397 | `declaration-track:a953406009cdc553b9c14425c9154a6b531ee923e796753d6092913c070bdaa0` |
| 11 | `theorem` | [reduce_fold_fn_preserves_induction_motive](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RupAddSound/Variant2d02293c26357d17f81371a1dd1330a1805da9efc4636a013365ade4b1a5b530.lean/declarations/reduce-fold-fn-preserves-induction-motive--adeafadc7446a775161c7f94.md) | 404 | `result-track:adeafadc7446a775161c7f94c0033aa5e080a66b1729d1135b81e560c3382636` |
| 12 | `theorem` | [reduce_postcondition](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RupAddSound/Variant2d02293c26357d17f81371a1dd1330a1805da9efc4636a013365ade4b1a5b530.lean/declarations/reduce-postcondition--5ad1b49f6c557467ad6e8721.md) | 540 | `result-track:5ad1b49f6c557467ad6e872136b928e981afe24636f7155ba43c5bae997bf3ae` |
| 13 | `theorem` | [incompatible_of_reducedToEmpty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RupAddSound/Variant2d02293c26357d17f81371a1dd1330a1805da9efc4636a013365ade4b1a5b530.lean/declarations/incompatible-of-reducedtoempty--9c88c7e402206a91998e57b3.md) | 608 | `result-track:9c88c7e402206a91998e57b3240e5dea44f944b4efb8f2cc7abcc52d2c526725` |
| 14 | `theorem` | [limplies_of_reducedToUnit](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RupAddSound/Variant2d02293c26357d17f81371a1dd1330a1805da9efc4636a013365ade4b1a5b530.lean/declarations/limplies-of-reducedtounit--2aa470ec84c5ca358f8a525c.md) | 613 | `result-track:2aa470ec84c5ca358f8a525c5d899508022267de66cd98d77b47356087006a9b` |
| 15 | `theorem` | [confirmRupHint_preserves_motive](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RupAddSound/Variant2d02293c26357d17f81371a1dd1330a1805da9efc4636a013365ade4b1a5b530.lean/declarations/confirmruphint-preserves-motive--e011893d75e7b84f6c24ab02.md) | 618 | `result-track:e011893d75e7b84f6c24ab025d67fa5212c2790fddf5875c401e91a90830384a` |
| 16 | `theorem` | [sat_of_confirmRupHint_insertRup_fold](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RupAddSound/Variant2d02293c26357d17f81371a1dd1330a1805da9efc4636a013365ade4b1a5b530.lean/declarations/sat-of-confirmruphint-insertrup-fold--83aa47203a3e1fbc4e4fd151.md) | 686 | `result-track:83aa47203a3e1fbc4e4fd1518e56e3f31b58f77164fb0b516f2ca8a9ceb6d00c` |
| 17 | `theorem` | [safe_insert_of_performRupCheck_insertRup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RupAddSound/Variant2d02293c26357d17f81371a1dd1330a1805da9efc4636a013365ade4b1a5b530.lean/declarations/safe-insert-of-performrupcheck-insertrup--3f39f5dde78516af33f9c717.md) | 749 | `result-track:3f39f5dde78516af33f9c7170d13ba56535baffce718057a09bdf912891bcb08` |
| 18 | `theorem` | [rupAdd_sound](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RupAddSound/Variant2d02293c26357d17f81371a1dd1330a1805da9efc4636a013365ade4b1a5b530.lean/declarations/rupadd-sound--7634dad359f461c1778176b8.md) | 764 | `result-track:7634dad359f461c1778176b8161f094b13ec8274f658eee85821272d14751ee6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
