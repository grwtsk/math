# Verification target: GRWTSK.Algebra.CommutativeAlgebra.CardPowDegree.Variant220ec6d821c23cd7177bc765c13f7df0df56526668d8077166016c0bb1cbdc24

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "48fbcbef1949ef02c403a440164ca9250ebc1d6b",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/CardPowDegree/Variant220ec6d821c23cd7177bc765c13f7df0df56526668d8077166016c0bb1cbdc24.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/CardPowDegree/Variant220ec6d821c23cd7177bc765c13f7df0df56526668d8077166016c0bb1cbdc24.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/CardPowDegree/Variant220ec6d821c23cd7177bc765c13f7df0df56526668d8077166016c0bb1cbdc24.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `48fbcbef1949ef02c403a440164ca9250ebc1d6b`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/CardPowDegree/Variant220ec6d821c23cd7177bc765c13f7df0df56526668d8077166016c0bb1cbdc24.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/CardPowDegree/Variant220ec6d821c23cd7177bc765c13f7df0df56526668d8077166016c0bb1cbdc24.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.EuclideanAbsoluteValue` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Polynomial.FieldDivision` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [cardPowDegree](../../../../../mathematics/Algebra/CommutativeAlgebra/CardPowDegree/Variant220ec6d821c23cd7177bc765c13f7df0df56526668d8077166016c0bb1cbdc24.lean/declarations/cardpowdegree--bada1902b02696cdaf9dbd44.md) | 49 | `declaration-track:bada1902b02696cdaf9dbd446fda7a6902e061a39d6aa63fb75f91fc80bcc0e5` |
| 2 | `theorem` | [cardPowDegree_apply](../../../../../mathematics/Algebra/CommutativeAlgebra/CardPowDegree/Variant220ec6d821c23cd7177bc765c13f7df0df56526668d8077166016c0bb1cbdc24.lean/declarations/cardpowdegree-apply--ed78efe57e56d0877b6f5742.md) | 84 | `result-track:ed78efe57e56d0877b6f574267661b17f91d593824b3aaaf9122e06da9d209c1` |
| 3 | `theorem` | [cardPowDegree_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/CardPowDegree/Variant220ec6d821c23cd7177bc765c13f7df0df56526668d8077166016c0bb1cbdc24.lean/declarations/cardpowdegree-zero--18a4934205743a51985fb211.md) | 90 | `result-track:18a4934205743a51985fb211bc139654b5ab8c486df20e01aa38beba702f4cc8` |
| 4 | `theorem` | [cardPowDegree_nonzero](../../../../../mathematics/Algebra/CommutativeAlgebra/CardPowDegree/Variant220ec6d821c23cd7177bc765c13f7df0df56526668d8077166016c0bb1cbdc24.lean/declarations/cardpowdegree-nonzero--1215779d187d7ec83b48930c.md) | 94 | `result-track:1215779d187d7ec83b48930c874ecf853ccdd2a172e42055d91fd7395ddf24c8` |
| 5 | `theorem` | [cardPowDegree_isEuclidean](../../../../../mathematics/Algebra/CommutativeAlgebra/CardPowDegree/Variant220ec6d821c23cd7177bc765c13f7df0df56526668d8077166016c0bb1cbdc24.lean/declarations/cardpowdegree-iseuclidean--715b699beca818ff5d38608b.md) | 99 | `result-track:715b699beca818ff5d38608b392e1f80e97dd7e217cf5321a9e361eb5f621314` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
