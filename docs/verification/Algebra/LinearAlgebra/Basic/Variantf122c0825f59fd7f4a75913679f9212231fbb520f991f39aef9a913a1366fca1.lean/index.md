# Verification target: GRWTSK.Algebra.LinearAlgebra.Basic.Variantf122c0825f59fd7f4a75913679f9212231fbb520f991f39aef9a913a1366fca1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "428b3057aeb9db19fbae5d1505d0ee68fc5bb2ab",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variantf122c0825f59fd7f4a75913679f9212231fbb520f991f39aef9a913a1366fca1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantf122c0825f59fd7f4a75913679f9212231fbb520f991f39aef9a913a1366fca1.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantf122c0825f59fd7f4a75913679f9212231fbb520f991f39aef9a913a1366fca1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `428b3057aeb9db19fbae5d1505d0ee68fc5bb2ab`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Basic/Variantf122c0825f59fd7f4a75913679f9212231fbb520f991f39aef9a913a1366fca1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Basic/Variantf122c0825f59fd7f4a75913679f9212231fbb520f991f39aef9a913a1366fca1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.ULift` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finsupp.Fintype` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Basis.Basic` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Small.Basic` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [Free](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantf122c0825f59fd7f4a75913679f9212231fbb520f991f39aef9a913a1366fca1.lean/declarations/free--bdf6aa7c0a1400d005e90e94.md) | 46 | `declaration-track:bdf6aa7c0a1400d005e90e94daf39ba56c977033fd56dbc30d275ecb128cf134` |
| 2 | `lemma` | [Free.exists_set](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantf122c0825f59fd7f4a75913679f9212231fbb520f991f39aef9a913a1366fca1.lean/declarations/free-exists-set--5ebefcea14f8a6d867d2372d.md) | 49 | `result-track:5ebefcea14f8a6d867d2372d4e1a51cb8331430b6de2b4eb54072ad9d837b059` |
| 3 | `theorem` | [free_iff_set](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantf122c0825f59fd7f4a75913679f9212231fbb520f991f39aef9a913a1366fca1.lean/declarations/free-iff-set--37a4340bc323325a8aa7ab82.md) | 52 | `result-track:37a4340bc323325a8aa7ab829674699c8046537e3587a743a37f4a074510b8c5` |
| 4 | `theorem` | [free_def](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantf122c0825f59fd7f4a75913679f9212231fbb520f991f39aef9a913a1366fca1.lean/declarations/free-def--2cd996312e9fa4229a8052a2.md) | 60 | `result-track:2cd996312e9fa4229a8052a247fba33635647712ffa292dc364bab6afd788844` |
| 5 | `theorem` | [Free.of_basis](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantf122c0825f59fd7f4a75913679f9212231fbb520f991f39aef9a913a1366fca1.lean/declarations/free-of-basis--b91f86331142c2b2dfb0c239.md) | 68 | `result-track:b91f86331142c2b2dfb0c239ab5000b80e9d4498a2f401c2130d69b0fc0ce1fe` |
| 6 | `def` | [ChooseBasisIndex](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantf122c0825f59fd7f4a75913679f9212231fbb520f991f39aef9a913a1366fca1.lean/declarations/choosebasisindex--4e7490a3ec24cb557eded974.md) | 82 | `declaration-track:4e7490a3ec24cb557eded974e22a79be2e86e62ef0efc0e67bc8fb004f874144` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantf122c0825f59fd7f4a75913679f9212231fbb520f991f39aef9a913a1366fca1.lean/declarations/instance--36292fb5ceb252d99f8208f6.md) | 87 | `declaration-track:36292fb5ceb252d99f8208f613a3aeff55474bef69b4c88d91885f3c089195dc` |
| 8 | `def` | [chooseBasis](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantf122c0825f59fd7f4a75913679f9212231fbb520f991f39aef9a913a1366fca1.lean/declarations/choosebasis--6d710c600682488cf065a91f.md) | 91 | `declaration-track:6d710c600682488cf065a91f581fd20b85467731b44e4ce2e87f99b8526c52f8` |
| 9 | `def` | [repr](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantf122c0825f59fd7f4a75913679f9212231fbb520f991f39aef9a913a1366fca1.lean/declarations/repr--23b1c8779ece6701bc5847b5.md) | 95 | `declaration-track:23b1c8779ece6701bc5847b5ffb526c83e9f36e8b8ebc64a67aa9f67c0909677` |
| 10 | `def` | [constr](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantf122c0825f59fd7f4a75913679f9212231fbb520f991f39aef9a913a1366fca1.lean/declarations/constr--ac49b256673bc326ffd225ac.md) | 106 | `declaration-track:ac49b256673bc326ffd225ac286eae50a88721bd1b5caf5ed4d940bfa7f4e1b8` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantf122c0825f59fd7f4a75913679f9212231fbb520f991f39aef9a913a1366fca1.lean/declarations/instance--cd72295e687407d8f010064c.md) | 110 | `declaration-track:cd72295e687407d8f010064cce8b37c4192e8e948896626d8bb7b39a01cf56ad` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantf122c0825f59fd7f4a75913679f9212231fbb520f991f39aef9a913a1366fca1.lean/declarations/instance--575d91dd43612dd5b0efd953.md) | 114 | `declaration-track:575d91dd43612dd5b0efd95328864b96531df71777b096d4f4dd8101b721bb16` |
| 13 | `theorem` | [infinite](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantf122c0825f59fd7f4a75913679f9212231fbb520f991f39aef9a913a1366fca1.lean/declarations/infinite--47d5f4a06f34e49d5d67f11a.md) | 117 | `result-track:47d5f4a06f34e49d5d67f11aa284146647764012f9d3fe8a527e4ed7f07295e4` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantf122c0825f59fd7f4a75913679f9212231fbb520f991f39aef9a913a1366fca1.lean/declarations/instance--4bf3b7896d95c93eb293ba36.md) | 120 | `declaration-track:4bf3b7896d95c93eb293ba36ac215bd9c38ee9f5f444e3c0229d2272ae797c2a` |
| 15 | `theorem` | [of_equiv](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantf122c0825f59fd7f4a75913679f9212231fbb520f991f39aef9a913a1366fca1.lean/declarations/of-equiv--838068ad47714355e0c18fa6.md) | 125 | `result-track:838068ad47714355e0c18fa6e635c9392fbb7105042699c97f3b73acc472d4ca` |
| 16 | `theorem` | [of_equiv'](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantf122c0825f59fd7f4a75913679f9212231fbb520f991f39aef9a913a1366fca1.lean/declarations/of-equiv--b2dcc1f8fec2715014e779ac.md) | 130 | `result-track:b2dcc1f8fec2715014e779ac6fc2ef639a66fc8ede8d7ec23e2a84dda336d1a1` |
| 17 | `lemma` | [of_ringEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantf122c0825f59fd7f4a75913679f9212231fbb520f991f39aef9a913a1366fca1.lean/declarations/of-ringequiv--a437b5c9d08f0d5fb1eb8f58.md) | 135 | `result-track:a437b5c9d08f0d5fb1eb8f585cee360735cc1999889dd5a1cdd309494438d8e1` |
| 18 | `lemma` | [iff_of_ringEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantf122c0825f59fd7f4a75913679f9212231fbb520f991f39aef9a913a1366fca1.lean/declarations/iff-of-ringequiv--6deb2a9382c790e0108cffd2.md) | 149 | `result-track:6deb2a9382c790e0108cffd2f5647f952b386c504c0fd6f319897f4eeed43cbf` |
| 19 | `instance` | [self](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantf122c0825f59fd7f4a75913679f9212231fbb520f991f39aef9a913a1366fca1.lean/declarations/self--66dd2ec57ea59ce423bd0b89.md) | 158 | `declaration-track:66dd2ec57ea59ce423bd0b898074e7a6bd7fbcb0d8d8689e62263b8226387395` |
| 20 | `instance` | [ulift](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantf122c0825f59fd7f4a75913679f9212231fbb520f991f39aef9a913a1366fca1.lean/declarations/ulift--91ff46dc266075c32825da63.md) | 161 | `declaration-track:91ff46dc266075c32825da63fc0b36b2d0ef3b1f00334f5185f5e61a697aebe0` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantf122c0825f59fd7f4a75913679f9212231fbb520f991f39aef9a913a1366fca1.lean/declarations/instance--25e5fd1dc8ecee544615b1c8.md) | 163 | `declaration-track:25e5fd1dc8ecee544615b1c86aba21a92b0796c48940f64af69eccc5fa5667d7` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantf122c0825f59fd7f4a75913679f9212231fbb520f991f39aef9a913a1366fca1.lean/declarations/instance--2edbf6f953e1f21f97936b47.md) | 166 | `declaration-track:2edbf6f953e1f21f97936b4706aac5bb7585926553405896ce5a8f672d2d758f` |
| 23 | `theorem` | [repr_algebraMap](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantf122c0825f59fd7f4a75913679f9212231fbb520f991f39aef9a913a1366fca1.lean/declarations/repr-algebramap--7dd5a9bf58882282080dbd92.md) | 182 | `result-track:7dd5a9bf58882282080dbd925790cb47a5bf909a07d429102e6a7b246d8ee41e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
