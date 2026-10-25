# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LeanCert.Variantdff61cec956cefb3abf14eb2045b4058ebc3cb92487229a1c5ab5e05be25e586

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4a6b2da17f3333d2b9d4bbccde83d840d8e51309",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeanCert/Variantdff61cec956cefb3abf14eb2045b4058ebc3cb92487229a1c5ab5e05be25e586.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeanCert/Variantdff61cec956cefb3abf14eb2045b4058ebc3cb92487229a1c5ab5e05be25e586.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeanCert/Variantdff61cec956cefb3abf14eb2045b4058ebc3cb92487229a1c5ab5e05be25e586.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4a6b2da17f3333d2b9d4bbccde83d840d8e51309`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeanCert/Variantdff61cec956cefb3abf14eb2045b4058ebc3cb92487229a1c5ab5e05be25e586.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeanCert/Variantdff61cec956cefb3abf14eb2045b4058ebc3cb92487229a1c5ab5e05be25e586.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `LeanCert.Core.Expr` — import line 8; external provider; requires a separately pinned dependency.
- `LeanCert.Core.Interval` — import line 9; external provider; requires a separately pinned dependency.
- `LeanCert.Core.IntervalReal` — import line 10; external provider; requires a separately pinned dependency.
- `LeanCert.Core.IntervalRealEndpoints` — import line 11; external provider; requires a separately pinned dependency.
- `LeanCert.Core.Taylor` — import line 12; external provider; requires a separately pinned dependency.
- `LeanCert.Core.DerivativeIntervals` — import line 13; external provider; requires a separately pinned dependency.
- `LeanCert.Core.Dyadic` — import line 15; external provider; requires a separately pinned dependency.
- `LeanCert.Core.IntervalDyadic` — import line 16; external provider; requires a separately pinned dependency.
- `LeanCert.Engine.IntervalEval` — import line 19; external provider; requires a separately pinned dependency.
- `LeanCert.Engine.IntervalEvalReal` — import line 20; external provider; requires a separately pinned dependency.
- `LeanCert.Engine.AD` — import line 21; external provider; requires a separately pinned dependency.
- `LeanCert.Engine.Integrate` — import line 22; external provider; requires a separately pinned dependency.
- `LeanCert.Engine.Optimize` — import line 23; external provider; requires a separately pinned dependency.
- `LeanCert.Engine.RootFinding.Main` — import line 24; external provider; requires a separately pinned dependency.
- `LeanCert.Engine.TaylorModel` — import line 25; external provider; requires a separately pinned dependency.
- `LeanCert.Engine.IntervalEvalRefined` — import line 26; external provider; requires a separately pinned dependency.
- `LeanCert.Validity.Bounds` — import line 27; external provider; requires a separately pinned dependency.
- `LeanCert.Engine.IntervalEvalDyadic` — import line 29; external provider; requires a separately pinned dependency.
- `LeanCert.Engine.CompPoly` — import line 31; external provider; requires a separately pinned dependency.
- `LeanCert.Engine.ReflectiveSum` — import line 33; external provider; requires a separately pinned dependency.
- `LeanCert.Engine.Optimization.Box` — import line 36; external provider; requires a separately pinned dependency.
- `LeanCert.Engine.Optimization.Gradient` — import line 37; external provider; requires a separately pinned dependency.
- `LeanCert.Engine.Optimization.Global` — import line 38; external provider; requires a separately pinned dependency.
- `LeanCert.Engine.Optimization.Guided` — import line 39; external provider; requires a separately pinned dependency.
- `LeanCert.Engine.Affine.Basic` — import line 42; external provider; requires a separately pinned dependency.
- `LeanCert.Engine.Affine.Nonlinear` — import line 43; external provider; requires a separately pinned dependency.
- `LeanCert.Engine.Affine.Transcendental` — import line 44; external provider; requires a separately pinned dependency.
- `LeanCert.Engine.Affine.Vector` — import line 45; external provider; requires a separately pinned dependency.
- `LeanCert.Engine.Extended` — import line 48; external provider; requires a separately pinned dependency.
- `LeanCert.Engine.SearchAPI` — import line 51; external provider; requires a separately pinned dependency.
- `LeanCert.Meta.ProveContinuous` — import line 54; external provider; requires a separately pinned dependency.
- `LeanCert.Meta.ProveSupported` — import line 55; external provider; requires a separately pinned dependency.
- `LeanCert.Meta.ToExpr` — import line 56; external provider; requires a separately pinned dependency.
- `LeanCert.Tactic.Interval` — import line 59; external provider; requires a separately pinned dependency.
- `LeanCert.Tactic.Discovery` — import line 60; external provider; requires a separately pinned dependency.
- `LeanCert.Tactic.DyadicAuto` — import line 62; external provider; requires a separately pinned dependency.
- `LeanCert.Tactic.Refute` — import line 64; external provider; requires a separately pinned dependency.
- `LeanCert.Tactic.Bound` — import line 66; external provider; requires a separately pinned dependency.
- `LeanCert.Tactic.VecSimp` — import line 69; external provider; requires a separately pinned dependency.
- `LeanCert.Tactic.FinSumExpand` — import line 71; external provider; requires a separately pinned dependency.
- `LeanCert.Discovery` — import line 74; external provider; requires a separately pinned dependency.
- `LeanCert.ML.Network` — import line 77; external provider; requires a separately pinned dependency.
- `LeanCert.ML.IntervalVector` — import line 78; external provider; requires a separately pinned dependency.
- `LeanCert.ML.Distillation` — import line 79; external provider; requires a separately pinned dependency.
- `LeanCert.ML.Symbolic.ReLU` — import line 80; external provider; requires a separately pinned dependency.
- `LeanCert.ML.Symbolic.Sigmoid` — import line 81; external provider; requires a separately pinned dependency.
- `LeanCert.ML.Transformer` — import line 82; external provider; requires a separately pinned dependency.
- `LeanCert.ML.Softmax` — import line 83; external provider; requires a separately pinned dependency.
- `LeanCert.ML.Attention` — import line 84; external provider; requires a separately pinned dependency.
- `LeanCert.ML.LayerNormAffine` — import line 85; external provider; requires a separately pinned dependency.
- `LeanCert.ML.Optimized` — import line 86; external provider; requires a separately pinned dependency.
- `LeanCert.ML.Optimized.IntervalArray` — import line 87; external provider; requires a separately pinned dependency.
- `LeanCert.ML.Optimized.Matrix` — import line 88; external provider; requires a separately pinned dependency.
- `LeanCert.ML.Optimized.QuantizedLayer` — import line 89; external provider; requires a separately pinned dependency.
- `LeanCert.ML.Optimized.MatrixNetwork` — import line 90; external provider; requires a separately pinned dependency.
- `LeanCert.Contrib.Sinc` — import line 96; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [eval₀](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeanCert/Variantdff61cec956cefb3abf14eb2045b4058ebc3cb92487229a1c5ab5e05be25e586.lean/declarations/eval--ca4413a1c994f388cf6e1b1f.md) | 266 | `declaration-track:ca4413a1c994f388cf6e1b1ff3f18b3123f269e8f12f3598da4050831e5781ac` |
| 2 | `def` | [eval₀_rat](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeanCert/Variantdff61cec956cefb3abf14eb2045b4058ebc3cb92487229a1c5ab5e05be25e586.lean/declarations/eval-rat--b8f7efdae9641d609261950c.md) | 270 | `declaration-track:b8f7efdae9641d609261950c0b481f0f4782ad44665f9dc265974c9aeaa96837` |
| 3 | `def` | [unitInterval](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeanCert/Variantdff61cec956cefb3abf14eb2045b4058ebc3cb92487229a1c5ab5e05be25e586.lean/declarations/unitinterval--74294a7e143ae83d55092303.md) | 294 | `declaration-track:74294a7e143ae83d550923039bcef02d52bc3f2720e251e02b7cb914fae5ab7e` |
| 4 | `def` | [symInterval](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeanCert/Variantdff61cec956cefb3abf14eb2045b4058ebc3cb92487229a1c5ab5e05be25e586.lean/declarations/syminterval--e979ccd04efeadf913bda955.md) | 297 | `declaration-track:e979ccd04efeadf913bda95544b95c9412f6d63a4656704694e50c3c4584a8ea` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
