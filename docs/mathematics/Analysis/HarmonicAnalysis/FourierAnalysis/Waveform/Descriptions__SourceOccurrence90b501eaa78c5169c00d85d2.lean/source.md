# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.ModelTheory.ModelTheoreticMethods.QuantifierElimination.EliminationData.Sampling.Descriptions

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `54b541f7021e6b159b711bfdd50f4ae9ccf76f5c` · SHA-256 `d020aa1e4e686086eea4d6ba0c6aa321d9ff807cb621dd19abf25c674d1ed575`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors; OpenAI Codex formalization assistance.
Mathlib imports retain upstream authorship and Apache-2.0 licensing.
Classical constructions and conditional adapters; no originality claim. -/
import Mathlib.Analysis.Calculus.ContDiff.Deriv
import Mathlib.Analysis.Calculus.MeanValue
import Mathlib.Analysis.Calculus.SmoothSeries
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Deriv
import Mathlib.Analysis.SpecificLimits.Normed
import Mathlib.LinearAlgebra.Matrix.Trace
import Mathlib.LinearAlgebra.Matrix.Notation
import Mathlib.Tactic.NormNum
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.FunProp
import Mathlib.Analysis.Fourier.LpSpace

/-! Exact waveform roles. Mathematical proof is never an operational credential.
This module proves local algebra/analysis and conditional returns, not P04.
Angular-frequency Parseval needs a separately checked convention adapter. -/
set_option autoImplicit false
noncomputable section
namespace GRWTSK.Analysis.Waveform
open scoped BigOperators FourierTransform
open MeasureTheory

inductive Role where
  | arithmetic | procedural | potential
  deriving DecidableEq, Repr

/-- Finite descriptions name symbolic objects; they do not serialize arbitrary real functions. -/
structure SourceDescription where
  sourceId : String
  revision : String
  formula : String
  role : Role
  channels : ℕ
  attribution : String
  invalidationKey : String

/-- Observation metadata is distinct from a reconstruction theorem. -/
structure SamplingDescription where
  rate : ℚ
  origin : ℚ
  clockError : ℚ
  units : String
  calibration : String
  quantization : String
  antiAlias : String
  window : String
  synchronization : String
  missingSamplePolicy : String
  normalization : String
  reconstruction : String
  reconstructionError : ℚ
  sourceDigest : String


end GRWTSK.Analysis.Waveform
```
