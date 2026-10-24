# Verification target: GRWTSK.Algebra.Constructions.Variant111f44ee08a2e7897fd2a492d9a743338b706dbea6e3457f5bdb5a4b046bdbf2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d3c674c7d72679ce6480457bf9ae24f8566d40ce",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Constructions/Variant111f44ee08a2e7897fd2a492d9a743338b706dbea6e3457f5bdb5a4b046bdbf2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Constructions/Variant111f44ee08a2e7897fd2a492d9a743338b706dbea6e3457f5bdb5a4b046bdbf2.lean/index.md) · [Full source](../../../../mathematics/Algebra/Constructions/Variant111f44ee08a2e7897fd2a492d9a743338b706dbea6e3457f5bdb5a4b046bdbf2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d3c674c7d72679ce6480457bf9ae24f8566d40ce`.

Source path: `GRWTSK/Algebra/Constructions/Variant111f44ee08a2e7897fd2a492d9a743338b706dbea6e3457f5bdb5a4b046bdbf2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Constructions/Variant111f44ee08a2e7897fd2a492d9a743338b706dbea6e3457f5bdb5a4b046bdbf2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Shapes.Pullbacks` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.TensorProduct` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.Ring.Limits` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.Ring.Instances` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.StrictInitial` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Subring.Basic` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [pushoutCocone](../../../../mathematics/Algebra/Constructions/Variant111f44ee08a2e7897fd2a492d9a743338b706dbea6e3457f5bdb5a4b046bdbf2.lean/declarations/pushoutcocone--2535f1683e8459aad84e7983.md) | 47 | `declaration-track:2535f1683e8459aad84e79837ae504ce16e293b7ede862e2f65997959ce1581d` |
| 2 | `theorem` | [pushoutCocone_inl](../../../../mathematics/Algebra/Constructions/Variant111f44ee08a2e7897fd2a492d9a743338b706dbea6e3457f5bdb5a4b046bdbf2.lean/declarations/pushoutcocone-inl--daf4665eb450b3c07ab82d93.md) | 62 | `result-track:daf4665eb450b3c07ab82d93ee2ebbf0261aa86c23a4ddab47b837a61e1c8e66` |
| 3 | `theorem` | [pushoutCocone_inr](../../../../mathematics/Algebra/Constructions/Variant111f44ee08a2e7897fd2a492d9a743338b706dbea6e3457f5bdb5a4b046bdbf2.lean/declarations/pushoutcocone-inr--71b3854ef083694501dc6628.md) | 72 | `result-track:71b3854ef083694501dc66283c170f3b5e8c4211acf9bcfd16efdc13a28efe1a` |
| 4 | `theorem` | [pushoutCocone_pt](../../../../mathematics/Algebra/Constructions/Variant111f44ee08a2e7897fd2a492d9a743338b706dbea6e3457f5bdb5a4b046bdbf2.lean/declarations/pushoutcocone-pt--7c337856acd4a9a77b7e5e69.md) | 82 | `result-track:7c337856acd4a9a77b7e5e69bdc6782f2a6e59cf18fb98412d961e5990e6f535` |
| 5 | `def` | [pushoutCoconeIsColimit](../../../../mathematics/Algebra/Constructions/Variant111f44ee08a2e7897fd2a492d9a743338b706dbea6e3457f5bdb5a4b046bdbf2.lean/declarations/pushoutcoconeiscolimit--0c997219948a5d65154efbe2.md) | 92 | `declaration-track:0c997219948a5d65154efbe25b5420592669f4cbb93e33363af83e4b868666b7` |
| 6 | `def` | [punitIsTerminal](../../../../mathematics/Algebra/Constructions/Variant111f44ee08a2e7897fd2a492d9a743338b706dbea6e3457f5bdb5a4b046bdbf2.lean/declarations/punitisterminal--4bca42ba3f4cb5d733be95bc.md) | 155 | `declaration-track:4bca42ba3f4cb5d733be95bc72f7db378e6adaf9ce0b3ec8792bdd1f75d8c0a9` |
| 7 | `instance` | [commRingCat_hasStrictTerminalObjects](../../../../mathematics/Algebra/Constructions/Variant111f44ee08a2e7897fd2a492d9a743338b706dbea6e3457f5bdb5a4b046bdbf2.lean/declarations/commringcat-hasstrictterminalobjects--0d0768781eee4aaef52e2af9.md) | 163 | `declaration-track:0d0768781eee4aaef52e2af9ab5773a438923b811acfa574032047ede7453bc5` |
| 8 | `theorem` | [subsingleton_of_isTerminal](../../../../mathematics/Algebra/Constructions/Variant111f44ee08a2e7897fd2a492d9a743338b706dbea6e3457f5bdb5a4b046bdbf2.lean/declarations/subsingleton-of-isterminal--260ba434ed0170a992a7cd0f.md) | 177 | `result-track:260ba434ed0170a992a7cd0f755dec4dc7ace488a59bcd5e04cd190a99369e87` |
| 9 | `def` | [zIsInitial](../../../../mathematics/Algebra/Constructions/Variant111f44ee08a2e7897fd2a492d9a743338b706dbea6e3457f5bdb5a4b046bdbf2.lean/declarations/zisinitial--adaf92c7a81d51bc894c3bc6.md) | 184 | `declaration-track:adaf92c7a81d51bc894c3bc620174a7a4ffb5eb29453705a53180b8acea4922d` |
| 10 | `def` | [prodFan](../../../../mathematics/Algebra/Constructions/Variant111f44ee08a2e7897fd2a492d9a743338b706dbea6e3457f5bdb5a4b046bdbf2.lean/declarations/prodfan--7c5577a69196b9573f3dbd1b.md) | 197 | `declaration-track:7c5577a69196b9573f3dbd1b45271b920baf383738e6e213a31b6e496c6f432f` |
| 11 | `def` | [prodFanIsLimit](../../../../mathematics/Algebra/Constructions/Variant111f44ee08a2e7897fd2a492d9a743338b706dbea6e3457f5bdb5a4b046bdbf2.lean/declarations/prodfanislimit--9e6aef7cba6514a06e68a397.md) | 203 | `declaration-track:9e6aef7cba6514a06e68a3977e96354543eb2bca4120f9ae2e35b1ed9f03a2d6` |
| 12 | `def` | [equalizerFork](../../../../mathematics/Algebra/Constructions/Variant111f44ee08a2e7897fd2a492d9a743338b706dbea6e3457f5bdb5a4b046bdbf2.lean/declarations/equalizerfork--8d6e4353df3cb42065a41101.md) | 229 | `declaration-track:8d6e4353df3cb42065a41101cb926cb86d63e707d7fd294db8569af0170a488e` |
| 13 | `def` | [equalizerForkIsLimit](../../../../mathematics/Algebra/Constructions/Variant111f44ee08a2e7897fd2a492d9a743338b706dbea6e3457f5bdb5a4b046bdbf2.lean/declarations/equalizerforkislimit--304f0ee7c10bce2157bd2096.md) | 237 | `declaration-track:304f0ee7c10bce2157bd20966abe81d78196ce83cf4cde86554940d540b156a9` |
| 14 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Constructions/Variant111f44ee08a2e7897fd2a492d9a743338b706dbea6e3457f5bdb5a4b046bdbf2.lean/declarations/instance--331c615312ecdac7defb49f2.md) | 252 | `declaration-track:331c615312ecdac7defb49f26b453ac120eb88b9e761b5cf277c563611a159b5` |
| 15 | `instance` | [equalizer_ι_isLocalRingHom](../../../../mathematics/Algebra/Constructions/Variant111f44ee08a2e7897fd2a492d9a743338b706dbea6e3457f5bdb5a4b046bdbf2.lean/declarations/equalizer-islocalringhom--c4d29bd327675d52c5ba696a.md) | 262 | `declaration-track:c4d29bd327675d52c5ba696a823c187456f29291a125c358793a84f5d5ffea65` |
| 16 | `instance` | [equalizer_ι_is_local_ring_hom'](../../../../mathematics/Algebra/Constructions/Variant111f44ee08a2e7897fd2a492d9a743338b706dbea6e3457f5bdb5a4b046bdbf2.lean/declarations/equalizer-is-local-ring-hom--a54dcef561029043556079e0.md) | 281 | `declaration-track:a54dcef561029043556079e0df7a115b6c4a7c13293f96a783a2eb6ff44bdf57` |
| 17 | `def` | [pullbackCone](../../../../mathematics/Algebra/Constructions/Variant111f44ee08a2e7897fd2a492d9a743338b706dbea6e3457f5bdb5a4b046bdbf2.lean/declarations/pullbackcone--0fcb89176a181527bd1d64d5.md) | 299 | `declaration-track:0fcb89176a181527bd1d64d533f39c17c1755d4bc0cd7bca691dc475b6ed7d46` |
| 18 | `def` | [pullbackConeIsLimit](../../../../mathematics/Algebra/Constructions/Variant111f44ee08a2e7897fd2a492d9a743338b706dbea6e3457f5bdb5a4b046bdbf2.lean/declarations/pullbackconeislimit--1dd2295d41876b1ca816c98d.md) | 314 | `declaration-track:1dd2295d41876b1ca816c98db9cca89efcaa486b48ed0774e72a176a920d74f4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
