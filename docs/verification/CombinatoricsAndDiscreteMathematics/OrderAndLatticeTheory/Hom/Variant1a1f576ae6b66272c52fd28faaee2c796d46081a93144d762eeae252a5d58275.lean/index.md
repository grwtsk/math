# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Hom.Variant1a1f576ae6b66272c52fd28faaee2c796d46081a93144d762eeae252a5d58275

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ef8a96e76bb6c69a3e2a642cbfa17ee85ada8893",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Hom/Variant1a1f576ae6b66272c52fd28faaee2c796d46081a93144d762eeae252a5d58275.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Hom/Variant1a1f576ae6b66272c52fd28faaee2c796d46081a93144d762eeae252a5d58275.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Hom/Variant1a1f576ae6b66272c52fd28faaee2c796d46081a93144d762eeae252a5d58275.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ef8a96e76bb6c69a3e2a642cbfa17ee85ada8893`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Hom/Variant1a1f576ae6b66272c52fd28faaee2c796d46081a93144d762eeae252a5d58275.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Hom/Variant1a1f576ae6b66272c52fd28faaee2c796d46081a93144d762eeae252a5d58275.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Equiv.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Sub.Defs` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Hom.Basic` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [AddHom.le_map_tsub](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Hom/Variant1a1f576ae6b66272c52fd28faaee2c796d46081a93144d762eeae252a5d58275.lean/declarations/addhom-le-map-tsub--4ddfeaef52a433829db7537c.md) | 29 | `result-track:4ddfeaef52a433829db7537c7f405cc5040c3c43d678415f9fe2693c22cd4568` |
| 2 | `theorem` | [le_mul_tsub](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Hom/Variant1a1f576ae6b66272c52fd28faaee2c796d46081a93144d762eeae252a5d58275.lean/declarations/le-mul-tsub--e148d0e0049953b6001cac7a.md) | 34 | `result-track:e148d0e0049953b6001cac7af57cbf2502d558ec6f0b2cde04f4f5d46b0c4961` |
| 3 | `theorem` | [le_tsub_mul](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Hom/Variant1a1f576ae6b66272c52fd28faaee2c796d46081a93144d762eeae252a5d58275.lean/declarations/le-tsub-mul--cf9a3f2c8d48f94e854a3fb5.md) | 38 | `result-track:cf9a3f2c8d48f94e854a3fb57670a1b9baf52223fe9b81297e9bc0379ebad3cc` |
| 4 | `theorem` | [OrderIso.map_tsub](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Hom/Variant1a1f576ae6b66272c52fd28faaee2c796d46081a93144d762eeae252a5d58275.lean/declarations/orderiso-map-tsub--c02e54e1d8111e2cee402122.md) | 46 | `result-track:c02e54e1d8111e2cee40212282664de416d2ea7ed1fcf07a00fb81f5ce2044ed` |
| 5 | `theorem` | [AddMonoidHom.le_map_tsub](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Hom/Variant1a1f576ae6b66272c52fd28faaee2c796d46081a93144d762eeae252a5d58275.lean/declarations/addmonoidhom-le-map-tsub--1f308e22e7368926be26053e.md) | 62 | `result-track:1f308e22e7368926be26053e34bf6e40cd175b0fcf5c9f6d5311345a0ed2a1c2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
