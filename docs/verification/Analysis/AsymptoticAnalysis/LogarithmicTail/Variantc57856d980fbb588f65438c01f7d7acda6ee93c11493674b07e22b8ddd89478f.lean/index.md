# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.LogarithmicTail.Variantc57856d980fbb588f65438c01f7d7acda6ee93c11493674b07e22b8ddd89478f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "587d6dbff1da35409b08610193d032cb6e8cddac",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/LogarithmicTail/Variantc57856d980fbb588f65438c01f7d7acda6ee93c11493674b07e22b8ddd89478f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/LogarithmicTail/Variantc57856d980fbb588f65438c01f7d7acda6ee93c11493674b07e22b8ddd89478f.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/LogarithmicTail/Variantc57856d980fbb588f65438c01f7d7acda6ee93c11493674b07e22b8ddd89478f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `587d6dbff1da35409b08610193d032cb6e8cddac`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/LogarithmicTail/Variantc57856d980fbb588f65438c01f7d7acda6ee93c11493674b07e22b8ddd89478f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/LogarithmicTail/Variantc57856d980fbb588f65438c01f7d7acda6ee93c11493674b07e22b8ddd89478f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceZeroTail` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecificLimits.Normed` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [PositivePrefix](../../../../../mathematics/Analysis/AsymptoticAnalysis/LogarithmicTail/Variantc57856d980fbb588f65438c01f7d7acda6ee93c11493674b07e22b8ddd89478f.lean/declarations/positiveprefix--e5bbea56955eecd440f996ff.md) | 19 | `declaration-track:e5bbea56955eecd440f996ff6da20e5a7eba00205fda30a4f715b3bfe8fda0f3` |
| 2 | `theorem` | [positivePrefix_finite](../../../../../mathematics/Analysis/AsymptoticAnalysis/LogarithmicTail/Variantc57856d980fbb588f65438c01f7d7acda6ee93c11493674b07e22b8ddd89478f.lean/declarations/positiveprefix-finite--4049bd2271f9e874415e3284.md) | 22 | `result-track:4049bd2271f9e874415e32849e6c3937608c4281dbcede0e37e28a8e43115d7b` |
| 3 | `def` | [positiveCount](../../../../../mathematics/Analysis/AsymptoticAnalysis/LogarithmicTail/Variantc57856d980fbb588f65438c01f7d7acda6ee93c11493674b07e22b8ddd89478f.lean/declarations/positivecount--264a361d38794da6bae26bd9.md) | 31 | `declaration-track:264a361d38794da6bae26bd971956b5f4a51f71470d17e1830e1e0da290ba8ab` |
| 4 | `def` | [PositiveCountBound](../../../../../mathematics/Analysis/AsymptoticAnalysis/LogarithmicTail/Variantc57856d980fbb588f65438c01f7d7acda6ee93c11493674b07e22b8ddd89478f.lean/declarations/positivecountbound--7321a935600334b39d5a2ff7.md) | 34 | `declaration-track:7321a935600334b39d5a2ff7f208ddd9f0299622fd5f2807e0863c5bc49815bf` |
| 5 | `def` | [NonzeroPrefix](../../../../../mathematics/Analysis/AsymptoticAnalysis/LogarithmicTail/Variantc57856d980fbb588f65438c01f7d7acda6ee93c11493674b07e22b8ddd89478f.lean/declarations/nonzeroprefix--d38a2f0f98c2489bfba962d3.md) | 38 | `declaration-track:d38a2f0f98c2489bfba962d317a70d5644f17a90cf4d6dacb6839f51eee4b335` |
| 6 | `def` | [positiveSignMap](../../../../../mathematics/Analysis/AsymptoticAnalysis/LogarithmicTail/Variantc57856d980fbb588f65438c01f7d7acda6ee93c11493674b07e22b8ddd89478f.lean/declarations/positivesignmap--8d7d6b99e9e77b414a428a02.md) | 41 | `declaration-track:8d7d6b99e9e77b414a428a02f7520681c2198013ccfba41d5d39dae8b1ad04d1` |
| 7 | `theorem` | [positiveSignMap_injective](../../../../../mathematics/Analysis/AsymptoticAnalysis/LogarithmicTail/Variantc57856d980fbb588f65438c01f7d7acda6ee93c11493674b07e22b8ddd89478f.lean/declarations/positivesignmap-injective--bdb0da28ec43c7b6902d8f4b.md) | 55 | `result-track:bdb0da28ec43c7b6902d8f4b0fd21b39c74d69098dd9051df3df997883a101f5` |
| 8 | `theorem` | [nonzeroPrefix_card_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/LogarithmicTail/Variantc57856d980fbb588f65438c01f7d7acda6ee93c11493674b07e22b8ddd89478f.lean/declarations/nonzeroprefix-card-le--fe50aa094a539dc1494ff5bb.md) | 68 | `result-track:fe50aa094a539dc1494ff5bb3402c65dc73179318db5dba6c75aa0fcb408ca9a` |
| 9 | `theorem` | [dyadic_coefficient_hasSum](../../../../../mathematics/Analysis/AsymptoticAnalysis/LogarithmicTail/Variantc57856d980fbb588f65438c01f7d7acda6ee93c11493674b07e22b8ddd89478f.lean/declarations/dyadic-coefficient-hassum--7c88bf84eefe28ace19c4b61.md) | 78 | `result-track:7c88bf84eefe28ace19c4b61b99138fe3a77b1533219a243dcf438cae0916e3d` |
| 10 | `theorem` | [dyadic_coefficient_tsum](../../../../../mathematics/Analysis/AsymptoticAnalysis/LogarithmicTail/Variantc57856d980fbb588f65438c01f7d7acda6ee93c11493674b07e22b8ddd89478f.lean/declarations/dyadic-coefficient-tsum--4162fc77cb78c08d43487b35.md) | 85 | `result-track:4162fc77cb78c08d43487b3514a25a9378cb3da87a361c22ad035a3e875c7520` |
| 11 | `theorem` | [dyadic_upper_exists](../../../../../mathematics/Analysis/AsymptoticAnalysis/LogarithmicTail/Variantc57856d980fbb588f65438c01f7d7acda6ee93c11493674b07e22b8ddd89478f.lean/declarations/dyadic-upper-exists--9a687ef7f13ef56c93447c10.md) | 90 | `result-track:9a687ef7f13ef56c93447c108d0ac9c8160e1a6ca6a1e363eb99684d138c20d6` |
| 12 | `def` | [dyadicIndex](../../../../../mathematics/Analysis/AsymptoticAnalysis/LogarithmicTail/Variantc57856d980fbb588f65438c01f7d7acda6ee93c11493674b07e22b8ddd89478f.lean/declarations/dyadicindex--b864126acc43eab7a6282d53.md) | 101 | `declaration-track:b864126acc43eab7a6282d53b8a0bf9714180c1bd170c431eef3b40f74d628bb` |
| 13 | `theorem` | [dyadicIndex_bounds](../../../../../mathematics/Analysis/AsymptoticAnalysis/LogarithmicTail/Variantc57856d980fbb588f65438c01f7d7acda6ee93c11493674b07e22b8ddd89478f.lean/declarations/dyadicindex-bounds--c4383260a4fd2451e883c179.md) | 104 | `result-track:c4383260a4fd2451e883c179ebd72a1e9b8bd8f6e96ef4ef8ff113c4a1234fa0` |
| 14 | `def` | [DyadicShell](../../../../../mathematics/Analysis/AsymptoticAnalysis/LogarithmicTail/Variantc57856d980fbb588f65438c01f7d7acda6ee93c11493674b07e22b8ddd89478f.lean/declarations/dyadicshell--fde26b1a1724b18451ffb911.md) | 116 | `declaration-track:fde26b1a1724b18451ffb91173953c48765fbc3d8c272a46ce1ffbb56c603469` |
| 15 | `def` | [shellToPrefix](../../../../../mathematics/Analysis/AsymptoticAnalysis/LogarithmicTail/Variantc57856d980fbb588f65438c01f7d7acda6ee93c11493674b07e22b8ddd89478f.lean/declarations/shelltoprefix--5f297c3a36a154700ba630d2.md) | 119 | `declaration-track:5f297c3a36a154700ba630d201f105f8d4fad2dc13509c789402d0526060108e` |
| 16 | `theorem` | [shellToPrefix_injective](../../../../../mathematics/Analysis/AsymptoticAnalysis/LogarithmicTail/Variantc57856d980fbb588f65438c01f7d7acda6ee93c11493674b07e22b8ddd89478f.lean/declarations/shelltoprefix-injective--f641ad013fc847dee6a3487f.md) | 126 | `result-track:f641ad013fc847dee6a3487f648a061100af5c965d8f6d638410180bbfcf9752` |
| 17 | `theorem` | [nonzeroPrefix_finite](../../../../../mathematics/Analysis/AsymptoticAnalysis/LogarithmicTail/Variantc57856d980fbb588f65438c01f7d7acda6ee93c11493674b07e22b8ddd89478f.lean/declarations/nonzeroprefix-finite--5b1a6fa5f5c5b9ad557dc284.md) | 133 | `result-track:5b1a6fa5f5c5b9ad557dc2842a8e782e7d03c1c90b8f06bbd44143a4f9d1e644` |
| 18 | `theorem` | [dyadicShell_finite](../../../../../mathematics/Analysis/AsymptoticAnalysis/LogarithmicTail/Variantc57856d980fbb588f65438c01f7d7acda6ee93c11493674b07e22b8ddd89478f.lean/declarations/dyadicshell-finite--1adc1d8a4308d34a664b502b.md) | 137 | `result-track:1adc1d8a4308d34a664b502b35f722c6a650d1fe111271888b13156dba791a65` |
| 19 | `theorem` | [dyadicShell_card_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/LogarithmicTail/Variantc57856d980fbb588f65438c01f7d7acda6ee93c11493674b07e22b8ddd89478f.lean/declarations/dyadicshell-card-le--9f0f4b762e22e12139a147d1.md) | 143 | `result-track:9f0f4b762e22e12139a147d174551c7d945048197a654288993cd7145901e628` |
| 20 | `def` | [sixthWeight](../../../../../mathematics/Analysis/AsymptoticAnalysis/LogarithmicTail/Variantc57856d980fbb588f65438c01f7d7acda6ee93c11493674b07e22b8ddd89478f.lean/declarations/sixthweight--29248933fcb1b5ec6d7c9573.md) | 175 | `declaration-track:29248933fcb1b5ec6d7c95738a9bca9ffd9b505b0f44bf35f056647848fcce85` |
| 21 | `theorem` | [sixthWeight_tail_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/LogarithmicTail/Variantc57856d980fbb588f65438c01f7d7acda6ee93c11493674b07e22b8ddd89478f.lean/declarations/sixthweight-tail-summable--8abff28b25c3ab7defd07d7d.md) | 177 | `result-track:8abff28b25c3ab7defd07d7d37d1ed3359c64db9b9323a3d186cc55fc3c28d3b` |
| 22 | `theorem` | [dyadic_sixth_sum_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/LogarithmicTail/Variantc57856d980fbb588f65438c01f7d7acda6ee93c11493674b07e22b8ddd89478f.lean/declarations/dyadic-sixth-sum-le--81b511625de2a4522323658a.md) | 199 | `result-track:81b511625de2a4522323658a42a76bafb194a0f91a1cfcd7ef4dd077b3054895` |
| 23 | `theorem` | [actual_sixth_tail_bound](../../../../../mathematics/Analysis/AsymptoticAnalysis/LogarithmicTail/Variantc57856d980fbb588f65438c01f7d7acda6ee93c11493674b07e22b8ddd89478f.lean/declarations/actual-sixth-tail-bound--dc8be571c771c1a5efd282b1.md) | 234 | `result-track:dc8be571c771c1a5efd282b15870f329a52a8449d86a9664cf8dea98feb92bdb` |
| 24 | `theorem` | [actual_sixth_tail_bound_coarse](../../../../../mathematics/Analysis/AsymptoticAnalysis/LogarithmicTail/Variantc57856d980fbb588f65438c01f7d7acda6ee93c11493674b07e22b8ddd89478f.lean/declarations/actual-sixth-tail-bound-coarse--ddcf899cb44fba642c08a3e8.md) | 249 | `result-track:ddcf899cb44fba642c08a3e8badf1e620daac53672570e41eaf9543303b3e804` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
