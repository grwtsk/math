# Verification target: GRWTSK.Analysis.Fourier.FiniteGeodesicConjugacyGate

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ee6ff2f4fb4c85b4e28a91a9dd9a07bef80e7204",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Fourier/FiniteGeodesicConjugacyGate.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FiniteGeodesicConjugacyGate.lean/index.md) · [Full source](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FiniteGeodesicConjugacyGate.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ee6ff2f4fb4c85b4e28a91a9dd9a07bef80e7204`.

Source path: `GRWTSK/Analysis/Fourier/FiniteGeodesicConjugacyGate.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Fourier/FiniteGeodesicConjugacyGate.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.GroupTheory.Words.PrimitiveConjugacy`](../../../../../mathematics/Algebra/GroupTheory/Words/PrimitiveConjugacy.lean/index.md) — import line 10; pinned internal source present.
- [`GRWTSK.Analysis.Fourier.FiniteGeodesicWordCover`](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FiniteGeodesicWordCover.lean/index.md) — import line 11; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ConjugacySoundWordGate](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FiniteGeodesicConjugacyGate.lean/declarations/conjugacysoundwordgate--deafe64327d39668ae1d62ea.md) | 58 | `declaration-track:deafe64327d39668ae1d62ea07bf3a685e31af5bf0cea9d1fd11ee085abf2439` |
| 2 | `def` | [evaluatedCode](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FiniteGeodesicConjugacyGate.lean/declarations/evaluatedcode--f5576ac1d89fab1322d779a2.md) | 73 | `declaration-track:f5576ac1d89fab1322d779a27447070ffe207ca391bf3974fbab4ce6237146e9` |
| 3 | `theorem` | [accepted_code_ne_one](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FiniteGeodesicConjugacyGate.lean/declarations/accepted-code-ne-one--d3703ee0408c718f3e8fbd02.md) | 82 | `result-track:d3703ee0408c718f3e8fbd02301ec8edb5e959b361aeb9022e7586f4c7d9ae6a` |
| 4 | `theorem` | [decode_none_of_empty_letters](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FiniteGeodesicConjugacyGate.lean/declarations/decode-none-of-empty-letters--cd7cd41d37a944da1ab34d7f.md) | 93 | `result-track:cd7cd41d37a944da1ab34d7f4c48edbd6be6d1afc923f38593ce046afe00b94d` |
| 5 | `theorem` | [decode_none_of_repeated_word](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FiniteGeodesicConjugacyGate.lean/declarations/decode-none-of-repeated-word--53c997868ab7a45cc9bf1447.md) | 109 | `result-track:53c997868ab7a45cc9bf144738f099d3f90ca00500742e31281c4078cb35a042` |
| 6 | `theorem` | [decode_cyclicSplit_eq](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FiniteGeodesicConjugacyGate.lean/declarations/decode-cyclicsplit-eq--91ef52033ae1fd944461f52a.md) | 128 | `result-track:91ef52033ae1fd944461f52a9486486eeac4266cd4f0b30093fb989ae07993c7` |
| 7 | `theorem` | [conjugacy_sound_trace_error_le_alias](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FiniteGeodesicConjugacyGate.lean/declarations/conjugacy-sound-trace-error-le-alias--1ffc6da1012f20ff89e9ed92.md) | 153 | `result-track:1ffc6da1012f20ff89e9ed920fba8531be7b33557543ffc163777965dc0b8a8e` |
| 8 | `theorem` | [toy_always_accept_word_gate_not_geometrically_sound](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FiniteGeodesicConjugacyGate.lean/declarations/toy-always-accept-word-gate-not-geometrically-sound--a47ce4dd7af6d7bfc4650605.md) | 172 | `result-track:a47ce4dd7af6d7bfc465060504bbdd9308c5a7d2117c5c74b799b9cc463edf9d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
