# Verification target: GRWTSK.Algebra.DirectSumIsInternal.Variantcec53729db81a212f6adf20faebdc84d77a276aa790d15ea42efb0cb11a2811e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "77546ffbf961512b767fb9b81e6806ccff232c2e",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/DirectSumIsInternal/Variantcec53729db81a212f6adf20faebdc84d77a276aa790d15ea42efb0cb11a2811e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/DirectSumIsInternal/Variantcec53729db81a212f6adf20faebdc84d77a276aa790d15ea42efb0cb11a2811e.lean/index.md) · [Full source](../../../../mathematics/Algebra/DirectSumIsInternal/Variantcec53729db81a212f6adf20faebdc84d77a276aa790d15ea42efb0cb11a2811e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `77546ffbf961512b767fb9b81e6806ccff232c2e`.

Source path: `GRWTSK/Algebra/DirectSumIsInternal/Variantcec53729db81a212f6adf20faebdc84d77a276aa790d15ea42efb0cb11a2811e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/DirectSumIsInternal/Variantcec53729db81a212f6adf20faebdc84d77a276aa790d15ea42efb0cb11a2811e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.DirectSum.Module` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.ConjFinite` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FinCases` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [UnitsInt.one_ne_neg_one](../../../../mathematics/Algebra/DirectSumIsInternal/Variantcec53729db81a212f6adf20faebdc84d77a276aa790d15ea42efb0cb11a2811e.lean/declarations/unitsint-one-ne-neg-one--abdbb1d69ab4fc3412c35e5b.md) | 26 | `result-track:abdbb1d69ab4fc3412c35e5b2cc069e118f6dfdd77098b2a766671c1801fc1b1` |
| 2 | `def` | [withSign](../../../../mathematics/Algebra/DirectSumIsInternal/Variantcec53729db81a212f6adf20faebdc84d77a276aa790d15ea42efb0cb11a2811e.lean/declarations/withsign--1f474fdc3f28643915d03a17.md) | 30 | `declaration-track:1f474fdc3f28643915d03a17a5a40e9a98a8860ad7f7cd4bb8684341b1f5017f` |
| 3 | `theorem` | [mem_withSign_one](../../../../mathematics/Algebra/DirectSumIsInternal/Variantcec53729db81a212f6adf20faebdc84d77a276aa790d15ea42efb0cb11a2811e.lean/declarations/mem-withsign-one--8deb673571a8dc16f59b44ad.md) | 45 | `result-track:8deb673571a8dc16f59b44ad006ead45df020c36a80c52dc2fd8ca3077ee15b8` |
| 4 | `theorem` | [mem_withSign_neg_one](../../../../mathematics/Algebra/DirectSumIsInternal/Variantcec53729db81a212f6adf20faebdc84d77a276aa790d15ea42efb0cb11a2811e.lean/declarations/mem-withsign-neg-one--045a1b7c2a1c51b08bef74a4.md) | 49 | `result-track:045a1b7c2a1c51b08bef74a4ee68ec378d50aa8c5a105056ee36fa14c1bc80e1` |
| 5 | `theorem` | [withSign.isCompl](../../../../mathematics/Algebra/DirectSumIsInternal/Variantcec53729db81a212f6adf20faebdc84d77a276aa790d15ea42efb0cb11a2811e.lean/declarations/withsign-iscompl--eb710c202197d12ef9cb5b29.md) | 54 | `result-track:eb710c202197d12ef9cb5b29163af118e071f8c76a79a6723603dd1ae31e8e30` |
| 6 | `def` | [withSign.independent](../../../../mathematics/Algebra/DirectSumIsInternal/Variantcec53729db81a212f6adf20faebdc84d77a276aa790d15ea42efb0cb11a2811e.lean/declarations/withsign-independent--80fad7894be2f15084b71195.md) | 66 | `declaration-track:80fad7894be2f15084b711957b6871e540f6ed358e79832e0d33954fd76b1fb9` |
| 7 | `theorem` | [withSign.iSup](../../../../mathematics/Algebra/DirectSumIsInternal/Variantcec53729db81a212f6adf20faebdc84d77a276aa790d15ea42efb0cb11a2811e.lean/declarations/withsign-isup--4794db9117070c155438b2d3.md) | 73 | `result-track:4794db9117070c155438b2d33f6a26fefcb8a077dc7bf47183c1b5ae07d2781b` |
| 8 | `theorem` | [withSign.not_injective](../../../../mathematics/Algebra/DirectSumIsInternal/Variantcec53729db81a212f6adf20faebdc84d77a276aa790d15ea42efb0cb11a2811e.lean/declarations/withsign-not-injective--7b889d78f84a4b766b73c6ec.md) | 79 | `result-track:7b889d78f84a4b766b73c6ecbc92b7800cca39657bae4323361c8644f1855ca7` |
| 9 | `theorem` | [withSign.not_internal](../../../../mathematics/Algebra/DirectSumIsInternal/Variantcec53729db81a212f6adf20faebdc84d77a276aa790d15ea42efb0cb11a2811e.lean/declarations/withsign-not-internal--170e2bb6799ff52e67b2cc33.md) | 101 | `result-track:170e2bb6799ff52e67b2cc33c6bd678e4d60dc3d8d7b4117ff9d6b20512a2d91` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
