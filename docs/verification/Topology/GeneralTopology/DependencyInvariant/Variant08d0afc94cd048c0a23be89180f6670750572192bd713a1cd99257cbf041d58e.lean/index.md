# Verification target: GRWTSK.Topology.GeneralTopology.DependencyInvariant.Variant08d0afc94cd048c0a23be89180f6670750572192bd713a1cd99257cbf041d58e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "94d5401f4a44d8e06b176cbb070e400ce0cc408a",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/DependencyInvariant/Variant08d0afc94cd048c0a23be89180f6670750572192bd713a1cd99257cbf041d58e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/DependencyInvariant/Variant08d0afc94cd048c0a23be89180f6670750572192bd713a1cd99257cbf041d58e.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/DependencyInvariant/Variant08d0afc94cd048c0a23be89180f6670750572192bd713a1cd99257cbf041d58e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `94d5401f4a44d8e06b176cbb070e400ce0cc408a`.

Source path: `GRWTSK/Topology/GeneralTopology/DependencyInvariant/Variant08d0afc94cd048c0a23be89180f6670750572192bd713a1cd99257cbf041d58e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/DependencyInvariant/Variant08d0afc94cd048c0a23be89180f6670750572192bd713a1cd99257cbf041d58e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.Arithmetic.GaloisCohomology.Selmer` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [GaloisCohomologyLayer](../../../../../mathematics/Topology/GeneralTopology/DependencyInvariant/Variant08d0afc94cd048c0a23be89180f6670750572192bd713a1cd99257cbf041d58e.lean/declarations/galoiscohomologylayer--5a46e4332ae2f0bbf9a3256f.md) | 35 | `declaration-track:5a46e4332ae2f0bbf9a3256f47f666f40ba6d794285b023ef34fff187215e658` |
| 2 | `def` | [rank](../../../../../mathematics/Topology/GeneralTopology/DependencyInvariant/Variant08d0afc94cd048c0a23be89180f6670750572192bd713a1cd99257cbf041d58e.lean/declarations/rank--78ca3b9e9ae84a8e733acd66.md) | 48 | `declaration-track:78ca3b9e9ae84a8e733acd66cb57f807d5ef335947ebe3d5c59f3dcc47de2e71` |
| 3 | `def` | [Before](../../../../../mathematics/Topology/GeneralTopology/DependencyInvariant/Variant08d0afc94cd048c0a23be89180f6670750572192bd713a1cd99257cbf041d58e.lean/declarations/before--6616aa0885b27fea627b1d8f.md) | 58 | `declaration-track:6616aa0885b27fea627b1d8f156a411d6e9491a0fbfbace6991b2bd237da67d5` |
| 4 | `theorem` | [finiteH1_before_restriction](../../../../../mathematics/Topology/GeneralTopology/DependencyInvariant/Variant08d0afc94cd048c0a23be89180f6670750572192bd713a1cd99257cbf041d58e.lean/declarations/finiteh1-before-restriction--513dbda810a43d4af9a075c3.md) | 61 | `result-track:513dbda810a43d4af9a075c39586d29fbb74f9d766a769596d96ff2639d1f37e` |
| 5 | `theorem` | [restriction_before_abstractSelmer](../../../../../mathematics/Topology/GeneralTopology/DependencyInvariant/Variant08d0afc94cd048c0a23be89180f6670750572192bd713a1cd99257cbf041d58e.lean/declarations/restriction-before-abstractselmer--681af4e866a3414be23d60a9.md) | 67 | `result-track:681af4e866a3414be23d60a9cc84f5feca7e6299726b41258a8e0886d18e3a5a` |
| 6 | `theorem` | [abstractSelmer_before_abstractKummer](../../../../../mathematics/Topology/GeneralTopology/DependencyInvariant/Variant08d0afc94cd048c0a23be89180f6670750572192bd713a1cd99257cbf041d58e.lean/declarations/abstractselmer-before-abstractkummer--471ce8da41912c17e7f1e5a5.md) | 73 | `result-track:471ce8da41912c17e7f1e5a516c7771601e9584016b952580b79efb8c59b8f31` |
| 7 | `theorem` | [abstractKummer_before_selmerExact](../../../../../mathematics/Topology/GeneralTopology/DependencyInvariant/Variant08d0afc94cd048c0a23be89180f6670750572192bd713a1cd99257cbf041d58e.lean/declarations/abstractkummer-before-selmerexact--0aa257f62672de3b1686c2b2.md) | 79 | `result-track:0aa257f62672de3b1686c2b25248d8eb56ce18d9f62db23be0423e0c15eee04f` |
| 8 | `theorem` | [selmerExact_before_continuousAdapter](../../../../../mathematics/Topology/GeneralTopology/DependencyInvariant/Variant08d0afc94cd048c0a23be89180f6670750572192bd713a1cd99257cbf041d58e.lean/declarations/selmerexact-before-continuousadapter--e57240c6c4bdfe24c2689488.md) | 85 | `result-track:e57240c6c4bdfe24c268948800c828eebdd8f72ad25087a841c28542312072f1` |
| 9 | `theorem` | [continuousAdapter_before_absoluteGaloisAdapter](../../../../../mathematics/Topology/GeneralTopology/DependencyInvariant/Variant08d0afc94cd048c0a23be89180f6670750572192bd713a1cd99257cbf041d58e.lean/declarations/continuousadapter-before-absolutegaloisadapter--a17599ca86be841b95074b14.md) | 91 | `result-track:a17599ca86be841b95074b146da30e730477b1f5d4b84511fca0a879053cfbb1` |
| 10 | `theorem` | [finiteH1_before_abstractKummer](../../../../../mathematics/Topology/GeneralTopology/DependencyInvariant/Variant08d0afc94cd048c0a23be89180f6670750572192bd713a1cd99257cbf041d58e.lean/declarations/finiteh1-before-abstractkummer--ce13f7e5141a5c8b84fbceb7.md) | 97 | `result-track:ce13f7e5141a5c8b84fbceb7c4071619ceac4dda8d2518b2afee07ff63a69139` |
| 11 | `theorem` | [restriction_before_abstractKummer](../../../../../mathematics/Topology/GeneralTopology/DependencyInvariant/Variant08d0afc94cd048c0a23be89180f6670750572192bd713a1cd99257cbf041d58e.lean/declarations/restriction-before-abstractkummer--24018212c200303c14c35be8.md) | 103 | `result-track:24018212c200303c14c35be8a4d84c613f54a74474d0aedd5050602e47b867d1` |
| 12 | `theorem` | [finiteH1_before_selmerExact](../../../../../mathematics/Topology/GeneralTopology/DependencyInvariant/Variant08d0afc94cd048c0a23be89180f6670750572192bd713a1cd99257cbf041d58e.lean/declarations/finiteh1-before-selmerexact--19304e2ffd259cbdf90f9804.md) | 109 | `result-track:19304e2ffd259cbdf90f98048a8edff629706ce854f660ac2f9de337b9c8ecd1` |
| 13 | `theorem` | [restriction_before_selmerExact](../../../../../mathematics/Topology/GeneralTopology/DependencyInvariant/Variant08d0afc94cd048c0a23be89180f6670750572192bd713a1cd99257cbf041d58e.lean/declarations/restriction-before-selmerexact--f20e72b1bc1ebb859eb49162.md) | 115 | `result-track:f20e72b1bc1ebb859eb49162efea7dd724e514252cd4a873bf377c729eedad45` |
| 14 | `theorem` | [abstractSelmer_before_selmerExact](../../../../../mathematics/Topology/GeneralTopology/DependencyInvariant/Variant08d0afc94cd048c0a23be89180f6670750572192bd713a1cd99257cbf041d58e.lean/declarations/abstractselmer-before-selmerexact--3a759898c3c1b90a203eb8cc.md) | 121 | `result-track:3a759898c3c1b90a203eb8cc6c73ba64127ad11c38abd170ceeab48df571dd17` |
| 15 | `theorem` | [abstractSelmer_before_continuousAdapter](../../../../../mathematics/Topology/GeneralTopology/DependencyInvariant/Variant08d0afc94cd048c0a23be89180f6670750572192bd713a1cd99257cbf041d58e.lean/declarations/abstractselmer-before-continuousadapter--36be217e7711d6514f4016e9.md) | 127 | `result-track:36be217e7711d6514f4016e933965af85c1767e9bd3ed72c49f9509cae066cbf` |
| 16 | `theorem` | [abstractSelmer_before_absoluteGaloisAdapter](../../../../../mathematics/Topology/GeneralTopology/DependencyInvariant/Variant08d0afc94cd048c0a23be89180f6670750572192bd713a1cd99257cbf041d58e.lean/declarations/abstractselmer-before-absolutegaloisadapter--baa6ed0d9ef7631a78a49297.md) | 133 | `result-track:baa6ed0d9ef7631a78a4929795257bd9949a4f2f000d6273796b81ba15ae4c2a` |
| 17 | `structure` | [GHCDependencyInvariant](../../../../../mathematics/Topology/GeneralTopology/DependencyInvariant/Variant08d0afc94cd048c0a23be89180f6670750572192bd713a1cd99257cbf041d58e.lean/declarations/ghcdependencyinvariant--d14441bddf04b4e5dc14e10e.md) | 149 | `declaration-track:d14441bddf04b4e5dc14e10e476d4aeecd905a3779ff37b879267aaccd5cfa09` |
| 18 | `def` | [ghc1aDependencyInvariant](../../../../../mathematics/Topology/GeneralTopology/DependencyInvariant/Variant08d0afc94cd048c0a23be89180f6670750572192bd713a1cd99257cbf041d58e.lean/declarations/ghc1adependencyinvariant--d852c3cd0e5f97ffd02db3df.md) | 201 | `declaration-track:d852c3cd0e5f97ffd02db3dfc7f52c531c31d4b3ff054a5a6dd1d8ded71f0a92` |
| 19 | `theorem` | [ghc1a_kummer_depends_after_selmer](../../../../../mathematics/Topology/GeneralTopology/DependencyInvariant/Variant08d0afc94cd048c0a23be89180f6670750572192bd713a1cd99257cbf041d58e.lean/declarations/ghc1a-kummer-depends-after-selmer--54e76b7e75c7635bc86957d6.md) | 232 | `result-track:54e76b7e75c7635bc86957d60cf9722453b7ddd19f291e00fc75dd5fb0e2fecf` |
| 20 | `theorem` | [ghc1a_selmerExact_depends_after_kummer](../../../../../mathematics/Topology/GeneralTopology/DependencyInvariant/Variant08d0afc94cd048c0a23be89180f6670750572192bd713a1cd99257cbf041d58e.lean/declarations/ghc1a-selmerexact-depends-after-kummer--47e16f6a0bd629de07bf2754.md) | 238 | `result-track:47e16f6a0bd629de07bf275485652813edfc953f3d95611b93019cfdef7aac44` |
| 21 | `theorem` | [ghc1a_selmerExact_depends_after_finiteH1](../../../../../mathematics/Topology/GeneralTopology/DependencyInvariant/Variant08d0afc94cd048c0a23be89180f6670750572192bd713a1cd99257cbf041d58e.lean/declarations/ghc1a-selmerexact-depends-after-finiteh1--5861a5c20ba8aee95fd6b55d.md) | 244 | `result-track:5861a5c20ba8aee95fd6b55d2fd69e012f872929fe41e7a957d2a38106c5ced9` |
| 22 | `theorem` | [ghc1a_selmerExact_depends_after_restriction](../../../../../mathematics/Topology/GeneralTopology/DependencyInvariant/Variant08d0afc94cd048c0a23be89180f6670750572192bd713a1cd99257cbf041d58e.lean/declarations/ghc1a-selmerexact-depends-after-restriction--e51489ec92d620d5ecb7c83e.md) | 250 | `result-track:e51489ec92d620d5ecb7c83e261b1d081b2b52930b25bf9310682f12395facf4` |
| 23 | `theorem` | [ghc1a_selmerExact_depends_after_abstractSelmer](../../../../../mathematics/Topology/GeneralTopology/DependencyInvariant/Variant08d0afc94cd048c0a23be89180f6670750572192bd713a1cd99257cbf041d58e.lean/declarations/ghc1a-selmerexact-depends-after-abstractselmer--8228dff57bea0bb7fe126bb5.md) | 256 | `result-track:8228dff57bea0bb7fe126bb5ec2647b79529ab9e23c6e867f7b205d28b609c99` |
| 24 | `theorem` | [ghc1a_continuous_depends_after_selmer](../../../../../mathematics/Topology/GeneralTopology/DependencyInvariant/Variant08d0afc94cd048c0a23be89180f6670750572192bd713a1cd99257cbf041d58e.lean/declarations/ghc1a-continuous-depends-after-selmer--76f5042e2ddb42016ef141cc.md) | 262 | `result-track:76f5042e2ddb42016ef141ccdd621aba3c44cc1502ee32856b9228584d7faa6a` |
| 25 | `theorem` | [ghc1a_absolute_depends_after_selmer](../../../../../mathematics/Topology/GeneralTopology/DependencyInvariant/Variant08d0afc94cd048c0a23be89180f6670750572192bd713a1cd99257cbf041d58e.lean/declarations/ghc1a-absolute-depends-after-selmer--0556f1924e5b4dfc72ba83d2.md) | 268 | `result-track:0556f1924e5b4dfc72ba83d2e70baae717b083e71bc5975fb7cc920b90b75916` |
| 26 | `theorem` | [ghc1a_absolute_depends_after_continuous](../../../../../mathematics/Topology/GeneralTopology/DependencyInvariant/Variant08d0afc94cd048c0a23be89180f6670750572192bd713a1cd99257cbf041d58e.lean/declarations/ghc1a-absolute-depends-after-continuous--6cbbb8a973de86cbd82cbc7b.md) | 274 | `result-track:6cbbb8a973de86cbd82cbc7b3d0afd1323a3a6ad04bd1d6bc11a1995a839710f` |
| 27 | `inductive` | [DownstreamArithmeticConsumer](../../../../../mathematics/Topology/GeneralTopology/DependencyInvariant/Variant08d0afc94cd048c0a23be89180f6670750572192bd713a1cd99257cbf041d58e.lean/declarations/downstreamarithmeticconsumer--2eff5f4b92928b1c9dab62dc.md) | 290 | `declaration-track:2eff5f4b92928b1c9dab62dceeb118fb613992711b155560e5974931d0f9619e` |
| 28 | `def` | [targetLayer](../../../../../mathematics/Topology/GeneralTopology/DependencyInvariant/Variant08d0afc94cd048c0a23be89180f6670750572192bd713a1cd99257cbf041d58e.lean/declarations/targetlayer--b5bef680b277c84b0ce4b925.md) | 300 | `declaration-track:b5bef680b277c84b0ce4b9255cabb25925714a3a8fa346089a6a7c823d9db81d` |
| 29 | `def` | [FiniteSubstrateBefore](../../../../../mathematics/Topology/GeneralTopology/DependencyInvariant/Variant08d0afc94cd048c0a23be89180f6670750572192bd713a1cd99257cbf041d58e.lean/declarations/finitesubstratebefore--23a5fca7c9ace9c4d56cf0e4.md) | 307 | `declaration-track:23a5fca7c9ace9c4d56cf0e4111b33ad0b45ffff64b827280cc47b679c2450a0` |
| 30 | `theorem` | [localKummer_requires_finiteSubstrate](../../../../../mathematics/Topology/GeneralTopology/DependencyInvariant/Variant08d0afc94cd048c0a23be89180f6670750572192bd713a1cd99257cbf041d58e.lean/declarations/localkummer-requires-finitesubstrate--851950cc18f4f29391f667b6.md) | 318 | `result-track:851950cc18f4f29391f667b6f2abd4c136c259989c9c6e6ae485358f7117c3bd` |
| 31 | `theorem` | [weakDescent_requires_finiteSubstrate](../../../../../mathematics/Topology/GeneralTopology/DependencyInvariant/Variant08d0afc94cd048c0a23be89180f6670750572192bd713a1cd99257cbf041d58e.lean/declarations/weakdescent-requires-finitesubstrate--657266479971b98b9c24e8c5.md) | 327 | `result-track:657266479971b98b9c24e8c5f13cb017effd9c20eacd6bdf0a0b4f28f0020742` |
| 32 | `theorem` | [tateShafarevich_requires_finiteSubstrate](../../../../../mathematics/Topology/GeneralTopology/DependencyInvariant/Variant08d0afc94cd048c0a23be89180f6670750572192bd713a1cd99257cbf041d58e.lean/declarations/tateshafarevich-requires-finitesubstrate--87d2f93eef1adda1c580f32b.md) | 336 | `result-track:87d2f93eef1adda1c580f32b2d716109ab9c3fd819d3280ed1c9469d919e88d7` |
| 33 | `theorem` | [bsdFacingTheorem_requires_finiteSubstrate](../../../../../mathematics/Topology/GeneralTopology/DependencyInvariant/Variant08d0afc94cd048c0a23be89180f6670750572192bd713a1cd99257cbf041d58e.lean/declarations/bsdfacingtheorem-requires-finitesubstrate--fdccea5f3c8f1d9fd1a0529a.md) | 345 | `result-track:fdccea5f3c8f1d9fd1a0529a3f559fdb7efce8496f4735474df4d9510fc81b87` |
| 34 | `theorem` | [all_requires_finiteSubstrate](../../../../../mathematics/Topology/GeneralTopology/DependencyInvariant/Variant08d0afc94cd048c0a23be89180f6670750572192bd713a1cd99257cbf041d58e.lean/declarations/all-requires-finitesubstrate--9665cc4232fd245b75f4fe39.md) | 354 | `result-track:9665cc4232fd245b75f4fe395df960ab8b802b8b40d5661566e7ccedf61d463e` |
| 35 | `theorem` | [ghc1a_downstream_consumers_require_finite_substrate](../../../../../mathematics/Topology/GeneralTopology/DependencyInvariant/Variant08d0afc94cd048c0a23be89180f6670750572192bd713a1cd99257cbf041d58e.lean/declarations/ghc1a-downstream-consumers-require-finite-substrate--5d83c6af2caf955c58388cbf.md) | 370 | `result-track:5d83c6af2caf955c58388cbfb187d989cf108ce2846c130ae6d22419c69b09fe` |
| 36 | `theorem` | [ghc1a_continuous_and_absolute_are_after_finite_selmer](../../../../../mathematics/Topology/GeneralTopology/DependencyInvariant/Variant08d0afc94cd048c0a23be89180f6670750572192bd713a1cd99257cbf041d58e.lean/declarations/ghc1a-continuous-and-absolute-are-after-finite-selmer--4c697c543c09e49b5d12f87b.md) | 379 | `result-track:4c697c543c09e49b5d12f87b662157733863e66d5a22d1c8d79b66de27c27960` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
