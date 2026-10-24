# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Atlas.Variant30bcf7b52fbe67fd0d1b0dccd2b2abbd20e6fa7ab8c47461bf765cf4233a2925

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "52e64fa0670caa71a59b490e2c597fb0f4c355f6",
  "lexical_observation_count": 41,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Atlas/Variant30bcf7b52fbe67fd0d1b0dccd2b2abbd20e6fa7ab8c47461bf765cf4233a2925.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Atlas/Variant30bcf7b52fbe67fd0d1b0dccd2b2abbd20e6fa7ab8c47461bf765cf4233a2925.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Atlas/Variant30bcf7b52fbe67fd0d1b0dccd2b2abbd20e6fa7ab8c47461bf765cf4233a2925.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `52e64fa0670caa71a59b490e2c597fb0f4c355f6`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Atlas/Variant30bcf7b52fbe67fd0d1b0dccd2b2abbd20e6fa7ab8c47461bf765cf4233a2925.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Atlas/Variant30bcf7b52fbe67fd0d1b0dccd2b2abbd20e6fa7ab8c47461bf765cf4233a2925.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Fintype.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Equiv.Defs` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [BridgeKind](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Atlas/Variant30bcf7b52fbe67fd0d1b0dccd2b2abbd20e6fa7ab8c47461bf765cf4233a2925.lean/declarations/bridgekind--55c6901e8bdd2ee1902cb86f.md) | 28 | `declaration-track:55c6901e8bdd2ee1902cb86fe3d7e79f655f8352d30aa51787c6acfecc40179c` |
| 2 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Atlas/Variant30bcf7b52fbe67fd0d1b0dccd2b2abbd20e6fa7ab8c47461bf765cf4233a2925.lean/declarations/instance--5ee68e14aa330da99f56d449.md) | 41 | `declaration-track:5ee68e14aa330da99f56d44979c5796325dc6e957ef3fd029767e02609f4fb30` |
| 3 | `inductive` | [Interface](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Atlas/Variant30bcf7b52fbe67fd0d1b0dccd2b2abbd20e6fa7ab8c47461bf765cf4233a2925.lean/declarations/interface--86889bc6c5d4e3464dc0cd2d.md) | 47 | `declaration-track:86889bc6c5d4e3464dc0cd2d8302c245f91f38fd922c41dca6c12cded4d170eb` |
| 4 | `def` | [Interface.Carrier](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Atlas/Variant30bcf7b52fbe67fd0d1b0dccd2b2abbd20e6fa7ab8c47461bf765cf4233a2925.lean/declarations/interface-carrier--cae6d7d1815455410da6a7e4.md) | 53 | `declaration-track:cae6d7d1815455410da6a7e468777a777dcfa765b996c951d1b11226410bfc3a` |
| 5 | `inductive` | [InvertibleBridge](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Atlas/Variant30bcf7b52fbe67fd0d1b0dccd2b2abbd20e6fa7ab8c47461bf765cf4233a2925.lean/declarations/invertiblebridge--2e9f2f5eb3aa6fd342815eb4.md) | 59 | `declaration-track:2e9f2f5eb3aa6fd342815eb4b44ea4c4c82fe57f51816135c6ea15a35e96e1a2` |
| 6 | `def` | [InvertibleBridge.toEquiv](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Atlas/Variant30bcf7b52fbe67fd0d1b0dccd2b2abbd20e6fa7ab8c47461bf765cf4233a2925.lean/declarations/invertiblebridge-toequiv--af4b2982ae6f9b1258b9bf29.md) | 73 | `declaration-track:af4b2982ae6f9b1258b9bf29e0fb811814460c68b30df97cbc4fb3899c075672` |
| 7 | `def` | [InvertibleBridge.kind](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Atlas/Variant30bcf7b52fbe67fd0d1b0dccd2b2abbd20e6fa7ab8c47461bf765cf4233a2925.lean/declarations/invertiblebridge-kind--5aae4e95da523b3c12095826.md) | 86 | `declaration-track:5aae4e95da523b3c12095826baf85dc534c4c9036c481a5830f7f3c7d92e4f0f` |
| 8 | `def` | [InvertibleBridge.symm](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Atlas/Variant30bcf7b52fbe67fd0d1b0dccd2b2abbd20e6fa7ab8c47461bf765cf4233a2925.lean/declarations/invertiblebridge-symm--ab79e602dde4b6e843d155e7.md) | 95 | `declaration-track:ab79e602dde4b6e843d155e7d3f04dd89a050612d9c57646f4de30875e55eeee` |
| 9 | `def` | [InvertibleBridge.trans](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Atlas/Variant30bcf7b52fbe67fd0d1b0dccd2b2abbd20e6fa7ab8c47461bf765cf4233a2925.lean/declarations/invertiblebridge-trans--703ad3b1295f7f80ee3c6f72.md) | 99 | `declaration-track:703ad3b1295f7f80ee3c6f723324d4b44bac1aa7621d373b48b036e5d1f46c28` |
| 10 | `theorem` | [invertibleBridge_refl](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Atlas/Variant30bcf7b52fbe67fd0d1b0dccd2b2abbd20e6fa7ab8c47461bf765cf4233a2925.lean/declarations/invertiblebridge-refl--6cc32311cf00f3116c2f5e24.md) | 104 | `result-track:6cc32311cf00f3116c2f5e247b577ec7a624badf50e5f816e40a44493d27284e` |
| 11 | `theorem` | [invertibleBridge_symm](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Atlas/Variant30bcf7b52fbe67fd0d1b0dccd2b2abbd20e6fa7ab8c47461bf765cf4233a2925.lean/declarations/invertiblebridge-symm--7c27dd7c04d429d7c52acfa7.md) | 107 | `result-track:7c27dd7c04d429d7c52acfa716b720acbd13b80a583e99d1a345151f7a4a819f` |
| 12 | `theorem` | [invertibleBridge_trans](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Atlas/Variant30bcf7b52fbe67fd0d1b0dccd2b2abbd20e6fa7ab8c47461bf765cf4233a2925.lean/declarations/invertiblebridge-trans--67fdbfca1378f9dadd1d6e85.md) | 112 | `result-track:67fdbfca1378f9dadd1d6e857fd795800071209d23bd328245f2502f7fae37e0` |
| 13 | `structure` | [Specialization](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Atlas/Variant30bcf7b52fbe67fd0d1b0dccd2b2abbd20e6fa7ab8c47461bf765cf4233a2925.lean/declarations/specialization--44d5996bc7433b7108dee674.md) | 121 | `declaration-track:44d5996bc7433b7108dee6743ec24e240852ca33f417560884271acd09c58f26` |
| 14 | `def` | [Specialization.comp](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Atlas/Variant30bcf7b52fbe67fd0d1b0dccd2b2abbd20e6fa7ab8c47461bf765cf4233a2925.lean/declarations/specialization-comp--6a4ba79db71145099094390b.md) | 126 | `declaration-track:6a4ba79db71145099094390b3913f277ef9a718fb9d7ad548eded26fe3a32410` |
| 15 | `inductive` | [DirectionalBridge](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Atlas/Variant30bcf7b52fbe67fd0d1b0dccd2b2abbd20e6fa7ab8c47461bf765cf4233a2925.lean/declarations/directionalbridge--9442032eb0e78ab751d46a40.md) | 133 | `declaration-track:9442032eb0e78ab751d46a40af436a114690e369035500e7d612c25ab1db2f62` |
| 16 | `def` | [DirectionalBridge.toFun](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Atlas/Variant30bcf7b52fbe67fd0d1b0dccd2b2abbd20e6fa7ab8c47461bf765cf4233a2925.lean/declarations/directionalbridge-tofun--af342b80905714408d92047f.md) | 147 | `declaration-track:af342b80905714408d92047f842d64d2b1f6002847dc10cd0cec82a81c0146e2` |
| 17 | `def` | [DirectionalBridge.kind](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Atlas/Variant30bcf7b52fbe67fd0d1b0dccd2b2abbd20e6fa7ab8c47461bf765cf4233a2925.lean/declarations/directionalbridge-kind--c9cf245e7799507b26e88ffb.md) | 156 | `declaration-track:c9cf245e7799507b26e88ffba500a1cfa3197235ca92001c02bb2bf89af9ded4` |
| 18 | `inductive` | [BridgeEvidence](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Atlas/Variant30bcf7b52fbe67fd0d1b0dccd2b2abbd20e6fa7ab8c47461bf765cf4233a2925.lean/declarations/bridgeevidence--51937fa49d046c481672c7b2.md) | 164 | `declaration-track:51937fa49d046c481672c7b2c6fac9e06b0a2f516148b388fb7634bd4741c38c` |
| 19 | `def` | [BridgeEvidence.kind](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Atlas/Variant30bcf7b52fbe67fd0d1b0dccd2b2abbd20e6fa7ab8c47461bf765cf4233a2925.lean/declarations/bridgeevidence-kind--e66910ee6b362563bbdd6b80.md) | 169 | `declaration-track:e66910ee6b362563bbdd6b8022186c2f6c944443676c9def8c215bbf7450bba2` |
| 20 | `def` | [BridgeEvidence.IsInvertible](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Atlas/Variant30bcf7b52fbe67fd0d1b0dccd2b2abbd20e6fa7ab8c47461bf765cf4233a2925.lean/declarations/bridgeevidence-isinvertible--f6509bff596401ae15426e18.md) | 174 | `declaration-track:f6509bff596401ae15426e181bedaa4a66e55a28701c936c6224c7d0365c190e` |
| 21 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Atlas/Variant30bcf7b52fbe67fd0d1b0dccd2b2abbd20e6fa7ab8c47461bf765cf4233a2925.lean/declarations/instance--03f0f8896a20cf3d0b2f6d7a.md) | 178 | `declaration-track:03f0f8896a20cf3d0b2f6d7aaa1199c841f8f8a565d0881f3c603c2731b58d14` |
| 22 | `inductive` | [BridgeOrientation](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Atlas/Variant30bcf7b52fbe67fd0d1b0dccd2b2abbd20e6fa7ab8c47461bf765cf4233a2925.lean/declarations/bridgeorientation--eca5019f731b2192e0c1ccc5.md) | 182 | `declaration-track:eca5019f731b2192e0c1ccc5f58adbd9809aedc75cf39b397e53d7b77ea5a2fc` |
| 23 | `def` | [BridgeEvidence.orientation](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Atlas/Variant30bcf7b52fbe67fd0d1b0dccd2b2abbd20e6fa7ab8c47461bf765cf4233a2925.lean/declarations/bridgeevidence-orientation--4ad2434f845cf7e408a640d1.md) | 188 | `declaration-track:4ad2434f845cf7e408a640d1784cacf4d898930e40be036989073d6a9fc53d19` |
| 24 | `structure` | [BridgeMetadata](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Atlas/Variant30bcf7b52fbe67fd0d1b0dccd2b2abbd20e6fa7ab8c47461bf765cf4233a2925.lean/declarations/bridgemetadata--05ab08928b993615e955f795.md) | 193 | `declaration-track:05ab08928b993615e955f7953284cfba684efb3cfbda8b45ed24f307c98a40ba` |
| 25 | `structure` | [VerifiedBridge](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Atlas/Variant30bcf7b52fbe67fd0d1b0dccd2b2abbd20e6fa7ab8c47461bf765cf4233a2925.lean/declarations/verifiedbridge--056d0a44ecb29ec13e6a6b4a.md) | 201 | `declaration-track:056d0a44ecb29ec13e6a6b4a548c6a17c9a0d22f5e51f94027021d33cfd15b05` |
| 26 | `structure` | [CandidateBridge](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Atlas/Variant30bcf7b52fbe67fd0d1b0dccd2b2abbd20e6fa7ab8c47461bf765cf4233a2925.lean/declarations/candidatebridge--7db77c8238043413cd46489e.md) | 212 | `declaration-track:7db77c8238043413cd46489e93cfa64a2e9fd6a5d903e27b639e791085489e4c` |
| 27 | `structure` | [FiniteBridgeGraph](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Atlas/Variant30bcf7b52fbe67fd0d1b0dccd2b2abbd20e6fa7ab8c47461bf765cf4233a2925.lean/declarations/finitebridgegraph--28374a2b533312e53dfe4718.md) | 226 | `declaration-track:28374a2b533312e53dfe471866f204984db9b33d6c72414fb6694cdc7ecd9cf5` |
| 28 | `structure` | [BridgeCatalog](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Atlas/Variant30bcf7b52fbe67fd0d1b0dccd2b2abbd20e6fa7ab8c47461bf765cf4233a2925.lean/declarations/bridgecatalog--783c027aa7e5c8854be7a532.md) | 243 | `declaration-track:783c027aa7e5c8854be7a5325199ecce1b0f009bb2aa13a1ac504cc0ef194ff9` |
| 29 | `structure` | [BridgeSelection](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Atlas/Variant30bcf7b52fbe67fd0d1b0dccd2b2abbd20e6fa7ab8c47461bf765cf4233a2925.lean/declarations/bridgeselection--864f25a948e500aa2010bea6.md) | 251 | `declaration-track:864f25a948e500aa2010bea6bb29660446a9156aa477cadb448a16b5c82ed1b4` |
| 30 | `def` | [toGraph](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Atlas/Variant30bcf7b52fbe67fd0d1b0dccd2b2abbd20e6fa7ab8c47461bf765cf4233a2925.lean/declarations/tograph--c9b7419cdf0e3732438513aa.md) | 269 | `declaration-track:c9b7419cdf0e3732438513aa9f4bcac6cfb005cae4729958d83a312199f134f2` |
| 31 | `def` | [union](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Atlas/Variant30bcf7b52fbe67fd0d1b0dccd2b2abbd20e6fa7ab8c47461bf765cf4233a2925.lean/declarations/union--da90f75928c116358f22e679.md) | 277 | `declaration-track:da90f75928c116358f22e67990423b029c22f10bcaf3b74b908251fdea6a2146` |
| 32 | `theorem` | [nodes_subset_union](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Atlas/Variant30bcf7b52fbe67fd0d1b0dccd2b2abbd20e6fa7ab8c47461bf765cf4233a2925.lean/declarations/nodes-subset-union--cb62ebffe1f7cc640adb8e31.md) | 288 | `result-track:cb62ebffe1f7cc640adb8e31d60d5acc22f3072c79d1153fbbd8ca6c4cc6c611` |
| 33 | `theorem` | [bridges_subset_union](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Atlas/Variant30bcf7b52fbe67fd0d1b0dccd2b2abbd20e6fa7ab8c47461bf765cf4233a2925.lean/declarations/bridges-subset-union--051bad5e354df5cad9fde51c.md) | 291 | `result-track:051bad5e354df5cad9fde51c0990713ee3d512d3f23f6d67862a6d8c7f4e2e4d` |
| 34 | `theorem` | [union_preserves_admitted](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Atlas/Variant30bcf7b52fbe67fd0d1b0dccd2b2abbd20e6fa7ab8c47461bf765cf4233a2925.lean/declarations/union-preserves-admitted--bb09e6c7b3592f3cbb0f7180.md) | 295 | `result-track:bb09e6c7b3592f3cbb0f71807479df0175389e5fb2b9d27bf73fc47090545380` |
| 35 | `inductive` | [CompositionRuleKind](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Atlas/Variant30bcf7b52fbe67fd0d1b0dccd2b2abbd20e6fa7ab8c47461bf765cf4233a2925.lean/declarations/compositionrulekind--13b9e259ae9e96c141338529.md) | 302 | `declaration-track:13b9e259ae9e96c14133852936533f1c995abee2dd9a73153766599cc26c549b` |
| 36 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Atlas/Variant30bcf7b52fbe67fd0d1b0dccd2b2abbd20e6fa7ab8c47461bf765cf4233a2925.lean/declarations/instance--e4e766c52b52a9bf33f3de67.md) | 311 | `declaration-track:e4e766c52b52a9bf33f3de67d8828c4683e1bfc10a73aa8eb13112726d401f12` |
| 37 | `theorem` | [implication_trans](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Atlas/Variant30bcf7b52fbe67fd0d1b0dccd2b2abbd20e6fa7ab8c47461bf765cf4233a2925.lean/declarations/implication-trans--45b1e6d21c96516d118eb7a6.md) | 317 | `result-track:45b1e6d21c96516d118eb7a663882efc7a65dfc50514d1cf8f3aa8cb19fb519b` |
| 38 | `theorem` | [specialization_comp](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Atlas/Variant30bcf7b52fbe67fd0d1b0dccd2b2abbd20e6fa7ab8c47461bf765cf4233a2925.lean/declarations/specialization-comp--cd252f347312cabbe4893405.md) | 321 | `result-track:cd252f347312cabbe4893405665228b8f7a85b16d6c550f60bc6ef8b4dc15d28` |
| 39 | `theorem` | [property_transport](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Atlas/Variant30bcf7b52fbe67fd0d1b0dccd2b2abbd20e6fa7ab8c47461bf765cf4233a2925.lean/declarations/property-transport--6edba7805c4f397dabbd2e2f.md) | 326 | `result-track:6edba7805c4f397dabbd2e2f552e5a955ac15119d722c092cdeebf8d6ab5a527` |
| 40 | `theorem` | [quotient_descent_comp_respects](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Atlas/Variant30bcf7b52fbe67fd0d1b0dccd2b2abbd20e6fa7ab8c47461bf765cf4233a2925.lean/declarations/quotient-descent-comp-respects--5d8df98b36346edb99f9a15c.md) | 330 | `result-track:5d8df98b36346edb99f9a15c75d1fe90f230c64bdffb0b6cb8c1afba34af4158` |
| 41 | `theorem` | [quotient_descent_comp](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Atlas/Variant30bcf7b52fbe67fd0d1b0dccd2b2abbd20e6fa7ab8c47461bf765cf4233a2925.lean/declarations/quotient-descent-comp--682272ee45da74c5badfb5d9.md) | 337 | `result-track:682272ee45da74c5badfb5d966a0b2c3a180a32fa6b34b597203cf22ae6c41c5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
