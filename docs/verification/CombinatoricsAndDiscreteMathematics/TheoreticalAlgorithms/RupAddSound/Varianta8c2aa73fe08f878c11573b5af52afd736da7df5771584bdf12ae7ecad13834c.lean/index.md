# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.RupAddSound.Varianta8c2aa73fe08f878c11573b5af52afd736da7df5771584bdf12ae7ecad13834c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "66745d1bb2d437fb4d1dad9c4d52328a43dd4910",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RupAddSound/Varianta8c2aa73fe08f878c11573b5af52afd736da7df5771584bdf12ae7ecad13834c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RupAddSound/Varianta8c2aa73fe08f878c11573b5af52afd736da7df5771584bdf12ae7ecad13834c.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RupAddSound/Varianta8c2aa73fe08f878c11573b5af52afd736da7df5771584bdf12ae7ecad13834c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `66745d1bb2d437fb4d1dad9c4d52328a43dd4910`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RupAddSound/Varianta8c2aa73fe08f878c11573b5af52afd736da7df5771584bdf12ae7ecad13834c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RupAddSound/Varianta8c2aa73fe08f878c11573b5af52afd736da7df5771584bdf12ae7ecad13834c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.ByCases` — import line 15; external provider; requires a separately pinned dependency.
- `Init.Data.Array.Bootstrap` — import line 16; external provider; requires a separately pinned dependency.
- `Init.Data.Int.OfNat` — import line 17; external provider; requires a separately pinned dependency.
- `Init.Data.Nat.Internal.Linear` — import line 18; external provider; requires a separately pinned dependency.
- `Init.Data.Nat.Simproc` — import line 19; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [contradiction_of_insertUnit_success](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RupAddSound/Varianta8c2aa73fe08f878c11573b5af52afd736da7df5771584bdf12ae7ecad13834c.lean/declarations/contradiction-of-insertunit-success--c2c2f7486c5afe26bbc4cb1d.md) | 40 | `result-track:c2c2f7486c5afe26bbc4cb1dfade002d5fd8173121db65e04bd544910d39bd22` |
| 2 | `theorem` | [contradiction_of_insertUnit_fold_success](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RupAddSound/Varianta8c2aa73fe08f878c11573b5af52afd736da7df5771584bdf12ae7ecad13834c.lean/declarations/contradiction-of-insertunit-fold-success--5d140178c0ff685b6e9a180f.md) | 85 | `result-track:5d140178c0ff685b6e9a180f31fab1caca441610d8c9a8a54b15208e59f0c207` |
| 3 | `theorem` | [mem_insertUnit_units](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RupAddSound/Varianta8c2aa73fe08f878c11573b5af52afd736da7df5771584bdf12ae7ecad13834c.lean/declarations/mem-insertunit-units--a51bbaa278ab225cb1204278.md) | 111 | `result-track:a51bbaa278ab225cb1204278e1e591a600e981e91032c5db52d93619a5a083cd` |
| 4 | `theorem` | [mem_insertUnit_fold_units](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RupAddSound/Varianta8c2aa73fe08f878c11573b5af52afd736da7df5771584bdf12ae7ecad13834c.lean/declarations/mem-insertunit-fold-units--07638442565100286c34881d.md) | 120 | `result-track:07638442565100286c34881d5da329afaa9f4fd386d982341d5f22714c7f631e` |
| 5 | `theorem` | [sat_of_insertRup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RupAddSound/Varianta8c2aa73fe08f878c11573b5af52afd736da7df5771584bdf12ae7ecad13834c.lean/declarations/sat-of-insertrup--376ed49e5772a76cf7e748bd.md) | 133 | `result-track:376ed49e5772a76cf7e748bd1a851e93f1e29447c97e505891f7e658457b5d58` |
| 6 | `theorem` | [safe_insert_of_insertRup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RupAddSound/Varianta8c2aa73fe08f878c11573b5af52afd736da7df5771584bdf12ae7ecad13834c.lean/declarations/safe-insert-of-insertrup--ffc1858923a9a5efa2685597.md) | 230 | `result-track:ffc1858923a9a5efa26855975d3ccf3ba0d7223da90179fe11375a4fd38d8f2f` |
| 7 | `theorem` | [assignmentsInvariant_insertRupUnits_of_assignmentsInvariant](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RupAddSound/Varianta8c2aa73fe08f878c11573b5af52afd736da7df5771584bdf12ae7ecad13834c.lean/declarations/assignmentsinvariant-insertrupunits-of-assignmentsinvariant--d044738bb6caaaef1e86fcec.md) | 244 | `result-track:d044738bb6caaaef1e86fcecca463629e3f6a2e061bf5deb6408274ea2ccb8e3` |
| 8 | `def` | [ConfirmRupHintFoldEntailsMotive](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RupAddSound/Varianta8c2aa73fe08f878c11573b5af52afd736da7df5771584bdf12ae7ecad13834c.lean/declarations/confirmruphintfoldentailsmotive--efaf178074a4d5da961706c0.md) | 367 | `declaration-track:efaf178074a4d5da961706c00ae8e5bf1a66d35433beda06e5593b7a27fef18e` |
| 9 | `theorem` | [unsat_of_encounteredBoth](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RupAddSound/Varianta8c2aa73fe08f878c11573b5af52afd736da7df5771584bdf12ae7ecad13834c.lean/declarations/unsat-of-encounteredboth--e88f001db0efa3b25551d159.md) | 372 | `result-track:e88f001db0efa3b25551d1595f3cb483349fd9a1e4b1c828ee63aa5b50912ff7` |
| 10 | `def` | [ReducePostconditionInductionMotive](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RupAddSound/Varianta8c2aa73fe08f878c11573b5af52afd736da7df5771584bdf12ae7ecad13834c.lean/declarations/reducepostconditioninductionmotive--47939f934839295fca82c84a.md) | 405 | `declaration-track:47939f934839295fca82c84af822946f398bc37c75a7aee9fd51a1d00f87ce02` |
| 11 | `theorem` | [reduce_fold_fn_preserves_induction_motive](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RupAddSound/Varianta8c2aa73fe08f878c11573b5af52afd736da7df5771584bdf12ae7ecad13834c.lean/declarations/reduce-fold-fn-preserves-induction-motive--f1213cb753115309ad7a571b.md) | 412 | `result-track:f1213cb753115309ad7a571b5f9cf0a271e4ac072f4e1cf50b69f25dc5da84e5` |
| 12 | `theorem` | [reduce_postcondition](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RupAddSound/Varianta8c2aa73fe08f878c11573b5af52afd736da7df5771584bdf12ae7ecad13834c.lean/declarations/reduce-postcondition--ed1f9a8c030b61199c436865.md) | 548 | `result-track:ed1f9a8c030b61199c436865bdd2b2b4a797f6a6833e3b00d53c016a7cf0a40c` |
| 13 | `theorem` | [incompatible_of_reducedToEmpty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RupAddSound/Varianta8c2aa73fe08f878c11573b5af52afd736da7df5771584bdf12ae7ecad13834c.lean/declarations/incompatible-of-reducedtoempty--51a0960b8a21f067e6eb66e3.md) | 616 | `result-track:51a0960b8a21f067e6eb66e3f9a0a046cec5ff155395199d51913df2369c2953` |
| 14 | `theorem` | [limplies_of_reducedToUnit](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RupAddSound/Varianta8c2aa73fe08f878c11573b5af52afd736da7df5771584bdf12ae7ecad13834c.lean/declarations/limplies-of-reducedtounit--4b4b0dbb37409b6b26f2d770.md) | 621 | `result-track:4b4b0dbb37409b6b26f2d77006266309de88ac49cee6c6940cf954c888900d6e` |
| 15 | `theorem` | [confirmRupHint_preserves_motive](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RupAddSound/Varianta8c2aa73fe08f878c11573b5af52afd736da7df5771584bdf12ae7ecad13834c.lean/declarations/confirmruphint-preserves-motive--b8d79c681bcf4442140ad796.md) | 626 | `result-track:b8d79c681bcf4442140ad7960fac0cd00d29842d6848f34abde495b0170def66` |
| 16 | `theorem` | [sat_of_confirmRupHint_insertRup_fold](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RupAddSound/Varianta8c2aa73fe08f878c11573b5af52afd736da7df5771584bdf12ae7ecad13834c.lean/declarations/sat-of-confirmruphint-insertrup-fold--d9300b4511784071077967d0.md) | 694 | `result-track:d9300b4511784071077967d01d4dc01d2f4002acb4f2290ccd2a3d8b0ac15060` |
| 17 | `theorem` | [safe_insert_of_performRupCheck_insertRup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RupAddSound/Varianta8c2aa73fe08f878c11573b5af52afd736da7df5771584bdf12ae7ecad13834c.lean/declarations/safe-insert-of-performrupcheck-insertrup--8dafbbfc05b98b256b9da762.md) | 757 | `result-track:8dafbbfc05b98b256b9da762d1e6f3b8ff5cf1e75057fc1c3593c1d5d8c5ce6e` |
| 18 | `theorem` | [rupAdd_sound](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RupAddSound/Varianta8c2aa73fe08f878c11573b5af52afd736da7df5771584bdf12ae7ecad13834c.lean/declarations/rupadd-sound--0cf5a0a746f6e0d8d61d014e.md) | 772 | `result-track:0cf5a0a746f6e0d8d61d014e393574c9bdec743ee665ae6e98b7ee1b3a401162` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
