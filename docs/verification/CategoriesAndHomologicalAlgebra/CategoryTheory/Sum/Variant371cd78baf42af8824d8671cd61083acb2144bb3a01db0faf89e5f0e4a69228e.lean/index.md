# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Sum.Variant371cd78baf42af8824d8671cd61083acb2144bb3a01db0faf89e5f0e4a69228e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c8255f80ac603d6faa92de5f5867f70fae7deaa3",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Sum/Variant371cd78baf42af8824d8671cd61083acb2144bb3a01db0faf89e5f0e4a69228e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sum/Variant371cd78baf42af8824d8671cd61083acb2144bb3a01db0faf89e5f0e4a69228e.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sum/Variant371cd78baf42af8824d8671cd61083acb2144bb3a01db0faf89e5f0e4a69228e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c8255f80ac603d6faa92de5f5867f70fae7deaa3`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Sum/Variant371cd78baf42af8824d8671cd61083acb2144bb3a01db0faf89e5f0e4a69228e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Sum/Variant371cd78baf42af8824d8671cd61083acb2144bb3a01db0faf89e5f0e4a69228e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Join.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sums.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [fromSum](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sum/Variant371cd78baf42af8824d8671cd61083acb2144bb3a01db0faf89e5f0e4a69228e.lean/declarations/fromsum--1f7403ed3e71a99feb066776.md) | 33 | `declaration-track:1f7403ed3e71a99feb06677685abefa3671963fe78e324d732f7d1c329a4a022` |
| 2 | `lemma` | [fromSum_map_inl](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sum/Variant371cd78baf42af8824d8671cd61083acb2144bb3a01db0faf89e5f0e4a69228e.lean/declarations/fromsum-map-inl--cee9f7ae5d8df0a16d9d51bf.md) | 37 | `result-track:cee9f7ae5d8df0a16d9d51bf874bad5867e47cb231eb104566d57417ab192e62` |
| 3 | `lemma` | [fromSum_map_inr](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sum/Variant371cd78baf42af8824d8671cd61083acb2144bb3a01db0faf89e5f0e4a69228e.lean/declarations/fromsum-map-inr--ca40fa64c4e35001adc374f7.md) | 43 | `result-track:ca40fa64c4e35001adc374f7c7e7c6c43bedaf890b8e30a82f86b86dd66de7d8` |
| 4 | `def` | [inlCompFromSum](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sum/Variant371cd78baf42af8824d8671cd61083acb2144bb3a01db0faf89e5f0e4a69228e.lean/declarations/inlcompfromsum--a110727f56f29388e203b2e9.md) | 49 | `declaration-track:a110727f56f29388e203b2e9629630b80414a80c86b542a764d6f6e79ad3577a` |
| 5 | `def` | [inrCompFromSum](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sum/Variant371cd78baf42af8824d8671cd61083acb2144bb3a01db0faf89e5f0e4a69228e.lean/declarations/inrcompfromsum--ef7202972298454815f59cc2.md) | 53 | `declaration-track:ef7202972298454815f59cc23d1a6a066647bee6c3f8526edd7a564700afab76` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sum/Variant371cd78baf42af8824d8671cd61083acb2144bb3a01db0faf89e5f0e4a69228e.lean/declarations/instance--5a5ef1ed8cbb8ad7a2aa74bc.md) | 55 | `declaration-track:5a5ef1ed8cbb8ad7a2aa74bc0ab3d671defe05ed52e84fe605aa2396e4a848fa` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sum/Variant371cd78baf42af8824d8671cd61083acb2144bb3a01db0faf89e5f0e4a69228e.lean/declarations/instance--772099799d463628e18ee195.md) | 60 | `declaration-track:772099799d463628e18ee1958325c29f162aa8fadd64598446b5b1556ba0ddff` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
