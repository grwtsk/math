# Verification target: GRWTSK.Analysis.Fourier.FiniteGeodesicHomologyPrimitive

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3d0742bcc0ccd1fbaca9043b3a7c379e7a57f6dd",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Fourier/FiniteGeodesicHomologyPrimitive.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FiniteGeodesicHomologyPrimitive.lean/index.md) · [Full source](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FiniteGeodesicHomologyPrimitive.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3d0742bcc0ccd1fbaca9043b3a7c379e7a57f6dd`.

Source path: `GRWTSK/Analysis/Fourier/FiniteGeodesicHomologyPrimitive.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Fourier/FiniteGeodesicHomologyPrimitive.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.GroupTheory.Words.IntegralHomologyPrimitive`](../../../../../mathematics/Algebra/GroupTheory/Words/IntegralHomologyPrimitive.lean/index.md) — import line 10; pinned internal source present.
- [`GRWTSK.Analysis.Fourier.FiniteGeodesicConjugacyGate`](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FiniteGeodesicConjugacyGate.lean/index.md) — import line 11; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [signedHomologyPairing](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FiniteGeodesicHomologyPrimitive.lean/declarations/signedhomologypairing--270bc5bd217cdc1a96573f33.md) | 56 | `declaration-track:270bc5bd217cdc1a96573f33ff8dc9dbd01130056aac14bfae0a0e609e50d95d` |
| 2 | `theorem` | [zero_homology_pairing_zero](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FiniteGeodesicHomologyPrimitive.lean/declarations/zero-homology-pairing-zero--e5767e6d47591fab804ba513.md) | 63 | `result-track:e5767e6d47591fab804ba513843ee77698fe10dd729e977395e9b0bd976c64a1` |
| 3 | `structure` | [SignedHomologyWordGate](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FiniteGeodesicHomologyPrimitive.lean/declarations/signedhomologywordgate--f6c31ce6779228fdf9e49a6d.md) | 78 | `declaration-track:f6c31ce6779228fdf9e49a6d99c479197bde787a66bcf735ed0f859f165b5279` |
| 4 | `theorem` | [accepted_isPrimitive_of_signedHomology](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FiniteGeodesicHomologyPrimitive.lean/declarations/accepted-isprimitive-of-signedhomology--68310c0a9f35cba2bfad7d28.md) | 101 | `result-track:68310c0a9f35cba2bfad7d2875f5ad2dc583ec1b7c535f6a583bba5c2224b49e` |
| 5 | `def` | [toConjugacySoundWordGate](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FiniteGeodesicHomologyPrimitive.lean/declarations/toconjugacysoundwordgate--a43b46400fc38e3efd502e6b.md) | 116 | `declaration-track:a43b46400fc38e3efd502e6be1a34325f24f67163eb5fdc323213bc958ea7ac6` |
| 6 | `theorem` | [empty_word_rejected_of_signedHomology](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FiniteGeodesicHomologyPrimitive.lean/declarations/empty-word-rejected-of-signedhomology--98376025843df876e8c352e4.md) | 131 | `result-track:98376025843df876e8c352e4b558fa199d2890130ca20b7cde1e48265fdd5b05` |
| 7 | `theorem` | [repeated_word_rejected_of_signedHomology](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FiniteGeodesicHomologyPrimitive.lean/declarations/repeated-word-rejected-of-signedhomology--ef2ffc9bdbdaaaa4c76d9563.md) | 143 | `result-track:ef2ffc9bdbdaaaa4c76d9563d02604a0ded6eece1810166bcda92ab0c7c02984` |
| 8 | `theorem` | [cyclic_split_decoder_agreement_of_signedHomology](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FiniteGeodesicHomologyPrimitive.lean/declarations/cyclic-split-decoder-agreement-of-signedhomology--d94f6c0944ffa4f3df76567e.md) | 155 | `result-track:d94f6c0944ffa4f3df76567ec33d1fd9bca1f9e273d84a0ce861146121cf5548` |
| 9 | `theorem` | [signed_homology_trace_error_le_alias](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FiniteGeodesicHomologyPrimitive.lean/declarations/signed-homology-trace-error-le-alias--e534857f7e3cb157fbf0c73a.md) | 169 | `result-track:e534857f7e3cb157fbf0c73aff7bfa737cbb23e6ec7867229a7dcec4d65e4516` |
| 10 | `def` | [toyBezoutCoefficients](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FiniteGeodesicHomologyPrimitive.lean/declarations/toybezoutcoefficients--30aabd9853ef63519600777e.md) | 196 | `declaration-track:30aabd9853ef63519600777e5eefe977757aa4afae01eeebc431b9a7ae55d003` |
| 11 | `def` | [toyBezoutHomology](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FiniteGeodesicHomologyPrimitive.lean/declarations/toybezouthomology--09baba7e6ab0b5176e60751b.md) | 200 | `declaration-track:09baba7e6ab0b5176e60751b884dfed2da0511e30f6e7aa3749ea8c1fdee0dca` |
| 12 | `theorem` | [toyBezout_pairing_one](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FiniteGeodesicHomologyPrimitive.lean/declarations/toybezout-pairing-one--1fad2656f6597b4e666d0012.md) | 204 | `result-track:1fad2656f6597b4e666d001220426581ec310cde9551c8db1b609e3f1bfc4475` |
| 13 | `theorem` | [toyBezout_pairing_unit](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FiniteGeodesicHomologyPrimitive.lean/declarations/toybezout-pairing-unit--138a36af9015974848a5979c.md) | 210 | `result-track:138a36af9015974848a5979cdc6f9cdc6625df4cb3c75769b1ed3e3009a7e098` |
| 14 | `theorem` | [toyBezout_coordinates_nonunit](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FiniteGeodesicHomologyPrimitive.lean/declarations/toybezout-coordinates-nonunit--a4dfb65aa5658aab4f12ecc0.md) | 217 | `result-track:a4dfb65aa5658aab4f12ecc0d4328245dc03aaa5c70bdde6039fe3664f2d6cee` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
