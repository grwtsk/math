# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Cardinality.Variant0b7450142d7e0513dc3292981fd95d5d4e7c0053a4d9f75d0da130b0f52bc664

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e62e38df83ac4bb580b56547b7b93cbfd8b8a3b5",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Cardinality/Variant0b7450142d7e0513dc3292981fd95d5d4e7c0053a4d9f75d0da130b0f52bc664.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Cardinality/Variant0b7450142d7e0513dc3292981fd95d5d4e7c0053a4d9f75d0da130b0f52bc664.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Cardinality/Variant0b7450142d7e0513dc3292981fd95d5d4e7c0053a4d9f75d0da130b0f52bc664.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e62e38df83ac4bb580b56547b7b93cbfd8b8a3b5`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Cardinality/Variant0b7450142d7e0513dc3292981fd95d5d4e7c0053a4d9f75d0da130b0f52bc664.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Cardinality/Variant0b7450142d7e0513dc3292981fd95d5d4e7c0053a4d9f75d0da130b0f52bc664.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GeomSum` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finite.Sum` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Units` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.GroupAction.Quotient` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Projectivization.Basic` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [equivQuotientOrbitRel](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Cardinality/Variant0b7450142d7e0513dc3292981fd95d5d4e7c0053a4d9f75d0da130b0f52bc664.lean/declarations/equivquotientorbitrel--13c759cd00dcf2fac104a85a.md) | 28 | `declaration-track:13c759cd00dcf2fac104a85af26f0be879040eaf1069d901ab55b22eae70f3a1` |
| 2 | `def` | [nonZeroEquivProjectivizationProdUnits](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Cardinality/Variant0b7450142d7e0513dc3292981fd95d5d4e7c0053a4d9f75d0da130b0f52bc664.lean/declarations/nonzeroequivprojectivizationprodunits--582b87842f8839052fba9a9b.md) | 32 | `declaration-track:582b87842f8839052fba9a9bb5fe45002d21b604391461ab6b8944a2c609c994` |
| 3 | `instance` | [isEmpty_of_subsingleton](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Cardinality/Variant0b7450142d7e0513dc3292981fd95d5d4e7c0053a4d9f75d0da130b0f52bc664.lean/declarations/isempty-of-subsingleton--3f6279282fdd6c149f0c6d1a.md) | 38 | `declaration-track:3f6279282fdd6c149f0c6d1a339c764c8b9178a802c71c3e12014ef6b9a4c27b` |
| 4 | `instance` | [finite_of_finite](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Cardinality/Variant0b7450142d7e0513dc3292981fd95d5d4e7c0053a4d9f75d0da130b0f52bc664.lean/declarations/finite-of-finite--285340b475800a54c0f2fdd2.md) | 43 | `declaration-track:285340b475800a54c0f2fdd2fff5c2c85a91e2c8f23e8438db4bfe23a24be874` |
| 5 | `lemma` | [finite_iff_of_finite](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Cardinality/Variant0b7450142d7e0513dc3292981fd95d5d4e7c0053a4d9f75d0da130b0f52bc664.lean/declarations/finite-iff-of-finite--bc1b459b52dfde3aa9b165fa.md) | 47 | `result-track:bc1b459b52dfde3aa9b165fac857534ef3df696313f9c257ce2ba2195e3b0fb0` |
| 6 | `lemma` | [card](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Cardinality/Variant0b7450142d7e0513dc3292981fd95d5d4e7c0053a4d9f75d0da130b0f52bc664.lean/declarations/card--41570c17a3753e8846222997.md) | 60 | `result-track:41570c17a3753e8846222997f752aac0ae53e178d7c9300ccb157b088251e9d6` |
| 7 | `lemma` | [card'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Cardinality/Variant0b7450142d7e0513dc3292981fd95d5d4e7c0053a4d9f75d0da130b0f52bc664.lean/declarations/card--df99dded1e0dcf268c3a9e2e.md) | 82 | `result-track:df99dded1e0dcf268c3a9e2e384d3b2d52a7be7d86e2a6b0f6724c8527db34e6` |
| 8 | `lemma` | [card''](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Cardinality/Variant0b7450142d7e0513dc3292981fd95d5d4e7c0053a4d9f75d0da130b0f52bc664.lean/declarations/card--abd4f181b90ec131a8f0b782.md) | 93 | `result-track:abd4f181b90ec131a8f0b78274bbdf7365fbbf8dd5993d883022cbebc11ca1db` |
| 9 | `lemma` | [card_of_finrank](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Cardinality/Variant0b7450142d7e0513dc3292981fd95d5d4e7c0053a4d9f75d0da130b0f52bc664.lean/declarations/card-of-finrank--19349908ccfaf30afbd16f0f.md) | 98 | `result-track:19349908ccfaf30afbd16f0fecd475d35e1e6e51aaf6b6bbc86f274bdd77874f` |
| 10 | `lemma` | [card_of_finrank_two](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Cardinality/Variant0b7450142d7e0513dc3292981fd95d5d4e7c0053a4d9f75d0da130b0f52bc664.lean/declarations/card-of-finrank-two--3079f1865e4483166fa6291d.md) | 120 | `result-track:3079f1865e4483166fa6291d650cc5dbb9ac5de4b27a7e2a0afb2dc681f0f78d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
