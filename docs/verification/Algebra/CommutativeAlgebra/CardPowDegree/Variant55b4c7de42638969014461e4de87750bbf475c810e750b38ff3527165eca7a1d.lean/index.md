# Verification target: GRWTSK.Algebra.CommutativeAlgebra.CardPowDegree.Variant55b4c7de42638969014461e4de87750bbf475c810e750b38ff3527165eca7a1d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d93c3a30f5d0b43476497a9d40ec1f6ffec64528",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/CardPowDegree/Variant55b4c7de42638969014461e4de87750bbf475c810e750b38ff3527165eca7a1d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/CardPowDegree/Variant55b4c7de42638969014461e4de87750bbf475c810e750b38ff3527165eca7a1d.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/CardPowDegree/Variant55b4c7de42638969014461e4de87750bbf475c810e750b38ff3527165eca7a1d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d93c3a30f5d0b43476497a9d40ec1f6ffec64528`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/CardPowDegree/Variant55b4c7de42638969014461e4de87750bbf475c810e750b38ff3527165eca7a1d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/CardPowDegree/Variant55b4c7de42638969014461e4de87750bbf475c810e750b38ff3527165eca7a1d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.AbsoluteValue.Euclidean` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Ring.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Polynomial.FieldDivision` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [cardPowDegree](../../../../../mathematics/Algebra/CommutativeAlgebra/CardPowDegree/Variant55b4c7de42638969014461e4de87750bbf475c810e750b38ff3527165eca7a1d.lean/declarations/cardpowdegree--11bd7b7399214d51ef68fd58.md) | 40 | `declaration-track:11bd7b7399214d51ef68fd58a05666d0b0ea1024e31db208c1b7449ec95d10f4` |
| 2 | `theorem` | [cardPowDegree_apply](../../../../../mathematics/Algebra/CommutativeAlgebra/CardPowDegree/Variant55b4c7de42638969014461e4de87750bbf475c810e750b38ff3527165eca7a1d.lean/declarations/cardpowdegree-apply--2690d2045cc093376edce6fc.md) | 74 | `result-track:2690d2045cc093376edce6fcda5f075526f0358857bee537364a48d3ad534586` |
| 3 | `theorem` | [cardPowDegree_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/CardPowDegree/Variant55b4c7de42638969014461e4de87750bbf475c810e750b38ff3527165eca7a1d.lean/declarations/cardpowdegree-zero--0dbc13395e9a09b5a8d81447.md) | 81 | `result-track:0dbc13395e9a09b5a8d814474d0e54752ad4156eaa050bedfa8903796df9d9e1` |
| 4 | `theorem` | [cardPowDegree_nonzero](../../../../../mathematics/Algebra/CommutativeAlgebra/CardPowDegree/Variant55b4c7de42638969014461e4de87750bbf475c810e750b38ff3527165eca7a1d.lean/declarations/cardpowdegree-nonzero--d070c772f2a13ee0e46d492b.md) | 84 | `result-track:d070c772f2a13ee0e46d492b9e38be5c7187274004ab014d7c698b329b64eb90` |
| 5 | `theorem` | [cardPowDegree_isEuclidean](../../../../../mathematics/Algebra/CommutativeAlgebra/CardPowDegree/Variant55b4c7de42638969014461e4de87750bbf475c810e750b38ff3527165eca7a1d.lean/declarations/cardpowdegree-iseuclidean--5d8cd3815b666c017fa7841c.md) | 88 | `result-track:5d8cd3815b666c017fa7841cfb562ca7d101023d2a2c3671ad3c3269143c4743` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
