# Verification target: GRWTSK.Algebra.LinearAlgebra.BraidQuotientAttempt02.Variant8d8e6f9adbad0a4bfb2ae49d9d2985b8b1082b2bcd16ceffdb355215d4b04091

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "25e6edcde90af6be3887aa0763f8cc0369d92a9e",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/BraidQuotientAttempt02/Variant8d8e6f9adbad0a4bfb2ae49d9d2985b8b1082b2bcd16ceffdb355215d4b04091.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/BraidQuotientAttempt02/Variant8d8e6f9adbad0a4bfb2ae49d9d2985b8b1082b2bcd16ceffdb355215d4b04091.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/BraidQuotientAttempt02/Variant8d8e6f9adbad0a4bfb2ae49d9d2985b8b1082b2bcd16ceffdb355215d4b04091.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `25e6edcde90af6be3887aa0763f8cc0369d92a9e`.

Source path: `GRWTSK/Algebra/LinearAlgebra/BraidQuotientAttempt02/Variant8d8e6f9adbad0a4bfb2ae49d9d2985b8b1082b2bcd16ceffdb355215d4b04091.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/BraidQuotientAttempt02/Variant8d8e6f9adbad0a4bfb2ae49d9d2985b8b1082b2bcd16ceffdb355215d4b04091.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.GroupTheory.PresentedGroup` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.SpecialLinearGroup` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [braidRelator](../../../../../mathematics/Algebra/LinearAlgebra/BraidQuotientAttempt02/Variant8d8e6f9adbad0a4bfb2ae49d9d2985b8b1082b2bcd16ceffdb355215d4b04091.lean/declarations/braidrelator--3c26a1540a7189b6cd2b2880.md) | 22 | `declaration-track:3c26a1540a7189b6cd2b28800d967b392131c09dcb8976bf35dd6eb06cc0b0e2` |
| 2 | `def` | [braidRelations](../../../../../mathematics/Algebra/LinearAlgebra/BraidQuotientAttempt02/Variant8d8e6f9adbad0a4bfb2ae49d9d2985b8b1082b2bcd16ceffdb355215d4b04091.lean/declarations/braidrelations--596c2681bd9f914d27d5af64.md) | 26 | `declaration-track:596c2681bd9f914d27d5af64add44a52986da106cbb1e9eabfa3f85a29195313` |
| 3 | `def` | [B3](../../../../../mathematics/Algebra/LinearAlgebra/BraidQuotientAttempt02/Variant8d8e6f9adbad0a4bfb2ae49d9d2985b8b1082b2bcd16ceffdb355215d4b04091.lean/declarations/b3--25f8f873345cee9505b65af5.md) | 28 | `declaration-track:25f8f873345cee9505b65af5cdb50fe02fd3f7237422571c4b8ea719d091c61e` |
| 4 | `def` | [sigma1](../../../../../mathematics/Algebra/LinearAlgebra/BraidQuotientAttempt02/Variant8d8e6f9adbad0a4bfb2ae49d9d2985b8b1082b2bcd16ceffdb355215d4b04091.lean/declarations/sigma1--a5507a63cf8a58a0a4d06900.md) | 31 | `declaration-track:a5507a63cf8a58a0a4d06900a1d1517f7b559d8f4d7db12099cbb0c47d4373cb` |
| 5 | `def` | [sigma2](../../../../../mathematics/Algebra/LinearAlgebra/BraidQuotientAttempt02/Variant8d8e6f9adbad0a4bfb2ae49d9d2985b8b1082b2bcd16ceffdb355215d4b04091.lean/declarations/sigma2--e0edac837c3888c63a63fd13.md) | 33 | `declaration-track:e0edac837c3888c63a63fd13650306ad00725fd4768270179343865a3097efbd` |
| 6 | `theorem` | [braid_relation](../../../../../mathematics/Algebra/LinearAlgebra/BraidQuotientAttempt02/Variant8d8e6f9adbad0a4bfb2ae49d9d2985b8b1082b2bcd16ceffdb355215d4b04091.lean/declarations/braid-relation--eb1583089339737168f9c15d.md) | 35 | `result-track:eb1583089339737168f9c15da2d8561c3ab254226c0ffc5a8c485fee3c912525` |
| 7 | `def` | [upperGenerator](../../../../../mathematics/Algebra/LinearAlgebra/BraidQuotientAttempt02/Variant8d8e6f9adbad0a4bfb2ae49d9d2985b8b1082b2bcd16ceffdb355215d4b04091.lean/declarations/uppergenerator--0ce6cc3ca9c539c246053356.md) | 43 | `declaration-track:0ce6cc3ca9c539c24605335669f0a3428451cba35885a041e660b75af091b391` |
| 8 | `def` | [lowerGenerator](../../../../../mathematics/Algebra/LinearAlgebra/BraidQuotientAttempt02/Variant8d8e6f9adbad0a4bfb2ae49d9d2985b8b1082b2bcd16ceffdb355215d4b04091.lean/declarations/lowergenerator--99f6e62761159bae6e44fba7.md) | 46 | `declaration-track:99f6e62761159bae6e44fba74aedbf23cd0770536e285d8cad0da790a55af2dd` |
| 9 | `theorem` | [matrix_braid_relation](../../../../../mathematics/Algebra/LinearAlgebra/BraidQuotientAttempt02/Variant8d8e6f9adbad0a4bfb2ae49d9d2985b8b1082b2bcd16ceffdb355215d4b04091.lean/declarations/matrix-braid-relation--ad42786ee380d360f2f1002b.md) | 49 | `result-track:ad42786ee380d360f2f1002b0acc64ef4f422592b875cd32dfbaee510176f63a` |
| 10 | `def` | [generatorMatrix](../../../../../mathematics/Algebra/LinearAlgebra/BraidQuotientAttempt02/Variant8d8e6f9adbad0a4bfb2ae49d9d2985b8b1082b2bcd16ceffdb355215d4b04091.lean/declarations/generatormatrix--4e1efa8f1ef5a037699e825a.md) | 59 | `declaration-track:4e1efa8f1ef5a037699e825afbce8a301f9ef5747432989b526e9bb6334145da` |
| 11 | `theorem` | [matrix_relator_identity](../../../../../mathematics/Algebra/LinearAlgebra/BraidQuotientAttempt02/Variant8d8e6f9adbad0a4bfb2ae49d9d2985b8b1082b2bcd16ceffdb355215d4b04091.lean/declarations/matrix-relator-identity--f1932c8cdb1ef982840d2821.md) | 61 | `result-track:f1932c8cdb1ef982840d28214865b5b9b3bd67964efbc60a4e9f22d138504607` |
| 12 | `def` | [matrixRepresentation](../../../../../mathematics/Algebra/LinearAlgebra/BraidQuotientAttempt02/Variant8d8e6f9adbad0a4bfb2ae49d9d2985b8b1082b2bcd16ceffdb355215d4b04091.lean/declarations/matrixrepresentation--327af7d3a4261a35577e86da.md) | 71 | `declaration-track:327af7d3a4261a35577e86da6cb1c06593a453a697a5fcdb8ded5b703036b798` |
| 13 | `theorem` | [matrixRepresentation_sigma1](../../../../../mathematics/Algebra/LinearAlgebra/BraidQuotientAttempt02/Variant8d8e6f9adbad0a4bfb2ae49d9d2985b8b1082b2bcd16ceffdb355215d4b04091.lean/declarations/matrixrepresentation-sigma1--110e984563bc9e482d589a73.md) | 74 | `result-track:110e984563bc9e482d589a732954b7be26447d05f62d82655df96017e28b2d4c` |
| 14 | `theorem` | [matrixRepresentation_sigma2](../../../../../mathematics/Algebra/LinearAlgebra/BraidQuotientAttempt02/Variant8d8e6f9adbad0a4bfb2ae49d9d2985b8b1082b2bcd16ceffdb355215d4b04091.lean/declarations/matrixrepresentation-sigma2--e8fae790530018730ea47ac5.md) | 77 | `result-track:e8fae790530018730ea47ac54500c975cc55c41546f7eaf623b6538171453cc2` |
| 15 | `def` | [generatorExponent](../../../../../mathematics/Algebra/LinearAlgebra/BraidQuotientAttempt02/Variant8d8e6f9adbad0a4bfb2ae49d9d2985b8b1082b2bcd16ceffdb355215d4b04091.lean/declarations/generatorexponent--a91e670a8148e2982923123c.md) | 81 | `declaration-track:a91e670a8148e2982923123c053215936391bfe628f137b42445a6de70620f4e` |
| 16 | `theorem` | [exponent_relator_identity](../../../../../mathematics/Algebra/LinearAlgebra/BraidQuotientAttempt02/Variant8d8e6f9adbad0a4bfb2ae49d9d2985b8b1082b2bcd16ceffdb355215d4b04091.lean/declarations/exponent-relator-identity--f00381a005b5e0cbe154aee1.md) | 83 | `result-track:f00381a005b5e0cbe154aee1639093dea6e86cc36515d47829c4f68441d3a85b` |
| 17 | `def` | [exponentHom](../../../../../mathematics/Algebra/LinearAlgebra/BraidQuotientAttempt02/Variant8d8e6f9adbad0a4bfb2ae49d9d2985b8b1082b2bcd16ceffdb355215d4b04091.lean/declarations/exponenthom--7134622246c51a8d36a9b0e1.md) | 91 | `declaration-track:7134622246c51a8d36a9b0e1c50ae8e94b50e771c1715414d6001d692ded2508` |
| 18 | `theorem` | [exponentHom_sigma1](../../../../../mathematics/Algebra/LinearAlgebra/BraidQuotientAttempt02/Variant8d8e6f9adbad0a4bfb2ae49d9d2985b8b1082b2bcd16ceffdb355215d4b04091.lean/declarations/exponenthom-sigma1--eefe4f4838b419339a8ea998.md) | 94 | `result-track:eefe4f4838b419339a8ea99830f1c174adf5d5428f46accdb506bff387bc075e` |
| 19 | `theorem` | [exponentHom_sigma2](../../../../../mathematics/Algebra/LinearAlgebra/BraidQuotientAttempt02/Variant8d8e6f9adbad0a4bfb2ae49d9d2985b8b1082b2bcd16ceffdb355215d4b04091.lean/declarations/exponenthom-sigma2--ddb2d8abc96dbeca21c9ad1d.md) | 97 | `result-track:ddb2d8abc96dbeca21c9ad1d871b0e9e6b7e435b5882f5a140149002b58af59f` |
| 20 | `def` | [lostBraid](../../../../../mathematics/Algebra/LinearAlgebra/BraidQuotientAttempt02/Variant8d8e6f9adbad0a4bfb2ae49d9d2985b8b1082b2bcd16ceffdb355215d4b04091.lean/declarations/lostbraid--2485b5854d8faa901a8947fe.md) | 101 | `declaration-track:2485b5854d8faa901a8947fe86cfa1235e747115d7d1f6468f4bec9c54dd754e` |
| 21 | `theorem` | [generator_product_matrix](../../../../../mathematics/Algebra/LinearAlgebra/BraidQuotientAttempt02/Variant8d8e6f9adbad0a4bfb2ae49d9d2985b8b1082b2bcd16ceffdb355215d4b04091.lean/declarations/generator-product-matrix--8eb9260cca73f88629a9cb91.md) | 103 | `result-track:8eb9260cca73f88629a9cb91566a63d96fbecaaead15a224a93b5dfb460185ed` |
| 22 | `theorem` | [generator_product_sixth](../../../../../mathematics/Algebra/LinearAlgebra/BraidQuotientAttempt02/Variant8d8e6f9adbad0a4bfb2ae49d9d2985b8b1082b2bcd16ceffdb355215d4b04091.lean/declarations/generator-product-sixth--c496f71f4e4ab3f162f1a1ac.md) | 111 | `result-track:c496f71f4e4ab3f162f1a1ac83c561b196ea2418b30492ba9fcbd126392b8c36` |
| 23 | `theorem` | [lostBraid_matrix_identity](../../../../../mathematics/Algebra/LinearAlgebra/BraidQuotientAttempt02/Variant8d8e6f9adbad0a4bfb2ae49d9d2985b8b1082b2bcd16ceffdb355215d4b04091.lean/declarations/lostbraid-matrix-identity--944838ef4698c4337a4fd901.md) | 119 | `result-track:944838ef4698c4337a4fd9019fd8d3484e62dbd603a002159d6e2eed6f5d4852` |
| 24 | `theorem` | [lostBraid_exponent](../../../../../mathematics/Algebra/LinearAlgebra/BraidQuotientAttempt02/Variant8d8e6f9adbad0a4bfb2ae49d9d2985b8b1082b2bcd16ceffdb355215d4b04091.lean/declarations/lostbraid-exponent--06865bb5750bf2ac9932d02d.md) | 123 | `result-track:06865bb5750bf2ac9932d02d74c422d2fede17ec78d2dede12ee73315ff63817` |
| 25 | `theorem` | [lostBraid_ne_one](../../../../../mathematics/Algebra/LinearAlgebra/BraidQuotientAttempt02/Variant8d8e6f9adbad0a4bfb2ae49d9d2985b8b1082b2bcd16ceffdb355215d4b04091.lean/declarations/lostbraid-ne-one--3fa2ebf4cbe89e6be3ce4941.md) | 126 | `result-track:3fa2ebf4cbe89e6be3ce49419d8c8d56de97f32ab96b06fe3edc46f695f2ffa7` |
| 26 | `theorem` | [matrixRepresentation_not_injective](../../../../../mathematics/Algebra/LinearAlgebra/BraidQuotientAttempt02/Variant8d8e6f9adbad0a4bfb2ae49d9d2985b8b1082b2bcd16ceffdb355215d4b04091.lean/declarations/matrixrepresentation-not-injective--37e3f5fe51ac52c78463a8ba.md) | 132 | `result-track:37e3f5fe51ac52c78463a8ba3db53705f6dbb0fdc25178a892460ca610f7c01c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
