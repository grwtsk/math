# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripRationalPairCheck

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3c5d776f62190967266cfe4a6a127ca0c1086ba8",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripRationalPairCheck.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripRationalPairCheck.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripRationalPairCheck.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3c5d776f62190967266cfe4a6a127ca0c1086ba8`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripRationalPairCheck.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/CriticalStripRationalPairCheck.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Complex.SymmetricPairRational`](../../../../../mathematics/Analysis/ComplexAnalysis/SymmetricPairRational.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripMirrorPairApproximation`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripMirrorPairApproximation.lean/index.md) — import line 5; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Witness](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripRationalPairCheck.lean/declarations/witness--4518773734197e1b0d122f97.md) | 24 | `declaration-track:4518773734197e1b0d122f97228e2b0bba4bf5466ea8ca1550d8f5123a8da01f` |
| 2 | `def` | [packed](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripRationalPairCheck.lean/declarations/packed--2a692077ac74cd93bd8eda1f.md) | 38 | `declaration-track:2a692077ac74cd93bd8eda1f68bb28fc49456e325ae020de9ccca4dcd85505be` |
| 3 | `def` | [Guard](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripRationalPairCheck.lean/declarations/guard--9b063bb21e99a250acfeb9ed.md) | 46 | `declaration-track:9b063bb21e99a250acfeb9edbf731c429caf05f81a31e8e49f3c2d7afffaf39c` |
| 4 | `def` | [check](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripRationalPairCheck.lean/declarations/check--c7757fd1fe09ce75d4cc9858.md) | 50 | `declaration-track:c7757fd1fe09ce75d4cc98588d65072a380d470205d3cc5e09334dd532a57a3c` |
| 5 | `lemma` | [check_iff](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripRationalPairCheck.lean/declarations/check-iff--7e9fd40d303ba4535c9d8ba8.md) | 54 | `result-track:7e9fd40d303ba4535c9d8ba806f4d5075b14bfbecc88021ad50b2128a4df6d14` |
| 6 | `def` | [SourceTailValid](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripRationalPairCheck.lean/declarations/sourcetailvalid--815f2fd42b40041dab32a8ad.md) | 58 | `declaration-track:815f2fd42b40041dab32a8ad245aa38770bab8a7adfb721f432bf0523194c5dc` |
| 7 | `def` | [EvaluationValid](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripRationalPairCheck.lean/declarations/evaluationvalid--77396251bbd23f2ca6041f34.md) | 62 | `declaration-track:77396251bbd23f2ca6041f345911da0d090a2bfc4cf2d11d5814dea52f86e739` |
| 8 | `def` | [WeightValid](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripRationalPairCheck.lean/declarations/weightvalid--387ce982073cef0cc9e933b1.md) | 66 | `declaration-track:387ce982073cef0cc9e933b1ab2998987e2bfe551de4aa7fcdf193fe61684145` |
| 9 | `theorem` | [source_valid](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripRationalPairCheck.lean/declarations/source-valid--17eb366c235195507df99105.md) | 70 | `result-track:17eb366c235195507df991059e094dda2051fc377f5f007bf908bdc3bf9cde75` |
| 10 | `theorem` | [sound](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripRationalPairCheck.lean/declarations/sound--aaeb97d8338113dcef211b76.md) | 89 | `result-track:aaeb97d8338113dcef211b76b4fd84ef60c91676ce1f9f6baba163a4acd0e8c8` |
| 11 | `theorem` | [sourceTailValid_of_C1](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripRationalPairCheck.lean/declarations/sourcetailvalid-of-c1--192b5911d1b5561afa6bfe15.md) | 97 | `result-track:192b5911d1b5561afa6bfe1543a5d9a0f3d3860cd7dad36851abb71dddce2cda` |
| 12 | `theorem` | [sourceTailValid_cutoff64](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripRationalPairCheck.lean/declarations/sourcetailvalid-cutoff64--557d59112d263512e19ae4d5.md) | 107 | `result-track:557d59112d263512e19ae4d554b746d4e8b48c7933ccafa93a19beb7b66d405a` |
| 13 | `theorem` | [not_target](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripRationalPairCheck.lean/declarations/not-target--7e922f65d3cbd8fab8dc8f09.md) | 117 | `result-track:7e922f65d3cbd8fab8dc8f093c2a25c246f02fc73911d56ac938eae6ca0c480f` |
| 14 | `structure` | [CertifiedRegion](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripRationalPairCheck.lean/declarations/certifiedregion--cd3b1b52138a952d3e504299.md) | 132 | `declaration-track:cd3b1b52138a952d3e504299c82ef08911af912f6524334b32ca57e99f5e5cf8` |
| 15 | `theorem` | [CertifiedRegion.rhOn](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripRationalPairCheck.lean/declarations/certifiedregion-rhon--e3c6d8bf0fe45314728ee288.md) | 141 | `result-track:e3c6d8bf0fe45314728ee288419bf5b9d4237e6890573e8b5539a0f209cc3874` |
| 16 | `theorem` | [rhOn_of_cover](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripRationalPairCheck.lean/declarations/rhon-of-cover--236a56acfeb8e5876d91d0cf.md) | 150 | `result-track:236a56acfeb8e5876d91d0cf28125ab5ce1c29e57ccab0db1d8dd8907c92c1a4` |
| 17 | `theorem` | [window_successor_of_cover](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripRationalPairCheck.lean/declarations/window-successor-of-cover--dbc71f0dc5e1d874d807ec8f.md) | 159 | `result-track:dbc71f0dc5e1d874d807ec8f58598b73a7f5704a82a0a8f90201fa04e47b2a8e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
