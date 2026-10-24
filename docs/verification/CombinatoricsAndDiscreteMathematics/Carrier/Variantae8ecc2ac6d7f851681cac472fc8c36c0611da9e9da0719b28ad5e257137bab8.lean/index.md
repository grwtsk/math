# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Carrier.Variantae8ecc2ac6d7f851681cac472fc8c36c0611da9e9da0719b28ad5e257137bab8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a8fe5b549f9ecf7187a97b52c7997a9b5560bc45",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Carrier/Variantae8ecc2ac6d7f851681cac472fc8c36c0611da9e9da0719b28ad5e257137bab8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Carrier/Variantae8ecc2ac6d7f851681cac472fc8c36c0611da9e9da0719b28ad5e257137bab8.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Carrier/Variantae8ecc2ac6d7f851681cac472fc8c36c0611da9e9da0719b28ad5e257137bab8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a8fe5b549f9ecf7187a97b52c7997a9b5560bc45`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Carrier/Variantae8ecc2ac6d7f851681cac472fc8c36c0611da9e9da0719b28ad5e257137bab8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Carrier/Variantae8ecc2ac6d7f851681cac472fc8c36c0611da9e9da0719b28ad5e257137bab8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.Integration.WorldModelPrototype.Models` — import line 6; external provider; requires a separately pinned dependency.
- `Surface.ContinuousAssurance.WorldModel.Carrier` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Sum` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.DeriveFintype` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [PrototypeVertex](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Carrier/Variantae8ecc2ac6d7f851681cac472fc8c36c0611da9e9da0719b28ad5e257137bab8.lean/declarations/prototypevertex--465a3a185b0df204d35df818.md) | 29 | `declaration-track:465a3a185b0df204d35df81813773c86210d047c36f07829740ff8a6596b8987` |
| 2 | `inductive` | [PrototypeEdge](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Carrier/Variantae8ecc2ac6d7f851681cac472fc8c36c0611da9e9da0719b28ad5e257137bab8.lean/declarations/prototypeedge--defcc511ea1125deeabd70cb.md) | 34 | `declaration-track:defcc511ea1125deeabd70cbd39deff4d795801dccc789dd7f8a0966256d4ae0` |
| 3 | `inductive` | [PrototypeFace](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Carrier/Variantae8ecc2ac6d7f851681cac472fc8c36c0611da9e9da0719b28ad5e257137bab8.lean/declarations/prototypeface--aa040b9885bf1a472f6362da.md) | 39 | `declaration-track:aa040b9885bf1a472f6362da6742c8df019a9ba316f1500fb9ef238dcfc76c85` |
| 4 | `inductive` | [PrototypeCell](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Carrier/Variantae8ecc2ac6d7f851681cac472fc8c36c0611da9e9da0719b28ad5e257137bab8.lean/declarations/prototypecell--d8c8fa57102900c2a4ffb253.md) | 44 | `declaration-track:d8c8fa57102900c2a4ffb25369e51cb8b7729ed2ffd6b4eb73343b8fd56d9295` |
| 5 | `def` | [prototypeEdgeEndpoints](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Carrier/Variantae8ecc2ac6d7f851681cac472fc8c36c0611da9e9da0719b28ad5e257137bab8.lean/declarations/prototypeedgeendpoints--bc71ac23bc36ca5b024c99c4.md) | 51 | `declaration-track:bc71ac23bc36ca5b024c99c45e83e2aab95c75cc4f2056254f444deb25c6720d` |
| 6 | `def` | [prototypeFaceEdges](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Carrier/Variantae8ecc2ac6d7f851681cac472fc8c36c0611da9e9da0719b28ad5e257137bab8.lean/declarations/prototypefaceedges--43a8fc64a13340a553ed40e8.md) | 60 | `declaration-track:43a8fc64a13340a553ed40e8d0b1057c1e6b53aa3f4557c3651a5d541f592d65` |
| 7 | `def` | [prototypeCellVertices](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Carrier/Variantae8ecc2ac6d7f851681cac472fc8c36c0611da9e9da0719b28ad5e257137bab8.lean/declarations/prototypecellvertices--79395ff3355be254fc716f88.md) | 65 | `declaration-track:79395ff3355be254fc716f88a6ac48a1b68198fa825dc097c4046e6b0dbf0b85` |
| 8 | `def` | [prototypeCellDimension](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Carrier/Variantae8ecc2ac6d7f851681cac472fc8c36c0611da9e9da0719b28ad5e257137bab8.lean/declarations/prototypecelldimension--f68a03aaa36194fa26895296.md) | 73 | `declaration-track:f68a03aaa36194fa26895296cdc4b35704c1647c7aec8e312f93d4b25c550691` |
| 9 | `def` | [PrototypeIncident](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Carrier/Variantae8ecc2ac6d7f851681cac472fc8c36c0611da9e9da0719b28ad5e257137bab8.lean/declarations/prototypeincident--75c5fe961ad31250d47c00f4.md) | 79 | `declaration-track:75c5fe961ad31250d47c00f457dc618ac17e49a33d383945676424715f86ad0b` |
| 10 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Carrier/Variantae8ecc2ac6d7f851681cac472fc8c36c0611da9e9da0719b28ad5e257137bab8.lean/declarations/instance--724f52c55312fd05db72e03d.md) | 83 | `declaration-track:724f52c55312fd05db72e03daedfc7ca917129470c6b281a198794dc77b4f935` |
| 11 | `def` | [prototypeCarrier](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Carrier/Variantae8ecc2ac6d7f851681cac472fc8c36c0611da9e9da0719b28ad5e257137bab8.lean/declarations/prototypecarrier--97224602dc1d3cea8843573d.md) | 88 | `declaration-track:97224602dc1d3cea8843573d97844b02c6410f9e6f059033dbdeadad35fbe24b` |
| 12 | `inductive` | [PrototypeOpen](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Carrier/Variantae8ecc2ac6d7f851681cac472fc8c36c0611da9e9da0719b28ad5e257137bab8.lean/declarations/prototypeopen--9b00202f9525d75009505717.md) | 99 | `declaration-track:9b00202f9525d75009505717c40b5692ad3081c78569e15008ae7505901ad8b9` |
| 13 | `def` | [prototypeOpenVertices](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Carrier/Variantae8ecc2ac6d7f851681cac472fc8c36c0611da9e9da0719b28ad5e257137bab8.lean/declarations/prototypeopenvertices--ae0459831a956926aa9a2068.md) | 104 | `declaration-track:ae0459831a956926aa9a2068da891930b6aa905b941861de87530cf07b44e728` |
| 14 | `def` | [prototypeCover](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Carrier/Variantae8ecc2ac6d7f851681cac472fc8c36c0611da9e9da0719b28ad5e257137bab8.lean/declarations/prototypecover--61dc53114d2cf6c6cea9ef3a.md) | 110 | `declaration-track:61dc53114d2cf6c6cea9ef3abd6efeb4d0fe1d2c41ffbc02e3ba9f34a1b650ed` |
| 15 | `theorem` | [prototypeCover_card](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Carrier/Variantae8ecc2ac6d7f851681cac472fc8c36c0611da9e9da0719b28ad5e257137bab8.lean/declarations/prototypecover-card--3becbba9239c427bd94617e0.md) | 112 | `result-track:3becbba9239c427bd94617e058d1ecbbdad1e1556580a22f1680abd4fb70e4d3` |
| 16 | `theorem` | [prototypeCover_covers_vertices](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Carrier/Variantae8ecc2ac6d7f851681cac472fc8c36c0611da9e9da0719b28ad5e257137bab8.lean/declarations/prototypecover-covers-vertices--45a07e4ae6cb4351cd14d965.md) | 115 | `result-track:45a07e4ae6cb4351cd14d9650b0faaa55cfa88b6e57e4a68ff059085123e87a8` |
| 17 | `theorem` | [prototypeCarrier_card](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Carrier/Variantae8ecc2ac6d7f851681cac472fc8c36c0611da9e9da0719b28ad5e257137bab8.lean/declarations/prototypecarrier-card--4b13c9f8d4bc338a015311e2.md) | 126 | `result-track:4b13c9f8d4bc338a015311e23a5577fea37050f308bd5e2f273efd9a1aebd2c2` |
| 18 | `theorem` | [prototype_incidence_does_not_supply_translation](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Carrier/Variantae8ecc2ac6d7f851681cac472fc8c36c0611da9e9da0719b28ad5e257137bab8.lean/declarations/prototype-incidence-does-not-supply-translation--9fdab870f390b5b114011129.md) | 130 | `result-track:9fdab870f390b5b114011129fc2ade627c3ab0695baa7660c2fbd3cf87262444` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
