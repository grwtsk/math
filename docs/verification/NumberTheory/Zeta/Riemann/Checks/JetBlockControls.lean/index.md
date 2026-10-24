# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.Checks.JetBlockControls

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e0aa9146b68be943eeed58d92a7c3121bd32af52",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/Checks/JetBlockControls.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/JetBlockControls.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/JetBlockControls.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e0aa9146b68be943eeed58d92a7c3121bd32af52`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/Checks/JetBlockControls.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/Checks/JetBlockControls.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.Checks.HeightFifteenBlockDecomposition`](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenBlockDecomposition.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [good](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/JetBlockControls.lean/declarations/good--e7d14fef2294bf76ffbde996.md) | 19 | `declaration-track:e7d14fef2294bf76ffbde996ffb8bab00c1d9eec06e36952fe20779b7792cbeb` |
| 2 | `def` | [badLast](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/JetBlockControls.lean/declarations/badlast--256e2ad2f41a6793f14d629c.md) | 21 | `declaration-track:256e2ad2f41a6793f14d629ce9bb27a19dda4d62bbd1e385ef6f37876c53c03d` |
| 3 | `def` | [signed](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/JetBlockControls.lean/declarations/signed--14e35a81b6075b998a2f6ba5.md) | 23 | `declaration-track:14e35a81b6075b998a2f6ba5d8f0df34d01f30fbae77f08ecb5072aed1ffed0f` |
| 4 | `theorem` | [proper_partition](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/JetBlockControls.lean/declarations/proper-partition--9f369964e05bcf47aec927a9.md) | 25 | `result-track:9f369964e05bcf47aec927a929a7b3146d45798bb508f1253901bf347fb403b6` |
| 5 | `theorem` | [no_empty_cover](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/JetBlockControls.lean/declarations/no-empty-cover--ad29f8e79c55f1ca354ed80b.md) | 27 | `result-track:ad29f8e79c55f1ca354ed80b84b7b438c7a34a45a807aadceb1555ca91e68949` |
| 6 | `theorem` | [no_zero_block](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/JetBlockControls.lean/declarations/no-zero-block--2e5e8656b238ccfaa8ffd947.md) | 29 | `result-track:2e5e8656b238ccfaa8ffd947eb0e2dfdc15059b5e216bb6069c184ccbb0ec02b` |
| 7 | `theorem` | [no_zero_cap](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/JetBlockControls.lean/declarations/no-zero-cap--be74457796c9fba562dd4335.md) | 31 | `result-track:be74457796c9fba562dd433583a31fc3a4916e730bce22cdd3e49dcbec21569b` |
| 8 | `theorem` | [no_oversized_block](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/JetBlockControls.lean/declarations/no-oversized-block--e26cec30f701572c4bd31938.md) | 33 | `result-track:e26cec30f701572c4bd3193831ae7aaef38982dcc431634d73591749c452d2da` |
| 9 | `theorem` | [no_missing_suffix](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/JetBlockControls.lean/declarations/no-missing-suffix--7c314a35c16bb358e3adf66c.md) | 35 | `result-track:7c314a35c16bb358e3adf66c6b3123c6bddc9c61219efe90da319e67def500d9` |
| 10 | `theorem` | [no_extra_suffix](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/JetBlockControls.lean/declarations/no-extra-suffix--0a2c0d9057d7b220ae93d5a6.md) | 37 | `result-track:0a2c0d9057d7b220ae93d5a6259772c4ddbcf3b288613f157b3cd6bbeecc3c2c` |
| 11 | `theorem` | [signed_blocks](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/JetBlockControls.lean/declarations/signed-blocks--0dffab70421e80ff290e638b.md) | 40 | `result-track:0dffab70421e80ff290e638b6ddfa22f5ee1e0f3b0b2c965b9df95230318690c` |
| 12 | `theorem` | [forged_cancellation](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/JetBlockControls.lean/declarations/forged-cancellation--97af0df590270a9b789f00ab.md) | 43 | `result-track:97af0df590270a9b789f00aba147caed03d2611e8fb89299ffb63b59019e6c06` |
| 13 | `theorem` | [swapped_claims](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/JetBlockControls.lean/declarations/swapped-claims--df3e6a151055713644def06c.md) | 47 | `result-track:df3e6a151055713644def06c881e2f627bbadb79aa2132659546b7016f6e1523` |
| 14 | `theorem` | [missing_claim](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/JetBlockControls.lean/declarations/missing-claim--28fb1ffbcb5bb75d4c06be99.md) | 49 | `result-track:28fb1ffbcb5bb75d4c06be9921e652cbf2b82c936a47ba06d379fcf9548d1c97` |
| 15 | `theorem` | [extra_claim](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/JetBlockControls.lean/declarations/extra-claim--5c9a6dd2ab976b9f9ab2b01b.md) | 51 | `result-track:5c9a6dd2ab976b9f9ab2b01b79277394331829e98d665d77fefa0268c5a3b571` |
| 16 | `theorem` | [last_cell_required](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/JetBlockControls.lean/declarations/last-cell-required--838abb55ee13920fa7802440.md) | 54 | `result-track:838abb55ee13920fa7802440307f1851e538ea1539e043c158a1df9e78663ec9` |
| 17 | `theorem` | [changed_partition_needs_new_claims](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/JetBlockControls.lean/declarations/changed-partition-needs-new-claims--4c80c5002f143e2214a89fdf.md) | 59 | `result-track:4c80c5002f143e2214a89fdf72e13cb6baf37006c621824bfd973ae8be82ca3a` |
| 18 | `theorem` | [failure_not_zero](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/JetBlockControls.lean/declarations/failure-not-zero--206029f4b817683b8bf39c3b.md) | 64 | `result-track:206029f4b817683b8bf39c3bf9853811533ffbcae022cb6ffa62aaef2a53e37f` |
| 19 | `theorem` | [absolute_cursor](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/JetBlockControls.lean/declarations/absolute-cursor--c19f90c5aed3abac7f13d955.md) | 69 | `result-track:c19f90c5aed3abac7f13d9551e628d7e769718633ae9f78cca8d2a1063b693ad` |
| 20 | `theorem` | [target_decomposition_shape](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/JetBlockControls.lean/declarations/target-decomposition-shape--9bb09af20d5f011b30b85f8c.md) | 72 | `result-track:9bb09af20d5f011b30b85f8cafdd19768fd3d8266cbe3550639ab61e37ff14d0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
