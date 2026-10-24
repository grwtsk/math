# Verification target: GRWTSK.Algebra.LinearAlgebra.Symmetric.Variantc711aea863abf6de3aac9adc11da41b0435e657a5b11a9120ee078dee705a3ec

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "42370456d206042b89f838af7ee4e12e761dbb28",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Symmetric/Variantc711aea863abf6de3aac9adc11da41b0435e657a5b11a9120ee078dee705a3ec.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variantc711aea863abf6de3aac9adc11da41b0435e657a5b11a9120ee078dee705a3ec.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variantc711aea863abf6de3aac9adc11da41b0435e657a5b11a9120ee078dee705a3ec.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `42370456d206042b89f838af7ee4e12e761dbb28`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Symmetric/Variantc711aea863abf6de3aac9adc11da41b0435e657a5b11a9120ee078dee705a3ec.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Symmetric/Variantc711aea863abf6de3aac9adc11da41b0435e657a5b11a9120ee078dee705a3ec.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Monoidal.Braided.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.ModuleCat.Monoidal.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [braiding](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variantc711aea863abf6de3aac9adc11da41b0435e657a5b11a9120ee078dee705a3ec.lean/declarations/braiding--5338067060bd255e635250b1.md) | 24 | `declaration-track:5338067060bd255e635250b1ed04395af5fec7adf24c19fb054d42f86cc81b61` |
| 2 | `theorem` | [braiding_naturality](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variantc711aea863abf6de3aac9adc11da41b0435e657a5b11a9120ee078dee705a3ec.lean/declarations/braiding-naturality--1093f51ee4389dd8a50f6d4b.md) | 30 | `result-track:1093f51ee4389dd8a50f6d4b73f7550e71234b5ff8ee0738de3c2842d87ccda2` |
| 3 | `theorem` | [braiding_naturality_left](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variantc711aea863abf6de3aac9adc11da41b0435e657a5b11a9120ee078dee705a3ec.lean/declarations/braiding-naturality-left--3eb61f6d616cc3cdb3c41904.md) | 38 | `result-track:3eb61f6d616cc3cdb3c4190462684b4b5a44b91f6a8ceeec62ce9fb163f7b420` |
| 4 | `theorem` | [braiding_naturality_right](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variantc711aea863abf6de3aac9adc11da41b0435e657a5b11a9120ee078dee705a3ec.lean/declarations/braiding-naturality-right--c3b742e649c530fae874f274.md) | 44 | `result-track:c3b742e649c530fae874f274173223d05611f415b48522c4cb34aa474ac53d1f` |
| 5 | `theorem` | [hexagon_forward](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variantc711aea863abf6de3aac9adc11da41b0435e657a5b11a9120ee078dee705a3ec.lean/declarations/hexagon-forward--e18901ee91ad0f5ff3646d5b.md) | 50 | `result-track:e18901ee91ad0f5ff3646d5b96663e060ebde0189510194d1c099d5c533822d0` |
| 6 | `theorem` | [hexagon_reverse](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variantc711aea863abf6de3aac9adc11da41b0435e657a5b11a9120ee078dee705a3ec.lean/declarations/hexagon-reverse--9a5208730b168f6efd5c3f1f.md) | 59 | `result-track:9a5208730b168f6efd5c3f1feb9c62ce310696340953b394f4d6ab491343f80c` |
| 7 | `instance` | [symmetricCategory](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variantc711aea863abf6de3aac9adc11da41b0435e657a5b11a9120ee078dee705a3ec.lean/declarations/symmetriccategory--b87f4d73b00c16f286299c67.md) | 71 | `declaration-track:b87f4d73b00c16f286299c67d10997b85e83d2dcd75d5ce562f5bd44d37a1b60` |
| 8 | `theorem` | [braiding_hom_apply](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variantc711aea863abf6de3aac9adc11da41b0435e657a5b11a9120ee078dee705a3ec.lean/declarations/braiding-hom-apply--20e9385dd3eee22175ddf3d4.md) | 85 | `result-track:20e9385dd3eee22175ddf3d436e4bfa331ee684041fbfdca889f592733fe6596` |
| 9 | `theorem` | [braiding_inv_apply](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variantc711aea863abf6de3aac9adc11da41b0435e657a5b11a9120ee078dee705a3ec.lean/declarations/braiding-inv-apply--ce5e524f3689972e65d4da11.md) | 90 | `result-track:ce5e524f3689972e65d4da11057b15b8bb2e3c8bfbc27d6a1fd50c6d3dd09c84` |
| 10 | `theorem` | [tensorμ_eq_tensorTensorTensorComm](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variantc711aea863abf6de3aac9adc11da41b0435e657a5b11a9120ee078dee705a3ec.lean/declarations/tensor-eq-tensortensortensorcomm--dded5728f504d5ae923ecb6f.md) | 94 | `result-track:dded5728f504d5ae923ecb6f057782e81ad717323f5d28768d5f7ce5458862be` |
| 11 | `theorem` | [tensorμ_apply](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variantc711aea863abf6de3aac9adc11da41b0435e657a5b11a9120ee078dee705a3ec.lean/declarations/tensor-apply--e834f391aebfb50474f3e45b.md) | 100 | `result-track:e834f391aebfb50474f3e45bf9fb2cc02d637696409933c8af610458329165be` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
