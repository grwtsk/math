# Verification target: GRWTSK.Algebra.LinearAlgebra.Gamma.Variant45cb282b18e0919b675d92e6b3a9857893775adb5c64c3f46389f09086d72f95

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "aa3d9e8d306e9ac82e10631af6b2e685b457fba2",
  "lexical_observation_count": 51,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Gamma/Variant45cb282b18e0919b675d92e6b3a9857893775adb5c64c3f46389f09086d72f95.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Gamma/Variant45cb282b18e0919b675d92e6b3a9857893775adb5c64c3f46389f09086d72f95.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Gamma/Variant45cb282b18e0919b675d92e6b3a9857893775adb5c64c3f46389f09086d72f95.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `aa3d9e8d306e9ac82e10631af6b2e685b457fba2`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Gamma/Variant45cb282b18e0919b675d92e6b3a9857893775adb5c64c3f46389f09086d72f95.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Gamma/Variant45cb282b18e0919b675d92e6b3a9857893775adb5c64c3f46389f09086d72f95.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.Legacy.BinaryLogicMatrix.Core` — import line 6; external provider; requires a separately pinned dependency.
- `Surface.Foundation.LogicalFoundation` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [GammaMode](../../../../../mathematics/Algebra/LinearAlgebra/Gamma/Variant45cb282b18e0919b675d92e6b3a9857893775adb5c64c3f46389f09086d72f95.lean/declarations/gammamode--9728f479f9d4f31619c88b2f.md) | 14 | `declaration-track:9728f479f9d4f31619c88b2fec6427193b66b3deccea52ca0a7c55d8cf375580` |
| 2 | `inductive` | [EvolutionMode](../../../../../mathematics/Algebra/LinearAlgebra/Gamma/Variant45cb282b18e0919b675d92e6b3a9857893775adb5c64c3f46389f09086d72f95.lean/declarations/evolutionmode--1d7f510026fb9e179d0d55fc.md) | 22 | `declaration-track:1d7f510026fb9e179d0d55fc6c402cd22db1df953e70ec444cec84e9261474e7` |
| 3 | `structure` | [PositiveRat](../../../../../mathematics/Algebra/LinearAlgebra/Gamma/Variant45cb282b18e0919b675d92e6b3a9857893775adb5c64c3f46389f09086d72f95.lean/declarations/positiverat--c9cf6ac2a6f1e5f9fcbf14d5.md) | 36 | `declaration-track:c9cf6ac2a6f1e5f9fcbf14d545ac8eb133408453f6c03ea6d7199d7953768b19` |
| 4 | `structure` | [Gamma](../../../../../mathematics/Algebra/LinearAlgebra/Gamma/Variant45cb282b18e0919b675d92e6b3a9857893775adb5c64c3f46389f09086d72f95.lean/declarations/gamma--cb9e206809f02966918eaecf.md) | 40 | `declaration-track:cb9e206809f02966918eaecfc03dbc10949ef1457b508234ad3e0ec322d4ba02` |
| 5 | `inductive` | [SemanticStatus](../../../../../mathematics/Algebra/LinearAlgebra/Gamma/Variant45cb282b18e0919b675d92e6b3a9857893775adb5c64c3f46389f09086d72f95.lean/declarations/semanticstatus--f0b58f6388960ad5f59f106b.md) | 74 | `declaration-track:f0b58f6388960ad5f59f106b0771daf50e81e8295dd972ad02ae58d60f1e80cf` |
| 6 | `inductive` | [DomainStatus](../../../../../mathematics/Algebra/LinearAlgebra/Gamma/Variant45cb282b18e0919b675d92e6b3a9857893775adb5c64c3f46389f09086d72f95.lean/declarations/domainstatus--9265577eefe11136f81a8391.md) | 84 | `declaration-track:9265577eefe11136f81a83914ceda7974dc9dc72fe1adc608a5bb63ac4bdabe6` |
| 7 | `inductive` | [BranchStatus](../../../../../mathematics/Algebra/LinearAlgebra/Gamma/Variant45cb282b18e0919b675d92e6b3a9857893775adb5c64c3f46389f09086d72f95.lean/declarations/branchstatus--372e7d237a15732f60065f07.md) | 91 | `declaration-track:372e7d237a15732f60065f078078c51c6821e5f6f79b24f14df1d2060cf5b39e` |
| 8 | `inductive` | [ClaimStatus](../../../../../mathematics/Algebra/LinearAlgebra/Gamma/Variant45cb282b18e0919b675d92e6b3a9857893775adb5c64c3f46389f09086d72f95.lean/declarations/claimstatus--15a685c018c096fc6c23775a.md) | 97 | `declaration-track:15a685c018c096fc6c23775a487e91c2feddaa13f751a1d98275b90a3be12835` |
| 9 | `structure` | [SemanticClaim](../../../../../mathematics/Algebra/LinearAlgebra/Gamma/Variant45cb282b18e0919b675d92e6b3a9857893775adb5c64c3f46389f09086d72f95.lean/declarations/semanticclaim--4850cb884e10393720800008.md) | 108 | `declaration-track:4850cb884e103937208000080d83089d3d0c157b39f3e8a7287adb6a2d665939` |
| 10 | `def` | [falseBijectivitySound](../../../../../mathematics/Algebra/LinearAlgebra/Gamma/Variant45cb282b18e0919b675d92e6b3a9857893775adb5c64c3f46389f09086d72f95.lean/declarations/falsebijectivitysound--d1a90c9b9cb9a025f56a79c4.md) | 117 | `declaration-track:d1a90c9b9cb9a025f56a79c4adef2706c725418d7f57f9df2bc4437747ca1460` |
| 11 | `def` | [structural](../../../../../mathematics/Algebra/LinearAlgebra/Gamma/Variant45cb282b18e0919b675d92e6b3a9857893775adb5c64c3f46389f09086d72f95.lean/declarations/structural--05a68362e3dcda320190c5f5.md) | 122 | `declaration-track:05a68362e3dcda320190c5f5a3d1c364b37752b8bb7e096bd69012b41cccaecd` |
| 12 | `def` | [constructive](../../../../../mathematics/Algebra/LinearAlgebra/Gamma/Variant45cb282b18e0919b675d92e6b3a9857893775adb5c64c3f46389f09086d72f95.lean/declarations/constructive--66fceac2602da6446adb1ca0.md) | 154 | `declaration-track:66fceac2602da6446adb1ca09bda13ee926beb3e9504e7a8a6a8bca617575ebb` |
| 13 | `def` | [bijectiveFlow](../../../../../mathematics/Algebra/LinearAlgebra/Gamma/Variant45cb282b18e0919b675d92e6b3a9857893775adb5c64c3f46389f09086d72f95.lean/declarations/bijectiveflow--373c8d13cd5def7f19b6132e.md) | 156 | `declaration-track:373c8d13cd5def7f19b6132e1606a203958466f2cb34392b97bfe91faccb8975` |
| 14 | `def` | [coarse](../../../../../mathematics/Algebra/LinearAlgebra/Gamma/Variant45cb282b18e0919b675d92e6b3a9857893775adb5c64c3f46389f09086d72f95.lean/declarations/coarse--d80e452ad1cef339a29128a9.md) | 168 | `declaration-track:d80e452ad1cef339a29128a9385b9c95583b932dd2f62ab94656cc7fe6cb8a06` |
| 15 | `def` | [standard](../../../../../mathematics/Algebra/LinearAlgebra/Gamma/Variant45cb282b18e0919b675d92e6b3a9857893775adb5c64c3f46389f09086d72f95.lean/declarations/standard--48c6448caab46dfe2afeb9d7.md) | 173 | `declaration-track:48c6448caab46dfe2afeb9d726f8ab039878dd98ffdf4e56df82caa72b0e2192` |
| 16 | `def` | [high](../../../../../mathematics/Algebra/LinearAlgebra/Gamma/Variant45cb282b18e0919b675d92e6b3a9857893775adb5c64c3f46389f09086d72f95.lean/declarations/high--7be189d378f55fb0eaaf220d.md) | 185 | `declaration-track:7be189d378f55fb0eaaf220ddeadb299439878fdad12efe259c23a68a98030b6` |
| 17 | `def` | [analytic](../../../../../mathematics/Algebra/LinearAlgebra/Gamma/Variant45cb282b18e0919b675d92e6b3a9857893775adb5c64c3f46389f09086d72f95.lean/declarations/analytic--7c4ee77559cf5fc3ea393ba6.md) | 192 | `declaration-track:7c4ee77559cf5fc3ea393ba647c4620b8d5bd337b61760b67464071fe5cefe28` |
| 18 | `def` | [classical](../../../../../mathematics/Algebra/LinearAlgebra/Gamma/Variant45cb282b18e0919b675d92e6b3a9857893775adb5c64c3f46389f09086d72f95.lean/declarations/classical--ef9a0c94260397296cb185b9.md) | 199 | `declaration-track:ef9a0c94260397296cb185b94dfa00a2fb6af141b53cf3117c9c0d6d54e82423` |
| 19 | `def` | [measurable](../../../../../mathematics/Algebra/LinearAlgebra/Gamma/Variant45cb282b18e0919b675d92e6b3a9857893775adb5c64c3f46389f09086d72f95.lean/declarations/measurable--ab4ca7fb368da67a39f6f25a.md) | 203 | `declaration-track:ab4ca7fb368da67a39f6f25af24c3a7961c86f98a25a4119a65018d81580e871` |
| 20 | `def` | [fractal](../../../../../mathematics/Algebra/LinearAlgebra/Gamma/Variant45cb282b18e0919b675d92e6b3a9857893775adb5c64c3f46389f09086d72f95.lean/declarations/fractal--669e2bf33e46a8b91c6fec7b.md) | 208 | `declaration-track:669e2bf33e46a8b91c6fec7bdccaa59690ecb625c453877ccd601052543af63f` |
| 21 | `def` | [oracle](../../../../../mathematics/Algebra/LinearAlgebra/Gamma/Variant45cb282b18e0919b675d92e6b3a9857893775adb5c64c3f46389f09086d72f95.lean/declarations/oracle--6b0828c2c15651b5df4de5d6.md) | 213 | `declaration-track:6b0828c2c15651b5df4de5d69d041c7e62dc1306be69dfca6e9a42d597917865` |
| 22 | `def` | [heatFlow](../../../../../mathematics/Algebra/LinearAlgebra/Gamma/Variant45cb282b18e0919b675d92e6b3a9857893775adb5c64c3f46389f09086d72f95.lean/declarations/heatflow--bdcc11d57d4d54acd0c81035.md) | 218 | `declaration-track:bdcc11d57d4d54acd0c81035ae124fcc289a42b70dc480bd514817f2a165a58a` |
| 23 | `def` | [heatAveraging](../../../../../mathematics/Algebra/LinearAlgebra/Gamma/Variant45cb282b18e0919b675d92e6b3a9857893775adb5c64c3f46389f09086d72f95.lean/declarations/heataveraging--9f2375f781c2294ac4d16e18.md) | 224 | `declaration-track:9f2375f781c2294ac4d16e18d757bfe4a73dee4145778b762d8019e97fe49a03` |
| 24 | `def` | [frameCommutingHeatFlow](../../../../../mathematics/Algebra/LinearAlgebra/Gamma/Variant45cb282b18e0919b675d92e6b3a9857893775adb5c64c3f46389f09086d72f95.lean/declarations/framecommutingheatflow--c510313ed4955f52791ad875.md) | 230 | `declaration-track:c510313ed4955f52791ad8752519a723ef6a570bfef7b2284d11af2dcc0c2016` |
| 25 | `def` | [homologyStability](../../../../../mathematics/Algebra/LinearAlgebra/Gamma/Variant45cb282b18e0919b675d92e6b3a9857893775adb5c64c3f46389f09086d72f95.lean/declarations/homologystability--a123d74a7d90e7e3d58185b1.md) | 239 | `declaration-track:a123d74a7d90e7e3d58185b1c9b6062246e350ef182bcb32355a8cb434e62bb2` |
| 26 | `def` | [ricciFlow](../../../../../mathematics/Algebra/LinearAlgebra/Gamma/Variant45cb282b18e0919b675d92e6b3a9857893775adb5c64c3f46389f09086d72f95.lean/declarations/ricciflow--0f263bcb63e47670f8b3a7f8.md) | 243 | `declaration-track:0f263bcb63e47670f8b3a7f8f3c03d295ff783b9e094a472b67789f3e2ca6346` |
| 27 | `def` | [ricciSurgery](../../../../../mathematics/Algebra/LinearAlgebra/Gamma/Variant45cb282b18e0919b675d92e6b3a9857893775adb5c64c3f46389f09086d72f95.lean/declarations/riccisurgery--5fabc42baf7fc73fa40678b0.md) | 249 | `declaration-track:5fabc42baf7fc73fa40678b019bb8b1e570767b65de55591ebf5569da84097db` |
| 28 | `def` | [extinctionTopology](../../../../../mathematics/Algebra/LinearAlgebra/Gamma/Variant45cb282b18e0919b675d92e6b3a9857893775adb5c64c3f46389f09086d72f95.lean/declarations/extinctiontopology--e71b53503e83723c114fee36.md) | 255 | `declaration-track:e71b53503e83723c114fee36def29d775a0e0fe6a8a065fb0ca7227504de54fa` |
| 29 | `def` | [infiniteTime](../../../../../mathematics/Algebra/LinearAlgebra/Gamma/Variant45cb282b18e0919b675d92e6b3a9857893775adb5c64c3f46389f09086d72f95.lean/declarations/infinitetime--a8c4826ca6f3a073ad3f739e.md) | 262 | `declaration-track:a8c4826ca6f3a073ad3f739ed3d28b823ede8b2c0ba8ebd7df42344e7e88c7fd` |
| 30 | `def` | [choice](../../../../../mathematics/Algebra/LinearAlgebra/Gamma/Variant45cb282b18e0919b675d92e6b3a9857893775adb5c64c3f46389f09086d72f95.lean/declarations/choice--e30c67b0b0081819305f3264.md) | 269 | `declaration-track:e30c67b0b0081819305f3264d0ffe08a5da167cd77b989e87fd51f4f180e5ffb` |
| 31 | `def` | [choiceOracle](../../../../../mathematics/Algebra/LinearAlgebra/Gamma/Variant45cb282b18e0919b675d92e6b3a9857893775adb5c64c3f46389f09086d72f95.lean/declarations/choiceoracle--10cec14cf5054bcb1c977835.md) | 273 | `declaration-track:10cec14cf5054bcb1c9778353b3876a5b73a127fa21c1ff5348fb9fc34fb881a` |
| 32 | `def` | [choiceInfiniteTime](../../../../../mathematics/Algebra/LinearAlgebra/Gamma/Variant45cb282b18e0919b675d92e6b3a9857893775adb5c64c3f46389f09086d72f95.lean/declarations/choiceinfinitetime--e221f6dd727b64504301d656.md) | 278 | `declaration-track:e221f6dd727b64504301d656f1f9331eea051c33461ea88d6bf12c08a352e27f` |
| 33 | `def` | [increase](../../../../../mathematics/Algebra/LinearAlgebra/Gamma/Variant45cb282b18e0919b675d92e6b3a9857893775adb5c64c3f46389f09086d72f95.lean/declarations/increase--b5a2124f1ad21fdf093be77c.md) | 284 | `declaration-track:b5a2124f1ad21fdf093be77cf2aa32602f26f99419e37e7e83e7e50d0e44a7a5` |
| 34 | `def` | [decrease](../../../../../mathematics/Algebra/LinearAlgebra/Gamma/Variant45cb282b18e0919b675d92e6b3a9857893775adb5c64c3f46389f09086d72f95.lean/declarations/decrease--e646b104a5043c65093c854f.md) | 316 | `declaration-track:e646b104a5043c65093c854f19a70e6cb34d9228529d2a96b74bf37192416400` |
| 35 | `def` | [Valid](../../../../../mathematics/Algebra/LinearAlgebra/Gamma/Variant45cb282b18e0919b675d92e6b3a9857893775adb5c64c3f46389f09086d72f95.lean/declarations/valid--ca8eb4f60658053f53de9cf6.md) | 348 | `declaration-track:ca8eb4f60658053f53de9cf69a10d4a03ef810067b289e5ad71260ae1db02cb6` |
| 36 | `def` | [flagLe](../../../../../mathematics/Algebra/LinearAlgebra/Gamma/Variant45cb282b18e0919b675d92e6b3a9857893775adb5c64c3f46389f09086d72f95.lean/declarations/flagle--404b53fd02d3101a5806a53e.md) | 350 | `declaration-track:404b53fd02d3101a5806a53e212502de159bb087a9fe87152d2876ad988cc7ec` |
| 37 | `def` | [Le](../../../../../mathematics/Algebra/LinearAlgebra/Gamma/Variant45cb282b18e0919b675d92e6b3a9857893775adb5c64c3f46389f09086d72f95.lean/declarations/le--16805a8d4f708e7b44fe9801.md) | 353 | `declaration-track:16805a8d4f708e7b44fe9801a75167d2b4f21a1ea36a018768fbf46740570f7f` |
| 38 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Gamma/Variant45cb282b18e0919b675d92e6b3a9857893775adb5c64c3f46389f09086d72f95.lean/declarations/instance--1a9817b6a072c9b7d4dd889c.md) | 379 | `declaration-track:1a9817b6a072c9b7d4dd889cd6b01bffd8d4e1e13d12270115f90770717df685` |
| 39 | `theorem` | [gamma_structural_valid](../../../../../mathematics/Algebra/LinearAlgebra/Gamma/Variant45cb282b18e0919b675d92e6b3a9857893775adb5c64c3f46389f09086d72f95.lean/declarations/gamma-structural-valid--973f7b6afbc20d4dee4b7991.md) | 382 | `result-track:973f7b6afbc20d4dee4b7991a512968132911025a8c7c6a3272d966d9ca83685` |
| 40 | `theorem` | [gamma_decrease_valid](../../../../../mathematics/Algebra/LinearAlgebra/Gamma/Variant45cb282b18e0919b675d92e6b3a9857893775adb5c64c3f46389f09086d72f95.lean/declarations/gamma-decrease-valid--d1b56d1378ff3f65228077ba.md) | 386 | `result-track:d1b56d1378ff3f65228077ba64b53031c24f6a54acdfea1e7a11013fad89d0f5` |
| 41 | `theorem` | [gamma_increase_valid](../../../../../mathematics/Algebra/LinearAlgebra/Gamma/Variant45cb282b18e0919b675d92e6b3a9857893775adb5c64c3f46389f09086d72f95.lean/declarations/gamma-increase-valid--4ddae6e424e9147ad89e5057.md) | 391 | `result-track:4ddae6e424e9147ad89e5057b88fadc3138dff333fee6d73b6618d1c33d56763` |
| 42 | `theorem` | [pred_le](../../../../../mathematics/Algebra/LinearAlgebra/Gamma/Variant45cb282b18e0919b675d92e6b3a9857893775adb5c64c3f46389f09086d72f95.lean/declarations/pred-le--76706cabdb06a1b86b1a489e.md) | 396 | `result-track:76706cabdb06a1b86b1a489ed49263c5206913c35f4950ae3ffd2d6801f68405` |
| 43 | `theorem` | [flag_false_le](../../../../../mathematics/Algebra/LinearAlgebra/Gamma/Variant45cb282b18e0919b675d92e6b3a9857893775adb5c64c3f46389f09086d72f95.lean/declarations/flag-false-le--932f2ab506996a5ee4b851bf.md) | 399 | `result-track:932f2ab506996a5ee4b851bf98845adcaf06d60d9c819f0ac4ef6e1fe7563d08` |
| 44 | `theorem` | [flag_le_true](../../../../../mathematics/Algebra/LinearAlgebra/Gamma/Variant45cb282b18e0919b675d92e6b3a9857893775adb5c64c3f46389f09086d72f95.lean/declarations/flag-le-true--c41f12e7b6d9be9e8cbd4b07.md) | 403 | `result-track:c41f12e7b6d9be9e8cbd4b078dc047c40e56810855db6047ce9ec868df8ff757` |
| 45 | `theorem` | [gamma_decrease_le](../../../../../mathematics/Algebra/LinearAlgebra/Gamma/Variant45cb282b18e0919b675d92e6b3a9857893775adb5c64c3f46389f09086d72f95.lean/declarations/gamma-decrease-le--353cb7ea419f92c454f34f66.md) | 407 | `result-track:353cb7ea419f92c454f34f6635e4e03b372bdf7bc190bf2fce41abe0bf10d6ec` |
| 46 | `theorem` | [gamma_le_increase](../../../../../mathematics/Algebra/LinearAlgebra/Gamma/Variant45cb282b18e0919b675d92e6b3a9857893775adb5c64c3f46389f09086d72f95.lean/declarations/gamma-le-increase--025b204c0db25dc7bc862e14.md) | 428 | `result-track:025b204c0db25dc7bc862e148c5f0ce89fa9238f4fb7c62820956af1d5b9e4e5` |
| 47 | `theorem` | [gamma_preorder_refl](../../../../../mathematics/Algebra/LinearAlgebra/Gamma/Variant45cb282b18e0919b675d92e6b3a9857893775adb5c64c3f46389f09086d72f95.lean/declarations/gamma-preorder-refl--e4e8ccc9df1ca8714840a9ce.md) | 442 | `result-track:e4e8ccc9df1ca8714840a9ce2c4f2977cdbe52d34bf7ecb3bd197a052b90675b` |
| 48 | `theorem` | [flag_trans](../../../../../mathematics/Algebra/LinearAlgebra/Gamma/Variant45cb282b18e0919b675d92e6b3a9857893775adb5c64c3f46389f09086d72f95.lean/declarations/flag-trans--edfa4f2c1c9f4804afefac19.md) | 454 | `result-track:edfa4f2c1c9f4804afefac19e34d9f430aef57152ab44a8d79bb6ce722a99342` |
| 49 | `theorem` | [gamma_preorder_trans](../../../../../mathematics/Algebra/LinearAlgebra/Gamma/Variant45cb282b18e0919b675d92e6b3a9857893775adb5c64c3f46389f09086d72f95.lean/declarations/gamma-preorder-trans--0c8c2704a893e9ad45fedbd3.md) | 459 | `result-track:0c8c2704a893e9ad45fedbd3b552a6ef93cb64b86b723dd7d649a7da2bf58d8a` |
| 50 | `theorem` | [gamma_foundation_monotone](../../../../../mathematics/Algebra/LinearAlgebra/Gamma/Variant45cb282b18e0919b675d92e6b3a9857893775adb5c64c3f46389f09086d72f95.lean/declarations/gamma-foundation-monotone--81f5b40ac8b90ecf39e37466.md) | 481 | `result-track:81f5b40ac8b90ecf39e3746602981051426b1fae1cac60a2c4be6ee29a7b239a` |
| 51 | `theorem` | [gamma_preserveBijectivity_requires_bijective_foundation](../../../../../mathematics/Algebra/LinearAlgebra/Gamma/Variant45cb282b18e0919b675d92e6b3a9857893775adb5c64c3f46389f09086d72f95.lean/declarations/gamma-preservebijectivity-requires-bijective-foundation--65b919b3422ee15bdc67eb92.md) | 486 | `result-track:65b919b3422ee15bdc67eb92a7d6232ed33887810bd07457c936b80aa2798732` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
