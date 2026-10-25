# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Interval.Variant6d9eb53874b682c25843c811d9313991c8581ad22c88bd3266df15437dffe5c1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e963d9656c664688a88408c9ec7dd49c362c3e3d",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Interval/Variant6d9eb53874b682c25843c811d9313991c8581ad22c88bd3266df15437dffe5c1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Interval/Variant6d9eb53874b682c25843c811d9313991c8581ad22c88bd3266df15437dffe5c1.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Interval/Variant6d9eb53874b682c25843c811d9313991c8581ad22c88bd3266df15437dffe5c1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e963d9656c664688a88408c9ec7dd49c362c3e3d`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Interval/Variant6d9eb53874b682c25843c811d9313991c8581ad22c88bd3266df15437dffe5c1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Interval/Variant6d9eb53874b682c25843c811d9313991c8581ad22c88bd3266df15437dffe5c1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.TensorNetwork.Observable` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [CertifiedInterval](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Interval/Variant6d9eb53874b682c25843c811d9313991c8581ad22c88bd3266df15437dffe5c1.lean/declarations/certifiedinterval--7c1fc0fd42e7299459d90eea.md) | 21 | `declaration-track:7c1fc0fd42e7299459d90eeabd81f98c4e6e22e1c807441bf0bb2506550094e5` |
| 2 | `def` | [CertifiedInterval.absmin](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Interval/Variant6d9eb53874b682c25843c811d9313991c8581ad22c88bd3266df15437dffe5c1.lean/declarations/certifiedinterval-absmin--afbc6168aabe23082b0dfcfb.md) | 27 | `declaration-track:afbc6168aabe23082b0dfcfbd738aa75a1ea9121f3034056d59caa46e889845f` |
| 3 | `theorem` | [CertifiedInterval.absmin_nonnegative](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Interval/Variant6d9eb53874b682c25843c811d9313991c8581ad22c88bd3266df15437dffe5c1.lean/declarations/certifiedinterval-absmin-nonnegative--ff491d2e27a825f8533f06b5.md) | 34 | `result-track:ff491d2e27a825f8533f06b5662aa7b0649bd6f168e06abf736fdeec5e4331df` |
| 4 | `inductive` | [QuantizedCoordinateState](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Interval/Variant6d9eb53874b682c25843c811d9313991c8581ad22c88bd3266df15437dffe5c1.lean/declarations/quantizedcoordinatestate--93572fe438f7f01cbc09ec80.md) | 44 | `declaration-track:93572fe438f7f01cbc09ec80f8aafa814e081ca5eb84129e43e18fdb1f99695a` |
| 5 | `def` | [quantizeInterval](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Interval/Variant6d9eb53874b682c25843c811d9313991c8581ad22c88bd3266df15437dffe5c1.lean/declarations/quantizeinterval--e838dc6abb8372117390adbe.md) | 50 | `declaration-track:e838dc6abb8372117390adbe9ed0333b653dbc03eefea7bf282ed800fd07dd31` |
| 6 | `structure` | [ExpectationIntervalCertificate](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Interval/Variant6d9eb53874b682c25843c811d9313991c8581ad22c88bd3266df15437dffe5c1.lean/declarations/expectationintervalcertificate--cb5209fb30802701666ff6e2.md) | 62 | `declaration-track:cb5209fb30802701666ff6e25fe51440cdc7079a1a1c12d1f72277a6310d221a` |
| 7 | `def` | [OutsideBand](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Interval/Variant6d9eb53874b682c25843c811d9313991c8581ad22c88bd3266df15437dffe5c1.lean/declarations/outsideband--91ed3e9d79833a0453059a79.md) | 91 | `declaration-track:91ed3e9d79833a0453059a79badb607de7bec0a4bbed881c4f46ce6f0b20e6f7` |
| 8 | `def` | [StrictlyOutsideBand](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Interval/Variant6d9eb53874b682c25843c811d9313991c8581ad22c88bd3266df15437dffe5c1.lean/declarations/strictlyoutsideband--0d9336f9a6ba7ab0ffa9877e.md) | 97 | `declaration-track:0d9336f9a6ba7ab0ffa9877e6b03916a0ae7419017907e4867611494ab8c4417` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
