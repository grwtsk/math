# Verification target: GRWTSK.Algebra.LinearAlgebra.ChainMap.Variant245d4b815780b236f3fe32f0ef5a17f87f6a47adbbb006e951c211d6b8d3f583

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a5a695d561cef585ab569539584488b04c2e4190",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/ChainMap/Variant245d4b815780b236f3fe32f0ef5a17f87f6a47adbbb006e951c211d6b8d3f583.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/ChainMap/Variant245d4b815780b236f3fe32f0ef5a17f87f6a47adbbb006e951c211d6b8d3f583.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/ChainMap/Variant245d4b815780b236f3fe32f0ef5a17f87f6a47adbbb006e951c211d6b8d3f583.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a5a695d561cef585ab569539584488b04c2e4190`.

Source path: `GRWTSK/Algebra/LinearAlgebra/ChainMap/Variant245d4b815780b236f3fe32f0ef5a17f87f6a47adbbb006e951c211d6b8d3f583.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/ChainMap/Variant245d4b815780b236f3fe32f0ef5a17f87f6a47adbbb006e951c211d6b8d3f583.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.Fold.Core` — import line 6; external provider; requires a separately pinned dependency.
- `DAF.Hilbert.HodgeDirac` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [FoldUnitary](../../../../../mathematics/Algebra/LinearAlgebra/ChainMap/Variant245d4b815780b236f3fe32f0ef5a17f87f6a47adbbb006e951c211d6b8d3f583.lean/declarations/foldunitary--c1cd8b4d332d8e256c2e121e.md) | 31 | `declaration-track:c1cd8b4d332d8e256c2e121e75a26d10ec6c6fbe01de3c49977c1e2a6d88ab6f` |
| 2 | `theorem` | [intertwinesCodifferential](../../../../../mathematics/Algebra/LinearAlgebra/ChainMap/Variant245d4b815780b236f3fe32f0ef5a17f87f6a47adbbb006e951c211d6b8d3f583.lean/declarations/intertwinescodifferential--e7848a6242c741bc5d7800a2.md) | 48 | `result-track:e7848a6242c741bc5d7800a2920609b842805dc0a709d705e50cf5bf048dfc0b` |
| 3 | `theorem` | [fold_intertwines_hodgeDirac](../../../../../mathematics/Algebra/LinearAlgebra/ChainMap/Variant245d4b815780b236f3fe32f0ef5a17f87f6a47adbbb006e951c211d6b8d3f583.lean/declarations/fold-intertwines-hodgedirac--036026164beec9b94618fa3a.md) | 73 | `result-track:036026164beec9b94618fa3a4f08de1ee26850b0918e9002642c12c14cdcc3ac` |
| 4 | `theorem` | [fold_intertwines_laplacian](../../../../../mathematics/Algebra/LinearAlgebra/ChainMap/Variant245d4b815780b236f3fe32f0ef5a17f87f6a47adbbb006e951c211d6b8d3f583.lean/declarations/fold-intertwines-laplacian--c47f22d69623e9649dc84afb.md) | 79 | `result-track:c47f22d69623e9649dc84afb31cb642f78957afa8eda4e6050778a90e6661efa` |
| 5 | `theorem` | [isUnitary](../../../../../mathematics/Algebra/LinearAlgebra/ChainMap/Variant245d4b815780b236f3fe32f0ef5a17f87f6a47adbbb006e951c211d6b8d3f583.lean/declarations/isunitary--28f4bbc841026ba7d3dabe9e.md) | 98 | `result-track:28f4bbc841026ba7d3dabe9e6cea6832f45f083713c055336a3594eff1e2071b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
