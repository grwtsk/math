# Verification target: GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.ReferenceFourier.Variante6e774bc2110250b52b97e9e98f53791d94e7f8dc788427b87e402d17af786db

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5d790c74a11994576f02371559c7235c9e63d955",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/ReferenceFourier/Variante6e774bc2110250b52b97e9e98f53791d94e7f8dc788427b87e402d17af786db.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ReferenceFourier/Variante6e774bc2110250b52b97e9e98f53791d94e7f8dc788427b87e402d17af786db.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ReferenceFourier/Variante6e774bc2110250b52b97e9e98f53791d94e7f8dc788427b87e402d17af786db.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5d790c74a11994576f02371559c7235c9e63d955`.

Source path: `GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/ReferenceFourier/Variante6e774bc2110250b52b97e9e98f53791d94e7f8dc788427b87e402d17af786db.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/HarmonicAnalysis/FourierAnalysis/ReferenceFourier/Variante6e774bc2110250b52b97e9e98f53791d94e7f8dc788427b87e402d17af786db.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.HalfLineExtension` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Fourier.FourierTransform` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Haar.NormedSpace` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [reference_zeroExtension_ae](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ReferenceFourier/Variante6e774bc2110250b52b97e9e98f53791d94e7f8dc788427b87e402d17af786db.lean/declarations/reference-zeroextension-ae--730e5540d02990145e793ec4.md) | 14 | `result-track:730e5540d02990145e793ec48eb04ed611242273f9564ad96c0a73ff224c811a` |
| 2 | `theorem` | [reference_zeroExtension_integrable](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ReferenceFourier/Variante6e774bc2110250b52b97e9e98f53791d94e7f8dc788427b87e402d17af786db.lean/declarations/reference-zeroextension-integrable--cae64e0a41ca759af8b6e776.md) | 27 | `result-track:cae64e0a41ca759af8b6e776130003b22a34ec99aadb216c04223bdec1b08068` |
| 3 | `theorem` | [reference_zeroExtension_fourier](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ReferenceFourier/Variante6e774bc2110250b52b97e9e98f53791d94e7f8dc788427b87e402d17af786db.lean/declarations/reference-zeroextension-fourier--198b7ffdd52ef15593f74a50.md) | 35 | `result-track:198b7ffdd52ef15593f74a503dae8d2775ed584744fbfc503fdc2e73a67806ec` |
| 4 | `theorem` | [reference_zeroExtension_fourier_norm_sq](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ReferenceFourier/Variante6e774bc2110250b52b97e9e98f53791d94e7f8dc788427b87e402d17af786db.lean/declarations/reference-zeroextension-fourier-norm-sq--6afe4273f753728e68d4e23a.md) | 60 | `result-track:6afe4273f753728e68d4e23ab92cbc4647d622bc9004f6f6cafc440fb0c7aab5` |
| 5 | `theorem` | [reference_zeroExtension_fourier_square_integral](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ReferenceFourier/Variante6e774bc2110250b52b97e9e98f53791d94e7f8dc788427b87e402d17af786db.lean/declarations/reference-zeroextension-fourier-square-integral--497e6c2d02ac059ffd0c698e.md) | 67 | `result-track:497e6c2d02ac059ffd0c698e9d025d8d53b3823533763bab486b681e8bddcbdc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
