# Verification target: GRWTSK.Algebra.LinearAlgebra.Vanishing.Variant1e53c6d10079e47da19ffbe27805a3d3d4eec21b11bcc5b65a4688f18dee19d5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c0ce640eb4dcf77190582aca9fe4c9190cf7ab31",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Vanishing/Variant1e53c6d10079e47da19ffbe27805a3d3d4eec21b11bcc5b65a4688f18dee19d5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Vanishing/Variant1e53c6d10079e47da19ffbe27805a3d3d4eec21b11bcc5b65a4688f18dee19d5.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Vanishing/Variant1e53c6d10079e47da19ffbe27805a3d3d4eec21b11bcc5b65a4688f18dee19d5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c0ce640eb4dcf77190582aca9fe4c9190cf7ab31`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Vanishing/Variant1e53c6d10079e47da19ffbe27805a3d3d4eec21b11bcc5b65a4688f18dee19d5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Vanishing/Variant1e53c6d10079e47da19ffbe27805a3d3d4eec21b11bcc5b65a4688f18dee19d5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [VanishesTrivially](../../../../../mathematics/Algebra/LinearAlgebra/Vanishing/Variant1e53c6d10079e47da19ffbe27805a3d3d4eec21b11bcc5b65a4688f18dee19d5.lean/declarations/vanishestrivially--a45cd21dce7bc6da4d32d0c4.md) | 81 | `declaration-track:a45cd21dce7bc6da4d32d0c4d419db71ae01b4b880d7646a75b8ce51112f28b0` |
| 2 | `theorem` | [VanishesTrivially.of_fintype](../../../../../mathematics/Algebra/LinearAlgebra/Vanishing/Variant1e53c6d10079e47da19ffbe27805a3d3d4eec21b11bcc5b65a4688f18dee19d5.lean/declarations/vanishestrivially-of-fintype--5798c7b22491478f2eca1786.md) | 87 | `result-track:5798c7b22491478f2eca17860c1ca22e1e2efb09bf6b9a20d67df8e235d40e6f` |
| 3 | `theorem` | [_root_.Equiv.vanishesTrivially_comp](../../../../../mathematics/Algebra/LinearAlgebra/Vanishing/Variant1e53c6d10079e47da19ffbe27805a3d3d4eec21b11bcc5b65a4688f18dee19d5.lean/declarations/root-equiv-vanishestrivially-comp--51f6940661d575b14fa8c0b3.md) | 94 | `result-track:51f6940661d575b14fa8c0b3c4ac295332d6b1117a569241824f172fc947e864` |
| 4 | `theorem` | [sum_tmul_eq_zero_of_vanishesTrivially](../../../../../mathematics/Algebra/LinearAlgebra/Vanishing/Variant1e53c6d10079e47da19ffbe27805a3d3d4eec21b11bcc5b65a4688f18dee19d5.lean/declarations/sum-tmul-eq-zero-of-vanishestrivially--30228687c746ac8e95ce60bf.md) | 107 | `result-track:30228687c746ac8e95ce60bfb9e3232f52e30b771aa072b28f51dd92b942d190` |
| 5 | `theorem` | [vanishesTrivially_of_sum_tmul_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/Vanishing/Variant1e53c6d10079e47da19ffbe27805a3d3d4eec21b11bcc5b65a4688f18dee19d5.lean/declarations/vanishestrivially-of-sum-tmul-eq-zero--05123c9ecc568c0a785303c1.md) | 120 | `result-track:05123c9ecc568c0a785303c15780c2170d77f38c7a7ca802b18d176d91b2dafc` |
| 6 | `theorem` | [vanishesTrivially_iff_sum_tmul_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/Vanishing/Variant1e53c6d10079e47da19ffbe27805a3d3d4eec21b11bcc5b65a4688f18dee19d5.lean/declarations/vanishestrivially-iff-sum-tmul-eq-zero--e9f759dda5cac20f83c4ffd1.md) | 180 | `result-track:e9f759dda5cac20f83c4ffd16a67aeca508b2bcf2d74ead0912631fad04e1254` |
| 7 | `theorem` | [vanishesTrivially_of_sum_tmul_eq_zero_of_rTensor_injective](../../../../../mathematics/Algebra/LinearAlgebra/Vanishing/Variant1e53c6d10079e47da19ffbe27805a3d3d4eec21b11bcc5b65a4688f18dee19d5.lean/declarations/vanishestrivially-of-sum-tmul-eq-zero-of-rtensor-injective--a4eb8ec01ccca2712baa6b91.md) | 191 | `result-track:a4eb8ec01ccca2712baa6b91d76b100c4c88ef50bcd3bc3f5af203fc896828ad` |
| 8 | `theorem` | [vanishesTrivially_iff_sum_tmul_eq_zero_of_rTensor_injective](../../../../../mathematics/Algebra/LinearAlgebra/Vanishing/Variant1e53c6d10079e47da19ffbe27805a3d3d4eec21b11bcc5b65a4688f18dee19d5.lean/declarations/vanishestrivially-iff-sum-tmul-eq-zero-of-rtensor-injective--7494931ac4d17e7cfe6301fa.md) | 217 | `result-track:7494931ac4d17e7cfe6301faca12d06b2e8e1b8851035071fc7dc1ca5c8cd9e4` |
| 9 | `theorem` | [rTensor_injective_of_forall_vanishesTrivially](../../../../../mathematics/Algebra/LinearAlgebra/Vanishing/Variant1e53c6d10079e47da19ffbe27805a3d3d4eec21b11bcc5b65a4688f18dee19d5.lean/declarations/rtensor-injective-of-forall-vanishestrivially--d6ff8f98b038d390817ead61.md) | 227 | `result-track:d6ff8f98b038d390817ead6150bb8ca61273cfa0fed9d8eacf77d301087335d9` |
| 10 | `theorem` | [forall_vanishesTrivially_iff_forall_rTensor_injective](../../../../../mathematics/Algebra/LinearAlgebra/Vanishing/Variant1e53c6d10079e47da19ffbe27805a3d3d4eec21b11bcc5b65a4688f18dee19d5.lean/declarations/forall-vanishestrivially-iff-forall-rtensor-injective--ce3db1f678ce92a91ccd8494.md) | 249 | `result-track:ce3db1f678ce92a91ccd8494a65cff594727d95a06fc1b47d0adc207f61abab8` |
| 11 | `theorem` | [forall_vanishesTrivially_iff_forall_fg_rTensor_injective](../../../../../mathematics/Algebra/LinearAlgebra/Vanishing/Variant1e53c6d10079e47da19ffbe27805a3d3d4eec21b11bcc5b65a4688f18dee19d5.lean/declarations/forall-vanishestrivially-iff-forall-fg-rtensor-injective--406e499218166aa48ec48821.md) | 262 | `result-track:406e499218166aa48ec48821f68c3b038f375936b0ce7fb64ee4be3db3677591` |
| 12 | `theorem` | [rTensor_injective_of_forall_fg_rTensor_injective](../../../../../mathematics/Algebra/LinearAlgebra/Vanishing/Variant1e53c6d10079e47da19ffbe27805a3d3d4eec21b11bcc5b65a4688f18dee19d5.lean/declarations/rtensor-injective-of-forall-fg-rtensor-injective--3b8ca0aab3e7a66f510c0ecf.md) | 275 | `result-track:3b8ca0aab3e7a66f510c0ecf089a8536c5f3185a0caee525cb5a892dccfcd5a7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
