# Verification target: GRWTSK.Logic.PortPureTypeSystemSubjectReduction

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1fb802df8c418fb24ae8fa5988ce7074bdcba5d0",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Logic/PortPureTypeSystemSubjectReduction.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PortPureTypeSystemSubjectReduction.lean/index.md) · [Full source](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PortPureTypeSystemSubjectReduction.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1fb802df8c418fb24ae8fa5988ce7074bdcba5d0`.

Source path: `GRWTSK/Logic/PortPureTypeSystemSubjectReduction.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Logic/PortPureTypeSystemSubjectReduction.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Logic.PortPureTypeSystemReduction`](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PortPureTypeSystemReduction.lean/index.md) — import line 6; pinned internal source present.
- [`GRWTSK.Logic.PortPureTypeSystemTyping`](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PortPureTypeSystemTyping.lean/index.md) — import line 7; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [generation_pi](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PortPureTypeSystemSubjectReduction.lean/declarations/generation-pi--d4e7a4901c5ea8861454cd24.md) | 18 | `result-track:d4e7a4901c5ea8861454cd24452d175e4e3100d781d80a6730c1f414ddc4d711` |
| 2 | `theorem` | [generation_lam](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PortPureTypeSystemSubjectReduction.lean/declarations/generation-lam--0b9802fe93e2ded1a9bd7229.md) | 26 | `result-track:0b9802fe93e2ded1a9bd72294a01284e7b3748af29da5e46d7ad669bb4202b53` |
| 3 | `theorem` | [generation_app](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PortPureTypeSystemSubjectReduction.lean/declarations/generation-app--b60fc4751e0d476974796f6d.md) | 33 | `result-track:b60fc4751e0d476974796f6d1b6a196b23140ebf55923a2189abe75b0c04ffec` |
| 4 | `theorem` | [regularity](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PortPureTypeSystemSubjectReduction.lean/declarations/regularity--0387df4c5eafd9c92189d08c.md) | 40 | `result-track:0387df4c5eafd9c92189d08c5b97b50ed139cbff1d199d5995bca8d5dc219071` |
| 5 | `theorem` | [product_type_sorted](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PortPureTypeSystemSubjectReduction.lean/declarations/product-type-sorted--2fd5bcbf7f266e61f057c6ed.md) | 60 | `result-track:2fd5bcbf7f266e61f057c6edaafaef87ceded35a96d8b3d3e7d9958bff9b7300` |
| 6 | `theorem` | [pi](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PortPureTypeSystemSubjectReduction.lean/declarations/pi--7c97c925c2f7579932d098b7.md) | 74 | `result-track:7c97c925c2f7579932d098b79554c83652b19023f645110911d3b10eceb7d322` |
| 7 | `theorem` | [pi_not_sort](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PortPureTypeSystemSubjectReduction.lean/declarations/pi-not-sort--ac75115f6130b907a363317a.md) | 83 | `result-track:ac75115f6130b907a363317a4f1175042b2ade509b465e5556fc4a38b1d4266a` |
| 8 | `theorem` | [sort_inj](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PortPureTypeSystemSubjectReduction.lean/declarations/sort-inj--38e3e2b8f77d469952f444ca.md) | 92 | `result-track:38e3e2b8f77d469952f444caca2ea5d622e6fa37fe41c7366433a9317c7f003b` |
| 9 | `theorem` | [instantiate_right](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PortPureTypeSystemSubjectReduction.lean/declarations/instantiate-right--afd8af9412d5f8d156ad69db.md) | 97 | `result-track:afd8af9412d5f8d156ad69db8ea15c4b9a874c0b21340fb2e8abdd41b29057a4` |
| 10 | `theorem` | [application_type_sorted_aux](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PortPureTypeSystemSubjectReduction.lean/declarations/application-type-sorted-aux--46ccaa825c0420234f2fb7c2.md) | 115 | `result-track:46ccaa825c0420234f2fb7c2c599b711861e1c2447925472d0944160af9a390d` |
| 11 | `theorem` | [application_type_sorted](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PortPureTypeSystemSubjectReduction.lean/declarations/application-type-sorted--7cb49a92d3a869fda4de37b8.md) | 141 | `result-track:7cb49a92d3a869fda4de37b82d9dfa18bec13ae54deac34dfb383b6bb01652c4` |
| 12 | `theorem` | [abstraction_type_sorted](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PortPureTypeSystemSubjectReduction.lean/declarations/abstraction-type-sorted--42cc127e5980b864d59bceec.md) | 147 | `result-track:42cc127e5980b864d59bceece71b3af8c22cd27b54bba35e57ce41b3d484f365` |
| 13 | `theorem` | [conversion_from_sort](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PortPureTypeSystemSubjectReduction.lean/declarations/conversion-from-sort--45388ca65462f337eb3dd9fc.md) | 157 | `result-track:45388ca65462f337eb3dd9fc73ea866d55783f4be2a225e3b76bad4f9b592ef6` |
| 14 | `theorem` | [subject_reduction](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PortPureTypeSystemSubjectReduction.lean/declarations/subject-reduction--470b1832a2c50851be0b53c8.md) | 168 | `result-track:470b1832a2c50851be0b53c8a34af4fe06383a73c541c9cc524c47747e27c804` |
| 15 | `theorem` | [subject_reduces](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PortPureTypeSystemSubjectReduction.lean/declarations/subject-reduces--32498cb1b2f0585886de2ddb.md) | 219 | `result-track:32498cb1b2f0585886de2ddb259bb34e7ade5332b79d7cb56b331a38081567ae` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
