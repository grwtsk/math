# Verification target: GRWTSK.Algebra.LinearAlgebra.Grading.Variantea5fa98ca483a091622adbc05c1a18bc5aae38742a94dd73beffb5cc5f2182aa

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "aa9dfb4dc719918975f2dd63419156e81e12135c",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Grading/Variantea5fa98ca483a091622adbc05c1a18bc5aae38742a94dd73beffb5cc5f2182aa.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Grading/Variantea5fa98ca483a091622adbc05c1a18bc5aae38742a94dd73beffb5cc5f2182aa.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Grading/Variantea5fa98ca483a091622adbc05c1a18bc5aae38742a94dd73beffb5cc5f2182aa.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `aa9dfb4dc719918975f2dd63419156e81e12135c`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Grading/Variantea5fa98ca483a091622adbc05c1a18bc5aae38742a94dd73beffb5cc5f2182aa.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Grading/Variantea5fa98ca483a091622adbc05c1a18bc5aae38742a94dd73beffb5cc5f2182aa.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.CliffordAlgebra.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.GradedAlgebra.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [evenOdd](../../../../../mathematics/Algebra/LinearAlgebra/Grading/Variantea5fa98ca483a091622adbc05c1a18bc5aae38742a94dd73beffb5cc5f2182aa.lean/declarations/evenodd--05e2500ea178a526f8283e2a.md) | 36 | `declaration-track:05e2500ea178a526f8283e2a3dbefeb3f82b44ffc988b17d5a94bdb991fea55e` |
| 2 | `theorem` | [one_le_evenOdd_zero](../../../../../mathematics/Algebra/LinearAlgebra/Grading/Variantea5fa98ca483a091622adbc05c1a18bc5aae38742a94dd73beffb5cc5f2182aa.lean/declarations/one-le-evenodd-zero--2b0533e9b30b00cb11be4a47.md) | 39 | `result-track:2b0533e9b30b00cb11be4a472b6bec6896bf8de9229ef5645d8dd726b29c4430` |
| 3 | `theorem` | [range_ι_le_evenOdd_one](../../../../../mathematics/Algebra/LinearAlgebra/Grading/Variantea5fa98ca483a091622adbc05c1a18bc5aae38742a94dd73beffb5cc5f2182aa.lean/declarations/range-le-evenodd-one--ff1028f36c755ab9877bab6d.md) | 43 | `result-track:ff1028f36c755ab9877bab6d2a3ef688e48ace91f088ac1fd81ffc256b327ef4` |
| 4 | `theorem` | [ι_mem_evenOdd_one](../../../../../mathematics/Algebra/LinearAlgebra/Grading/Variantea5fa98ca483a091622adbc05c1a18bc5aae38742a94dd73beffb5cc5f2182aa.lean/declarations/mem-evenodd-one--29a4eceef9397df5565df751.md) | 47 | `result-track:29a4eceef9397df5565df75107537087cb746bdcae62f7700bd5ff042c300dd2` |
| 5 | `theorem` | [ι_mul_ι_mem_evenOdd_zero](../../../../../mathematics/Algebra/LinearAlgebra/Grading/Variantea5fa98ca483a091622adbc05c1a18bc5aae38742a94dd73beffb5cc5f2182aa.lean/declarations/mul-mem-evenodd-zero--10064f468928fdfd65c32493.md) | 50 | `result-track:10064f468928fdfd65c324932491624d06054a4d72d0bcc7aed9d4ae9a4547fc` |
| 6 | `theorem` | [evenOdd_mul_le](../../../../../mathematics/Algebra/LinearAlgebra/Grading/Variantea5fa98ca483a091622adbc05c1a18bc5aae38742a94dd73beffb5cc5f2182aa.lean/declarations/evenodd-mul-le--01cbf2b8a349f697dfd96a26.md) | 58 | `result-track:01cbf2b8a349f697dfd96a26a2c60d546af5642250ac5e58a40e5a395a94cd95` |
| 7 | `instance` | [evenOdd.gradedMonoid](../../../../../mathematics/Algebra/LinearAlgebra/Grading/Variantea5fa98ca483a091622adbc05c1a18bc5aae38742a94dd73beffb5cc5f2182aa.lean/declarations/evenodd-gradedmonoid--379b3ee4fb6b150591318e5d.md) | 67 | `declaration-track:379b3ee4fb6b150591318e5d04d1258792e2d5bfd25249f28810b4ac2b4b89c2` |
| 8 | `def` | [GradedAlgebra.ι](../../../../../mathematics/Algebra/LinearAlgebra/Grading/Variantea5fa98ca483a091622adbc05c1a18bc5aae38742a94dd73beffb5cc5f2182aa.lean/declarations/gradedalgebra--a4df59340958f471079c207d.md) | 73 | `declaration-track:a4df59340958f471079c207d55450f59c163d91d98a801b100a06a3bb12523ac` |
| 9 | `theorem` | [GradedAlgebra.ι_apply](../../../../../mathematics/Algebra/LinearAlgebra/Grading/Variantea5fa98ca483a091622adbc05c1a18bc5aae38742a94dd73beffb5cc5f2182aa.lean/declarations/gradedalgebra-apply--a6263c85db40e484d5f11fc1.md) | 76 | `result-track:a6263c85db40e484d5f11fc173ad3a831247ac1edfb76df3a3093205594de3d2` |
| 10 | `theorem` | [GradedAlgebra.ι_sq_scalar](../../../../../mathematics/Algebra/LinearAlgebra/Grading/Variantea5fa98ca483a091622adbc05c1a18bc5aae38742a94dd73beffb5cc5f2182aa.lean/declarations/gradedalgebra-sq-scalar--420eb76ce2b64fd3c721cf60.md) | 80 | `result-track:420eb76ce2b64fd3c721cf608e432fcb859a8a1b94e9dd2e00c5391cb4326497` |
| 11 | `theorem` | [GradedAlgebra.lift_ι_eq](../../../../../mathematics/Algebra/LinearAlgebra/Grading/Variantea5fa98ca483a091622adbc05c1a18bc5aae38742a94dd73beffb5cc5f2182aa.lean/declarations/gradedalgebra-lift-eq--69d005f2761ab243d38ddd3d.md) | 85 | `result-track:69d005f2761ab243d38ddd3d842d25383a5451110489795e1bc1d7b749732d37` |
| 12 | `instance` | [gradedAlgebra](../../../../../mathematics/Algebra/LinearAlgebra/Grading/Variantea5fa98ca483a091622adbc05c1a18bc5aae38742a94dd73beffb5cc5f2182aa.lean/declarations/gradedalgebra--55862e0865220c5c0a8c1ec9.md) | 115 | `declaration-track:55862e0865220c5c0a8c1ec9f809c64c03716db5b11d4e5029e83c59256237fc` |
| 13 | `theorem` | [iSup_ι_range_eq_top](../../../../../mathematics/Algebra/LinearAlgebra/Grading/Variantea5fa98ca483a091622adbc05c1a18bc5aae38742a94dd73beffb5cc5f2182aa.lean/declarations/isup-range-eq-top--fdadb2c6e7975bf8954d17ae.md) | 128 | `result-track:fdadb2c6e7975bf8954d17aed39593cf8d96ddfeba54ea692e4b12e784baa19e` |
| 14 | `theorem` | [evenOdd_isCompl](../../../../../mathematics/Algebra/LinearAlgebra/Grading/Variantea5fa98ca483a091622adbc05c1a18bc5aae38742a94dd73beffb5cc5f2182aa.lean/declarations/evenodd-iscompl--4e717e03ecb39b99aa7f0233.md) | 139 | `result-track:4e717e03ecb39b99aa7f0233912aa897495a56c9752b1e5bb8dcb350c126efca` |
| 15 | `theorem` | [evenOdd_induction](../../../../../mathematics/Algebra/LinearAlgebra/Grading/Variantea5fa98ca483a091622adbc05c1a18bc5aae38742a94dd73beffb5cc5f2182aa.lean/declarations/evenodd-induction--c25d204b9b8855c44cd79b76.md) | 148 | `result-track:c25d204b9b8855c44cd79b76417c157e7e697139b479cc19b5d5d3dd5f83aba7` |
| 16 | `theorem` | [even_induction](../../../../../mathematics/Algebra/LinearAlgebra/Grading/Variantea5fa98ca483a091622adbc05c1a18bc5aae38742a94dd73beffb5cc5f2182aa.lean/declarations/even-induction--305f04c4eccc674ddcf7fc31.md) | 192 | `result-track:305f04c4eccc674ddcf7fc31dc445ccba3ba2988005802bd5d258c325b50a556` |
| 17 | `theorem` | [odd_induction](../../../../../mathematics/Algebra/LinearAlgebra/Grading/Variantea5fa98ca483a091622adbc05c1a18bc5aae38742a94dd73beffb5cc5f2182aa.lean/declarations/odd-induction--fab23592888c7d6805a56cad.md) | 208 | `result-track:fab23592888c7d6805a56caddb42ea3ca054a99a5241454a077b38181d8d246e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
