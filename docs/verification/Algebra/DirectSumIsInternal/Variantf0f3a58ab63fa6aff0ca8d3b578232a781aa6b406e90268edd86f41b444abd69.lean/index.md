# Verification target: GRWTSK.Algebra.DirectSumIsInternal.Variantf0f3a58ab63fa6aff0ca8d3b578232a781aa6b406e90268edd86f41b444abd69

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0c6bc56f41615652319d554eecd3821635159f19",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/DirectSumIsInternal/Variantf0f3a58ab63fa6aff0ca8d3b578232a781aa6b406e90268edd86f41b444abd69.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/DirectSumIsInternal/Variantf0f3a58ab63fa6aff0ca8d3b578232a781aa6b406e90268edd86f41b444abd69.lean/index.md) · [Full source](../../../../mathematics/Algebra/DirectSumIsInternal/Variantf0f3a58ab63fa6aff0ca8d3b578232a781aa6b406e90268edd86f41b444abd69.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0c6bc56f41615652319d554eecd3821635159f19`.

Source path: `GRWTSK/Algebra/DirectSumIsInternal/Variantf0f3a58ab63fa6aff0ca8d3b578232a781aa6b406e90268edd86f41b444abd69.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/DirectSumIsInternal/Variantf0f3a58ab63fa6aff0ca8d3b578232a781aa6b406e90268edd86f41b444abd69.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.DirectSum.Module` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.ConjFinite` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FinCases` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [UnitsInt.one_ne_neg_one](../../../../mathematics/Algebra/DirectSumIsInternal/Variantf0f3a58ab63fa6aff0ca8d3b578232a781aa6b406e90268edd86f41b444abd69.lean/declarations/unitsint-one-ne-neg-one--33d58db76f1796be77fddd3b.md) | 34 | `result-track:33d58db76f1796be77fddd3b51ca4289826e0cc4eb2e4be0bdc9a02c3035b668` |
| 2 | `def` | [withSign](../../../../mathematics/Algebra/DirectSumIsInternal/Variantf0f3a58ab63fa6aff0ca8d3b578232a781aa6b406e90268edd86f41b444abd69.lean/declarations/withsign--c6b1cf17e0ee0863fc4b0222.md) | 38 | `declaration-track:c6b1cf17e0ee0863fc4b0222f9da13980dbd344faa0e9f332a80032efe55a7b7` |
| 3 | `theorem` | [mem_withSign_one](../../../../mathematics/Algebra/DirectSumIsInternal/Variantf0f3a58ab63fa6aff0ca8d3b578232a781aa6b406e90268edd86f41b444abd69.lean/declarations/mem-withsign-one--2711a446bc23c6961a4555d0.md) | 53 | `result-track:2711a446bc23c6961a4555d07567eb8aea47f4abdb265060849465df8f206294` |
| 4 | `theorem` | [mem_withSign_neg_one](../../../../mathematics/Algebra/DirectSumIsInternal/Variantf0f3a58ab63fa6aff0ca8d3b578232a781aa6b406e90268edd86f41b444abd69.lean/declarations/mem-withsign-neg-one--d60109ae6ac4310152184ba1.md) | 57 | `result-track:d60109ae6ac4310152184ba1921044ad7f5cf7ef8c30dde6e29f10629dce6c70` |
| 5 | `theorem` | [withSign.isCompl](../../../../mathematics/Algebra/DirectSumIsInternal/Variantf0f3a58ab63fa6aff0ca8d3b578232a781aa6b406e90268edd86f41b444abd69.lean/declarations/withsign-iscompl--a67f1706dee080999f37016c.md) | 62 | `result-track:a67f1706dee080999f37016ca3e3f30b2c0307a07ab3e7c541e2c96d8654471e` |
| 6 | `def` | [withSign.independent](../../../../mathematics/Algebra/DirectSumIsInternal/Variantf0f3a58ab63fa6aff0ca8d3b578232a781aa6b406e90268edd86f41b444abd69.lean/declarations/withsign-independent--53a6af179e65bb1f87395847.md) | 74 | `declaration-track:53a6af179e65bb1f87395847f8632be5b3b970b29d0e69e34f033a39ce75817b` |
| 7 | `theorem` | [withSign.iSup](../../../../mathematics/Algebra/DirectSumIsInternal/Variantf0f3a58ab63fa6aff0ca8d3b578232a781aa6b406e90268edd86f41b444abd69.lean/declarations/withsign-isup--b0a135bf41be69d501d77caa.md) | 81 | `result-track:b0a135bf41be69d501d77caaa05fbbe2daf216ce42febde02e1344be67d3fb9e` |
| 8 | `theorem` | [withSign.not_injective](../../../../mathematics/Algebra/DirectSumIsInternal/Variantf0f3a58ab63fa6aff0ca8d3b578232a781aa6b406e90268edd86f41b444abd69.lean/declarations/withsign-not-injective--d83196cd48c34244e71555bc.md) | 87 | `result-track:d83196cd48c34244e71555bce26c72395f87f6eb2e43189eb7b4bacd2867c02a` |
| 9 | `theorem` | [withSign.not_internal](../../../../mathematics/Algebra/DirectSumIsInternal/Variantf0f3a58ab63fa6aff0ca8d3b578232a781aa6b406e90268edd86f41b444abd69.lean/declarations/withsign-not-internal--84164beeb4cbec063c7cd75f.md) | 109 | `result-track:84164beeb4cbec063c7cd75fc2083223fa481d8e25a880209ccdc001ed46dfa9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
