# Verification target: GRWTSK.Algebra.LinearAlgebra.ProdL2.Variant0069d0caa1500b1ecaa03cb02fcaa9b35c84c8cc299bb85a69be8b23245dd58f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "be411e9a1ad550635fc62c8e4d696a22a34bb2d2",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/ProdL2/Variant0069d0caa1500b1ecaa03cb02fcaa9b35c84c8cc299bb85a69be8b23245dd58f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/ProdL2/Variant0069d0caa1500b1ecaa03cb02fcaa9b35c84c8cc299bb85a69be8b23245dd58f.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/ProdL2/Variant0069d0caa1500b1ecaa03cb02fcaa9b35c84c8cc299bb85a69be8b23245dd58f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `be411e9a1ad550635fc62c8e4d696a22a34bb2d2`.

Source path: `GRWTSK/Algebra/LinearAlgebra/ProdL2/Variant0069d0caa1500b1ecaa03cb02fcaa9b35c84c8cc299bb85a69be8b23245dd58f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/ProdL2/Variant0069d0caa1500b1ecaa03cb02fcaa9b35c84c8cc299bb85a69be8b23245dd58f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.InnerProductSpace.PiL2` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Lp.ProdLp` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instProdInnerProductSpace](../../../../../mathematics/Algebra/LinearAlgebra/ProdL2/Variant0069d0caa1500b1ecaa03cb02fcaa9b35c84c8cc299bb85a69be8b23245dd58f.lean/declarations/instprodinnerproductspace--0ae1d59327410ae92b049eb4.md) | 36 | `declaration-track:0ae1d59327410ae92b049eb437a69bb8084923a8dd0808caa3165e900d9f332d` |
| 2 | `theorem` | [prod_inner_apply](../../../../../mathematics/Algebra/LinearAlgebra/ProdL2/Variant0069d0caa1500b1ecaa03cb02fcaa9b35c84c8cc299bb85a69be8b23245dd58f.lean/declarations/prod-inner-apply--25af17559611b11fd2d944ca.md) | 53 | `result-track:25af17559611b11fd2d944ca8b2f6482067fafb61aa5719ca7baea0b4ae9c72a` |
| 3 | `def` | [prod](../../../../../mathematics/Algebra/LinearAlgebra/ProdL2/Variant0069d0caa1500b1ecaa03cb02fcaa9b35c84c8cc299bb85a69be8b23245dd58f.lean/declarations/prod--1f987b90b230f00ebc908703.md) | 64 | `declaration-track:1f987b90b230f00ebc908703dd4e49bbb75cf29b9129e64c9b258fcd51317768` |
| 4 | `theorem` | [prod_apply](../../../../../mathematics/Algebra/LinearAlgebra/ProdL2/Variant0069d0caa1500b1ecaa03cb02fcaa9b35c84c8cc299bb85a69be8b23245dd58f.lean/declarations/prod-apply--3513d916e8da3c002802085b.md) | 80 | `result-track:3513d916e8da3c002802085b8cfc1e543106c2c559ff98788b720637f30e2ea7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
