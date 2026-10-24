# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.PrimeGramQuarticExtraction

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "509ccd569ebd58c92c3ca526b25987716d1dda14",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/PrimeGramQuarticExtraction.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/PrimeGramQuarticExtraction.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/PrimeGramQuarticExtraction.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `509ccd569ebd58c92c3ca526b25987716d1dda14`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/PrimeGramQuarticExtraction.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/PrimeGramQuarticExtraction.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.SevenEighthsMechanismTrace`](../../../../../mathematics/NumberTheory/Zeta/Riemann/SevenEighthsMechanismTrace.lean/index.md) — import line 3; pinned internal source present.
- `Mathlib.Tactic` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [FinitePrimePowerGramStage](../../../../../mathematics/NumberTheory/Zeta/Riemann/PrimeGramQuarticExtraction.lean/declarations/finiteprimepowergramstage--2bba4ee407f023a982cece03.md) | 29 | `declaration-track:2bba4ee407f023a982cece03ba4acdc661a19bd3a35c028f4d7f43df845b4820` |
| 2 | `theorem` | [nonnegative](../../../../../mathematics/NumberTheory/Zeta/Riemann/PrimeGramQuarticExtraction.lean/declarations/nonnegative--0a6b49a45f6d765629ec9949.md) | 39 | `result-track:0a6b49a45f6d765629ec994902d4ff94e7e3193cddec62bd5d6ff37f35887fd9` |
| 3 | `structure` | [PrimeGramExtractionAtZero](../../../../../mathematics/NumberTheory/Zeta/Riemann/PrimeGramQuarticExtraction.lean/declarations/primegramextractionatzero--f36394d0f23ae5906c2fc0c8.md) | 46 | `declaration-track:f36394d0f23ae5906c2fc0c8e7771a013dc643e649ae6fc47658f50a15476bf8` |
| 4 | `def` | [PrimeGramExtractionAtZero.toQuarticExtraction](../../../../../mathematics/NumberTheory/Zeta/Riemann/PrimeGramQuarticExtraction.lean/declarations/primegramextractionatzero-toquarticextraction--1ba9c3c3df0e6202d38a9949.md) | 58 | `declaration-track:1ba9c3c3df0e6202d38a99499c6a9b5caf04acf51596004c2d8c1eb5e6c3d64e` |
| 5 | `def` | [PrimeGramQuarticClaim](../../../../../mathematics/NumberTheory/Zeta/Riemann/PrimeGramQuarticExtraction.lean/declarations/primegramquarticclaim--18b8cf2fd70beeba53663cc8.md) | 70 | `declaration-track:18b8cf2fd70beeba53663cc891cb0b5f809e1938a61bd4f6a4545915f457c4e3` |
| 6 | `structure` | [SourceBoundPrimeGramExtraction](../../../../../mathematics/NumberTheory/Zeta/Riemann/PrimeGramQuarticExtraction.lean/declarations/sourceboundprimegramextraction--ad81636afb39e260bff0fcbd.md) | 73 | `declaration-track:ad81636afb39e260bff0fcbdbe615d69acdc70d925285b3cddf2649bd8458084` |
| 7 | `def` | [primeQuarticClaim_of_primeGramQuarticClaim](../../../../../mathematics/NumberTheory/Zeta/Riemann/PrimeGramQuarticExtraction.lean/declarations/primequarticclaim-of-primegramquarticclaim--a1df0620ed7d4e5cfd5dcb52.md) | 78 | `declaration-track:a1df0620ed7d4e5cfd5dcb521c441568c512caa053cca9097e50355ab4e70810` |
| 8 | `theorem` | [riemannHypothesis_of_sourceBoundPrimeGramExtraction](../../../../../mathematics/NumberTheory/Zeta/Riemann/PrimeGramQuarticExtraction.lean/declarations/riemannhypothesis-of-sourceboundprimegramextraction--011199d4c9f0e175ae1e7325.md) | 83 | `result-track:011199d4c9f0e175ae1e7325d2335a04dce5463c80774c70202bd3cf0cf0ffab` |
| 9 | `structure` | [LocalPrimeGramExtractor](../../../../../mathematics/NumberTheory/Zeta/Riemann/PrimeGramQuarticExtraction.lean/declarations/localprimegramextractor--3ea697d512919fbdd9300251.md) | 95 | `declaration-track:3ea697d512919fbdd93002515bb006a635de9d698ab876b5d9f8afc863ae7794` |
| 10 | `def` | [SourceBoundMechanismBridgeAccepted.toPrimeGramExtraction](../../../../../mathematics/NumberTheory/Zeta/Riemann/PrimeGramQuarticExtraction.lean/declarations/sourceboundmechanismbridgeaccepted-toprimegramextraction--61f3c634eb7216cd2ef68832.md) | 98 | `declaration-track:61f3c634eb7216cd2ef688327c1a191206a86de32cb97e3cbfb8312fd0d064dd` |
| 11 | `structure` | [PrimeGramExtractionAccepted](../../../../../mathematics/NumberTheory/Zeta/Riemann/PrimeGramQuarticExtraction.lean/declarations/primegramextractionaccepted--e8d307063e04ad13a4b05c3d.md) | 108 | `declaration-track:e8d307063e04ad13a4b05c3dd9f48df98141ad9245e6785938ae153d4c0bbf3f` |
| 12 | `theorem` | [PrimeGramExtractionAccepted.toRiemannHypothesis](../../../../../mathematics/NumberTheory/Zeta/Riemann/PrimeGramQuarticExtraction.lean/declarations/primegramextractionaccepted-toriemannhypothesis--683583535c479c8521536f8d.md) | 111 | `result-track:683583535c479c8521536f8d243138d63e5ef3ee9c64849825855b00382583c9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
