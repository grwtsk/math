# Verification target: GRWTSK.NumberTheory.Cyclotomic.ThirdCyclotomicIdeals

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "885c3e4fa9de6ef3762efe2afaf1025729ca0d2d",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Cyclotomic/ThirdCyclotomicIdeals.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Cyclotomic/ThirdCyclotomicIdeals.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Cyclotomic/ThirdCyclotomicIdeals.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `885c3e4fa9de6ef3762efe2afaf1025729ca0d2d`.

Source path: `GRWTSK/NumberTheory/Cyclotomic/ThirdCyclotomicIdeals.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Cyclotomic/ThirdCyclotomicIdeals.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Ideal.CompactNormSupport`](../../../../mathematics/NumberTheory/Ideal/CompactNormSupport.lean/index.md) — import line 21; pinned internal source present.
- `Mathlib.NumberTheory.NumberField.Cyclotomic.Basic` — import line 22; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [K](../../../../mathematics/NumberTheory/Cyclotomic/ThirdCyclotomicIdeals.lean/declarations/k--f776779449c0a8528a96c8c7.md) | 28 | `declaration-track:f776779449c0a8528a96c8c76126df232b79b17ef1a645f7f942338b510483d0` |
| 2 | `abbrev` | [O](../../../../mathematics/NumberTheory/Cyclotomic/ThirdCyclotomicIdeals.lean/declarations/o--38ec3cdb2fa02a6bcb60352d.md) | 30 | `declaration-track:38ec3cdb2fa02a6bcb60352d24d5a8d1bef394f38747242f14a3e31cf99b1e14` |
| 3 | `instance` | [(anonymous)](../../../../mathematics/NumberTheory/Cyclotomic/ThirdCyclotomicIdeals.lean/declarations/instance--86d6bdf9917ec7cb58d659ab.md) | 32 | `declaration-track:86d6bdf9917ec7cb58d659ab6d0c7f73320e6a2b05e8e032168d4da3f43c11de` |
| 4 | `lemma` | [field_identity](../../../../mathematics/NumberTheory/Cyclotomic/ThirdCyclotomicIdeals.lean/declarations/field-identity--c2e4f519668c1499f3eedd60.md) | 35 | `result-track:c2e4f519668c1499f3eedd60f9ff7c2eebae82d18bb0a0ffeb4502e09de4c4e8` |
| 5 | `lemma` | [ring_identity](../../../../mathematics/NumberTheory/Cyclotomic/ThirdCyclotomicIdeals.lean/declarations/ring-identity--cea876d200987da0cf96d4f4.md) | 36 | `result-track:cea876d200987da0cf96d4f40b67ddfc8b807235267f349b8a7114ff7e17f3f0` |
| 6 | `lemma` | [actual_number_field](../../../../mathematics/NumberTheory/Cyclotomic/ThirdCyclotomicIdeals.lean/declarations/actual-number-field--fa7013567548daa4708cb2c9.md) | 38 | `result-track:fa7013567548daa4708cb2c9c4c6911165d1ed57b46b523188f430fb1f941df4` |
| 7 | `lemma` | [actual_cyclotomic_extension](../../../../mathematics/NumberTheory/Cyclotomic/ThirdCyclotomicIdeals.lean/declarations/actual-cyclotomic-extension--5f46ffbe125aef47bc2f46f1.md) | 39 | `result-track:5f46ffbe125aef47bc2f46f166774f1608fee775e77ba09ab7967a948e4924cb` |
| 8 | `lemma` | [actual_ring_instances](../../../../mathematics/NumberTheory/Cyclotomic/ThirdCyclotomicIdeals.lean/declarations/actual-ring-instances--8d20e257577bd726ca8c7f52.md) | 40 | `result-track:8d20e257577bd726ca8c7f521aed8941aaaa75602398ecee78d9ed59c1883db0` |
| 9 | `lemma` | [field_finrank](../../../../mathematics/NumberTheory/Cyclotomic/ThirdCyclotomicIdeals.lean/declarations/field-finrank--b7866cb456f2e931316c15e9.md) | 44 | `result-track:b7866cb456f2e931316c15e9bac4c7d740843efbec05af258704b0dec3680020` |
| 10 | `lemma` | [integer_finrank](../../../../mathematics/NumberTheory/Cyclotomic/ThirdCyclotomicIdeals.lean/declarations/integer-finrank--5a419c80e33afcdfdf9b685d.md) | 48 | `result-track:5a419c80e33afcdfdf9b685d400f63a95c58f0707da587769e752f508badb54a` |
| 11 | `theorem` | [principal_nat_absNorm](../../../../mathematics/NumberTheory/Cyclotomic/ThirdCyclotomicIdeals.lean/declarations/principal-nat-absnorm--07fbcc9999d4780d4b29c7eb.md) | 52 | `result-track:07fbcc9999d4780d4b29c7ebc8d0f74386e90217c34cf1f3ff73f8cc414d6e07` |
| 12 | `lemma` | [principal_two_absNorm](../../../../mathematics/NumberTheory/Cyclotomic/ThirdCyclotomicIdeals.lean/declarations/principal-two-absnorm--030068b31fcda2f95e2bcbf5.md) | 55 | `result-track:030068b31fcda2f95e2bcbf599de6a0a8c9e45394eebafb6d3a6f2066841c899` |
| 13 | `theorem` | [finite_support_norm_triple](../../../../mathematics/NumberTheory/Cyclotomic/ThirdCyclotomicIdeals.lean/declarations/finite-support-norm-triple--a6d6b01874abe74ff23166d8.md) | 59 | `result-track:a6d6b01874abe74ff23166d8da4b9703bcfbde9978ed50c1d4d2caf7b8bf3eed` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
