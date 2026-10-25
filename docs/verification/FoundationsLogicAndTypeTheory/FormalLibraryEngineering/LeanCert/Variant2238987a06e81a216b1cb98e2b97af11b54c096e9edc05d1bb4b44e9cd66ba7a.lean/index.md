# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LeanCert.Variant2238987a06e81a216b1cb98e2b97af11b54c096e9edc05d1bb4b44e9cd66ba7a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0852111c029e660c237e710c6131acc6a6df249b",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeanCert/Variant2238987a06e81a216b1cb98e2b97af11b54c096e9edc05d1bb4b44e9cd66ba7a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeanCert/Variant2238987a06e81a216b1cb98e2b97af11b54c096e9edc05d1bb4b44e9cd66ba7a.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeanCert/Variant2238987a06e81a216b1cb98e2b97af11b54c096e9edc05d1bb4b44e9cd66ba7a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0852111c029e660c237e710c6131acc6a6df249b`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeanCert/Variant2238987a06e81a216b1cb98e2b97af11b54c096e9edc05d1bb4b44e9cd66ba7a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeanCert/Variant2238987a06e81a216b1cb98e2b97af11b54c096e9edc05d1bb4b44e9cd66ba7a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `LeanCert.Core.Expr` — import line 13; external provider; requires a separately pinned dependency.
- `LeanCert.Core.Interval` — import line 14; external provider; requires a separately pinned dependency.
- `LeanCert.Core.IntervalReal` — import line 15; external provider; requires a separately pinned dependency.
- `LeanCert.Core.IntervalRealEndpoints` — import line 16; external provider; requires a separately pinned dependency.
- `LeanCert.Core.Taylor` — import line 17; external provider; requires a separately pinned dependency.
- `LeanCert.Core.DerivativeIntervals` — import line 18; external provider; requires a separately pinned dependency.
- `LeanCert.Core.Dyadic` — import line 20; external provider; requires a separately pinned dependency.
- `LeanCert.Core.IntervalDyadic` — import line 21; external provider; requires a separately pinned dependency.
- `LeanCert.Engine.IntervalEval` — import line 24; external provider; requires a separately pinned dependency.
- `LeanCert.Engine.IntervalEvalReal` — import line 25; external provider; requires a separately pinned dependency.
- `LeanCert.Engine.AD` — import line 26; external provider; requires a separately pinned dependency.
- `LeanCert.Engine.Integrate` — import line 27; external provider; requires a separately pinned dependency.
- `LeanCert.Engine.Optimize` — import line 28; external provider; requires a separately pinned dependency.
- `LeanCert.Engine.RootFinding.Main` — import line 29; external provider; requires a separately pinned dependency.
- `LeanCert.Engine.TaylorModel` — import line 30; external provider; requires a separately pinned dependency.
- `LeanCert.Engine.IntervalEvalRefined` — import line 31; external provider; requires a separately pinned dependency.
- `LeanCert.Validity.Bounds` — import line 32; external provider; requires a separately pinned dependency.
- `LeanCert.Engine.IntervalEvalDyadic` — import line 34; external provider; requires a separately pinned dependency.
- `LeanCert.Engine.CompPoly` — import line 36; external provider; requires a separately pinned dependency.
- `LeanCert.Engine.ReflectiveSum` — import line 38; external provider; requires a separately pinned dependency.
- `LeanCert.Engine.Optimization.Box` — import line 41; external provider; requires a separately pinned dependency.
- `LeanCert.Engine.Optimization.Gradient` — import line 42; external provider; requires a separately pinned dependency.
- `LeanCert.Engine.Optimization.Global` — import line 43; external provider; requires a separately pinned dependency.
- `LeanCert.Engine.Optimization.Guided` — import line 44; external provider; requires a separately pinned dependency.
- `LeanCert.Engine.Affine.Basic` — import line 47; external provider; requires a separately pinned dependency.
- `LeanCert.Engine.Affine.Nonlinear` — import line 48; external provider; requires a separately pinned dependency.
- `LeanCert.Engine.Affine.Transcendental` — import line 49; external provider; requires a separately pinned dependency.
- `LeanCert.Engine.Affine.Vector` — import line 50; external provider; requires a separately pinned dependency.
- `LeanCert.Engine.Extended` — import line 53; external provider; requires a separately pinned dependency.
- `LeanCert.Engine.SearchAPI` — import line 56; external provider; requires a separately pinned dependency.
- `LeanCert.Meta.ProveContinuous` — import line 59; external provider; requires a separately pinned dependency.
- `LeanCert.Meta.ProveSupported` — import line 60; external provider; requires a separately pinned dependency.
- `LeanCert.Meta.ToExpr` — import line 61; external provider; requires a separately pinned dependency.
- `LeanCert.Tactic.Interval` — import line 64; external provider; requires a separately pinned dependency.
- `LeanCert.Tactic.Discovery` — import line 65; external provider; requires a separately pinned dependency.
- `LeanCert.Tactic.DyadicAuto` — import line 67; external provider; requires a separately pinned dependency.
- `LeanCert.Tactic.Refute` — import line 69; external provider; requires a separately pinned dependency.
- `LeanCert.Tactic.Bound` — import line 71; external provider; requires a separately pinned dependency.
- `LeanCert.Tactic.VecSimp` — import line 74; external provider; requires a separately pinned dependency.
- `LeanCert.Tactic.FinSumExpand` — import line 76; external provider; requires a separately pinned dependency.
- `LeanCert.Discovery` — import line 79; external provider; requires a separately pinned dependency.
- `LeanCert.ML.Network` — import line 82; external provider; requires a separately pinned dependency.
- `LeanCert.ML.IntervalVector` — import line 83; external provider; requires a separately pinned dependency.
- `LeanCert.ML.Distillation` — import line 84; external provider; requires a separately pinned dependency.
- `LeanCert.ML.Symbolic.ReLU` — import line 85; external provider; requires a separately pinned dependency.
- `LeanCert.ML.Symbolic.Sigmoid` — import line 86; external provider; requires a separately pinned dependency.
- `LeanCert.ML.Transformer` — import line 87; external provider; requires a separately pinned dependency.
- `LeanCert.ML.Softmax` — import line 88; external provider; requires a separately pinned dependency.
- `LeanCert.ML.Attention` — import line 89; external provider; requires a separately pinned dependency.
- `LeanCert.ML.LayerNormAffine` — import line 90; external provider; requires a separately pinned dependency.
- `LeanCert.ML.Optimized` — import line 91; external provider; requires a separately pinned dependency.
- `LeanCert.ML.Optimized.IntervalArray` — import line 92; external provider; requires a separately pinned dependency.
- `LeanCert.ML.Optimized.Matrix` — import line 93; external provider; requires a separately pinned dependency.
- `LeanCert.ML.Optimized.QuantizedLayer` — import line 94; external provider; requires a separately pinned dependency.
- `LeanCert.ML.Optimized.MatrixNetwork` — import line 95; external provider; requires a separately pinned dependency.
- `LeanCert.Contrib.Sinc` — import line 101; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [eval₀](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeanCert/Variant2238987a06e81a216b1cb98e2b97af11b54c096e9edc05d1bb4b44e9cd66ba7a.lean/declarations/eval--d252147eaa361df30a86554f.md) | 274 | `declaration-track:d252147eaa361df30a86554f2d5acea1eb4b7040c124adb93a0277710de368cd` |
| 2 | `def` | [eval₀_rat](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeanCert/Variant2238987a06e81a216b1cb98e2b97af11b54c096e9edc05d1bb4b44e9cd66ba7a.lean/declarations/eval-rat--bd676fc706187cea2bd242bf.md) | 278 | `declaration-track:bd676fc706187cea2bd242bfa5f6869d98bbd3ec3a0aaff7cdef21e3d907e0f6` |
| 3 | `def` | [unitInterval](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeanCert/Variant2238987a06e81a216b1cb98e2b97af11b54c096e9edc05d1bb4b44e9cd66ba7a.lean/declarations/unitinterval--c49aafeb7ccee0d2707fb3a3.md) | 302 | `declaration-track:c49aafeb7ccee0d2707fb3a3ccd1bc40c41b9fd9d4d9143467e2b1fdf3c06d20` |
| 4 | `def` | [symInterval](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeanCert/Variant2238987a06e81a216b1cb98e2b97af11b54c096e9edc05d1bb4b44e9cd66ba7a.lean/declarations/syminterval--744cfff4b8d9c82f27a486d6.md) | 305 | `declaration-track:744cfff4b8d9c82f27a486d6b4c0c64eab9798403b112a430e6349e0fedca2aa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
