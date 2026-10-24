# Verification target: GRWTSK.Analysis.MeasureTheory.Projective.Variant3fc8a814734c382ebda3bfb68dbba775c461f411380fac854ec7121ae7712fcf

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b6914e760103e31f31413badd03fbc1aec60d26f",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Projective/Variant3fc8a814734c382ebda3bfb68dbba775c461f411380fac854ec7121ae7712fcf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/Projective/Variant3fc8a814734c382ebda3bfb68dbba775c461f411380fac854ec7121ae7712fcf.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/Projective/Variant3fc8a814734c382ebda3bfb68dbba775c461f411380fac854ec7121ae7712fcf.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b6914e760103e31f31413badd03fbc1aec60d26f`.

Source path: `GRWTSK/Analysis/MeasureTheory/Projective/Variant3fc8a814734c382ebda3bfb68dbba775c461f411380fac854ec7121ae7712fcf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Projective/Variant3fc8a814734c382ebda3bfb68dbba775c461f411380fac854ec7121ae7712fcf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Constructions.Cylinders` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Typeclasses.Probability` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsProjectiveMeasureFamily](../../../../../mathematics/Analysis/MeasureTheory/Projective/Variant3fc8a814734c382ebda3bfb68dbba775c461f411380fac854ec7121ae7712fcf.lean/declarations/isprojectivemeasurefamily--b4234f91dc723695d37acd6b.md) | 41 | `declaration-track:b4234f91dc723695d37acd6b4fbdd3d65894c63693a375af5bcbc05d31d579b6` |
| 2 | `lemma` | [eq_zero_of_isEmpty](../../../../../mathematics/Analysis/MeasureTheory/Projective/Variant3fc8a814734c382ebda3bfb68dbba775c461f411380fac854ec7121ae7712fcf.lean/declarations/eq-zero-of-isempty--5e9820312deb894103fb89e3.md) | 49 | `result-track:5e9820312deb894103fb89e3b4b0c31126eabfb313cc5c18f935d1602380b6dc` |
| 3 | `lemma` | [measure_univ_eq_of_subset](../../../../../mathematics/Analysis/MeasureTheory/Projective/Variant3fc8a814734c382ebda3bfb68dbba775c461f411380fac854ec7121ae7712fcf.lean/declarations/measure-univ-eq-of-subset--6ce3ba494ce87d751abd69d8.md) | 60 | `result-track:6ce3ba494ce87d751abd69d8965f05b32e25ba2dca572304970aa5e44514b861` |
| 4 | `lemma` | [measure_univ_eq](../../../../../mathematics/Analysis/MeasureTheory/Projective/Variant3fc8a814734c382ebda3bfb68dbba775c461f411380fac854ec7121ae7712fcf.lean/declarations/measure-univ-eq--280e967a9bd2fee709758d4b.md) | 70 | `result-track:280e967a9bd2fee709758d4bbeaee5ee468e3f8c7bb6f9699900a0288a490ce7` |
| 5 | `lemma` | [congr_cylinder_of_subset](../../../../../mathematics/Analysis/MeasureTheory/Projective/Variant3fc8a814734c382ebda3bfb68dbba775c461f411380fac854ec7121ae7712fcf.lean/declarations/congr-cylinder-of-subset--c5afb1e406c0114ab7d11883.md) | 76 | `result-track:c5afb1e406c0114ab7d11883935c5d0bec6826b7f517e7ea7d7b6c94c3a3eef0` |
| 6 | `lemma` | [congr_cylinder](../../../../../mathematics/Analysis/MeasureTheory/Projective/Variant3fc8a814734c382ebda3bfb68dbba775c461f411380fac854ec7121ae7712fcf.lean/declarations/congr-cylinder--33ba9672495f1e7fd7a66838.md) | 97 | `result-track:33ba9672495f1e7fd7a668389d2ea465639f18dc15e4360f89b27fd47dca07f6` |
| 7 | `def` | [IsProjectiveLimit](../../../../../mathematics/Analysis/MeasureTheory/Projective/Variant3fc8a814734c382ebda3bfb68dbba775c461f411380fac854ec7121ae7712fcf.lean/declarations/isprojectivelimit--9d85f7ea1fd04a22d10e3d8c.md) | 117 | `declaration-track:9d85f7ea1fd04a22d10e3d8c9daeb02221fba937b4244d43a4b79a106eae1688` |
| 8 | `lemma` | [measure_cylinder](../../../../../mathematics/Analysis/MeasureTheory/Projective/Variant3fc8a814734c382ebda3bfb68dbba775c461f411380fac854ec7121ae7712fcf.lean/declarations/measure-cylinder--745c874c29a128871f89767c.md) | 125 | `result-track:745c874c29a128871f89767ca8e0b6560d32c7637a1e1eb67ca78391221f21a5` |
| 9 | `lemma` | [measure_univ_eq](../../../../../mathematics/Analysis/MeasureTheory/Projective/Variant3fc8a814734c382ebda3bfb68dbba775c461f411380fac854ec7121ae7712fcf.lean/declarations/measure-univ-eq--6002bc1bbb759f5ac57b4930.md) | 131 | `result-track:6002bc1bbb759f5ac57b49303f750b729757be3dc6c5c237933b5fb7d754b183` |
| 10 | `lemma` | [isFiniteMeasure](../../../../../mathematics/Analysis/MeasureTheory/Projective/Variant3fc8a814734c382ebda3bfb68dbba775c461f411380fac854ec7121ae7712fcf.lean/declarations/isfinitemeasure--8038e4e2d708fbc68780e6d6.md) | 135 | `result-track:8038e4e2d708fbc68780e6d6dcf511ab70d8e0307b4d19bcfe79cdd7b2ea1765` |
| 11 | `lemma` | [isProbabilityMeasure](../../../../../mathematics/Analysis/MeasureTheory/Projective/Variant3fc8a814734c382ebda3bfb68dbba775c461f411380fac854ec7121ae7712fcf.lean/declarations/isprobabilitymeasure--72e3d50eaa68aca586155ae7.md) | 141 | `result-track:72e3d50eaa68aca586155ae79732f9a20f13b861177e4f6013af054724b42e82` |
| 12 | `lemma` | [measure_univ_unique](../../../../../mathematics/Analysis/MeasureTheory/Projective/Variant3fc8a814734c382ebda3bfb68dbba775c461f411380fac854ec7121ae7712fcf.lean/declarations/measure-univ-unique--ea052ffaa9582abd28a73343.md) | 147 | `result-track:ea052ffaa9582abd28a73343cccc98e009495fc06ac06600716bf80167a7ef2f` |
| 13 | `theorem` | [unique](../../../../../mathematics/Analysis/MeasureTheory/Projective/Variant3fc8a814734c382ebda3bfb68dbba775c461f411380fac854ec7121ae7712fcf.lean/declarations/unique--4d059754f394e033f9285cea.md) | 152 | `result-track:4d059754f394e033f9285ceac78a1bc0b685842961a9e9f5db0591fa8a425e6d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
