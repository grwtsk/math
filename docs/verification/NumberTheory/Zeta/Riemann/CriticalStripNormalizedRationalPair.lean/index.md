# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripNormalizedRationalPair

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "361bc33c42c29b9a9e096ad4167790577200bea3",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripNormalizedRationalPair.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripNormalizedRationalPair.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripNormalizedRationalPair.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `361bc33c42c29b9a9e096ad4167790577200bea3`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripNormalizedRationalPair.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/CriticalStripNormalizedRationalPair.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Complex.GaussianRationalDivision`](../../../../../mathematics/Analysis/ComplexAnalysis/GaussianRationalDivision.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripMultiplierNormalized`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripMultiplierNormalized.lean/index.md) — import line 5; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripRationalEvaluatedPair`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripRationalEvaluatedPair.lean/index.md) — import line 6; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Input](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripNormalizedRationalPair.lean/declarations/input--cda6f2bb826eebc914f1f27d.md) | 31 | `declaration-track:cda6f2bb826eebc914f1f27dc3d3c2b912b3d3a4da86374a8032efa199750ceb` |
| 2 | `def` | [inverse](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripNormalizedRationalPair.lean/declarations/inverse--f5cdf97390c25f9cb190fcbc.md) | 33 | `declaration-track:f5cdf97390c25f9cb190fcbcd63d93f472039b3aa9d701e54fda3be12178b04f` |
| 3 | `def` | [quotientCenter](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripNormalizedRationalPair.lean/declarations/quotientcenter--e9c9f6134e6916c8fa0edd5e.md) | 34 | `declaration-track:e9c9f6134e6916c8fa0edd5ebafe9df40b700cd73f1bd8967efa1789c1577024` |
| 4 | `def` | [quotientRadius](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripNormalizedRationalPair.lean/declarations/quotientradius--75e369a2fcea9a3bf4ba1f53.md) | 36 | `declaration-track:75e369a2fcea9a3bf4ba1f53b6dcabb552a99a9cb54c4da02146aa9144ea54f6` |
| 5 | `def` | [sourceValue](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripNormalizedRationalPair.lean/declarations/sourcevalue--502ae877ce41624f09a46001.md) | 39 | `declaration-track:502ae877ce41624f09a460017147403d418f866dab883125e7e3abb0841ff198` |
| 6 | `def` | [sourceSecant](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripNormalizedRationalPair.lean/declarations/sourcesecant--e23b216a23cddd162c15ab6d.md) | 40 | `declaration-track:e23b216a23cddd162c15ab6dd3d8a92b5e6a09d89da649a82b7f5b962a7a9d90` |
| 7 | `lemma` | [inverse_value](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripNormalizedRationalPair.lean/declarations/inverse-value--99d1186f61156e41435b095f.md) | 42 | `result-track:99d1186f61156e41435b095f6da869c591fa987c762e79cb30da7eebbc3a2536` |
| 8 | `lemma` | [quotient_encloses](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripNormalizedRationalPair.lean/declarations/quotient-encloses--24a6d1c61232eb6f59a80dd6.md) | 48 | `result-track:24a6d1c61232eb6f59a80dd69f3e746d307d359034e4b43f26ff136740edc825` |
| 9 | `lemma` | [sourceValue_cast](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripNormalizedRationalPair.lean/declarations/sourcevalue-cast--15dc4112645700c661d0291f.md) | 65 | `result-track:15dc4112645700c661d0291f9720e2bf4d25fe173b4824c6b9d54f079b17d6c0` |
| 10 | `lemma` | [sourceSecant_cast](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripNormalizedRationalPair.lean/declarations/sourcesecant-cast--9093b6ee9f9af387c49b01ed.md) | 68 | `result-track:9093b6ee9f9af387c49b01ed74df0e3e0722d0cb5418c11680c729780996db52` |
| 11 | `def` | [packed](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripNormalizedRationalPair.lean/declarations/packed--129ca44766e5ee6761539dff.md) | 74 | `declaration-track:129ca44766e5ee6761539dffb190e9b2efe8950cd915c39756c0bbdb864feebd` |
| 12 | `def` | [check](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripNormalizedRationalPair.lean/declarations/check--ce8db501258e759bb403a235.md) | 87 | `declaration-track:ce8db501258e759bb403a235772798b373859661b5699f4601acc532e854ddbf` |
| 13 | `lemma` | [check_iff](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripNormalizedRationalPair.lean/declarations/check-iff--0ccea8a076c3a5e44c8d0818.md) | 92 | `result-track:0ccea8a076c3a5e44c8d0818ee823296aa42c2350b9fd38665e175a841a50044` |
| 14 | `theorem` | [valid](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripNormalizedRationalPair.lean/declarations/valid--6f4cdaa97b289f75500eb8ef.md) | 99 | `result-track:6f4cdaa97b289f75500eb8ef2ead67217e6615c32017a285ca8687951c42c078` |
| 15 | `theorem` | [not_target](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripNormalizedRationalPair.lean/declarations/not-target--73a3f73ddff647bf445d5636.md) | 163 | `result-track:73a3f73ddff647bf445d56366e620290edf1c3fe0a7f2a7c01bc5bfc9baf6c02` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
