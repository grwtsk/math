# Verification target: GRWTSK.Algebra.Cone.Variant3b627e709e04e11c82c2c3659b9814a5ef45088acfa8f519b1d21d3afb5909d4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1ed2e934cdb56591710b64d1a9c284ed90ad7a9b",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Cone/Variant3b627e709e04e11c82c2c3659b9814a5ef45088acfa8f519b1d21d3afb5909d4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Cone/Variant3b627e709e04e11c82c2c3659b9814a5ef45088acfa8f519b1d21d3afb5909d4.lean/index.md) · [Full source](../../../../mathematics/Algebra/Cone/Variant3b627e709e04e11c82c2c3659b9814a5ef45088acfa8f519b1d21d3afb5909d4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1ed2e934cdb56591710b64d1a9c284ed90ad7a9b`.

Source path: `GRWTSK/Algebra/Cone/Variant3b627e709e04e11c82c2c3659b9814a5ef45088acfa8f519b1d21d3afb5909d4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Cone/Variant3b627e709e04e11c82c2c3659b9814a5ef45088acfa8f519b1d21d3afb5909d4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Group.Cone` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Subsemiring.Order` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [RingConeClass](../../../../mathematics/Algebra/Cone/Variant3b627e709e04e11c82c2c3659b9814a5ef45088acfa8f519b1d21d3afb5909d4.lean/declarations/ringconeclass--a5a93035e5c8ec598e149df0.md) | 21 | `declaration-track:a5a93035e5c8ec598e149df09c0ebc30d4621c323b0080c45e7c5a4fbcd59073` |
| 2 | `structure` | [RingCone](../../../../mathematics/Algebra/Cone/Variant3b627e709e04e11c82c2c3659b9814a5ef45088acfa8f519b1d21d3afb5909d4.lean/declarations/ringcone--705bcf2b9f9c8efd44b4e975.md) | 28 | `declaration-track:705bcf2b9f9c8efd44b4e975cb095c5c7067a90248050abe2cb39aa01c147cee` |
| 3 | `instance` | [RingCone.instSetLike](../../../../mathematics/Algebra/Cone/Variant3b627e709e04e11c82c2c3659b9814a5ef45088acfa8f519b1d21d3afb5909d4.lean/declarations/ringcone-instsetlike--c7ff3274e92ab4d2897c9f10.md) | 33 | `declaration-track:c7ff3274e92ab4d2897c9f1026dde68507dfff7fc4ad9cf06adcc9ce099f6c21` |
| 4 | `instance` | [RingCone.instRingConeClass](../../../../mathematics/Algebra/Cone/Variant3b627e709e04e11c82c2c3659b9814a5ef45088acfa8f519b1d21d3afb5909d4.lean/declarations/ringcone-instringconeclass--03c0b794eb99d8c1e72804b4.md) | 37 | `declaration-track:03c0b794eb99d8c1e72804b43fe49d73e0c3946794a96026d925687c096b2ead` |
| 5 | `def` | [nonneg](../../../../mathematics/Algebra/Cone/Variant3b627e709e04e11c82c2c3659b9814a5ef45088acfa8f519b1d21d3afb5909d4.lean/declarations/nonneg--e880c4d556ae3e544fd55dbb.md) | 51 | `declaration-track:e880c4d556ae3e544fd55dbba56fc2fd873c4d90bde532893c5859d8d39b7470` |
| 6 | `lemma` | [nonneg_toSubsemiring](../../../../mathematics/Algebra/Cone/Variant3b627e709e04e11c82c2c3659b9814a5ef45088acfa8f519b1d21d3afb5909d4.lean/declarations/nonneg-tosubsemiring--4a4ea35146f48546ec9eb0c3.md) | 55 | `result-track:4a4ea35146f48546ec9eb0c306c81830dd0f0c207defe0aa1288ffeba2e3f0da` |
| 7 | `lemma` | [nonneg_toAddGroupCone](../../../../mathematics/Algebra/Cone/Variant3b627e709e04e11c82c2c3659b9814a5ef45088acfa8f519b1d21d3afb5909d4.lean/declarations/nonneg-toaddgroupcone--b447b7aee8a44a39005de39b.md) | 56 | `result-track:b447b7aee8a44a39005de39b3290a3bc878a90b433a37d355d906e08b304aab3` |
| 8 | `lemma` | [mem_nonneg](../../../../mathematics/Algebra/Cone/Variant3b627e709e04e11c82c2c3659b9814a5ef45088acfa8f519b1d21d3afb5909d4.lean/declarations/mem-nonneg--a909a5a6785fd152c3d454c1.md) | 57 | `result-track:a909a5a6785fd152c3d454c1646581df92128ce86a8ffbb8cc5a01b530bca877` |
| 9 | `lemma` | [coe_nonneg](../../../../mathematics/Algebra/Cone/Variant3b627e709e04e11c82c2c3659b9814a5ef45088acfa8f519b1d21d3afb5909d4.lean/declarations/coe-nonneg--150084d202135b574cd72aa5.md) | 58 | `result-track:150084d202135b574cd72aa5302168c4a912e4d1f81c0d6319bbc501f185d591` |
| 10 | `instance` | [nonneg.isMaxCone](../../../../mathematics/Algebra/Cone/Variant3b627e709e04e11c82c2c3659b9814a5ef45088acfa8f519b1d21d3afb5909d4.lean/declarations/nonneg-ismaxcone--89bc92fa505ad20ed4f6fe91.md) | 60 | `declaration-track:89bc92fa505ad20ed4f6fe913f8ab5cb6a68420696a7b0206e6eca31b8dfe76b` |
| 11 | `lemma` | [IsOrderedRing.mkOfCone](../../../../mathematics/Algebra/Cone/Variant3b627e709e04e11c82c2c3659b9814a5ef45088acfa8f519b1d21d3afb5909d4.lean/declarations/isorderedring-mkofcone--a9d4674d6a6676ede310c427.md) | 69 | `result-track:a9d4674d6a6676ede310c427cfa6af8b62714e0dd7a895bb8c172267daaa7bb0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
