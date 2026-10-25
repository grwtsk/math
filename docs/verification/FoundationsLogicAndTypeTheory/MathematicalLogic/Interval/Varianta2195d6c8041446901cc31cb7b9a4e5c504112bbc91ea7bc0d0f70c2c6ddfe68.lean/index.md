# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Interval.Varianta2195d6c8041446901cc31cb7b9a4e5c504112bbc91ea7bc0d0f70c2c6ddfe68

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "50b99d6bc7a1ffef49e5c5592c4388d534954719",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Interval/Varianta2195d6c8041446901cc31cb7b9a4e5c504112bbc91ea7bc0d0f70c2c6ddfe68.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Interval/Varianta2195d6c8041446901cc31cb7b9a4e5c504112bbc91ea7bc0d0f70c2c6ddfe68.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Interval/Varianta2195d6c8041446901cc31cb7b9a4e5c504112bbc91ea7bc0d0f70c2c6ddfe68.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `50b99d6bc7a1ffef49e5c5592c4388d534954719`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Interval/Varianta2195d6c8041446901cc31cb7b9a4e5c504112bbc91ea7bc0d0f70c2c6ddfe68.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Interval/Varianta2195d6c8041446901cc31cb7b9a4e5c504112bbc91ea7bc0d0f70c2c6ddfe68.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.TensorNetwork.Observable` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [CertifiedInterval](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Interval/Varianta2195d6c8041446901cc31cb7b9a4e5c504112bbc91ea7bc0d0f70c2c6ddfe68.lean/declarations/certifiedinterval--dd16a4b2f5ad7477131e6a49.md) | 13 | `declaration-track:dd16a4b2f5ad7477131e6a49aee4d0898771018578b08260c4b177a3b21be9d4` |
| 2 | `def` | [CertifiedInterval.absmin](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Interval/Varianta2195d6c8041446901cc31cb7b9a4e5c504112bbc91ea7bc0d0f70c2c6ddfe68.lean/declarations/certifiedinterval-absmin--b10f13598387f61dfae975d9.md) | 19 | `declaration-track:b10f13598387f61dfae975d91d4877e3202bf0bc03d8be635c7c1a6a1eeeebaf` |
| 3 | `theorem` | [CertifiedInterval.absmin_nonnegative](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Interval/Varianta2195d6c8041446901cc31cb7b9a4e5c504112bbc91ea7bc0d0f70c2c6ddfe68.lean/declarations/certifiedinterval-absmin-nonnegative--044f08fc3ba71cf62a7b0b67.md) | 26 | `result-track:044f08fc3ba71cf62a7b0b67fb67eec3e069269762f3c1582f9543c05cad1fb5` |
| 4 | `inductive` | [QuantizedCoordinateState](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Interval/Varianta2195d6c8041446901cc31cb7b9a4e5c504112bbc91ea7bc0d0f70c2c6ddfe68.lean/declarations/quantizedcoordinatestate--9e6696ed35d0f880f373b774.md) | 36 | `declaration-track:9e6696ed35d0f880f373b77453fa40945e52f56808d4050830dd27a9104aa53c` |
| 5 | `def` | [quantizeInterval](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Interval/Varianta2195d6c8041446901cc31cb7b9a4e5c504112bbc91ea7bc0d0f70c2c6ddfe68.lean/declarations/quantizeinterval--171c5e7a2ef4afce50f777df.md) | 42 | `declaration-track:171c5e7a2ef4afce50f777dfb52de6c6b2b91a39e1f6c56b83f5d0d2a2863d80` |
| 6 | `structure` | [ExpectationIntervalCertificate](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Interval/Varianta2195d6c8041446901cc31cb7b9a4e5c504112bbc91ea7bc0d0f70c2c6ddfe68.lean/declarations/expectationintervalcertificate--8a94ba2d469c3cd8aa124edb.md) | 54 | `declaration-track:8a94ba2d469c3cd8aa124edb438ce1f9e70368950f46f47e9846a4852afd332e` |
| 7 | `def` | [OutsideBand](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Interval/Varianta2195d6c8041446901cc31cb7b9a4e5c504112bbc91ea7bc0d0f70c2c6ddfe68.lean/declarations/outsideband--5e3019a03301e35819fdc8e3.md) | 83 | `declaration-track:5e3019a03301e35819fdc8e344f87dd921d78a3e61fa408da41259b2e8d12a09` |
| 8 | `def` | [StrictlyOutsideBand](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Interval/Varianta2195d6c8041446901cc31cb7b9a4e5c504112bbc91ea7bc0d0f70c2c6ddfe68.lean/declarations/strictlyoutsideband--abd6d755f6fa72ecb98f7def.md) | 89 | `declaration-track:abd6d755f6fa72ecb98f7def9d323cb83120b051a9bc537ab0158b797be2ed29` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
