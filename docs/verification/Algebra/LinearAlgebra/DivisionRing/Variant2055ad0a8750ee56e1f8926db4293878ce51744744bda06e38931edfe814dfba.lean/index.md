# Verification target: GRWTSK.Algebra.LinearAlgebra.DivisionRing.Variant2055ad0a8750ee56e1f8926db4293878ce51744744bda06e38931edfe814dfba

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "eea23cfb229210f8924ca961048ebf8678fb6869",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/DivisionRing/Variant2055ad0a8750ee56e1f8926db4293878ce51744744bda06e38931edfe814dfba.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/DivisionRing/Variant2055ad0a8750ee56e1f8926db4293878ce51744744bda06e38931edfe814dfba.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/DivisionRing/Variant2055ad0a8750ee56e1f8926db4293878ce51744744bda06e38931edfe814dfba.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `eea23cfb229210f8924ca961048ebf8678fb6869`.

Source path: `GRWTSK/Algebra/LinearAlgebra/DivisionRing/Variant2055ad0a8750ee56e1f8926db4293878ce51744744bda06e38931edfe814dfba.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/DivisionRing/Variant2055ad0a8750ee56e1f8926db4293878ce51744744bda06e38931edfe814dfba.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Basis.VectorSpace` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Dimension.Finite` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Dimension.RankNullity` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Basis.finite_ofVectorSpaceIndex_of_rank_lt_aleph0](../../../../../mathematics/Algebra/LinearAlgebra/DivisionRing/Variant2055ad0a8750ee56e1f8926db4293878ce51744744bda06e38931edfe814dfba.lean/declarations/basis-finite-ofvectorspaceindex-of-rank-lt-aleph0--9fb8ab4da96bd6ca29bc995a.md) | 57 | `result-track:9fb8ab4da96bd6ca29bc995a23909ca0c86a5555b8e351595f5c10d6d8a0f519` |
| 2 | `theorem` | [rank_quotient_add_rank_of_divisionRing](../../../../../mathematics/Algebra/LinearAlgebra/DivisionRing/Variant2055ad0a8750ee56e1f8926db4293878ce51744744bda06e38931edfe814dfba.lean/declarations/rank-quotient-add-rank-of-divisionring--1921f38e80b44d4a2e0e9400.md) | 62 | `result-track:1921f38e80b44d4a2e0e94003350769adf35c180e38e92aa9e6ef3f686f857a6` |
| 3 | `instance` | [DivisionRing.hasRankNullity](../../../../../mathematics/Algebra/LinearAlgebra/DivisionRing/Variant2055ad0a8750ee56e1f8926db4293878ce51744744bda06e38931edfe814dfba.lean/declarations/divisionring-hasranknullity--3a33637fe65d324a14ca0e04.md) | 68 | `declaration-track:3a33637fe65d324a14ca0e043e7196bba1d338d645c087ac4baf9e639b6db526` |
| 4 | `theorem` | [rank_add_rank_split](../../../../../mathematics/Algebra/LinearAlgebra/DivisionRing/Variant2055ad0a8750ee56e1f8926db4293878ce51744744bda06e38931edfe814dfba.lean/declarations/rank-add-rank-split--013896d77af1cfa304ff06e1.md) | 84 | `result-track:013896d77af1cfa304ff06e12da1a89d12a202328cc6e57ad194e011343dec3c` |
| 5 | `theorem` | [linearIndependent_of_top_le_span_of_card_eq_finrank](../../../../../mathematics/Algebra/LinearAlgebra/DivisionRing/Variant2055ad0a8750ee56e1f8926db4293878ce51744744bda06e38931edfe814dfba.lean/declarations/linearindependent-of-top-le-span-of-card-eq-finrank--6f955826c78d360542bc98b3.md) | 123 | `result-track:6f955826c78d360542bc98b3df2add4aab2986b98e0ad4a38a6c5f5c9dfeb741` |
| 6 | `theorem` | [linearIndependent_iff_card_eq_finrank_span](../../../../../mathematics/Algebra/LinearAlgebra/DivisionRing/Variant2055ad0a8750ee56e1f8926db4293878ce51744744bda06e38931edfe814dfba.lean/declarations/linearindependent-iff-card-eq-finrank-span--a976c1c78fbb70e37d469964.md) | 170 | `result-track:a976c1c78fbb70e37d469964fc0cc191a35d4fa0d5f5a8da1b052134932fa47b` |
| 7 | `theorem` | [linearIndependent_iff_card_le_finrank_span](../../../../../mathematics/Algebra/LinearAlgebra/DivisionRing/Variant2055ad0a8750ee56e1f8926db4293878ce51744744bda06e38931edfe814dfba.lean/declarations/linearindependent-iff-card-le-finrank-span--2196255497e33c151f30f905.md) | 192 | `result-track:2196255497e33c151f30f90527132321cb5be7459ecee290989eea1defc1c53f` |
| 8 | `def` | [basisOfTopLeSpanOfCardEqFinrank](../../../../../mathematics/Algebra/LinearAlgebra/DivisionRing/Variant2055ad0a8750ee56e1f8926db4293878ce51744744bda06e38931edfe814dfba.lean/declarations/basisoftoplespanofcardeqfinrank--b1c6302b6207070982f2fae9.md) | 197 | `declaration-track:b1c6302b6207070982f2fae9b372e23b404b324b974ec81cf34a9d489bf87ff0` |
| 9 | `theorem` | [coe_basisOfTopLeSpanOfCardEqFinrank](../../../../../mathematics/Algebra/LinearAlgebra/DivisionRing/Variant2055ad0a8750ee56e1f8926db4293878ce51744744bda06e38931edfe814dfba.lean/declarations/coe-basisoftoplespanofcardeqfinrank--1caf0231bc5a31a4ca08426f.md) | 202 | `result-track:1caf0231bc5a31a4ca08426f46f2bda3e853584bf448fd3633d1137668aa182f` |
| 10 | `def` | [finsetBasisOfTopLeSpanOfCardEqFinrank](../../../../../mathematics/Algebra/LinearAlgebra/DivisionRing/Variant2055ad0a8750ee56e1f8926db4293878ce51744744bda06e38931edfe814dfba.lean/declarations/finsetbasisoftoplespanofcardeqfinrank--f85ebaa35951a6b1d7f54e44.md) | 209 | `declaration-track:f85ebaa35951a6b1d7f54e44fb321347768f4f00f2f177b483e37b511c417196` |
| 11 | `def` | [setBasisOfTopLeSpanOfCardEqFinrank](../../../../../mathematics/Algebra/LinearAlgebra/DivisionRing/Variant2055ad0a8750ee56e1f8926db4293878ce51744744bda06e38931edfe814dfba.lean/declarations/setbasisoftoplespanofcardeqfinrank--422dc0724290a467a6f00b72.md) | 217 | `declaration-track:422dc0724290a467a6f00b7204aa01da0f96a8611b8220b4b5d7b3e25d1f3901` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
