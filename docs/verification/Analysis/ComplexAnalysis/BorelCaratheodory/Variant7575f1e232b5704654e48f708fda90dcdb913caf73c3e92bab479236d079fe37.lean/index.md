# Verification target: GRWTSK.Analysis.ComplexAnalysis.BorelCaratheodory.Variant7575f1e232b5704654e48f708fda90dcdb913caf73c3e92bab479236d079fe37

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "af5af9c63f28c935725a77402f969c98766e02e0",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/ComplexAnalysis/BorelCaratheodory/Variant7575f1e232b5704654e48f708fda90dcdb913caf73c3e92bab479236d079fe37.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/ComplexAnalysis/BorelCaratheodory/Variant7575f1e232b5704654e48f708fda90dcdb913caf73c3e92bab479236d079fe37.lean/index.md) · [Full source](../../../../../mathematics/Analysis/ComplexAnalysis/BorelCaratheodory/Variant7575f1e232b5704654e48f708fda90dcdb913caf73c3e92bab479236d079fe37.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `af5af9c63f28c935725a77402f969c98766e02e0`.

Source path: `GRWTSK/Analysis/ComplexAnalysis/BorelCaratheodory/Variant7575f1e232b5704654e48f708fda90dcdb913caf73c3e92bab479236d079fe37.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/ComplexAnalysis/BorelCaratheodory/Variant7575f1e232b5704654e48f708fda90dcdb913caf73c3e92bab479236d079fe37.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Architect` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.AbsMax` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.RemovableSingularity` — import line 14; external provider; requires a separately pinned dependency.
- `PrimeNumberTheoremAnd.StrongPNT` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [divRemovable_zero](../../../../../mathematics/Analysis/ComplexAnalysis/BorelCaratheodory/Variant7575f1e232b5704654e48f708fda90dcdb913caf73c3e92bab479236d079fe37.lean/declarations/divremovable-zero--de4a05a645a912bddd88539f.md) | 30 | `declaration-track:de4a05a645a912bddd88539f575b4c8ae1a8a9b001fca8fcde428fdb0eafc154` |
| 2 | `lemma` | [divRemovable_zero_of_ne_zero](../../../../../mathematics/Analysis/ComplexAnalysis/BorelCaratheodory/Variant7575f1e232b5704654e48f708fda90dcdb913caf73c3e92bab479236d079fe37.lean/declarations/divremovable-zero-of-ne-zero--8fb215e4ea2a7ce0a6d54a21.md) | 44 | `result-track:8fb215e4ea2a7ce0a6d54a21e68e96317474925e68edd150f794c8bf909fae8e` |
| 3 | `lemma` | [AnalyticOn_divRemovable_zero](../../../../../mathematics/Analysis/ComplexAnalysis/BorelCaratheodory/Variant7575f1e232b5704654e48f708fda90dcdb913caf73c3e92bab479236d079fe37.lean/declarations/analyticon-divremovable-zero--0cc1b1171b15f668a0a967b1.md) | 74 | `result-track:0cc1b1171b15f668a0a967b188528a8ed0fecda70729647cd43db598d38e0f66` |
| 4 | `lemma` | [AnalyticOn_divRemovable_zero_closedBall](../../../../../mathematics/Analysis/ComplexAnalysis/BorelCaratheodory/Variant7575f1e232b5704654e48f708fda90dcdb913caf73c3e92bab479236d079fe37.lean/declarations/analyticon-divremovable-zero-closedball--882f022ede8b205c13233a1b.md) | 129 | `result-track:882f022ede8b205c13233a1bac21b2c5770b65eb1bc6ccfc0f65f794afff0d72` |
| 5 | `abbrev` | [schwartzQuotient](../../../../../mathematics/Analysis/ComplexAnalysis/BorelCaratheodory/Variant7575f1e232b5704654e48f708fda90dcdb913caf73c3e92bab479236d079fe37.lean/declarations/schwartzquotient--0a15e74ac9af8cc4d0f89758.md) | 212 | `declaration-track:0a15e74ac9af8cc4d0f8975823104042f95a514d9160971b4bc05b9083c633eb` |
| 6 | `lemma` | [AnalyticOn.schwartzQuotient](../../../../../mathematics/Analysis/ComplexAnalysis/BorelCaratheodory/Variant7575f1e232b5704654e48f708fda90dcdb913caf73c3e92bab479236d079fe37.lean/declarations/analyticon-schwartzquotient--00937dee6ce1a1173932a2fe.md) | 231 | `result-track:00937dee6ce1a1173932a2fe28ce4eb55cfd8cc60d5d3f561f07dbf95a3a70b9` |
| 7 | `lemma` | [Complex.norm_le_norm_two_mul_sub_of_re_le](../../../../../mathematics/Analysis/ComplexAnalysis/BorelCaratheodory/Variant7575f1e232b5704654e48f708fda90dcdb913caf73c3e92bab479236d079fe37.lean/declarations/complex-norm-le-norm-two-mul-sub-of-re-le--f61139e614d8abd1ad63d10b.md) | 255 | `result-track:f61139e614d8abd1ad63d10b89f06c2c31bb134da8ce651d655d2c0e01eb7517` |
| 8 | `theorem` | [borelCaratheodory_closedBall](../../../../../mathematics/Analysis/ComplexAnalysis/BorelCaratheodory/Variant7575f1e232b5704654e48f708fda90dcdb913caf73c3e92bab479236d079fe37.lean/declarations/borelcaratheodory-closedball--dd32b1a51e13548efd77cafa.md) | 329 | `result-track:dd32b1a51e13548efd77cafa4b619fd5462b5ea1e4d37b4308be1c689fdbe2fb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
