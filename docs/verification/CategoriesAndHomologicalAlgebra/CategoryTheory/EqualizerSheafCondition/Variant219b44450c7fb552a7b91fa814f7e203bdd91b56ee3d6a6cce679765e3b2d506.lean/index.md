# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.EqualizerSheafCondition.Variant219b44450c7fb552a7b91fa814f7e203bdd91b56ee3d6a6cce679765e3b2d506

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "50381752dcfecd97c741d6dffd3cd52293ca5bd4",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EqualizerSheafCondition/Variant219b44450c7fb552a7b91fa814f7e203bdd91b56ee3d6a6cce679765e3b2d506.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqualizerSheafCondition/Variant219b44450c7fb552a7b91fa814f7e203bdd91b56ee3d6a6cce679765e3b2d506.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqualizerSheafCondition/Variant219b44450c7fb552a7b91fa814f7e203bdd91b56ee3d6a6cce679765e3b2d506.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `50381752dcfecd97c741d6dffd3cd52293ca5bd4`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EqualizerSheafCondition/Variant219b44450c7fb552a7b91fa814f7e203bdd91b56ee3d6a6cce679765e3b2d506.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/EqualizerSheafCondition/Variant219b44450c7fb552a7b91fa814f7e203bdd91b56ee3d6a6cce679765e3b2d506.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Sites.IsSheafFor` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Types.Shapes` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.ApplyFun` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [FirstObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqualizerSheafCondition/Variant219b44450c7fb552a7b91fa814f7e203bdd91b56ee3d6a6cce679765e3b2d506.lean/declarations/firstobj--745d0497ad86fcf2cac04311.md) | 59 | `declaration-track:745d0497ad86fcf2cac04311e2a0d1a49e3bdbfbaca7eb317d01da49b904f7f0` |
| 2 | `lemma` | [FirstObj.ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqualizerSheafCondition/Variant219b44450c7fb552a7b91fa814f7e203bdd91b56ee3d6a6cce679765e3b2d506.lean/declarations/firstobj-ext--9b67d83296dd7fa7d5913d06.md) | 66 | `result-track:9b67d83296dd7fa7d5913d06745e21f4152bc8ecdf1d5e89a1980c62bcfbd226` |
| 3 | `def` | [firstObjEqFamily](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqualizerSheafCondition/Variant219b44450c7fb552a7b91fa814f7e203bdd91b56ee3d6a6cce679765e3b2d506.lean/declarations/firstobjeqfamily--2b8bd9edc9153564fb3f65d5.md) | 77 | `declaration-track:2b8bd9edc9153564fb3f65d59747e0a3507347e60350fedac10f3e2e92ff176c` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqualizerSheafCondition/Variant219b44450c7fb552a7b91fa814f7e203bdd91b56ee3d6a6cce679765e3b2d506.lean/declarations/instance--fc705f2196fcb1de96ed5368.md) | 81 | `declaration-track:fc705f2196fcb1de96ed5368672e03904269d9c5874c4df1e2a7a20a75e79741` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqualizerSheafCondition/Variant219b44450c7fb552a7b91fa814f7e203bdd91b56ee3d6a6cce679765e3b2d506.lean/declarations/instance--4e774e36bd91eebf2d1a4d34.md) | 85 | `declaration-track:4e774e36bd91eebf2d1a4d34abdf62ffaff07ab5d59da845353dc17aa5cddf95` |
| 6 | `def` | [forkMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqualizerSheafCondition/Variant219b44450c7fb552a7b91fa814f7e203bdd91b56ee3d6a6cce679765e3b2d506.lean/declarations/forkmap--f971025be69499fe7b1e063c.md) | 93 | `declaration-track:f971025be69499fe7b1e063c935c1442d0f3439874bbde5c38fd0b66ee30a4f7` |
| 7 | `def` | [SecondObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqualizerSheafCondition/Variant219b44450c7fb552a7b91fa814f7e203bdd91b56ee3d6a6cce679765e3b2d506.lean/declarations/secondobj--25ff6b6bfc126a27c6d0afcc.md) | 107 | `declaration-track:25ff6b6bfc126a27c6d0afcc6ac8b911e9acb18926cba3630a83b562c5129749` |
| 8 | `lemma` | [SecondObj.ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqualizerSheafCondition/Variant219b44450c7fb552a7b91fa814f7e203bdd91b56ee3d6a6cce679765e3b2d506.lean/declarations/secondobj-ext--34b141162949079046fb1c70.md) | 114 | `result-track:34b141162949079046fb1c70b0164e3910e64f3796d2591f5d3f0c02b9a929d2` |
| 9 | `def` | [firstMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqualizerSheafCondition/Variant219b44450c7fb552a7b91fa814f7e203bdd91b56ee3d6a6cce679765e3b2d506.lean/declarations/firstmap--059d413b3f3ba42dd882d3cc.md) | 124 | `declaration-track:059d413b3f3ba42dd882d3ccc4753ec29ad0a6228332fbd1f22bec87b3d366cb` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqualizerSheafCondition/Variant219b44450c7fb552a7b91fa814f7e203bdd91b56ee3d6a6cce679765e3b2d506.lean/declarations/instance--2ac226a6d0949bd67f5e518a.md) | 128 | `declaration-track:2ac226a6d0949bd67f5e518a54b63dd0d26237971756cafa70f5c7265125e74c` |
| 11 | `def` | [secondMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqualizerSheafCondition/Variant219b44450c7fb552a7b91fa814f7e203bdd91b56ee3d6a6cce679765e3b2d506.lean/declarations/secondmap--64793bd10deb636bc0fce0bf.md) | 132 | `declaration-track:64793bd10deb636bc0fce0bffbe6ce00c14cc9ae01e01fdf556225a7b89d9cbf` |
| 12 | `theorem` | [w](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqualizerSheafCondition/Variant219b44450c7fb552a7b91fa814f7e203bdd91b56ee3d6a6cce679765e3b2d506.lean/declarations/w--572268ccd7f5b5506557ad41.md) | 135 | `result-track:572268ccd7f5b5506557ad414749d8ddc495b68118e53ab0aa077cadd73732c5` |
| 13 | `theorem` | [compatible_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqualizerSheafCondition/Variant219b44450c7fb552a7b91fa814f7e203bdd91b56ee3d6a6cce679765e3b2d506.lean/declarations/compatible-iff--f1344d1e13b5415991e505fe.md) | 143 | `result-track:f1344d1e13b5415991e505fe66dac37ce8f1d5baa2caf10f447018951bf6079f` |
| 14 | `theorem` | [equalizer_sheaf_condition](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqualizerSheafCondition/Variant219b44450c7fb552a7b91fa814f7e203bdd91b56ee3d6a6cce679765e3b2d506.lean/declarations/equalizer-sheaf-condition--9feb2cea4ca6aa35a11b341c.md) | 156 | `result-track:9feb2cea4ca6aa35a11b341cc7d5785eeb26a130e3a9c5d1d3b380bf050a1b60` |
| 15 | `def` | [SecondObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqualizerSheafCondition/Variant219b44450c7fb552a7b91fa814f7e203bdd91b56ee3d6a6cce679765e3b2d506.lean/declarations/secondobj--98f7363db2d51e7f04598ceb.md) | 193 | `declaration-track:98f7363db2d51e7f04598cebdab7d47fa448376e01eec59a8c5f721bfa52b6a3` |
| 16 | `def` | [firstMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqualizerSheafCondition/Variant219b44450c7fb552a7b91fa814f7e203bdd91b56ee3d6a6cce679765e3b2d506.lean/declarations/firstmap--7d7a98a8a6715f0f932b501c.md) | 200 | `declaration-track:7d7a98a8a6715f0f932b501cd04496291345550fb1d688c2ad6e118afd5069f0` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqualizerSheafCondition/Variant219b44450c7fb552a7b91fa814f7e203bdd91b56ee3d6a6cce679765e3b2d506.lean/declarations/instance--f0c1b9815966ca5084825ed0.md) | 205 | `declaration-track:f0c1b9815966ca5084825ed0050fd60fbbe1d7e9ddbba4be6c2f12e2d023e5a0` |
| 18 | `def` | [secondMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqualizerSheafCondition/Variant219b44450c7fb552a7b91fa814f7e203bdd91b56ee3d6a6cce679765e3b2d506.lean/declarations/secondmap--e40876e1b6e9da2ba023dd22.md) | 210 | `declaration-track:e40876e1b6e9da2ba023dd228dcb8d683d70c658cacf62853ca5bf199bf71644` |
| 19 | `theorem` | [w](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqualizerSheafCondition/Variant219b44450c7fb552a7b91fa814f7e203bdd91b56ee3d6a6cce679765e3b2d506.lean/declarations/w--7ede7e202476837b1185ec80.md) | 215 | `result-track:7ede7e202476837b1185ec8080c6d04cac557ceba1d2f2a1d65066ccc88d61d3` |
| 20 | `theorem` | [compatible_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqualizerSheafCondition/Variant219b44450c7fb552a7b91fa814f7e203bdd91b56ee3d6a6cce679765e3b2d506.lean/declarations/compatible-iff--ecdbff48f7e05a90eee4fb2f.md) | 228 | `result-track:ecdbff48f7e05a90eee4fb2fec52b0423b02ea80f0481ea74ba902fe32a55d52` |
| 21 | `theorem` | [sheaf_condition](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqualizerSheafCondition/Variant219b44450c7fb552a7b91fa814f7e203bdd91b56ee3d6a6cce679765e3b2d506.lean/declarations/sheaf-condition--84b9fb5e3fadb95469b27cf8.md) | 242 | `result-track:84b9fb5e3fadb95469b27cf8817febaa554feb9a122d46120c35467be120010e` |
| 22 | `def` | [FirstObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqualizerSheafCondition/Variant219b44450c7fb552a7b91fa814f7e203bdd91b56ee3d6a6cce679765e3b2d506.lean/declarations/firstobj--7daee7e10e23e4712e421543.md) | 275 | `declaration-track:7daee7e10e23e4712e421543250ecf7a4c3619b328d77573a683594aeba797b5` |
| 23 | `lemma` | [FirstObj.ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqualizerSheafCondition/Variant219b44450c7fb552a7b91fa814f7e203bdd91b56ee3d6a6cce679765e3b2d506.lean/declarations/firstobj-ext--d7937824aa5b5fb4b0bae69c.md) | 278 | `result-track:d7937824aa5b5fb4b0bae69cb295df31ce8ae773d19630e76c114ef0a80a520c` |
| 24 | `def` | [SecondObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqualizerSheafCondition/Variant219b44450c7fb552a7b91fa814f7e203bdd91b56ee3d6a6cce679765e3b2d506.lean/declarations/secondobj--3482676f559782780f4c6ad8.md) | 290 | `declaration-track:3482676f559782780f4c6ad89e4ad54698652c93b38257601c25fb24d9788861` |
| 25 | `lemma` | [SecondObj.ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqualizerSheafCondition/Variant219b44450c7fb552a7b91fa814f7e203bdd91b56ee3d6a6cce679765e3b2d506.lean/declarations/secondobj-ext--ec710a7db56e2cf272e71bed.md) | 294 | `result-track:ec710a7db56e2cf272e71bed3230f708e029f3bc4d07ae339ea01434f87d422e` |
| 26 | `def` | [forkMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqualizerSheafCondition/Variant219b44450c7fb552a7b91fa814f7e203bdd91b56ee3d6a6cce679765e3b2d506.lean/declarations/forkmap--1d0f2cc41847500936873aff.md) | 303 | `declaration-track:1d0f2cc41847500936873affdbeed6f5c21632ac62db218dbf779904c4294ba5` |
| 27 | `def` | [firstMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqualizerSheafCondition/Variant219b44450c7fb552a7b91fa814f7e203bdd91b56ee3d6a6cce679765e3b2d506.lean/declarations/firstmap--afb477f096142a9257a405a0.md) | 309 | `declaration-track:afb477f096142a9257a405a03469236dc15ac77f789d04a6c08c8dbe9188b235` |
| 28 | `def` | [secondMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqualizerSheafCondition/Variant219b44450c7fb552a7b91fa814f7e203bdd91b56ee3d6a6cce679765e3b2d506.lean/declarations/secondmap--9184e6a2fefaeb03525fa3df.md) | 316 | `declaration-track:9184e6a2fefaeb03525fa3dff63060ac5b665317762ccf2da4c504f456f3c500` |
| 29 | `theorem` | [w](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqualizerSheafCondition/Variant219b44450c7fb552a7b91fa814f7e203bdd91b56ee3d6a6cce679765e3b2d506.lean/declarations/w--00dcb8c1ebbfddb117dfa9aa.md) | 319 | `result-track:00dcb8c1ebbfddb117dfa9aad1464ac63fb32662e73d69099ee1210d6500b622` |
| 30 | `theorem` | [compatible_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqualizerSheafCondition/Variant219b44450c7fb552a7b91fa814f7e203bdd91b56ee3d6a6cce679765e3b2d506.lean/declarations/compatible-iff--1644a660ed272ab8b2eef73a.md) | 328 | `result-track:1644a660ed272ab8b2eef73a544a89bea52b262be828c16526c51dae537ea1bb` |
| 31 | `theorem` | [sheaf_condition](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqualizerSheafCondition/Variant219b44450c7fb552a7b91fa814f7e203bdd91b56ee3d6a6cce679765e3b2d506.lean/declarations/sheaf-condition--82f0f3edcaffc433c39f88ab.md) | 341 | `result-track:82f0f3edcaffc433c39f88ab448930df6699894907d709d9062e6e5a5c3d0e21` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
