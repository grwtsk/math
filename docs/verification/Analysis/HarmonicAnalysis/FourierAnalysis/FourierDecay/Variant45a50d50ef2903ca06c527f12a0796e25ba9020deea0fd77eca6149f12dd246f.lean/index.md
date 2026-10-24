# Verification target: GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.FourierDecay.Variant45a50d50ef2903ca06c527f12a0796e25ba9020deea0fd77eca6149f12dd246f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4bd8db10c37aef0f3dc352c12088cc6d846a2c17",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/FourierDecay/Variant45a50d50ef2903ca06c527f12a0796e25ba9020deea0fd77eca6149f12dd246f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FourierDecay/Variant45a50d50ef2903ca06c527f12a0796e25ba9020deea0fd77eca6149f12dd246f.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FourierDecay/Variant45a50d50ef2903ca06c527f12a0796e25ba9020deea0fd77eca6149f12dd246f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4bd8db10c37aef0f3dc352c12088cc6d846a2c17`.

Source path: `GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/FourierDecay/Variant45a50d50ef2903ca06c527f12a0796e25ba9020deea0fd77eca6149f12dd246f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/HarmonicAnalysis/FourierAnalysis/FourierDecay/Variant45a50d50ef2903ca06c527f12a0796e25ba9020deea0fd77eca6149f12dd246f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Integral.Bochner` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Fourier.FourierTransform` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.ExpLog` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Fourier.PaleyWiener` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [φt](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FourierDecay/Variant45a50d50ef2903ca06c527f12a0796e25ba9020deea0fd77eca6149f12dd246f.lean/declarations/t--3bdafa8b9b7352f70efb604a.md) | 27 | `declaration-track:3bdafa8b9b7352f70efb604ac07b5715adbeebd3316b1f67fea81038a6cc1c36` |
| 2 | `def` | [fourierInv](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FourierDecay/Variant45a50d50ef2903ca06c527f12a0796e25ba9020deea0fd77eca6149f12dd246f.lean/declarations/fourierinv--1a14d8b5df0e0b6cc1d27394.md) | 37 | `declaration-track:1a14d8b5df0e0b6cc1d27394f0781071e406b07966f4b93010c572978c63c638` |
| 3 | `def` | [kt](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FourierDecay/Variant45a50d50ef2903ca06c527f12a0796e25ba9020deea0fd77eca6149f12dd246f.lean/declarations/kt--2501b6c4b99b30c4ea3944fd.md) | 47 | `declaration-track:2501b6c4b99b30c4ea3944fd57008aec8c3d738ded986164c97847ce4ff6ad9a` |
| 4 | `lemma` | [decay_kt](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FourierDecay/Variant45a50d50ef2903ca06c527f12a0796e25ba9020deea0fd77eca6149f12dd246f.lean/declarations/decay-kt--bdb393b261068845fd5a63dd.md) | 54 | `result-track:bdb393b261068845fd5a63ddf370547b86bc83515d39e85f19b14226bfba2e41` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
