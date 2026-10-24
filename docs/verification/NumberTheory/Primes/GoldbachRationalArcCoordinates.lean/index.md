# Verification target: GRWTSK.NumberTheory.Primes.GoldbachRationalArcCoordinates

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2b61b3f660aa896762a098b24fd7a4908e5c2480",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Primes/GoldbachRationalArcCoordinates.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Primes/GoldbachRationalArcCoordinates.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Primes/GoldbachRationalArcCoordinates.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2b61b3f660aa896762a098b24fd7a4908e5c2480`.

Source path: `GRWTSK/NumberTheory/Primes/GoldbachRationalArcCoordinates.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Primes/GoldbachRationalArcCoordinates.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Primes.GoldbachRationalArcSeparation`](../../../../mathematics/NumberTheory/Primes/GoldbachRationalArcSeparation.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Primes.GoldbachCircleIntegral`](../../../../mathematics/NumberTheory/Primes/GoldbachCircleIntegral.lean/index.md) — import line 5; pinned internal source present.
- `Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [goldbachRationalArcOffset](../../../../mathematics/NumberTheory/Primes/GoldbachRationalArcCoordinates.lean/declarations/goldbachrationalarcoffset--70771da5e769f9e34ee10543.md) | 37 | `declaration-track:70771da5e769f9e34ee105430cd1df1b66a22e8a34e895b2012830192d2ffbb1` |
| 2 | `def` | [goldbachLiftedRationalArcOffset](../../../../mathematics/NumberTheory/Primes/GoldbachRationalArcCoordinates.lean/declarations/goldbachliftedrationalarcoffset--77cbfbb5e9e9963182935554.md) | 41 | `declaration-track:77cbfbb5e9e99631829355544292af04d9e71e595f7d2ea7c0701759fa257917` |
| 3 | `theorem` | [goldbachRationalArcCenter_add_offset](../../../../mathematics/NumberTheory/Primes/GoldbachRationalArcCoordinates.lean/declarations/goldbachrationalarccenter-add-offset--a0fbe7fc125c44b416cd4896.md) | 46 | `result-track:a0fbe7fc125c44b416cd48960b5364f01201d93c39f3e41c7752e26de4249ed9` |
| 4 | `theorem` | [goldbachLiftedRationalArcCenter_add_offset](../../../../mathematics/NumberTheory/Primes/GoldbachRationalArcCoordinates.lean/declarations/goldbachliftedrationalarccenter-add-offset--a0daf981b90263f6037c61f2.md) | 54 | `result-track:a0daf981b90263f6037c61f24ffada1278e72736627da88c2a7e192215914105` |
| 5 | `theorem` | [unitCharacter_add_argument](../../../../mathematics/NumberTheory/Primes/GoldbachRationalArcCoordinates.lean/declarations/unitcharacter-add-argument--4075dac00571c99eae5ede75.md) | 63 | `result-track:4075dac00571c99eae5ede75db179750a58a67ddc4afb7542f3183c21ccd151d` |
| 6 | `theorem` | [unitCharacter_add_int](../../../../mathematics/NumberTheory/Primes/GoldbachRationalArcCoordinates.lean/declarations/unitcharacter-add-int--f56553a8e1f226d62b6812e0.md) | 79 | `result-track:f56553a8e1f226d62b6812e03b20ae41c931466530e4275f0dbe4244d775edbd` |
| 7 | `theorem` | [unitCharacter_lifted_center](../../../../mathematics/NumberTheory/Primes/GoldbachRationalArcCoordinates.lean/declarations/unitcharacter-lifted-center--3324db17e5679b445421fd78.md) | 97 | `result-track:3324db17e5679b445421fd7803ebef22bc1e3e830f282078ba642b8aeb5560fe` |
| 8 | `theorem` | [unitCharacter_recenter](../../../../mathematics/NumberTheory/Primes/GoldbachRationalArcCoordinates.lean/declarations/unitcharacter-recenter--939fb37637aa5d6267e887c2.md) | 105 | `result-track:939fb37637aa5d6267e887c2a0e61f6b3a25b4645d0145e70f329ebdc26509b7` |
| 9 | `theorem` | [goldbachExponentialSum_add_int](../../../../mathematics/NumberTheory/Primes/GoldbachRationalArcCoordinates.lean/declarations/goldbachexponentialsum-add-int--8f577bb4facdaa58d3d13e8b.md) | 119 | `result-track:8f577bb4facdaa58d3d13e8ba0102de219c19c9ec5ee1e7268e21f6b755429bc` |
| 10 | `theorem` | [goldbachCircleIntegrand_add_int](../../../../mathematics/NumberTheory/Primes/GoldbachRationalArcCoordinates.lean/declarations/goldbachcircleintegrand-add-int--27e0a2c1d804f0d310599923.md) | 129 | `result-track:27e0a2c1d804f0d310599923833a59b6f8d37390e47fe0d046f064ddda4d4c63` |
| 11 | `def` | [goldbachCenteredExponentialSum](../../../../mathematics/NumberTheory/Primes/GoldbachRationalArcCoordinates.lean/declarations/goldbachcenteredexponentialsum--0f885b2549223dd57a69cb2c.md) | 138 | `declaration-track:0f885b2549223dd57a69cb2cb08e361e18c4c9a0a10f7e68d4f808dcab1a78dd` |
| 12 | `def` | [goldbachCenteredCircleIntegrand](../../../../mathematics/NumberTheory/Primes/GoldbachRationalArcCoordinates.lean/declarations/goldbachcenteredcircleintegrand--c886eaaba949acd304380f15.md) | 144 | `declaration-track:c886eaaba949acd304380f1558b5da2c8cd73501b87044e6b659b54619dd1f5c` |
| 13 | `theorem` | [goldbachExponentialSum_recenter](../../../../mathematics/NumberTheory/Primes/GoldbachRationalArcCoordinates.lean/declarations/goldbachexponentialsum-recenter--76cf78afbf206c401780437d.md) | 154 | `result-track:76cf78afbf206c401780437d3b9ddfe7bcc0b99f3466e80cb3f2158a2e567e3f` |
| 14 | `theorem` | [goldbachExponentialSum_at_lift](../../../../mathematics/NumberTheory/Primes/GoldbachRationalArcCoordinates.lean/declarations/goldbachexponentialsum-at-lift--10761bf9031e9e9ce9219491.md) | 163 | `result-track:10761bf9031e9e9ce92194917e2539d48c49d31afacba76c4c97f23f4ecc4f35` |
| 15 | `theorem` | [goldbachCircleIntegrand_recenter](../../../../mathematics/NumberTheory/Primes/GoldbachRationalArcCoordinates.lean/declarations/goldbachcircleintegrand-recenter--b52501614bf170eec1f12034.md) | 176 | `result-track:b52501614bf170eec1f12034e296cf9c9b194454a82c6ca358b3d91c01a60e14` |
| 16 | `theorem` | [goldbachCircleIntegrand_at_lift](../../../../mathematics/NumberTheory/Primes/GoldbachRationalArcCoordinates.lean/declarations/goldbachcircleintegrand-at-lift--3012f7bd9137fca83eee882c.md) | 197 | `result-track:3012f7bd9137fca83eee882cfba7693aee690660531f1cfe98216d65cdbb9463` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
