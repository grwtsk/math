# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.InfiniteSum.Variant5b6b96cdbf989077a57f97c8344dbccedf6a37fe8387ef3b592506b685eba71b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8091a9a7a259838fb827f1cc29f82b8dbb9b53d2",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/InfiniteSum/Variant5b6b96cdbf989077a57f97c8344dbccedf6a37fe8387ef3b592506b685eba71b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/InfiniteSum/Variant5b6b96cdbf989077a57f97c8344dbccedf6a37fe8387ef3b592506b685eba71b.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/InfiniteSum/Variant5b6b96cdbf989077a57f97c8344dbccedf6a37fe8387ef3b592506b685eba71b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8091a9a7a259838fb827f1cc29f82b8dbb9b53d2`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/InfiniteSum/Variant5b6b96cdbf989077a57f97c8344dbccedf6a37fe8387ef3b592506b685eba71b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/InfiniteSum/Variant5b6b96cdbf989077a57f97c8344dbccedf6a37fe8387ef3b592506b685eba71b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Normed.Group.InfiniteSum` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.InfiniteSum.Real` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Ring.Lemmas` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Summable.mul_of_nonneg](../../../../../mathematics/Analysis/AsymptoticAnalysis/InfiniteSum/Variant5b6b96cdbf989077a57f97c8344dbccedf6a37fe8387ef3b592506b685eba71b.lean/declarations/summable-mul-of-nonneg--341c60533673000e82e54800.md) | 30 | `result-track:341c60533673000e82e54800364628b856b8588033631467400647fbcef2c7eb` |
| 2 | `theorem` | [Summable.mul_norm](../../../../../mathematics/Analysis/AsymptoticAnalysis/InfiniteSum/Variant5b6b96cdbf989077a57f97c8344dbccedf6a37fe8387ef3b592506b685eba71b.lean/declarations/summable-mul-norm--fbc22f5b69f4935fa2bf5136.md) | 35 | `result-track:fbc22f5b69f4935fa2bf5136c0d41bd246a240c33f1d39ebe7f6d2c9f8adcf4f` |
| 3 | `theorem` | [summable_mul_of_summable_norm](../../../../../mathematics/Analysis/AsymptoticAnalysis/InfiniteSum/Variant5b6b96cdbf989077a57f97c8344dbccedf6a37fe8387ef3b592506b685eba71b.lean/declarations/summable-mul-of-summable-norm--dcd41cb86516bb4c8488c4e1.md) | 41 | `result-track:dcd41cb86516bb4c8488c4e1c0d518109c6fbdc45555d35a3bfee9b27ade4d09` |
| 4 | `theorem` | [summable_mul_of_summable_norm'](../../../../../mathematics/Analysis/AsymptoticAnalysis/InfiniteSum/Variant5b6b96cdbf989077a57f97c8344dbccedf6a37fe8387ef3b592506b685eba71b.lean/declarations/summable-mul-of-summable-norm--0b686f29a857e1672c791894.md) | 46 | `result-track:0b686f29a857e1672c791894b2ddf5dbfb887366eb3d75ac851c14a9cad4eb40` |
| 5 | `theorem` | [tsum_mul_tsum_of_summable_norm](../../../../../mathematics/Analysis/AsymptoticAnalysis/InfiniteSum/Variant5b6b96cdbf989077a57f97c8344dbccedf6a37fe8387ef3b592506b685eba71b.lean/declarations/tsum-mul-tsum-of-summable-norm--e36187d4cfba245720f1a955.md) | 64 | `result-track:e36187d4cfba245720f1a955f6c5062e609257a39fa1394f07022ab3d442eac7` |
| 6 | `theorem` | [tsum_mul_tsum_of_summable_norm'](../../../../../mathematics/Analysis/AsymptoticAnalysis/InfiniteSum/Variant5b6b96cdbf989077a57f97c8344dbccedf6a37fe8387ef3b592506b685eba71b.lean/declarations/tsum-mul-tsum-of-summable-norm--14b818759c6100e8094e0c63.md) | 69 | `result-track:14b818759c6100e8094e0c6373558e8c04f3a90ba146db5585e2c4327901e538` |
| 7 | `theorem` | [summable_norm_sum_mul_antidiagonal_of_summable_norm](../../../../../mathematics/Analysis/AsymptoticAnalysis/InfiniteSum/Variant5b6b96cdbf989077a57f97c8344dbccedf6a37fe8387ef3b592506b685eba71b.lean/declarations/summable-norm-sum-mul-antidiagonal-of-summable-norm--3742460d61c3c5d526c1938c.md) | 89 | `result-track:3742460d61c3c5d526c1938c7a0930d8f9a35849679d42cc211d7b8b03062670` |
| 8 | `theorem` | [summable_sum_mul_antidiagonal_of_summable_norm'](../../../../../mathematics/Analysis/AsymptoticAnalysis/InfiniteSum/Variant5b6b96cdbf989077a57f97c8344dbccedf6a37fe8387ef3b592506b685eba71b.lean/declarations/summable-sum-mul-antidiagonal-of-summable-norm--db6d6eaff5d2d8276cc895ee.md) | 101 | `result-track:db6d6eaff5d2d8276cc895ee1d40be949b6308e6dc963edf5e247a15f5b77277` |
| 9 | `theorem` | [tsum_mul_tsum_eq_tsum_sum_antidiagonal_of_summable_norm](../../../../../mathematics/Analysis/AsymptoticAnalysis/InfiniteSum/Variant5b6b96cdbf989077a57f97c8344dbccedf6a37fe8387ef3b592506b685eba71b.lean/declarations/tsum-mul-tsum-eq-tsum-sum-antidiagonal-of-summable-norm--265fb79316365f4faa97e026.md) | 112 | `result-track:265fb79316365f4faa97e026ed7afdd0cd76c315151843e0b34e386e2541e7d9` |
| 10 | `theorem` | [tsum_mul_tsum_eq_tsum_sum_antidiagonal_of_summable_norm'](../../../../../mathematics/Analysis/AsymptoticAnalysis/InfiniteSum/Variant5b6b96cdbf989077a57f97c8344dbccedf6a37fe8387ef3b592506b685eba71b.lean/declarations/tsum-mul-tsum-eq-tsum-sum-antidiagonal-of-summable-norm--79ba253cba2b11bf0937ca7f.md) | 117 | `result-track:79ba253cba2b11bf0937ca7f0dff98f2fa682a83009b0db737dccdfc9702638a` |
| 11 | `theorem` | [summable_norm_sum_mul_range_of_summable_norm](../../../../../mathematics/Analysis/AsymptoticAnalysis/InfiniteSum/Variant5b6b96cdbf989077a57f97c8344dbccedf6a37fe8387ef3b592506b685eba71b.lean/declarations/summable-norm-sum-mul-range-of-summable-norm--17d28f0c37503740333a2eb8.md) | 123 | `result-track:17d28f0c37503740333a2eb8f4ddf669dd019a7c10272407370782d3ccd275af` |
| 12 | `theorem` | [summable_sum_mul_range_of_summable_norm'](../../../../../mathematics/Analysis/AsymptoticAnalysis/InfiniteSum/Variant5b6b96cdbf989077a57f97c8344dbccedf6a37fe8387ef3b592506b685eba71b.lean/declarations/summable-sum-mul-range-of-summable-norm--94bfbeea3d86bd5044108721.md) | 128 | `result-track:94bfbeea3d86bd50441087218b908f4733f8939db7d5c70575fe4507e00cd7b5` |
| 13 | `theorem` | [tsum_mul_tsum_eq_tsum_sum_range_of_summable_norm](../../../../../mathematics/Analysis/AsymptoticAnalysis/InfiniteSum/Variant5b6b96cdbf989077a57f97c8344dbccedf6a37fe8387ef3b592506b685eba71b.lean/declarations/tsum-mul-tsum-eq-tsum-sum-range-of-summable-norm--3388da0184d95c1fb212f47c.md) | 140 | `result-track:3388da0184d95c1fb212f47c5540dad06d6cc3db93d637b2c232497395a4115a` |
| 14 | `theorem` | [hasSum_sum_range_mul_of_summable_norm](../../../../../mathematics/Analysis/AsymptoticAnalysis/InfiniteSum/Variant5b6b96cdbf989077a57f97c8344dbccedf6a37fe8387ef3b592506b685eba71b.lean/declarations/hassum-sum-range-mul-of-summable-norm--77e095149a9a84b16fba5175.md) | 146 | `result-track:77e095149a9a84b16fba51759c26a0be4a320e37335ea22acf386fe0b68b0d9d` |
| 15 | `theorem` | [tsum_mul_tsum_eq_tsum_sum_range_of_summable_norm'](../../../../../mathematics/Analysis/AsymptoticAnalysis/InfiniteSum/Variant5b6b96cdbf989077a57f97c8344dbccedf6a37fe8387ef3b592506b685eba71b.lean/declarations/tsum-mul-tsum-eq-tsum-sum-range-of-summable-norm--ea67f5ca801e5f7e2db85993.md) | 152 | `result-track:ea67f5ca801e5f7e2db85993d7be34cf3940f25d4b8c3c54b294ad468d82a5b6` |
| 16 | `theorem` | [hasSum_sum_range_mul_of_summable_norm'](../../../../../mathematics/Analysis/AsymptoticAnalysis/InfiniteSum/Variant5b6b96cdbf989077a57f97c8344dbccedf6a37fe8387ef3b592506b685eba71b.lean/declarations/hassum-sum-range-mul-of-summable-norm--4f6f1cb436f6596d61aa993d.md) | 159 | `result-track:4f6f1cb436f6596d61aa993db0fb50707f42cf9fc17145039c287c3d8897d0cd` |
| 17 | `lemma` | [summable_of_absolute_convergence_real](../../../../../mathematics/Analysis/AsymptoticAnalysis/InfiniteSum/Variant5b6b96cdbf989077a57f97c8344dbccedf6a37fe8387ef3b592506b685eba71b.lean/declarations/summable-of-absolute-convergence-real--32f6b860a1f79170e93a2067.md) | 168 | `result-track:32f6b860a1f79170e93a20673d64b96c9f935229d5103a0f23db812c22799a91` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
