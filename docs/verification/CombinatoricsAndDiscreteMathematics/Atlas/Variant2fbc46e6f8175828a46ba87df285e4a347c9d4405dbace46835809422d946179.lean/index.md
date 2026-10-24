# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Atlas.Variant2fbc46e6f8175828a46ba87df285e4a347c9d4405dbace46835809422d946179

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "587f6324971c126614a14de3290f949678351a7b",
  "lexical_observation_count": 41,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Atlas/Variant2fbc46e6f8175828a46ba87df285e4a347c9d4405dbace46835809422d946179.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Atlas/Variant2fbc46e6f8175828a46ba87df285e4a347c9d4405dbace46835809422d946179.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Atlas/Variant2fbc46e6f8175828a46ba87df285e4a347c9d4405dbace46835809422d946179.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `587f6324971c126614a14de3290f949678351a7b`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Atlas/Variant2fbc46e6f8175828a46ba87df285e4a347c9d4405dbace46835809422d946179.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Atlas/Variant2fbc46e6f8175828a46ba87df285e4a347c9d4405dbace46835809422d946179.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Fintype.Basic` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Basic` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Equiv.Defs` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [BridgeKind](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Atlas/Variant2fbc46e6f8175828a46ba87df285e4a347c9d4405dbace46835809422d946179.lean/declarations/bridgekind--69aea190b322b50308255ac5.md) | 20 | `declaration-track:69aea190b322b50308255ac550a38d4165fb48d213df1767c7e2e00259f22253` |
| 2 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Atlas/Variant2fbc46e6f8175828a46ba87df285e4a347c9d4405dbace46835809422d946179.lean/declarations/instance--79ecfbc8d2d8d54cfe38ed74.md) | 33 | `declaration-track:79ecfbc8d2d8d54cfe38ed7461631e7f45b40d7458cce337b2ca071820e0eecf` |
| 3 | `inductive` | [Interface](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Atlas/Variant2fbc46e6f8175828a46ba87df285e4a347c9d4405dbace46835809422d946179.lean/declarations/interface--927eaca07e0f234d444e4723.md) | 39 | `declaration-track:927eaca07e0f234d444e4723086fa54354fb3834aa58525aa671a99325ca2da0` |
| 4 | `def` | [Interface.Carrier](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Atlas/Variant2fbc46e6f8175828a46ba87df285e4a347c9d4405dbace46835809422d946179.lean/declarations/interface-carrier--b972630606d873efbfb8c639.md) | 45 | `declaration-track:b972630606d873efbfb8c639d7fb4700d5a1cc75408ab375d4217c3a81878486` |
| 5 | `inductive` | [InvertibleBridge](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Atlas/Variant2fbc46e6f8175828a46ba87df285e4a347c9d4405dbace46835809422d946179.lean/declarations/invertiblebridge--6d83615e190d4e1b5504bdcc.md) | 51 | `declaration-track:6d83615e190d4e1b5504bdcc405373fae0a371ad1308a5b07129f2f6f348f358` |
| 6 | `def` | [InvertibleBridge.toEquiv](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Atlas/Variant2fbc46e6f8175828a46ba87df285e4a347c9d4405dbace46835809422d946179.lean/declarations/invertiblebridge-toequiv--0d7022e9cf7c85b28255d462.md) | 65 | `declaration-track:0d7022e9cf7c85b28255d462bc675e864638a4ed1b996129229587e9ba274285` |
| 7 | `def` | [InvertibleBridge.kind](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Atlas/Variant2fbc46e6f8175828a46ba87df285e4a347c9d4405dbace46835809422d946179.lean/declarations/invertiblebridge-kind--2a24a0bfa47e5aa25527ef81.md) | 78 | `declaration-track:2a24a0bfa47e5aa25527ef81fc68fd75b6d61ee8752f2f5f5a4c9e18c0b8c287` |
| 8 | `def` | [InvertibleBridge.symm](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Atlas/Variant2fbc46e6f8175828a46ba87df285e4a347c9d4405dbace46835809422d946179.lean/declarations/invertiblebridge-symm--53897df823a93231d75b4ff9.md) | 87 | `declaration-track:53897df823a93231d75b4ff9396a50764ff602205ed9ef89e33abb6d1b3578da` |
| 9 | `def` | [InvertibleBridge.trans](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Atlas/Variant2fbc46e6f8175828a46ba87df285e4a347c9d4405dbace46835809422d946179.lean/declarations/invertiblebridge-trans--1d14d68ff641e69714e0d24e.md) | 91 | `declaration-track:1d14d68ff641e69714e0d24e8a6265055b3812ddaace64b3a4af69c8aa27ace2` |
| 10 | `theorem` | [invertibleBridge_refl](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Atlas/Variant2fbc46e6f8175828a46ba87df285e4a347c9d4405dbace46835809422d946179.lean/declarations/invertiblebridge-refl--14c4a1ce930c26846e945d88.md) | 96 | `result-track:14c4a1ce930c26846e945d88d9c96306dfbdc73e6b6ed606216d5c1481bdbb04` |
| 11 | `theorem` | [invertibleBridge_symm](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Atlas/Variant2fbc46e6f8175828a46ba87df285e4a347c9d4405dbace46835809422d946179.lean/declarations/invertiblebridge-symm--157484ab2a1e203b3ab4d275.md) | 99 | `result-track:157484ab2a1e203b3ab4d275122d4fe5b96d35dce85d1c32b0843bfad915d819` |
| 12 | `theorem` | [invertibleBridge_trans](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Atlas/Variant2fbc46e6f8175828a46ba87df285e4a347c9d4405dbace46835809422d946179.lean/declarations/invertiblebridge-trans--b65426270a46358a803774e4.md) | 104 | `result-track:b65426270a46358a803774e48c666007be7fc5b7ec97bde4285513b8872b295a` |
| 13 | `structure` | [Specialization](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Atlas/Variant2fbc46e6f8175828a46ba87df285e4a347c9d4405dbace46835809422d946179.lean/declarations/specialization--a4ae0aada8bff68dc6834998.md) | 113 | `declaration-track:a4ae0aada8bff68dc6834998daddaeec6e6997dc223f305d751c79c569756b5c` |
| 14 | `def` | [Specialization.comp](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Atlas/Variant2fbc46e6f8175828a46ba87df285e4a347c9d4405dbace46835809422d946179.lean/declarations/specialization-comp--789d9796dacc954a1620f45d.md) | 118 | `declaration-track:789d9796dacc954a1620f45d021088904deebd10e7637bf033243884ac633745` |
| 15 | `inductive` | [DirectionalBridge](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Atlas/Variant2fbc46e6f8175828a46ba87df285e4a347c9d4405dbace46835809422d946179.lean/declarations/directionalbridge--b6f3ce089a1cc8edb22d8d95.md) | 125 | `declaration-track:b6f3ce089a1cc8edb22d8d9537fd00390407b55f825873df2ffcae04b923aadd` |
| 16 | `def` | [DirectionalBridge.toFun](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Atlas/Variant2fbc46e6f8175828a46ba87df285e4a347c9d4405dbace46835809422d946179.lean/declarations/directionalbridge-tofun--66e1a5e3fd60f59725f5ea07.md) | 139 | `declaration-track:66e1a5e3fd60f59725f5ea07016ef52e2dd0317b58b0397aa56d63ae403296cb` |
| 17 | `def` | [DirectionalBridge.kind](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Atlas/Variant2fbc46e6f8175828a46ba87df285e4a347c9d4405dbace46835809422d946179.lean/declarations/directionalbridge-kind--098d245f2cc2dc383dcc79aa.md) | 148 | `declaration-track:098d245f2cc2dc383dcc79aac37442aed71deffbdeac9655f59c1e76e4a888ad` |
| 18 | `inductive` | [BridgeEvidence](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Atlas/Variant2fbc46e6f8175828a46ba87df285e4a347c9d4405dbace46835809422d946179.lean/declarations/bridgeevidence--4451a017e254bff91928532a.md) | 156 | `declaration-track:4451a017e254bff91928532a4643caf77083d4a55f8c00c58851fe0235b7c3a2` |
| 19 | `def` | [BridgeEvidence.kind](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Atlas/Variant2fbc46e6f8175828a46ba87df285e4a347c9d4405dbace46835809422d946179.lean/declarations/bridgeevidence-kind--90e98c18b97cb4aa6ee9510a.md) | 161 | `declaration-track:90e98c18b97cb4aa6ee9510a372bd9270f97569cf70c2d749bd9acb256670160` |
| 20 | `def` | [BridgeEvidence.IsInvertible](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Atlas/Variant2fbc46e6f8175828a46ba87df285e4a347c9d4405dbace46835809422d946179.lean/declarations/bridgeevidence-isinvertible--223e62f9955bf6cdd8b103cf.md) | 166 | `declaration-track:223e62f9955bf6cdd8b103cf8d0dab8cba03c2c57eabb41f444e8da13c4ee0de` |
| 21 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Atlas/Variant2fbc46e6f8175828a46ba87df285e4a347c9d4405dbace46835809422d946179.lean/declarations/instance--111dcdd8eb9c3b243f6832be.md) | 170 | `declaration-track:111dcdd8eb9c3b243f6832bea7a29d6c7e34fbc8f06768700860598dc2addfe5` |
| 22 | `inductive` | [BridgeOrientation](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Atlas/Variant2fbc46e6f8175828a46ba87df285e4a347c9d4405dbace46835809422d946179.lean/declarations/bridgeorientation--d7e5a4aa00e971e879883b90.md) | 174 | `declaration-track:d7e5a4aa00e971e879883b902e84edd0c4d2c413d707d57ef94ecdb6df37e402` |
| 23 | `def` | [BridgeEvidence.orientation](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Atlas/Variant2fbc46e6f8175828a46ba87df285e4a347c9d4405dbace46835809422d946179.lean/declarations/bridgeevidence-orientation--30d1c2e55e7d52e2ec208ac0.md) | 180 | `declaration-track:30d1c2e55e7d52e2ec208ac06355d01937faae1b30ab13fb04c70b2f4c0d36ef` |
| 24 | `structure` | [BridgeMetadata](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Atlas/Variant2fbc46e6f8175828a46ba87df285e4a347c9d4405dbace46835809422d946179.lean/declarations/bridgemetadata--3e96d1f88ef68ef87bdb4e5c.md) | 185 | `declaration-track:3e96d1f88ef68ef87bdb4e5cfe381a3c2f50d327b53f58204e9df24d25c79c48` |
| 25 | `structure` | [VerifiedBridge](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Atlas/Variant2fbc46e6f8175828a46ba87df285e4a347c9d4405dbace46835809422d946179.lean/declarations/verifiedbridge--c5f70da6e66372a049a9a321.md) | 193 | `declaration-track:c5f70da6e66372a049a9a3218cd33f25496f2e2f0f3953ab605013d5dc4bca81` |
| 26 | `structure` | [CandidateBridge](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Atlas/Variant2fbc46e6f8175828a46ba87df285e4a347c9d4405dbace46835809422d946179.lean/declarations/candidatebridge--42f26640fe53d55d7d7aa993.md) | 204 | `declaration-track:42f26640fe53d55d7d7aa99389a10e4c4d91eaa6b466bf6d71c9d1048ae4fba4` |
| 27 | `structure` | [FiniteBridgeGraph](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Atlas/Variant2fbc46e6f8175828a46ba87df285e4a347c9d4405dbace46835809422d946179.lean/declarations/finitebridgegraph--eba925739a38e3c9797efd42.md) | 218 | `declaration-track:eba925739a38e3c9797efd42ae79a42b7cf9c3aa0b0de61c466d1441778bf690` |
| 28 | `structure` | [BridgeCatalog](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Atlas/Variant2fbc46e6f8175828a46ba87df285e4a347c9d4405dbace46835809422d946179.lean/declarations/bridgecatalog--d7fced9e38b50771a4f46d4f.md) | 235 | `declaration-track:d7fced9e38b50771a4f46d4fd74eed4580db582f5d82df6d767d28ba358d9eee` |
| 29 | `structure` | [BridgeSelection](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Atlas/Variant2fbc46e6f8175828a46ba87df285e4a347c9d4405dbace46835809422d946179.lean/declarations/bridgeselection--48f5618a802d0c28bf99d962.md) | 243 | `declaration-track:48f5618a802d0c28bf99d9629f2b584e98c313773422d5837e0a759a5a99ed2e` |
| 30 | `def` | [toGraph](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Atlas/Variant2fbc46e6f8175828a46ba87df285e4a347c9d4405dbace46835809422d946179.lean/declarations/tograph--fc6fa5ca581f2e3d3ea13eb0.md) | 261 | `declaration-track:fc6fa5ca581f2e3d3ea13eb024a3d99d079f49abae6ddbfbf721f93f9169ba3b` |
| 31 | `def` | [union](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Atlas/Variant2fbc46e6f8175828a46ba87df285e4a347c9d4405dbace46835809422d946179.lean/declarations/union--f4447d8469350a3361d0154e.md) | 269 | `declaration-track:f4447d8469350a3361d0154efdf853407b3e8c9f179381b18b15ba7f5faccded` |
| 32 | `theorem` | [nodes_subset_union](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Atlas/Variant2fbc46e6f8175828a46ba87df285e4a347c9d4405dbace46835809422d946179.lean/declarations/nodes-subset-union--914078d76031a0f3b28f822a.md) | 280 | `result-track:914078d76031a0f3b28f822ad111b17a01d8e593ecdeaccf96fe49dac9a3470c` |
| 33 | `theorem` | [bridges_subset_union](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Atlas/Variant2fbc46e6f8175828a46ba87df285e4a347c9d4405dbace46835809422d946179.lean/declarations/bridges-subset-union--8b0721c0ae8c42d0bee756d8.md) | 283 | `result-track:8b0721c0ae8c42d0bee756d88d3bbee596f69d2385325c62a6d43e566f725566` |
| 34 | `theorem` | [union_preserves_admitted](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Atlas/Variant2fbc46e6f8175828a46ba87df285e4a347c9d4405dbace46835809422d946179.lean/declarations/union-preserves-admitted--5717c94f24d77f743132bf33.md) | 287 | `result-track:5717c94f24d77f743132bf33745ed1160fe60c422774a7019225e8c5ae5f5f55` |
| 35 | `inductive` | [CompositionRuleKind](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Atlas/Variant2fbc46e6f8175828a46ba87df285e4a347c9d4405dbace46835809422d946179.lean/declarations/compositionrulekind--4595e2feb97355a4dfe2cf88.md) | 294 | `declaration-track:4595e2feb97355a4dfe2cf88836c4d703e079a5ff6bbad7399ecba225977c3c6` |
| 36 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Atlas/Variant2fbc46e6f8175828a46ba87df285e4a347c9d4405dbace46835809422d946179.lean/declarations/instance--011a9398378256bf36ce33fc.md) | 303 | `declaration-track:011a9398378256bf36ce33fc2bea993cb05cfe10bff54b9221a0ff3c9b3e5d23` |
| 37 | `theorem` | [implication_trans](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Atlas/Variant2fbc46e6f8175828a46ba87df285e4a347c9d4405dbace46835809422d946179.lean/declarations/implication-trans--8f6e1aa35cd8cc1d52da8d12.md) | 309 | `result-track:8f6e1aa35cd8cc1d52da8d12d6a4789c0eca9311628969af17132d2453e9b09a` |
| 38 | `theorem` | [specialization_comp](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Atlas/Variant2fbc46e6f8175828a46ba87df285e4a347c9d4405dbace46835809422d946179.lean/declarations/specialization-comp--5289026f1c9e03e8cbb70668.md) | 313 | `result-track:5289026f1c9e03e8cbb70668d6f6ada62cb12e84c7f2050c92c7ef297f022951` |
| 39 | `theorem` | [property_transport](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Atlas/Variant2fbc46e6f8175828a46ba87df285e4a347c9d4405dbace46835809422d946179.lean/declarations/property-transport--a9aa84536bfb7c9133881827.md) | 318 | `result-track:a9aa84536bfb7c9133881827b2c0aa21f2363cc0e602c62820449d2ed20ca4cd` |
| 40 | `theorem` | [quotient_descent_comp_respects](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Atlas/Variant2fbc46e6f8175828a46ba87df285e4a347c9d4405dbace46835809422d946179.lean/declarations/quotient-descent-comp-respects--983cc7e8fa761efe9a6479a8.md) | 322 | `result-track:983cc7e8fa761efe9a6479a8f2e61320423b315f176ac09dfa293e19cbdc1956` |
| 41 | `theorem` | [quotient_descent_comp](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Atlas/Variant2fbc46e6f8175828a46ba87df285e4a347c9d4405dbace46835809422d946179.lean/declarations/quotient-descent-comp--050e08e5390e91de7b5e339d.md) | 329 | `result-track:050e08e5390e91de7b5e339d0851c50ef25462887a88f077384cbf4db59b22d5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
