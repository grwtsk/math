# Verification target: GRWTSK.NumberTheory.Chebyshev.ClassicalRieszReality

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f3aef30ea3155288cc823d7eac4566bd84672bb5",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Chebyshev/ClassicalRieszReality.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Chebyshev/ClassicalRieszReality.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Chebyshev/ClassicalRieszReality.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f3aef30ea3155288cc823d7eac4566bd84672bb5`.

Source path: `GRWTSK/NumberTheory/Chebyshev/ClassicalRieszReality.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Chebyshev/ClassicalRieszReality.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Chebyshev.FirstRieszClassicalResidues`](../../../../mathematics/NumberTheory/Chebyshev/FirstRieszClassicalResidues.lean/index.md) — import line 3; pinned internal source present.
- [`GRWTSK.NumberTheory.Chebyshev.ClassicalRieszCoefficientLimits`](../../../../mathematics/NumberTheory/Chebyshev/ClassicalRieszCoefficientLimits.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Chebyshev.FirstRieszWeakRawLimit`](../../../../mathematics/NumberTheory/Chebyshev/FirstRieszWeakRawLimit.lean/index.md) — import line 5; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSignedHeight`](../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSignedHeight.lean/index.md) — import line 6; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [conjugate_weighted_height_sum](../../../../mathematics/NumberTheory/Chebyshev/ClassicalRieszReality.lean/declarations/conjugate-weighted-height-sum--8e04bace398495e3fd94a670.md) | 25 | `result-track:8e04bace398495e3fd94a670e64118fb77ef08f025f8d1759b32276bdf2da92e` |
| 2 | `theorem` | [finiteHeightZeroHead_conj](../../../../mathematics/NumberTheory/Chebyshev/ClassicalRieszReality.lean/declarations/finiteheightzerohead-conj--d5e32a71c7fa7dd17b14c07a.md) | 42 | `result-track:d5e32a71c7fa7dd17b14c07a9ec9366f19f3be95de49db4215db308d5ce8d702` |
| 3 | `theorem` | [finiteRieszZeroHead_conj](../../../../mathematics/NumberTheory/Chebyshev/ClassicalRieszReality.lean/declarations/finiterieszzerohead-conj--4814249fe69f63d145305311.md) | 48 | `result-track:4814249fe69f63d14530531193e0c52f4c912f0294c438d427fdd37798143719` |
| 4 | `theorem` | [finiteSourceSlope_conj](../../../../mathematics/NumberTheory/Chebyshev/ClassicalRieszReality.lean/declarations/finitesourceslope-conj--d4d3b4da3fe0bc0fc18f0d81.md) | 54 | `result-track:d4d3b4da3fe0bc0fc18f0d8133d9a717e18ed43d6239ad050effb519c05402a5` |
| 5 | `theorem` | [finiteSourceIntercept_conj](../../../../mathematics/NumberTheory/Chebyshev/ClassicalRieszReality.lean/declarations/finitesourceintercept-conj--062b6f51690f52eec94ac47e.md) | 57 | `result-track:062b6f51690f52eec94ac47e60ab0d6174913a0f6bff5e4925b76c9f58abe870` |
| 6 | `theorem` | [sourceSlope_conj](../../../../mathematics/NumberTheory/Chebyshev/ClassicalRieszReality.lean/declarations/sourceslope-conj--13cf183f191f7cc0722ba077.md) | 60 | `result-track:13cf183f191f7cc0722ba07726965dc4b7121d47824b4e28c1f9676a7223dcc5` |
| 7 | `theorem` | [sourceIntercept_conj](../../../../mathematics/NumberTheory/Chebyshev/ClassicalRieszReality.lean/declarations/sourceintercept-conj--7e1949550828873909366a56.md) | 67 | `result-track:7e1949550828873909366a56ce5e52bb1e863d2f6564d7f16c95ed56d203ad86` |
| 8 | `theorem` | [sourceSlope_im](../../../../mathematics/NumberTheory/Chebyshev/ClassicalRieszReality.lean/declarations/sourceslope-im--d817be51d468893af5805579.md) | 74 | `result-track:d817be51d468893af58055791dacf24de7a70e6d7594c180d3ebe071ff561eb2` |
| 9 | `theorem` | [sourceIntercept_im](../../../../mathematics/NumberTheory/Chebyshev/ClassicalRieszReality.lean/declarations/sourceintercept-im--de99859fca972b0596e79667.md) | 79 | `result-track:de99859fca972b0596e79667f324152acfc55991745ffe3c56ac1ba44455d582` |
| 10 | `theorem` | [rawClassicalHead_conj](../../../../mathematics/NumberTheory/Chebyshev/ClassicalRieszReality.lean/declarations/rawclassicalhead-conj--3b2a6619a88178400cbd66e7.md) | 84 | `result-track:3b2a6619a88178400cbd66e733519900105bb88f1cfb93ce054b4a86032ab428` |
| 11 | `theorem` | [rawClassicalHead_im](../../../../mathematics/NumberTheory/Chebyshev/ClassicalRieszReality.lean/declarations/rawclassicalhead-im--d0b395cf34aea22f4465cc60.md) | 87 | `result-track:d0b395cf34aea22f4465cc60a82571ceea7af08a9459c5dd04428aaca1aa489b` |
| 12 | `theorem` | [logDeriv_neg_one_eq](../../../../mathematics/NumberTheory/Chebyshev/ClassicalRieszReality.lean/declarations/logderiv-neg-one-eq--0f98eccce9b8266e0f54e2b6.md) | 92 | `result-track:0f98eccce9b8266e0f54e2b69b27df3a32dab363cb5831e4eddcaa89c123587b` |
| 13 | `theorem` | [logDeriv_neg_one_conj](../../../../mathematics/NumberTheory/Chebyshev/ClassicalRieszReality.lean/declarations/logderiv-neg-one-conj--5090e290f9c798ba993e9f12.md) | 97 | `result-track:5090e290f9c798ba993e9f1238f27a22dddab7a8929350bd0988edc9251c3e4a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
