# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Basic.Variantca7f889e505cdc9e47667b2b0647c7822861beaa89e630714342532db1f9217a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "855c9658bbd86d200ef5eba76cc11bca9a41c8fb",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variantca7f889e505cdc9e47667b2b0647c7822861beaa89e630714342532db1f9217a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variantca7f889e505cdc9e47667b2b0647c7822861beaa89e630714342532db1f9217a.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variantca7f889e505cdc9e47667b2b0647c7822861beaa89e630714342532db1f9217a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `855c9658bbd86d200ef5eba76cc11bca9a41c8fb`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variantca7f889e505cdc9e47667b2b0647c7822861beaa89e630714342532db1f9217a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variantca7f889e505cdc9e47667b2b0647c7822861beaa89e630714342532db1f9217a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Hom.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Hom.Equiv.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Sub.Defs` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [AddHom.le_map_tsub](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variantca7f889e505cdc9e47667b2b0647c7822861beaa89e630714342532db1f9217a.lean/declarations/addhom-le-map-tsub--544d2d475765fef245c01699.md) | 25 | `result-track:544d2d475765fef245c016998a60f38403580d06344e4de8695ab5f06f746375` |
| 2 | `theorem` | [le_mul_tsub](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variantca7f889e505cdc9e47667b2b0647c7822861beaa89e630714342532db1f9217a.lean/declarations/le-mul-tsub--4f4cf39d901a0cca098d87b4.md) | 31 | `result-track:4f4cf39d901a0cca098d87b49aa5bf19affd566c2fd055948ef4ad68cbabd652` |
| 3 | `theorem` | [le_tsub_mul](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variantca7f889e505cdc9e47667b2b0647c7822861beaa89e630714342532db1f9217a.lean/declarations/le-tsub-mul--634a823825d4caeb84a268cc.md) | 36 | `result-track:634a823825d4caeb84a268cc34469282e0c8b3d31ed9c42df2b0971762d3dc75` |
| 4 | `theorem` | [OrderIso.map_tsub](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variantca7f889e505cdc9e47667b2b0647c7822861beaa89e630714342532db1f9217a.lean/declarations/orderiso-map-tsub--e98f77a7c6c20715dbcdf3b0.md) | 45 | `result-track:e98f77a7c6c20715dbcdf3b0acf400c051a31a4ca482312a686537215d67efc1` |
| 5 | `theorem` | [AddMonoidHom.le_map_tsub](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variantca7f889e505cdc9e47667b2b0647c7822861beaa89e630714342532db1f9217a.lean/declarations/addmonoidhom-le-map-tsub--35dc288e8dd6e9d7d10173d7.md) | 63 | `result-track:35dc288e8dd6e9d7d10173d7d732c738b84ee74fb2d29d3799cdfb97b7b69b3d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
