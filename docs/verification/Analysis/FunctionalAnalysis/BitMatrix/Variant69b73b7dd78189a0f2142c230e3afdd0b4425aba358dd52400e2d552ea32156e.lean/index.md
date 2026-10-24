# Verification target: GRWTSK.Analysis.FunctionalAnalysis.BitMatrix.Variant69b73b7dd78189a0f2142c230e3afdd0b4425aba358dd52400e2d552ea32156e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cbd5ea4cb17c5179eb2b5816a17f825346c09407",
  "lexical_observation_count": 0,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/BitMatrix/Variant69b73b7dd78189a0f2142c230e3afdd0b4425aba358dd52400e2d552ea32156e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/BitMatrix/Variant69b73b7dd78189a0f2142c230e3afdd0b4425aba358dd52400e2d552ea32156e.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/BitMatrix/Variant69b73b7dd78189a0f2142c230e3afdd0b4425aba358dd52400e2d552ea32156e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cbd5ea4cb17c5179eb2b5816a17f825346c09407`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/BitMatrix/Variant69b73b7dd78189a0f2142c230e3afdd0b4425aba358dd52400e2d552ea32156e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/BitMatrix/Variant69b73b7dd78189a0f2142c230e3afdd0b4425aba358dd52400e2d552ea32156e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `BitMatrix.Core.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `BitMatrix.Algebra` — import line 7; external provider; requires a separately pinned dependency.
- `BitMatrix.Algebra.InvolutionProjection` — import line 8; external provider; requires a separately pinned dependency.
- `BitMatrix.Algebra.Symmetry` — import line 9; external provider; requires a separately pinned dependency.
- `BitMatrix.Adapters.CausalQuantizer` — import line 10; external provider; requires a separately pinned dependency.
- `BitMatrix.Adapters.DAFRefinement` — import line 11; external provider; requires a separately pinned dependency.
- `BitMatrix.Adapters.Fabric` — import line 12; external provider; requires a separately pinned dependency.
- `BitMatrix.Carrier` — import line 13; external provider; requires a separately pinned dependency.
- `BitMatrix.Codec` — import line 14; external provider; requires a separately pinned dependency.
- `BitMatrix.Configuration` — import line 15; external provider; requires a separately pinned dependency.
- `BitMatrix.Dynamics` — import line 16; external provider; requires a separately pinned dependency.
- `BitMatrix.Dynamics.Avalanche` — import line 17; external provider; requires a separately pinned dependency.
- `BitMatrix.Dynamics.DynamicalZeta` — import line 18; external provider; requires a separately pinned dependency.
- `BitMatrix.FiniteField.Galois` — import line 19; external provider; requires a separately pinned dependency.
- `BitMatrix.FiniteField.GaloisRound` — import line 20; external provider; requires a separately pinned dependency.
- `BitMatrix.FiniteField.Regular` — import line 21; external provider; requires a separately pinned dependency.
- `BitMatrix.FiniteField.Round` — import line 22; external provider; requires a separately pinned dependency.
- `BitMatrix.Formal` — import line 23; external provider; requires a separately pinned dependency.
- `BitMatrix.Geometry.GlobalProjection` — import line 24; external provider; requires a separately pinned dependency.
- `BitMatrix.Geometry.Euclidean` — import line 25; external provider; requires a separately pinned dependency.
- `BitMatrix.Geometry.CarrierGrid` — import line 26; external provider; requires a separately pinned dependency.
- `BitMatrix.Geometry.Stroke` — import line 27; external provider; requires a separately pinned dependency.
- `BitMatrix.Network.IntegralPermutationLift` — import line 28; external provider; requires a separately pinned dependency.
- `BitMatrix.Network.Permutation` — import line 29; external provider; requires a separately pinned dependency.
- `BitMatrix.Quantization.Core` — import line 30; external provider; requires a separately pinned dependency.
- `BitMatrix.Reduction.SAT` — import line 31; external provider; requires a separately pinned dependency.
- `BitMatrix.Runtime.MatrixReducerIR` — import line 32; external provider; requires a separately pinned dependency.
- `BitMatrix.Runtime.Correspondence` — import line 33; external provider; requires a separately pinned dependency.
- `BitMatrix.Runtime.FixedProgramInterpreter` — import line 34; external provider; requires a separately pinned dependency.
- `BitMatrix.Runtime.MatrixRing` — import line 35; external provider; requires a separately pinned dependency.
- `BitMatrix.Runtime.Numeric` — import line 36; external provider; requires a separately pinned dependency.
- `BitMatrix.Runtime.PacketRing` — import line 37; external provider; requires a separately pinned dependency.
- `BitMatrix.Runtime.RingBuffer` — import line 38; external provider; requires a separately pinned dependency.
- `BitMatrix.Runtime.Semantics` — import line 39; external provider; requires a separately pinned dependency.
- `BitMatrix.Runtime.Spectral` — import line 40; external provider; requires a separately pinned dependency.
- `BitMatrix.Runtime` — import line 41; external provider; requires a separately pinned dependency.
- `BitMatrix.Rhetorical` — import line 42; external provider; requires a separately pinned dependency.
- `BitMatrix.Surgery.Submatrix` — import line 43; external provider; requires a separately pinned dependency.
- `BitMatrix.Topology` — import line 44; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
