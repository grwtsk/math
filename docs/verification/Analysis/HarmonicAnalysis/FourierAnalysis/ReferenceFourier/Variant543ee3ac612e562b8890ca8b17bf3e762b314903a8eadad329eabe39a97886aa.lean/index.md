# Verification target: GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.ReferenceFourier.Variant543ee3ac612e562b8890ca8b17bf3e762b314903a8eadad329eabe39a97886aa

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "985a2a7b047446bf437a67c188c101571cfd699e",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/ReferenceFourier/Variant543ee3ac612e562b8890ca8b17bf3e762b314903a8eadad329eabe39a97886aa.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ReferenceFourier/Variant543ee3ac612e562b8890ca8b17bf3e762b314903a8eadad329eabe39a97886aa.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ReferenceFourier/Variant543ee3ac612e562b8890ca8b17bf3e762b314903a8eadad329eabe39a97886aa.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `985a2a7b047446bf437a67c188c101571cfd699e`.

Source path: `GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/ReferenceFourier/Variant543ee3ac612e562b8890ca8b17bf3e762b314903a8eadad329eabe39a97886aa.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/HarmonicAnalysis/FourierAnalysis/ReferenceFourier/Variant543ee3ac612e562b8890ca8b17bf3e762b314903a8eadad329eabe39a97886aa.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.HalfLineExtension` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Fourier.FourierTransform` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Haar.NormedSpace` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [reference_zeroExtension_ae](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ReferenceFourier/Variant543ee3ac612e562b8890ca8b17bf3e762b314903a8eadad329eabe39a97886aa.lean/declarations/reference-zeroextension-ae--9e731fc2182396708a5b71e7.md) | 22 | `result-track:9e731fc2182396708a5b71e7ab8139edda9c55289d1a6f970322130b26cb76fc` |
| 2 | `theorem` | [reference_zeroExtension_integrable](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ReferenceFourier/Variant543ee3ac612e562b8890ca8b17bf3e762b314903a8eadad329eabe39a97886aa.lean/declarations/reference-zeroextension-integrable--c420dab379748bcdeea56a12.md) | 35 | `result-track:c420dab379748bcdeea56a12f165e57b4544a47176e436c7f29bb5fdc76cd000` |
| 3 | `theorem` | [reference_zeroExtension_fourier](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ReferenceFourier/Variant543ee3ac612e562b8890ca8b17bf3e762b314903a8eadad329eabe39a97886aa.lean/declarations/reference-zeroextension-fourier--54e207df62f3810055dc70cc.md) | 43 | `result-track:54e207df62f3810055dc70cc5051811030c04d708f0600c6ac2ed34244bff3e1` |
| 4 | `theorem` | [reference_zeroExtension_fourier_norm_sq](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ReferenceFourier/Variant543ee3ac612e562b8890ca8b17bf3e762b314903a8eadad329eabe39a97886aa.lean/declarations/reference-zeroextension-fourier-norm-sq--86e2333a933f24d386164672.md) | 68 | `result-track:86e2333a933f24d3861646723fb6ac6343a22f0c3fd51c861b9c3c27f7786e0c` |
| 5 | `theorem` | [reference_zeroExtension_fourier_square_integral](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ReferenceFourier/Variant543ee3ac612e562b8890ca8b17bf3e762b314903a8eadad329eabe39a97886aa.lean/declarations/reference-zeroextension-fourier-square-integral--8face228fed46239cdccfd16.md) | 75 | `result-track:8face228fed46239cdccfd162e1e9bd9d8587086202949611301d25286ba80da` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
