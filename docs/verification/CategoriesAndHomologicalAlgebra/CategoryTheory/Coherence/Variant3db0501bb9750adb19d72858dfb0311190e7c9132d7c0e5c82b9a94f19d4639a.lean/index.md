# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Coherence.Variant3db0501bb9750adb19d72858dfb0311190e7c9132d7c0e5c82b9a94f19d4639a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d226a30a2cad4f486c7cbf440647b572cf2e805e",
  "lexical_observation_count": 48,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant3db0501bb9750adb19d72858dfb0311190e7c9132d7c0e5c82b9a94f19d4639a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant3db0501bb9750adb19d72858dfb0311190e7c9132d7c0e5c82b9a94f19d4639a.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant3db0501bb9750adb19d72858dfb0311190e7c9132d7c0e5c82b9a94f19d4639a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d226a30a2cad4f486c7cbf440647b572cf2e805e`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant3db0501bb9750adb19d72858dfb0311190e7c9132d7c0e5c82b9a94f19d4639a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant3db0501bb9750adb19d72858dfb0311190e7c9132d7c0e5c82b9a94f19d4639a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Monoidal.Free.Coherence` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.CategoryTheory.BicategoryCoherence` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [LiftObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant3db0501bb9750adb19d72858dfb0311190e7c9132d7c0e5c82b9a94f19d4639a.lean/declarations/liftobj--4c7f485fec572b07c73a8676.md) | 49 | `declaration-track:4c7f485fec572b07c73a867616e45ef797b795266065df3eb9e2a1f95bb5b6ef` |
| 2 | `instance` | [LiftObj_unit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant3db0501bb9750adb19d72858dfb0311190e7c9132d7c0e5c82b9a94f19d4639a.lean/declarations/liftobj-unit--1df3b7f9c9ac99219bda5502.md) | 52 | `declaration-track:1df3b7f9c9ac99219bda550206cdf2ec629eb8a7988145b6d64ae047dbd46bca` |
| 3 | `instance` | [LiftObj_tensor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant3db0501bb9750adb19d72858dfb0311190e7c9132d7c0e5c82b9a94f19d4639a.lean/declarations/liftobj-tensor--7a01a46e4c0601613f20bb37.md) | 54 | `declaration-track:7a01a46e4c0601613f20bb37d491528f48b5972519545a49f1a4e391193815d6` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant3db0501bb9750adb19d72858dfb0311190e7c9132d7c0e5c82b9a94f19d4639a.lean/declarations/instance--c1f700f87585b4966e7fb438.md) | 57 | `declaration-track:c1f700f87585b4966e7fb438bf46b1f31478e658b808dc169db035d6a9994404` |
| 5 | `class` | [LiftHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant3db0501bb9750adb19d72858dfb0311190e7c9132d7c0e5c82b9a94f19d4639a.lean/declarations/lifthom--bb56ce6ced81bffbab17c7d1.md) | 61 | `declaration-track:bb56ce6ced81bffbab17c7d1a07f93be8287620245b422b677102e173bc8593b` |
| 6 | `instance` | [LiftHom_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant3db0501bb9750adb19d72858dfb0311190e7c9132d7c0e5c82b9a94f19d4639a.lean/declarations/lifthom-id--8bd280397cee14778ea7c491.md) | 64 | `declaration-track:8bd280397cee14778ea7c491f822e932ab59fe33b260f452747b47651b873fa7` |
| 7 | `instance` | [LiftHom_left_unitor_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant3db0501bb9750adb19d72858dfb0311190e7c9132d7c0e5c82b9a94f19d4639a.lean/declarations/lifthom-left-unitor-hom--f1b03416c69aba7ad1d5c5e4.md) | 66 | `declaration-track:f1b03416c69aba7ad1d5c5e451b6ede854992eefddb701edcdf9e70039accb6d` |
| 8 | `instance` | [LiftHom_left_unitor_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant3db0501bb9750adb19d72858dfb0311190e7c9132d7c0e5c82b9a94f19d4639a.lean/declarations/lifthom-left-unitor-inv--f5a2a2c361902a94da36704f.md) | 69 | `declaration-track:f5a2a2c361902a94da36704f44d157547e1e07565cf97c069f0a7a14c8a14a0d` |
| 9 | `instance` | [LiftHom_right_unitor_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant3db0501bb9750adb19d72858dfb0311190e7c9132d7c0e5c82b9a94f19d4639a.lean/declarations/lifthom-right-unitor-hom--7d867fe7004c99b326010fb5.md) | 72 | `declaration-track:7d867fe7004c99b326010fb5b86c9325ff31503da359b754e209b304be8f3c87` |
| 10 | `instance` | [LiftHom_right_unitor_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant3db0501bb9750adb19d72858dfb0311190e7c9132d7c0e5c82b9a94f19d4639a.lean/declarations/lifthom-right-unitor-inv--594abffb076295f9a463f3c1.md) | 75 | `declaration-track:594abffb076295f9a463f3c19997282e44dc7acc2d3c2aee78f1869c1ad6361d` |
| 11 | `instance` | [LiftHom_associator_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant3db0501bb9750adb19d72858dfb0311190e7c9132d7c0e5c82b9a94f19d4639a.lean/declarations/lifthom-associator-hom--394ac372f27c3e4ce6967d2d.md) | 78 | `declaration-track:394ac372f27c3e4ce6967d2d02769afe64d4f6b9f09bc713ed8b36b65755ff2e` |
| 12 | `instance` | [LiftHom_associator_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant3db0501bb9750adb19d72858dfb0311190e7c9132d7c0e5c82b9a94f19d4639a.lean/declarations/lifthom-associator-inv--6790f263cdcde4400c01cf5e.md) | 82 | `declaration-track:6790f263cdcde4400c01cf5ed74827be6d7418034ed8c20710144d537b3a49e4` |
| 13 | `instance` | [LiftHom_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant3db0501bb9750adb19d72858dfb0311190e7c9132d7c0e5c82b9a94f19d4639a.lean/declarations/lifthom-comp--a89ffa1acd60fb1a5a319eed.md) | 86 | `declaration-track:a89ffa1acd60fb1a5a319eed3cd1d2584cf503cb48ae72f61bec1ce22e552bc0` |
| 14 | `instance` | [LiftHom_tensor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant3db0501bb9750adb19d72858dfb0311190e7c9132d7c0e5c82b9a94f19d4639a.lean/declarations/lifthom-tensor--67da2f5c419223cdbbd05fc9.md) | 90 | `declaration-track:67da2f5c419223cdbbd05fc97b64e2affdf418ff47044ce1fd3d12728818c7c9` |
| 15 | `class` | [MonoidalCoherence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant3db0501bb9750adb19d72858dfb0311190e7c9132d7c0e5c82b9a94f19d4639a.lean/declarations/monoidalcoherence--cbefe0f6a8908f97d6b7bff4.md) | 99 | `declaration-track:cbefe0f6a8908f97d6b7bff4c0268c2596768fc31e2393b397aa0adedca8d4ac` |
| 16 | `instance` | [refl](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant3db0501bb9750adb19d72858dfb0311190e7c9132d7c0e5c82b9a94f19d4639a.lean/declarations/refl--7d6ca5f2272af1feea738aca.md) | 108 | `declaration-track:7d6ca5f2272af1feea738aca9b541f057c70821f098ac2e09ae27a075f4121e3` |
| 17 | `instance` | [tensor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant3db0501bb9750adb19d72858dfb0311190e7c9132d7c0e5c82b9a94f19d4639a.lean/declarations/tensor--4c3bbcd7c9f6d78a2bcb0f9c.md) | 111 | `declaration-track:4c3bbcd7c9f6d78a2bcb0f9c5e507278521edce17c57aa30d3b07b9eff3f87ed` |
| 18 | `instance` | [tensor_right](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant3db0501bb9750adb19d72858dfb0311190e7c9132d7c0e5c82b9a94f19d4639a.lean/declarations/tensor-right--b43c172290b14a938356f3f0.md) | 116 | `declaration-track:b43c172290b14a938356f3f0b7d604032f98180e0f66dec4cd8aed43e4ef4e87` |
| 19 | `instance` | [tensor_right'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant3db0501bb9750adb19d72858dfb0311190e7c9132d7c0e5c82b9a94f19d4639a.lean/declarations/tensor-right--3ad2aa95b72fd6874db3ee29.md) | 121 | `declaration-track:3ad2aa95b72fd6874db3ee2943e267e05aeb889d3012d511e53e0b8e19308ba2` |
| 20 | `instance` | [left](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant3db0501bb9750adb19d72858dfb0311190e7c9132d7c0e5c82b9a94f19d4639a.lean/declarations/left--036202a67707bc43684fde25.md) | 126 | `declaration-track:036202a67707bc43684fde2533921a16b57c0025cb9cab66bfb25328d155d2c8` |
| 21 | `instance` | [left'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant3db0501bb9750adb19d72858dfb0311190e7c9132d7c0e5c82b9a94f19d4639a.lean/declarations/left--c59be60298a6ab86375cd0f3.md) | 131 | `declaration-track:c59be60298a6ab86375cd0f35eab81252145f78555a1d860048620e2cb11e0f5` |
| 22 | `instance` | [right](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant3db0501bb9750adb19d72858dfb0311190e7c9132d7c0e5c82b9a94f19d4639a.lean/declarations/right--80ff6eccfe8d8e9d5e10c8bd.md) | 136 | `declaration-track:80ff6eccfe8d8e9d5e10c8bdcf518fb355c53435abdbc66f27339bfeeb69f4e6` |
| 23 | `instance` | [right'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant3db0501bb9750adb19d72858dfb0311190e7c9132d7c0e5c82b9a94f19d4639a.lean/declarations/right--cf85ef329d877ecb6e181554.md) | 141 | `declaration-track:cf85ef329d877ecb6e18155406e85e80ed8fa82ad23721ff7859f566fab553be` |
| 24 | `instance` | [assoc](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant3db0501bb9750adb19d72858dfb0311190e7c9132d7c0e5c82b9a94f19d4639a.lean/declarations/assoc--df6cb272a48295a3ea560ae1.md) | 146 | `declaration-track:df6cb272a48295a3ea560ae183cfe28ebc3d7407fbcc820be45af773b137c6a7` |
| 25 | `instance` | [assoc'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant3db0501bb9750adb19d72858dfb0311190e7c9132d7c0e5c82b9a94f19d4639a.lean/declarations/assoc--488347bae8a4aae2e429c7d6.md) | 151 | `declaration-track:488347bae8a4aae2e429c7d669fff840d359f47b65a0c9a6950c34c5f5999f74` |
| 26 | `def` | [monoidalIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant3db0501bb9750adb19d72858dfb0311190e7c9132d7c0e5c82b9a94f19d4639a.lean/declarations/monoidaliso--cf81de8a7b9eeacbadc8a7d8.md) | 159 | `declaration-track:cf81de8a7b9eeacbadc8a7d820de6b1892866a86088461970b9c6fbca9e72808` |
| 27 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant3db0501bb9750adb19d72858dfb0311190e7c9132d7c0e5c82b9a94f19d4639a.lean/declarations/example--0c1880cdf1d4cd9f6bb7d328.md) | 162 | `declaration-track:0c1880cdf1d4cd9f6bb7d328f05e3c53710f9a65fcbf4792766d2107373a4732` |
| 28 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant3db0501bb9750adb19d72858dfb0311190e7c9132d7c0e5c82b9a94f19d4639a.lean/declarations/example--a3ad2d98d61ef2b686591d3f.md) | 164 | `declaration-track:a3ad2d98d61ef2b686591d3fe0298b6dec556700fc1413c20f4da38e9806c311` |
| 29 | `def` | [monoidalComp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant3db0501bb9750adb19d72858dfb0311190e7c9132d7c0e5c82b9a94f19d4639a.lean/declarations/monoidalcomp--8e14fcfa3749b866ea05e107.md) | 171 | `declaration-track:8e14fcfa3749b866ea05e107934209458f0604d74079ad69ea86f241dca1756d` |
| 30 | `def` | [monoidalIsoComp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant3db0501bb9750adb19d72858dfb0311190e7c9132d7c0e5c82b9a94f19d4639a.lean/declarations/monoidalisocomp--5eacd567a9ce9dc34e7da44c.md) | 181 | `declaration-track:5eacd567a9ce9dc34e7da44cd1462645e90a0407b6072a614e8f89fffeb85d9f` |
| 31 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant3db0501bb9750adb19d72858dfb0311190e7c9132d7c0e5c82b9a94f19d4639a.lean/declarations/example--2d37dbed25ed406940f1b107.md) | 189 | `declaration-track:2d37dbed25ed406940f1b1071ba2ec9219c31669191477150ed7afe43b7c5f56` |
| 32 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant3db0501bb9750adb19d72858dfb0311190e7c9132d7c0e5c82b9a94f19d4639a.lean/declarations/example--466076f75de8e9824ff74584.md) | 193 | `declaration-track:466076f75de8e9824ff745841321a5f858d9672effef4b31b6af65aed1b9fa90` |
| 33 | `lemma` | [monoidalComp_refl](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant3db0501bb9750adb19d72858dfb0311190e7c9132d7c0e5c82b9a94f19d4639a.lean/declarations/monoidalcomp-refl--8f7d082cdcf51d79bdcf311b.md) | 195 | `result-track:8f7d082cdcf51d79bdcf311bcefbdda8a59f1945746da82e0ed14314ab851437` |
| 34 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant3db0501bb9750adb19d72858dfb0311190e7c9132d7c0e5c82b9a94f19d4639a.lean/declarations/example--eac568fb0b5d184e1bbb7ed6.md) | 199 | `declaration-track:eac568fb0b5d184e1bbb7ed6bcc5822563cc281603d2304da1c38a22d47b676d` |
| 35 | `def` | [exception](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant3db0501bb9750adb19d72858dfb0311190e7c9132d7c0e5c82b9a94f19d4639a.lean/declarations/exception--b0e8ca4f2269fdbde3134b66.md) | 208 | `declaration-track:b0e8ca4f2269fdbde3134b667ae83d522b24fff73cc474fd60539e3f8bd752b2` |
| 36 | `def` | [exception'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant3db0501bb9750adb19d72858dfb0311190e7c9132d7c0e5c82b9a94f19d4639a.lean/declarations/exception--1818726b202cfae5f5f0b523.md) | 211 | `declaration-track:1818726b202cfae5f5f0b523673e5f5023baebc5967fe7c1c7f226bcedd36cb7` |
| 37 | `def` | [mkProjectMapExpr](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant3db0501bb9750adb19d72858dfb0311190e7c9132d7c0e5c82b9a94f19d4639a.lean/declarations/mkprojectmapexpr--8000d4d3f9786ba9828d2708.md) | 221 | `declaration-track:8000d4d3f9786ba9828d2708133e446665c21e3aff383e90c4cedef24081b275` |
| 38 | `def` | [monoidal_coherence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant3db0501bb9750adb19d72858dfb0311190e7c9132d7c0e5c82b9a94f19d4639a.lean/declarations/monoidal-coherence--bc2caea9ba7625a76b2b1c09.md) | 227 | `declaration-track:bc2caea9ba7625a76b2b1c09a2a21bbb00bf8ebc4daef867e4aab129964c2bb2` |
| 39 | `elab` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant3db0501bb9750adb19d72858dfb0311190e7c9132d7c0e5c82b9a94f19d4639a.lean/declarations/elab--c14f587d9f8d4e1addeda440.md) | 245 | `declaration-track:c14f587d9f8d4e1addeda440dc09ab746dca3b699d646de42fd8a3c5c9bb6eae` |
| 40 | `elab` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant3db0501bb9750adb19d72858dfb0311190e7c9132d7c0e5c82b9a94f19d4639a.lean/declarations/elab--31d012869aa5c2f04efad254.md) | 263 | `declaration-track:31d012869aa5c2f04efad254a49e0f18e37ac3ea0c22f00d1dd94dc2cbfdfbec` |
| 41 | `lemma` | [assoc_liftHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant3db0501bb9750adb19d72858dfb0311190e7c9132d7c0e5c82b9a94f19d4639a.lean/declarations/assoc-lifthom--c8ec53e62d640fafe958934e.md) | 276 | `result-track:c8ec53e62d640fafe958934eb1fed6ac1e02f64a96bbae5ea03fad47b43217af` |
| 42 | `elab` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant3db0501bb9750adb19d72858dfb0311190e7c9132d7c0e5c82b9a94f19d4639a.lean/declarations/elab--07a069441052d022e2f198c6.md) | 288 | `declaration-track:07a069441052d022e2f198c602269ffa0dfdf5c95bc9451a7f0acefe332efc15` |
| 43 | `lemma` | [insert_id_lhs](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant3db0501bb9750adb19d72858dfb0311190e7c9132d7c0e5c82b9a94f19d4639a.lean/declarations/insert-id-lhs--878cb9dc48047973458e8ea4.md) | 298 | `result-track:878cb9dc48047973458e8ea4a127a21fbcd06ba9854c44c25e081ed6bc205ad7` |
| 44 | `lemma` | [insert_id_rhs](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant3db0501bb9750adb19d72858dfb0311190e7c9132d7c0e5c82b9a94f19d4639a.lean/declarations/insert-id-rhs--6ab3be9f9cee209074ac3da3.md) | 302 | `result-track:6ab3be9f9cee209074ac3da385cb928bf6bee6319d8f6363b7e54bcf8d68c42a` |
| 45 | `def` | [insertTrailingIds](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant3db0501bb9750adb19d72858dfb0311190e7c9132d7c0e5c82b9a94f19d4639a.lean/declarations/inserttrailingids--db60cd39bd6ed8f9d705de7c.md) | 307 | `declaration-track:db60cd39bd6ed8f9d705de7cf7c6469abd237c5be1b98ba6173c2bd68224da71` |
| 46 | `def` | [coherence_loop](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant3db0501bb9750adb19d72858dfb0311190e7c9132d7c0e5c82b9a94f19d4639a.lean/declarations/coherence-loop--3256f1561aa03a6ae96a7ebe.md) | 322 | `declaration-track:3256f1561aa03a6ae96a7ebe4d0930a6e240c56190cfce061285f59a3549cd9d` |
| 47 | `syntax` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant3db0501bb9750adb19d72858dfb0311190e7c9132d7c0e5c82b9a94f19d4639a.lean/declarations/syntax--0278497155dfbd3fb03a026a.md) | 365 | `declaration-track:0278497155dfbd3fb03a026afd4fcd094ffdf8d2d502d12ffd7521fcc77e6d7a` |
| 48 | `elab_rules` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant3db0501bb9750adb19d72858dfb0311190e7c9132d7c0e5c82b9a94f19d4639a.lean/declarations/elab-rules--007a30c39360175f321975f9.md) | 368 | `declaration-track:007a30c39360175f321975f975521c5e6e6caf7a43c2d095cd4cdf74313b5deb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
