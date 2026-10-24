# Verification target: GRWTSK.Algebra.UniversalAlgebra.Euclidean.Variantc55e5f165c4141e0348d1a8e6382a69700a8c065bbddb8205bf41ba135c4f5a0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d276e1a95cd9533f63a3fa2349ca770e96aa903b",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Euclidean/Variantc55e5f165c4141e0348d1a8e6382a69700a8c065bbddb8205bf41ba135c4f5a0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Euclidean/Variantc55e5f165c4141e0348d1a8e6382a69700a8c065bbddb8205bf41ba135c4f5a0.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Euclidean/Variantc55e5f165c4141e0348d1a8e6382a69700a8c065bbddb8205bf41ba135c4f5a0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d276e1a95cd9533f63a3fa2349ca770e96aa903b`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Euclidean/Variantc55e5f165c4141e0348d1a8e6382a69700a8c065bbddb8205bf41ba135c4f5a0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Euclidean/Variantc55e5f165c4141e0348d1a8e6382a69700a8c065bbddb8205bf41ba135c4f5a0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.AbsoluteValue.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.EuclideanDomain.Int` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [IsEuclidean](../../../../../mathematics/Algebra/UniversalAlgebra/Euclidean/Variantc55e5f165c4141e0348d1a8e6382a69700a8c065bbddb8205bf41ba135c4f5a0.lean/declarations/iseuclidean--223b146456d754e0c6c909f4.md) | 44 | `declaration-track:223b146456d754e0c6c909f4d289279f142f5941071425e1adeaef0cd75e32b1` |
| 2 | `theorem` | [map_lt_map_iff](../../../../../mathematics/Algebra/UniversalAlgebra/Euclidean/Variantc55e5f165c4141e0348d1a8e6382a69700a8c065bbddb8205bf41ba135c4f5a0.lean/declarations/map-lt-map-iff--ba15b5e3608f332e12ef42f2.md) | 54 | `result-track:ba15b5e3608f332e12ef42f2fa162a3f401360c375b3d13be4a488d80d6fc75c` |
| 3 | `theorem` | [sub_mod_lt](../../../../../mathematics/Algebra/UniversalAlgebra/Euclidean/Variantc55e5f165c4141e0348d1a8e6382a69700a8c065bbddb8205bf41ba135c4f5a0.lean/declarations/sub-mod-lt--f126502448e7662a94d6068a.md) | 59 | `result-track:f126502448e7662a94d6068a9763b25abaf2ddf0ab307ec48059118fa7e8658f` |
| 4 | `theorem` | [abs_isEuclidean](../../../../../mathematics/Algebra/UniversalAlgebra/Euclidean/Variantc55e5f165c4141e0348d1a8e6382a69700a8c065bbddb8205bf41ba135c4f5a0.lean/declarations/abs-iseuclidean--42da950339a10df75388e7c1.md) | 72 | `result-track:42da950339a10df75388e7c10d926c79d4c17d62687b9135878b5e477dc8d415` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
