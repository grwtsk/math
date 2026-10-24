# Verification target: GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.FourierDecay.Varianta908e753f651655cd3b1a653c02ba1fd5182681fffbdf3a1213c05855af80e94

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dc357a9c2df97c154ecf24cab3166bf6d79e1e26",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/FourierDecay/Varianta908e753f651655cd3b1a653c02ba1fd5182681fffbdf3a1213c05855af80e94.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FourierDecay/Varianta908e753f651655cd3b1a653c02ba1fd5182681fffbdf3a1213c05855af80e94.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FourierDecay/Varianta908e753f651655cd3b1a653c02ba1fd5182681fffbdf3a1213c05855af80e94.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dc357a9c2df97c154ecf24cab3166bf6d79e1e26`.

Source path: `GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/FourierDecay/Varianta908e753f651655cd3b1a653c02ba1fd5182681fffbdf3a1213c05855af80e94.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/HarmonicAnalysis/FourierAnalysis/FourierDecay/Varianta908e753f651655cd3b1a653c02ba1fd5182681fffbdf3a1213c05855af80e94.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Integral.Bochner` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Fourier.FourierTransform` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.ExpLog` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Fourier.PaleyWiener` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [φt](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FourierDecay/Varianta908e753f651655cd3b1a653c02ba1fd5182681fffbdf3a1213c05855af80e94.lean/declarations/t--ff14135cebe3981358a401fd.md) | 19 | `declaration-track:ff14135cebe3981358a401fdfb7d8fe3aa5993a4bf885a3148521e13cd59dd92` |
| 2 | `def` | [fourierInv](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FourierDecay/Varianta908e753f651655cd3b1a653c02ba1fd5182681fffbdf3a1213c05855af80e94.lean/declarations/fourierinv--a4690a7965102511dca294cc.md) | 29 | `declaration-track:a4690a7965102511dca294cc8b4b69cb0d9537d2d35dcd575defda9db88dcb33` |
| 3 | `def` | [kt](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FourierDecay/Varianta908e753f651655cd3b1a653c02ba1fd5182681fffbdf3a1213c05855af80e94.lean/declarations/kt--85c97a63de66ad81e5b6e57c.md) | 39 | `declaration-track:85c97a63de66ad81e5b6e57caa22e2adb7c0cc283affa1e965f3a15f820d097b` |
| 4 | `lemma` | [decay_kt](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FourierDecay/Varianta908e753f651655cd3b1a653c02ba1fd5182681fffbdf3a1213c05855af80e94.lean/declarations/decay-kt--41909e5af163d70bf554791b.md) | 46 | `result-track:41909e5af163d70bf554791be9139ac5bf880bc3fea380eac753eae67f52a3b1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
