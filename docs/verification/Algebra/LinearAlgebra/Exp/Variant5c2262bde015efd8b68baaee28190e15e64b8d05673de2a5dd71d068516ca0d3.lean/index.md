# Verification target: GRWTSK.Algebra.LinearAlgebra.Exp.Variant5c2262bde015efd8b68baaee28190e15e64b8d05673de2a5dd71d068516ca0d3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "175ac44866ac33810397d3fe5cbc8f0111e23ebe",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Exp/Variant5c2262bde015efd8b68baaee28190e15e64b8d05673de2a5dd71d068516ca0d3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Exp/Variant5c2262bde015efd8b68baaee28190e15e64b8d05673de2a5dd71d068516ca0d3.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Exp/Variant5c2262bde015efd8b68baaee28190e15e64b8d05673de2a5dd71d068516ca0d3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `175ac44866ac33810397d3fe5cbc8f0111e23ebe`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Exp/Variant5c2262bde015efd8b68baaee28190e15e64b8d05673de2a5dd71d068516ca0d3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Exp/Variant5c2262bde015efd8b68baaee28190e15e64b8d05673de2a5dd71d068516ca0d3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Algebra.Bilinear` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.GroupWithZero.Action` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.BigOperators` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.Rat` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Cast.Field` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.TensorProduct.Tower` — import line 17; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Nilpotent.Basic` — import line 18; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.TensorProduct.Basic` — import line 19; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FieldSimp` — import line 20; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [exp](../../../../../mathematics/Algebra/LinearAlgebra/Exp/Variant5c2262bde015efd8b68baaee28190e15e64b8d05673de2a5dd71d068516ca0d3.lean/declarations/exp--576c541510ca0e7dd43ab6da.md) | 59 | `declaration-track:576c541510ca0e7dd43ab6da844f6780e03ac327ad4d2da8ad27a38ade9dd3f3` |
| 2 | `theorem` | [exp_eq_sum](../../../../../mathematics/Algebra/LinearAlgebra/Exp/Variant5c2262bde015efd8b68baaee28190e15e64b8d05673de2a5dd71d068516ca0d3.lean/declarations/exp-eq-sum--ab471656ad4216a6efb131d1.md) | 62 | `result-track:ab471656ad4216a6efb131d15a449bbf6c7ffc43f172e35ca8bcfe812aec9140` |
| 3 | `theorem` | [exp_smul_eq_sum](../../../../../mathematics/Algebra/LinearAlgebra/Exp/Variant5c2262bde015efd8b68baaee28190e15e64b8d05673de2a5dd71d068516ca0d3.lean/declarations/exp-smul-eq-sum--80796050dfc4ed1536eef6b5.md) | 74 | `result-track:80796050dfc4ed1536eef6b5be17d6f3535dcbac02dfa5c49f5fcba1e8c5a300` |
| 4 | `theorem` | [exp_add_of_commute](../../../../../mathematics/Algebra/LinearAlgebra/Exp/Variant5c2262bde015efd8b68baaee28190e15e64b8d05673de2a5dd71d068516ca0d3.lean/declarations/exp-add-of-commute--da4b94c2d1793b2a977512bb.md) | 85 | `result-track:da4b94c2d1793b2a977512bb0ec1d7bc014ccfa7a39fd752a1849ff7c81bf1f2` |
| 5 | `theorem` | [exp_zero](../../../../../mathematics/Algebra/LinearAlgebra/Exp/Variant5c2262bde015efd8b68baaee28190e15e64b8d05673de2a5dd71d068516ca0d3.lean/declarations/exp-zero--34422ff2e41b0b013e42832f.md) | 177 | `result-track:34422ff2e41b0b013e42832f467f944a279ff9316ed128d66719bcd3e43df6f4` |
| 6 | `theorem` | [exp_mul_exp_neg_self](../../../../../mathematics/Algebra/LinearAlgebra/Exp/Variant5c2262bde015efd8b68baaee28190e15e64b8d05673de2a5dd71d068516ca0d3.lean/declarations/exp-mul-exp-neg-self--e51de9884e14d919733475d2.md) | 181 | `result-track:e51de9884e14d919733475d2abe92fc5cb8ea7a81fbd04cc5919965d9550b216` |
| 7 | `theorem` | [exp_neg_mul_exp_self](../../../../../mathematics/Algebra/LinearAlgebra/Exp/Variant5c2262bde015efd8b68baaee28190e15e64b8d05673de2a5dd71d068516ca0d3.lean/declarations/exp-neg-mul-exp-self--fd33caa94ab36d320f3b6bed.md) | 185 | `result-track:fd33caa94ab36d320f3b6bed74f4f26ff0b5cee7d21b7f3af9def96bb6fb6be2` |
| 8 | `theorem` | [isUnit_exp](../../../../../mathematics/Algebra/LinearAlgebra/Exp/Variant5c2262bde015efd8b68baaee28190e15e64b8d05673de2a5dd71d068516ca0d3.lean/declarations/isunit-exp--3c542f71dcf2e10fbfb11d08.md) | 189 | `result-track:3c542f71dcf2e10fbfb11d0813c5cec91d8e307935104aa18437b71e855008ac` |
| 9 | `theorem` | [map_exp](../../../../../mathematics/Algebra/LinearAlgebra/Exp/Variant5c2262bde015efd8b68baaee28190e15e64b8d05673de2a5dd71d068516ca0d3.lean/declarations/map-exp--ab1c7aa2f1f7ccf0aa6f3879.md) | 197 | `result-track:ab1c7aa2f1f7ccf0aa6f387961da3276491fbf447a97037001c94e862142fb43` |
| 10 | `theorem` | [exp_smul](../../../../../mathematics/Algebra/LinearAlgebra/Exp/Variant5c2262bde015efd8b68baaee28190e15e64b8d05673de2a5dd71d068516ca0d3.lean/declarations/exp-smul--fc6c0edf8cd47241659f1a2d.md) | 204 | `result-track:fc6c0edf8cd47241659f1a2d658abeca4c67e8fdeb489c40e83e1877fb2f38fb` |
| 11 | `theorem` | [commute_exp_left_of_commute](../../../../../mathematics/Algebra/LinearAlgebra/Exp/Variant5c2262bde015efd8b68baaee28190e15e64b8d05673de2a5dd71d068516ca0d3.lean/declarations/commute-exp-left-of-commute--446f61861c9449f042021d97.md) | 218 | `result-track:446f61861c9449f042021d9737209645f94a8bdcfb29f72471aa3a19f8296fea` |
| 12 | `theorem` | [exp_mul_of_derivation](../../../../../mathematics/Algebra/LinearAlgebra/Exp/Variant5c2262bde015efd8b68baaee28190e15e64b8d05673de2a5dd71d068516ca0d3.lean/declarations/exp-mul-of-derivation--0b9dab80f06989ca126300d9.md) | 234 | `result-track:0b9dab80f06989ca126300d9188fbaef397ec6388da4f6ad784c73ffb7b7a05a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
