# Verification target: GRWTSK.Topology.Alexandrov.Variant494fb1119e75785d8b42ca73deb26b0205f2a9035d27176a389fd1b57951cb7a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ad5e4d9061aa24fb951ae6ec43615091460d9e0e",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/Alexandrov/Variant494fb1119e75785d8b42ca73deb26b0205f2a9035d27176a389fd1b57951cb7a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Topology/Alexandrov/Variant494fb1119e75785d8b42ca73deb26b0205f2a9035d27176a389fd1b57951cb7a.lean/index.md) · [Full source](../../../../mathematics/Topology/Alexandrov/Variant494fb1119e75785d8b42ca73deb26b0205f2a9035d27176a389fd1b57951cb7a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ad5e4d9061aa24fb951ae6ec43615091460d9e0e`.

Source path: `GRWTSK/Topology/Alexandrov/Variant494fb1119e75785d8b42ca73deb26b0205f2a9035d27176a389fd1b57951cb7a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/Alexandrov/Variant494fb1119e75785d8b42ca73deb26b0205f2a9035d27176a389fd1b57951cb7a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Combinatorics.Quiver.ReflQuiver` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.CompletePartialOrder` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Order.UpperLowerSetTopology` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Sheaves.SheafCondition.OpensLeCover` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [principalOpen](../../../../mathematics/Topology/Alexandrov/Variant494fb1119e75785d8b42ca73deb26b0205f2a9035d27176a389fd1b57951cb7a.lean/declarations/principalopen--3850e104d3ad2bc1ab27fe07.md) | 46 | `declaration-track:3850e104d3ad2bc1ab27fe07f1b346096961e1a0d696d62c27fd9c9d53870992` |
| 2 | `lemma` | [self_mem_principalOpen](../../../../mathematics/Topology/Alexandrov/Variant494fb1119e75785d8b42ca73deb26b0205f2a9035d27176a389fd1b57951cb7a.lean/declarations/self-mem-principalopen--a2e744c623fb0a9c6de4580f.md) | 51 | `result-track:a2e744c623fb0a9c6de4580fb2f3527c28175ea7f4dca84ee5a27dba2b1b9a90` |
| 3 | `lemma` | [principalOpen_le_iff](../../../../mathematics/Topology/Alexandrov/Variant494fb1119e75785d8b42ca73deb26b0205f2a9035d27176a389fd1b57951cb7a.lean/declarations/principalopen-le-iff--3c2f76af459f79e6f9f9ca5a.md) | 54 | `result-track:3c2f76af459f79e6f9f9ca5aec61637e741d316d7e005a638630dd08331cfc12` |
| 4 | `lemma` | [principalOpen_le](../../../../mathematics/Topology/Alexandrov/Variant494fb1119e75785d8b42ca73deb26b0205f2a9035d27176a389fd1b57951cb7a.lean/declarations/principalopen-le--3e52e8b386a12f55e503c530.md) | 61 | `result-track:3e52e8b386a12f55e503c530afea0d6b6852579855f9e73feca0de393d220ec7` |
| 5 | `def` | [principals](../../../../mathematics/Topology/Alexandrov/Variant494fb1119e75785d8b42ca73deb26b0205f2a9035d27176a389fd1b57951cb7a.lean/declarations/principals--99f64e9777bea212471b268b.md) | 68 | `declaration-track:99f64e9777bea212471b268bd9ec607735bb18247fed0c5d927ffe139085b57d` |
| 6 | `lemma` | [exists_le_of_le_sup](../../../../mathematics/Topology/Alexandrov/Variant494fb1119e75785d8b42ca73deb26b0205f2a9035d27176a389fd1b57951cb7a.lean/declarations/exists-le-of-le-sup--a51772d629d63cb4ffaa1bf4.md) | 72 | `result-track:a51772d629d63cb4ffaa1bf412ca45addc97a7c51935f3df387adfdac6c9bdb2` |
| 7 | `abbrev` | [principalsKanExtension](../../../../mathematics/Topology/Alexandrov/Variant494fb1119e75785d8b42ca73deb26b0205f2a9035d27176a389fd1b57951cb7a.lean/declarations/principalskanextension--77ebad31b72911f3e6ed933e.md) | 82 | `declaration-track:77ebad31b72911f3e6ed933e90102c389dc3f631e204829c64276dcd2f47c33e` |
| 8 | `abbrev` | [generator](../../../../mathematics/Topology/Alexandrov/Variant494fb1119e75785d8b42ca73deb26b0205f2a9035d27176a389fd1b57951cb7a.lean/declarations/generator--ebbc52a690c80f2e6153ec79.md) | 87 | `declaration-track:ebbc52a690c80f2e6153ec79cd32f6ebdeb1b582a9d384d4de7f57696abcfb7f` |
| 9 | `def` | [projSup](../../../../mathematics/Topology/Alexandrov/Variant494fb1119e75785d8b42ca73deb26b0205f2a9035d27176a389fd1b57951cb7a.lean/declarations/projsup--8779576b0dacd13b578d6fa1.md) | 99 | `declaration-track:8779576b0dacd13b578d6fa1f0f196195cbf00ca29e3e30a7aa981306ca1bfa0` |
| 10 | `def` | [lowerCone](../../../../mathematics/Topology/Alexandrov/Variant494fb1119e75785d8b42ca73deb26b0205f2a9035d27176a389fd1b57951cb7a.lean/declarations/lowercone--104a10fcfadc54f5ee697246.md) | 108 | `declaration-track:104a10fcfadc54f5ee6972460a775f3a8a7e64a954b439bd627d9a66ee99f326` |
| 11 | `def` | [isLimit](../../../../mathematics/Topology/Alexandrov/Variant494fb1119e75785d8b42ca73deb26b0205f2a9035d27176a389fd1b57951cb7a.lean/declarations/islimit--65595f47531502ff94261ca4.md) | 145 | `declaration-track:65595f47531502ff94261ca449875ae961fe9c26de36beff99d54c9fa90ac25f` |
| 12 | `theorem` | [isSheaf_principalsKanExtension](../../../../mathematics/Topology/Alexandrov/Variant494fb1119e75785d8b42ca73deb26b0205f2a9035d27176a389fd1b57951cb7a.lean/declarations/issheaf-principalskanextension--0297e3a53b7768d21b8ad30e.md) | 184 | `result-track:0297e3a53b7768d21b8ad30e80d2986f230ec920ae2712f0882883146d741d8e` |
| 13 | `theorem` | [Topology.IsUpperSet.isSheaf_of_isRightKanExtension](../../../../mathematics/Topology/Alexandrov/Variant494fb1119e75785d8b42ca73deb26b0205f2a9035d27176a389fd1b57951cb7a.lean/declarations/topology-isupperset-issheaf-of-isrightkanextension--1b51a13c6396c025e48d02bf.md) | 203 | `result-track:1b51a13c6396c025e48d02bf3d38ee3c617a6083e1b192121fa2504d81519d5c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
