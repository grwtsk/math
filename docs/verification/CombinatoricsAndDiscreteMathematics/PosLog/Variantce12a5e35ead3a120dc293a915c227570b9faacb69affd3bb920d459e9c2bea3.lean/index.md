# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.PosLog.Variantce12a5e35ead3a120dc293a915c227570b9faacb69affd3bb920d459e9c2bea3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d7aefd9ffdb51543ce53e92808b7303ed08c41e2",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/PosLog/Variantce12a5e35ead3a120dc293a915c227570b9faacb69affd3bb920d459e9c2bea3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PosLog/Variantce12a5e35ead3a120dc293a915c227570b9faacb69affd3bb920d459e9c2bea3.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PosLog/Variantce12a5e35ead3a120dc293a915c227570b9faacb69affd3bb920d459e9c2bea3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d7aefd9ffdb51543ce53e92808b7303ed08c41e2`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/PosLog/Variantce12a5e35ead3a120dc293a915c227570b9faacb69affd3bb920d459e9c2bea3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/PosLog/Variantce12a5e35ead3a120dc293a915c227570b9faacb69affd3bb920d459e9c2bea3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Log.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [posLog](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PosLog/Variantce12a5e35ead3a120dc293a915c227570b9faacb69affd3bb920d459e9c2bea3.lean/declarations/poslog--02c5bf3059c76964be6221ed.md) | 35 | `declaration-track:02c5bf3059c76964be6221ede959243a4be66c3e7ee6618bcb448c2108b142f4` |
| 2 | `theorem` | [posLog_def](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PosLog/Variantce12a5e35ead3a120dc293a915c227570b9faacb69affd3bb920d459e9c2bea3.lean/declarations/poslog-def--4d28e47a26112587a7227123.md) | 41 | `result-track:4d28e47a26112587a72271235c8547d7f8adae7e9e3be98f534096a93e374556` |
| 3 | `theorem` | [posLog_sub_posLog_inv](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PosLog/Variantce12a5e35ead3a120dc293a915c227570b9faacb69affd3bb920d459e9c2bea3.lean/declarations/poslog-sub-poslog-inv--50f7a3b086b7fdbf71169bc6.md) | 47 | `result-track:50f7a3b086b7fdbf71169bc63084bbc4f3293e96deaf0c6fc8aac5648940c887` |
| 4 | `theorem` | [half_mul_log_add_log_abs](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PosLog/Variantce12a5e35ead3a120dc293a915c227570b9faacb69affd3bb920d459e9c2bea3.lean/declarations/half-mul-log-add-log-abs--6a109841f7e5447dc4e59ed7.md) | 55 | `result-track:6a109841f7e5447dc4e59ed7778ee669890c0ff140a9c80c7e2f48e6abcb58a6` |
| 5 | `theorem` | [posLog_nonneg](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PosLog/Variantce12a5e35ead3a120dc293a915c227570b9faacb69affd3bb920d459e9c2bea3.lean/declarations/poslog-nonneg--310824c02c0052736260c278.md) | 62 | `result-track:310824c02c0052736260c2785b02d951fd7e200e60d286124b5d699957b60c02` |
| 6 | `theorem` | [posLog_neg](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PosLog/Variantce12a5e35ead3a120dc293a915c227570b9faacb69affd3bb920d459e9c2bea3.lean/declarations/poslog-neg--c61d39ef6e8f46b6c3ae878f.md) | 65 | `result-track:c61d39ef6e8f46b6c3ae878f6603e423fffd351cc24e893baf0b96e46fbdea99` |
| 7 | `theorem` | [posLog_abs](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PosLog/Variantce12a5e35ead3a120dc293a915c227570b9faacb69affd3bb920d459e9c2bea3.lean/declarations/poslog-abs--3fd36fccc76b25c74169019d.md) | 68 | `result-track:3fd36fccc76b25c74169019d61bab7ce3261075bb1bdda0f876464bcb0d07028` |
| 8 | `theorem` | [posLog_eq_zero_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PosLog/Variantce12a5e35ead3a120dc293a915c227570b9faacb69affd3bb920d459e9c2bea3.lean/declarations/poslog-eq-zero-iff--6aec722832d28f31d466244a.md) | 71 | `result-track:6aec722832d28f31d466244aa8875266479ce102a9c086a0ee2170ec28b90e59` |
| 9 | `theorem` | [posLog_eq_log](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PosLog/Variantce12a5e35ead3a120dc293a915c227570b9faacb69affd3bb920d459e9c2bea3.lean/declarations/poslog-eq-log--5e141b24e6d71c4baec8211a.md) | 76 | `result-track:5e141b24e6d71c4baec8211aed40bfc6a69462d7347a0bd38e25f96d0b5c52b1` |
| 10 | `theorem` | [log_of_nat_eq_posLog](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PosLog/Variantce12a5e35ead3a120dc293a915c227570b9faacb69affd3bb920d459e9c2bea3.lean/declarations/log-of-nat-eq-poslog--fc9f9f7c9808879935f44bca.md) | 82 | `result-track:fc9f9f7c9808879935f44bcaf04fef59a9fe064401e3a448da987cdd676cdc1b` |
| 11 | `theorem` | [monotoneOn_posLog](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PosLog/Variantce12a5e35ead3a120dc293a915c227570b9faacb69affd3bb920d459e9c2bea3.lean/declarations/monotoneon-poslog--ce9d6420f2a594a6a2ea9d3a.md) | 88 | `result-track:ce9d6420f2a594a6a2ea9d3a15f0a563b13cb2868db02b92837b72dc0a611cea` |
| 12 | `theorem` | [posLog_mul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PosLog/Variantce12a5e35ead3a120dc293a915c227570b9faacb69affd3bb920d459e9c2bea3.lean/declarations/poslog-mul--2b092b2c580b136c71c195a3.md) | 103 | `result-track:2b092b2c580b136c71c195a37969adfbcc4e3d88f2dd754a91172efcdb205848` |
| 13 | `theorem` | [posLog_nat_mul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PosLog/Variantce12a5e35ead3a120dc293a915c227570b9faacb69affd3bb920d459e9c2bea3.lean/declarations/poslog-nat-mul--1df8cb248d1cef47332369e8.md) | 115 | `result-track:1df8cb248d1cef47332369e844948314a3755fca7a721bcafb9176ddd38daa89` |
| 14 | `theorem` | [posLog_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PosLog/Variantce12a5e35ead3a120dc293a915c227570b9faacb69affd3bb920d459e9c2bea3.lean/declarations/poslog-prod--1a3221b3061cd0193d97e8b9.md) | 122 | `result-track:1a3221b3061cd0193d97e8b90fe95e7b9cb2f3397f9c6f1193e447d5f2dd4356` |
| 15 | `theorem` | [posLog_sum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PosLog/Variantce12a5e35ead3a120dc293a915c227570b9faacb69affd3bb920d459e9c2bea3.lean/declarations/poslog-sum--16dedde72adf7bcb3d06da45.md) | 139 | `result-track:16dedde72adf7bcb3d06da458d1b8a25650892c63b03edc2e0b250cb8e7f9d01` |
| 16 | `theorem` | [posLog_add](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PosLog/Variantce12a5e35ead3a120dc293a915c227570b9faacb69affd3bb920d459e9c2bea3.lean/declarations/poslog-add--5ff82e46ce7d004bd38eb052.md) | 167 | `result-track:5ff82e46ce7d004bd38eb05256797b114566c98b88b07a7f9537ce917468e373` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
