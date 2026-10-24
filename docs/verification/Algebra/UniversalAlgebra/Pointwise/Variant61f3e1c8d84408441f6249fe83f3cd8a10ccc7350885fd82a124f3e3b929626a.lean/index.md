# Verification target: GRWTSK.Algebra.UniversalAlgebra.Pointwise.Variant61f3e1c8d84408441f6249fe83f3cd8a10ccc7350885fd82a124f3e3b929626a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f8fa44d48d2986f5f2f6c93c620d85967703c490",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Pointwise/Variant61f3e1c8d84408441f6249fe83f3cd8a10ccc7350885fd82a124f3e3b929626a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Pointwise/Variant61f3e1c8d84408441f6249fe83f3cd8a10ccc7350885fd82a124f3e3b929626a.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Pointwise/Variant61f3e1c8d84408441f6249fe83f3cd8a10ccc7350885fd82a124f3e3b929626a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f8fa44d48d2986f5f2f6c93c620d85967703c490`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Pointwise/Variant61f3e1c8d84408441f6249fe83f3cd8a10ccc7350885fd82a124f3e3b929626a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Pointwise/Variant61f3e1c8d84408441f6249fe83f3cd8a10ccc7350885fd82a124f3e3b929626a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Field.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Pointwise.Set.Scalar` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.Action.Defs` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.GroupWithZero.Unbundled.OrderIso` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Ring.Defs` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Interval.Set.OrderIso` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [smul_Ioo](../../../../../mathematics/Algebra/UniversalAlgebra/Pointwise/Variant61f3e1c8d84408441f6249fe83f3cd8a10ccc7350885fd82a124f3e3b929626a.lean/declarations/smul-ioo--74e044df61486b4abd778dff.md) | 27 | `result-track:74e044df61486b4abd778dff7a233686246d0823cd8ee5ea51e819584574465d` |
| 2 | `theorem` | [smul_Icc](../../../../../mathematics/Algebra/UniversalAlgebra/Pointwise/Variant61f3e1c8d84408441f6249fe83f3cd8a10ccc7350885fd82a124f3e3b929626a.lean/declarations/smul-icc--c430dab7a6bf87e7cacfeb38.md) | 28 | `result-track:c430dab7a6bf87e7cacfeb38c6f3283d081cf20e34df93653c80d16d8ad56a2d` |
| 3 | `theorem` | [smul_Ico](../../../../../mathematics/Algebra/UniversalAlgebra/Pointwise/Variant61f3e1c8d84408441f6249fe83f3cd8a10ccc7350885fd82a124f3e3b929626a.lean/declarations/smul-ico--f9389b2faecb5b400d0ce51e.md) | 29 | `result-track:f9389b2faecb5b400d0ce51ee2fa30950d3d66448c1fcb53632c2a9255b5a429` |
| 4 | `theorem` | [smul_Ioc](../../../../../mathematics/Algebra/UniversalAlgebra/Pointwise/Variant61f3e1c8d84408441f6249fe83f3cd8a10ccc7350885fd82a124f3e3b929626a.lean/declarations/smul-ioc--2e30f613821d55886940cad1.md) | 30 | `result-track:2e30f613821d55886940cad1df510b023893cf0a4292d3eb5744f930c1f85b8a` |
| 5 | `theorem` | [smul_Ioi](../../../../../mathematics/Algebra/UniversalAlgebra/Pointwise/Variant61f3e1c8d84408441f6249fe83f3cd8a10ccc7350885fd82a124f3e3b929626a.lean/declarations/smul-ioi--8d07a85d693dc615f99d64c3.md) | 31 | `result-track:8d07a85d693dc615f99d64c310ccf62d3813423558868364c6c6498f35bf5c3b` |
| 6 | `theorem` | [smul_Iio](../../../../../mathematics/Algebra/UniversalAlgebra/Pointwise/Variant61f3e1c8d84408441f6249fe83f3cd8a10ccc7350885fd82a124f3e3b929626a.lean/declarations/smul-iio--2bf57348c089e3510ff75e3b.md) | 32 | `result-track:2bf57348c089e3510ff75e3b4b2f4bfd9a9a326e0465935570e37ce87aa2ebab` |
| 7 | `theorem` | [smul_Ici](../../../../../mathematics/Algebra/UniversalAlgebra/Pointwise/Variant61f3e1c8d84408441f6249fe83f3cd8a10ccc7350885fd82a124f3e3b929626a.lean/declarations/smul-ici--60939a495b30b2e6c3dc8267.md) | 33 | `result-track:60939a495b30b2e6c3dc826744581e1ce8993eeaf1d7cc23843f475e62c640e5` |
| 8 | `theorem` | [smul_Iic](../../../../../mathematics/Algebra/UniversalAlgebra/Pointwise/Variant61f3e1c8d84408441f6249fe83f3cd8a10ccc7350885fd82a124f3e3b929626a.lean/declarations/smul-iic--026562e7955e887c40c6203a.md) | 34 | `result-track:026562e7955e887c40c6203aa47ca473b70c00cc2205b4492043446207baacc0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
