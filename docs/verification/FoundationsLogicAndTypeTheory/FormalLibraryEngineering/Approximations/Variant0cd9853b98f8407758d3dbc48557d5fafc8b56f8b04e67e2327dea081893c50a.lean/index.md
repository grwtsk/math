# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Approximations.Variant0cd9853b98f8407758d3dbc48557d5fafc8b56f8b04e67e2327dea081893c50a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "440da51d0d5f9fc1eea1c493d0d371d30819f05a",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Approximations/Variant0cd9853b98f8407758d3dbc48557d5fafc8b56f8b04e67e2327dea081893c50a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Approximations/Variant0cd9853b98f8407758d3dbc48557d5fafc8b56f8b04e67e2327dea081893c50a.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Approximations/Variant0cd9853b98f8407758d3dbc48557d5fafc8b56f8b04e67e2327dea081893c50a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `440da51d0d5f9fc1eea1c493d0d371d30819f05a`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Approximations/Variant0cd9853b98f8407758d3dbc48557d5fafc8b56f8b04e67e2327dea081893c50a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Approximations/Variant0cd9853b98f8407758d3dbc48557d5fafc8b56f8b04e67e2327dea081893c50a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.ContinuedFractions.Computation.CorrectnessTerminating` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Fib` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Monotonicity` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.SolveByElim` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [nth_stream_fr_nonneg_lt_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Approximations/Variant0cd9853b98f8407758d3dbc48557d5fafc8b56f8b04e67e2327dea081893c50a.lean/declarations/nth-stream-fr-nonneg-lt-one--5c75916897d6e051fe6281b0.md) | 77 | `result-track:5c75916897d6e051fe6281b0212f1b80f383c4baa5bf8eb7b36ebc4a2be4a376` |
| 2 | `theorem` | [nth_stream_fr_nonneg](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Approximations/Variant0cd9853b98f8407758d3dbc48557d5fafc8b56f8b04e67e2327dea081893c50a.lean/declarations/nth-stream-fr-nonneg--3c40cd521cfd8c4d0cc7f3a9.md) | 91 | `result-track:3c40cd521cfd8c4d0cc7f3a97960b4f88a5a9b9ab2e9e66bc017340bc664b7d6` |
| 3 | `theorem` | [nth_stream_fr_lt_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Approximations/Variant0cd9853b98f8407758d3dbc48557d5fafc8b56f8b04e67e2327dea081893c50a.lean/declarations/nth-stream-fr-lt-one--48af9296c484e955d091200c.md) | 97 | `result-track:48af9296c484e955d091200cfb98af872bd1730d7f7405bfc3b026ce0b29fda8` |
| 4 | `theorem` | [one_le_succ_nth_stream_b](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Approximations/Variant0cd9853b98f8407758d3dbc48557d5fafc8b56f8b04e67e2327dea081893c50a.lean/declarations/one-le-succ-nth-stream-b--a8f21f0a7c637403b0830a89.md) | 103 | `result-track:a8f21f0a7c637403b0830a897cdf721838dfdcea0a9b79f4e50596fbef998bb1` |
| 5 | `theorem` | [succ_nth_stream_b_le_nth_stream_fr_inv](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Approximations/Variant0cd9853b98f8407758d3dbc48557d5fafc8b56f8b04e67e2327dea081893c50a.lean/declarations/succ-nth-stream-b-le-nth-stream-fr-inv--d57e413b4efd71c8b88e55f2.md) | 122 | `result-track:d57e413b4efd71c8b88e55f2f6c32de6ea5e01f57ac725af016cb5e6a3111436` |
| 6 | `theorem` | [of_one_le_get?_part_denom](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Approximations/Variant0cd9853b98f8407758d3dbc48557d5fafc8b56f8b04e67e2327dea081893c50a.lean/declarations/of-one-le-get-part-denom--476c2264a345d7e6edd2e8fa.md) | 146 | `result-track:476c2264a345d7e6edd2e8fa33d354bddde566b95f299a99388a751fc038288e` |
| 7 | `theorem` | [of_part_num_eq_one_and_exists_int_part_denom_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Approximations/Variant0cd9853b98f8407758d3dbc48557d5fafc8b56f8b04e67e2327dea081893c50a.lean/declarations/of-part-num-eq-one-and-exists-int-part-denom-eq--0e22559caafda216bdc507a6.md) | 161 | `result-track:0e22559caafda216bdc507a6f986335202fddba6326f3700bee0cdf57664ae98` |
| 8 | `theorem` | [of_part_num_eq_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Approximations/Variant0cd9853b98f8407758d3dbc48557d5fafc8b56f8b04e67e2327dea081893c50a.lean/declarations/of-part-num-eq-one--0861d0e81b6f44cb3aeed158.md) | 174 | `result-track:0861d0e81b6f44cb3aeed158d5885b84d15c2c3ac4776843d17625be6e242059` |
| 9 | `theorem` | [exists_int_eq_of_part_denom](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Approximations/Variant0cd9853b98f8407758d3dbc48557d5fafc8b56f8b04e67e2327dea081893c50a.lean/declarations/exists-int-eq-of-part-denom--294a266679c3103288fd9eb7.md) | 183 | `result-track:294a266679c3103288fd9eb7968086fc557fc7a509c084b728f36d1815d791bc` |
| 10 | `theorem` | [fib_le_of_continuantsAux_b](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Approximations/Variant0cd9853b98f8407758d3dbc48557d5fafc8b56f8b04e67e2327dea081893c50a.lean/declarations/fib-le-of-continuantsaux-b--b8aec9bce7e235c6089bbd7d.md) | 201 | `result-track:b8aec9bce7e235c6089bbd7dc5915a66f9e32d9d49f1fd270316cf9c12d9e147` |
| 11 | `theorem` | [succ_nth_fib_le_of_nth_denom](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Approximations/Variant0cd9853b98f8407758d3dbc48557d5fafc8b56f8b04e67e2327dea081893c50a.lean/declarations/succ-nth-fib-le-of-nth-denom--348ffc5acf6eb9d438d28b0d.md) | 245 | `result-track:348ffc5acf6eb9d438d28b0d618a0bc4aab1f56f1dde48af9b4a62a6976fb188` |
| 12 | `theorem` | [zero_le_of_continuantsAux_b](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Approximations/Variant0cd9853b98f8407758d3dbc48557d5fafc8b56f8b04e67e2327dea081893c50a.lean/declarations/zero-le-of-continuantsaux-b--532f0233f090865c4a7d91fa.md) | 258 | `result-track:532f0233f090865c4a7d91faf074c6c96ea81d430738346b7fdfc0d255156515` |
| 13 | `theorem` | [zero_le_of_denom](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Approximations/Variant0cd9853b98f8407758d3dbc48557d5fafc8b56f8b04e67e2327dea081893c50a.lean/declarations/zero-le-of-denom--5d4b742e6d0a8b120156468a.md) | 277 | `result-track:5d4b742e6d0a8b120156468af32f7286f1abb9da48d17901b1e81656087e804e` |
| 14 | `theorem` | [le_of_succ_succ_get?_continuantsAux_b](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Approximations/Variant0cd9853b98f8407758d3dbc48557d5fafc8b56f8b04e67e2327dea081893c50a.lean/declarations/le-of-succ-succ-get-continuantsaux-b--c4d0b9cb156134effc10dd98.md) | 281 | `result-track:c4d0b9cb156134effc10dd98269be29528c8afbe856773218e1d1fd93ebe5daf` |
| 15 | `theorem` | [le_of_succ_get?_denom](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Approximations/Variant0cd9853b98f8407758d3dbc48557d5fafc8b56f8b04e67e2327dea081893c50a.lean/declarations/le-of-succ-get-denom--ae5a0a204c84d0904baaff78.md) | 292 | `result-track:ae5a0a204c84d0904baaff78d832ef8845b359c0d24dfa5b8e9a97da43ba0f06` |
| 16 | `theorem` | [of_denom_mono](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Approximations/Variant0cd9853b98f8407758d3dbc48557d5fafc8b56f8b04e67e2327dea081893c50a.lean/declarations/of-denom-mono--319b38698f88c019ec55634f.md) | 300 | `result-track:319b38698f88c019ec55634f126ac705cb0f12e78fb701a8955478a0641479cd` |
| 17 | `theorem` | [determinant_aux](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Approximations/Variant0cd9853b98f8407758d3dbc48557d5fafc8b56f8b04e67e2327dea081893c50a.lean/declarations/determinant-aux--23e109495e6812fa90c0837f.md) | 328 | `result-track:23e109495e6812fa90c0837fb5fd61fdae56236ae64259b71e40cf46fe010514` |
| 18 | `theorem` | [determinant](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Approximations/Variant0cd9853b98f8407758d3dbc48557d5fafc8b56f8b04e67e2327dea081893c50a.lean/declarations/determinant--8ca7bd1a29a23e8906396c4c.md) | 368 | `result-track:8ca7bd1a29a23e8906396c4ca49c4b5046fb340630c9ac9e83303e5d316d8b4e` |
| 19 | `theorem` | [sub_convergents_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Approximations/Variant0cd9853b98f8407758d3dbc48557d5fafc8b56f8b04e67e2327dea081893c50a.lean/declarations/sub-convergents-eq--e1fd1397d82526950f6622ab.md) | 388 | `result-track:e1fd1397d82526950f6622ab6b55ddf37006783b9001fef40e14dd48deda3a00` |
| 20 | `theorem` | [abs_sub_convergents_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Approximations/Variant0cd9853b98f8407758d3dbc48557d5fafc8b56f8b04e67e2327dea081893c50a.lean/declarations/abs-sub-convergents-le--2cf68212e01679edf25268cd.md) | 474 | `result-track:2cf68212e01679edf25268cd2c3a68c5a8a2c90cbcfb503980241266b4e40920` |
| 21 | `theorem` | [abs_sub_convergents_le'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Approximations/Variant0cd9853b98f8407758d3dbc48557d5fafc8b56f8b04e67e2327dea081893c50a.lean/declarations/abs-sub-convergents-le--a8b2da2515880d2fe452cf32.md) | 561 | `result-track:a8b2da2515880d2fe452cf32c037cd063d9c44c51eb0c1ec7e553896319c3427` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
