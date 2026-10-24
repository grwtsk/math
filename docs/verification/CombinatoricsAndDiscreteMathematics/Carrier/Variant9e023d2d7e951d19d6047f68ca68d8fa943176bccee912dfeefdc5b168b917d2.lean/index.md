# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Carrier.Variant9e023d2d7e951d19d6047f68ca68d8fa943176bccee912dfeefdc5b168b917d2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5d67e5aebb92f9943f04b091183c49b8d6489dfa",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Carrier/Variant9e023d2d7e951d19d6047f68ca68d8fa943176bccee912dfeefdc5b168b917d2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Carrier/Variant9e023d2d7e951d19d6047f68ca68d8fa943176bccee912dfeefdc5b168b917d2.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Carrier/Variant9e023d2d7e951d19d6047f68ca68d8fa943176bccee912dfeefdc5b168b917d2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5d67e5aebb92f9943f04b091183c49b8d6489dfa`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Carrier/Variant9e023d2d7e951d19d6047f68ca68d8fa943176bccee912dfeefdc5b168b917d2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Carrier/Variant9e023d2d7e951d19d6047f68ca68d8fa943176bccee912dfeefdc5b168b917d2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.Integration.WorldModelPrototype.Models` — import line 1; external provider; requires a separately pinned dependency.
- `Surface.ContinuousAssurance.WorldModel.Carrier` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Sum` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.DeriveFintype` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [PrototypeVertex](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Carrier/Variant9e023d2d7e951d19d6047f68ca68d8fa943176bccee912dfeefdc5b168b917d2.lean/declarations/prototypevertex--21170190d56527360ed5cb26.md) | 21 | `declaration-track:21170190d56527360ed5cb263038cc7de5864fe760a56f1f92fa9b9df0cb99c4` |
| 2 | `inductive` | [PrototypeEdge](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Carrier/Variant9e023d2d7e951d19d6047f68ca68d8fa943176bccee912dfeefdc5b168b917d2.lean/declarations/prototypeedge--4feb966affdd719ebd815b57.md) | 26 | `declaration-track:4feb966affdd719ebd815b57437189bfa5cbec9e79f61866119c4c9d3d66511d` |
| 3 | `inductive` | [PrototypeFace](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Carrier/Variant9e023d2d7e951d19d6047f68ca68d8fa943176bccee912dfeefdc5b168b917d2.lean/declarations/prototypeface--5fad9bccbb6e9cd7b20aa81b.md) | 31 | `declaration-track:5fad9bccbb6e9cd7b20aa81b5739e057ab6c409d680beef614e040f2a27c46d0` |
| 4 | `inductive` | [PrototypeCell](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Carrier/Variant9e023d2d7e951d19d6047f68ca68d8fa943176bccee912dfeefdc5b168b917d2.lean/declarations/prototypecell--39ef035c9d9c4efd614a3a84.md) | 36 | `declaration-track:39ef035c9d9c4efd614a3a8424702ef3d380c824ce79c7097911b461376f5da8` |
| 5 | `def` | [prototypeEdgeEndpoints](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Carrier/Variant9e023d2d7e951d19d6047f68ca68d8fa943176bccee912dfeefdc5b168b917d2.lean/declarations/prototypeedgeendpoints--79eb42f91df3d5a0fdb8012c.md) | 43 | `declaration-track:79eb42f91df3d5a0fdb8012cc4f6fca364a16791e2329bca0645c8bd5ca45a50` |
| 6 | `def` | [prototypeFaceEdges](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Carrier/Variant9e023d2d7e951d19d6047f68ca68d8fa943176bccee912dfeefdc5b168b917d2.lean/declarations/prototypefaceedges--be2fefc4bd78f5c9034ff324.md) | 52 | `declaration-track:be2fefc4bd78f5c9034ff324235e36a862794eb7ae7648178c3e9e19b725c774` |
| 7 | `def` | [prototypeCellVertices](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Carrier/Variant9e023d2d7e951d19d6047f68ca68d8fa943176bccee912dfeefdc5b168b917d2.lean/declarations/prototypecellvertices--6dbddfe0b9f0a3b12ecea6ae.md) | 57 | `declaration-track:6dbddfe0b9f0a3b12ecea6aee38d3f05f477963ef6ef50ee8252723bdf1ecfb0` |
| 8 | `def` | [prototypeCellDimension](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Carrier/Variant9e023d2d7e951d19d6047f68ca68d8fa943176bccee912dfeefdc5b168b917d2.lean/declarations/prototypecelldimension--dfa12656fc832490d2873f09.md) | 65 | `declaration-track:dfa12656fc832490d2873f09a21d588c7f84b3fe65de91f02c67d6eb96f50d98` |
| 9 | `def` | [PrototypeIncident](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Carrier/Variant9e023d2d7e951d19d6047f68ca68d8fa943176bccee912dfeefdc5b168b917d2.lean/declarations/prototypeincident--a985475d7c88ada4dcbc1716.md) | 71 | `declaration-track:a985475d7c88ada4dcbc1716241ac5b2623d85898e8286a0e5b3963262aebb0f` |
| 10 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Carrier/Variant9e023d2d7e951d19d6047f68ca68d8fa943176bccee912dfeefdc5b168b917d2.lean/declarations/instance--359a0e2d49eeb2d8061f863b.md) | 75 | `declaration-track:359a0e2d49eeb2d8061f863b8bdfb36530d7980c8e8a713b26d25698b260e357` |
| 11 | `def` | [prototypeCarrier](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Carrier/Variant9e023d2d7e951d19d6047f68ca68d8fa943176bccee912dfeefdc5b168b917d2.lean/declarations/prototypecarrier--bfd68f68bd2eb54445a726e3.md) | 80 | `declaration-track:bfd68f68bd2eb54445a726e3f791a405f004b4772b5b7d1b348c6a20c2768fa3` |
| 12 | `inductive` | [PrototypeOpen](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Carrier/Variant9e023d2d7e951d19d6047f68ca68d8fa943176bccee912dfeefdc5b168b917d2.lean/declarations/prototypeopen--0dc8075e3eba068cedb0b3c1.md) | 91 | `declaration-track:0dc8075e3eba068cedb0b3c13656ab9cca074c13d44a3d45b73a2015c126f7ae` |
| 13 | `def` | [prototypeOpenVertices](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Carrier/Variant9e023d2d7e951d19d6047f68ca68d8fa943176bccee912dfeefdc5b168b917d2.lean/declarations/prototypeopenvertices--b579fe491419131899a6d381.md) | 96 | `declaration-track:b579fe491419131899a6d38151ea640b21afe7828944df1e3fb982984aab8072` |
| 14 | `def` | [prototypeCover](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Carrier/Variant9e023d2d7e951d19d6047f68ca68d8fa943176bccee912dfeefdc5b168b917d2.lean/declarations/prototypecover--2080442c2a2935ca8dfe3ad8.md) | 102 | `declaration-track:2080442c2a2935ca8dfe3ad80c99044e7f209b95466c60ba436790884653c3d7` |
| 15 | `theorem` | [prototypeCover_card](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Carrier/Variant9e023d2d7e951d19d6047f68ca68d8fa943176bccee912dfeefdc5b168b917d2.lean/declarations/prototypecover-card--8d6d99cba6eefe1ffe072bbf.md) | 104 | `result-track:8d6d99cba6eefe1ffe072bbf8aa1fbe2fd15bb98f8135e53feaf2d4759ff3c94` |
| 16 | `theorem` | [prototypeCover_covers_vertices](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Carrier/Variant9e023d2d7e951d19d6047f68ca68d8fa943176bccee912dfeefdc5b168b917d2.lean/declarations/prototypecover-covers-vertices--ac656f9e84fbbf86f8101e34.md) | 107 | `result-track:ac656f9e84fbbf86f8101e3429c059f9d5ff119db04fa0aca20611ce7d0e507c` |
| 17 | `theorem` | [prototypeCarrier_card](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Carrier/Variant9e023d2d7e951d19d6047f68ca68d8fa943176bccee912dfeefdc5b168b917d2.lean/declarations/prototypecarrier-card--e0f77c443d0a28180d279aa2.md) | 118 | `result-track:e0f77c443d0a28180d279aa27d1710f3b1ffd27928d011c14e095d0f4af7be15` |
| 18 | `theorem` | [prototype_incidence_does_not_supply_translation](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Carrier/Variant9e023d2d7e951d19d6047f68ca68d8fa943176bccee912dfeefdc5b168b917d2.lean/declarations/prototype-incidence-does-not-supply-translation--eb008c7f795bfefe0e9e905e.md) | 122 | `result-track:eb008c7f795bfefe0e9e905e72dc5121c97d3ef5287f63bf23a66c41e3aa1196` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
