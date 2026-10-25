# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ToExpr.Variant669a3431f4ceb33903488ecb4fabb8f0213bc682d4a6e5db777a8367b6e8ec2b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b54308aad2360d7434592ff84e85544fbf1f2b97",
  "lexical_observation_count": 35,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToExpr/Variant669a3431f4ceb33903488ecb4fabb8f0213bc682d4a6e5db777a8367b6e8ec2b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToExpr/Variant669a3431f4ceb33903488ecb4fabb8f0213bc682d4a6e5db777a8367b6e8ec2b.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToExpr/Variant669a3431f4ceb33903488ecb4fabb8f0213bc682d4a6e5db777a8367b6e8ec2b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b54308aad2360d7434592ff84e85544fbf1f2b97`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToExpr/Variant669a3431f4ceb33903488ecb4fabb8f0213bc682d4a6e5db777a8367b6e8ec2b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToExpr/Variant669a3431f4ceb33903488ecb4fabb8f0213bc682d4a6e5db777a8367b6e8ec2b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean` — import line 11; external provider; requires a separately pinned dependency.
- `LeanCert.Core.Expr` — import line 12; external provider; requires a separately pinned dependency.
- `LeanCert.Meta.Numeral` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [max_eq_half_add_abs_sub](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToExpr/Variant669a3431f4ceb33903488ecb4fabb8f0213bc682d4a6e5db777a8367b6e8ec2b.lean/declarations/max-eq-half-add-abs-sub--413a6edd4eb53a93d3633d0a.md) | 45 | `result-track:413a6edd4eb53a93d3633d0a0e834df0ee9ebe58c43adb5aa93b918118ab5f66` |
| 2 | `theorem` | [min_eq_half_sub_abs_sub](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToExpr/Variant669a3431f4ceb33903488ecb4fabb8f0213bc682d4a6e5db777a8367b6e8ec2b.lean/declarations/min-eq-half-sub-abs-sub--840dc6307eff55517b645937.md) | 53 | `result-track:840dc6307eff55517b645937ee35edc7e23d29fd5de66fa0514dde8e1513b54f` |
| 3 | `structure` | [Context](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToExpr/Variant669a3431f4ceb33903488ecb4fabb8f0213bc682d4a6e5db777a8367b6e8ec2b.lean/declarations/context--a6673764b5c2ad6d7354fbbc.md) | 62 | `declaration-track:a6673764b5c2ad6d7354fbbc7e1f982aa67d9b0f1ec864a78d306d208cd1a900` |
| 4 | `abbrev` | [TranslateM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToExpr/Variant669a3431f4ceb33903488ecb4fabb8f0213bc682d4a6e5db777a8367b6e8ec2b.lean/declarations/translatem--5eb4b99746d6f682ad6c979c.md) | 67 | `declaration-track:5eb4b99746d6f682ad6c979c28dbe01fb67d0b70acfdbf00c0e2c2a8c74f7999` |
| 5 | `def` | [findVarIdx?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToExpr/Variant669a3431f4ceb33903488ecb4fabb8f0213bc682d4a6e5db777a8367b6e8ec2b.lean/declarations/findvaridx--2ce839d9eece24f8292bb494.md) | 70 | `declaration-track:2ce839d9eece24f8292bb494a9f13f0f42a8935262aac22aa55d40cb1fdb219a` |
| 6 | `def` | [mkExprConst](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToExpr/Variant669a3431f4ceb33903488ecb4fabb8f0213bc682d4a6e5db777a8367b6e8ec2b.lean/declarations/mkexprconst--c73f5f2ca7a5e562b2cb054e.md) | 81 | `declaration-track:c73f5f2ca7a5e562b2cb054e1b3eb817bbe4ec2cb4a1fa498fb9769f0e65cced` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToExpr/Variant669a3431f4ceb33903488ecb4fabb8f0213bc682d4a6e5db777a8367b6e8ec2b.lean/declarations/instance--dab0666c22398c3c003263d4.md) | 89 | `declaration-track:dab0666c22398c3c003263d425c795f7d3013898df64caf6a71090a92b4e0321` |
| 8 | `def` | [mkExprVar](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToExpr/Variant669a3431f4ceb33903488ecb4fabb8f0213bc682d4a6e5db777a8367b6e8ec2b.lean/declarations/mkexprvar--652572a246a3a1d5f3d6bd24.md) | 94 | `declaration-track:652572a246a3a1d5f3d6bd2404458739f0f11b4304726cfbfddf57e9551b4752` |
| 9 | `def` | [mkExprAdd](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToExpr/Variant669a3431f4ceb33903488ecb4fabb8f0213bc682d4a6e5db777a8367b6e8ec2b.lean/declarations/mkexpradd--491409f55d5ae31fa12ac64f.md) | 98 | `declaration-track:491409f55d5ae31fa12ac64f3eebb8a5a4e8cbbaee3f97f4de65af07082586d0` |
| 10 | `def` | [mkExprMul](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToExpr/Variant669a3431f4ceb33903488ecb4fabb8f0213bc682d4a6e5db777a8367b6e8ec2b.lean/declarations/mkexprmul--2c9bf8b427b0d06b204869fb.md) | 102 | `declaration-track:2c9bf8b427b0d06b204869fb9708245932382305c5a960febc053e64c34784c8` |
| 11 | `def` | [mkExprNeg](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToExpr/Variant669a3431f4ceb33903488ecb4fabb8f0213bc682d4a6e5db777a8367b6e8ec2b.lean/declarations/mkexprneg--039ffc224b30ccdedbd45b2e.md) | 106 | `declaration-track:039ffc224b30ccdedbd45b2e44d59418bbabbbab16083719c916a7b7d84415f2` |
| 12 | `def` | [mkExprSub](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToExpr/Variant669a3431f4ceb33903488ecb4fabb8f0213bc682d4a6e5db777a8367b6e8ec2b.lean/declarations/mkexprsub--47012c58fe40a8105e74fc03.md) | 110 | `declaration-track:47012c58fe40a8105e74fc03a6e1e092143e682eef69a4482db78e212e2a5d34` |
| 13 | `def` | [mkExprInv](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToExpr/Variant669a3431f4ceb33903488ecb4fabb8f0213bc682d4a6e5db777a8367b6e8ec2b.lean/declarations/mkexprinv--face6a19ef01e1de3346ad1c.md) | 114 | `declaration-track:face6a19ef01e1de3346ad1c87bf5022f1c21d5c956d641af7208e9e90cd8b5b` |
| 14 | `def` | [mkExprSin](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToExpr/Variant669a3431f4ceb33903488ecb4fabb8f0213bc682d4a6e5db777a8367b6e8ec2b.lean/declarations/mkexprsin--9587bb91a4d5d65d05399b60.md) | 118 | `declaration-track:9587bb91a4d5d65d05399b600447264b105736f81d67037257f9589e55f13597` |
| 15 | `def` | [mkExprCos](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToExpr/Variant669a3431f4ceb33903488ecb4fabb8f0213bc682d4a6e5db777a8367b6e8ec2b.lean/declarations/mkexprcos--60eac50a89773deec80aa22b.md) | 122 | `declaration-track:60eac50a89773deec80aa22b025a133c4bb87daf34abefcc5df875ec06eec089` |
| 16 | `def` | [mkExprExp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToExpr/Variant669a3431f4ceb33903488ecb4fabb8f0213bc682d4a6e5db777a8367b6e8ec2b.lean/declarations/mkexprexp--40fc33f4708ea713bcd2bbbe.md) | 126 | `declaration-track:40fc33f4708ea713bcd2bbbe2b595f57f3263f261f122707a266b76d4ea26e86` |
| 17 | `def` | [mkExprLog](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToExpr/Variant669a3431f4ceb33903488ecb4fabb8f0213bc682d4a6e5db777a8367b6e8ec2b.lean/declarations/mkexprlog--78ff6d6c01132d0bd6177bc2.md) | 130 | `declaration-track:78ff6d6c01132d0bd6177bc2ae65f035c1dd0bd4b928ff0c0ffc58360201007c` |
| 18 | `def` | [mkExprAtan](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToExpr/Variant669a3431f4ceb33903488ecb4fabb8f0213bc682d4a6e5db777a8367b6e8ec2b.lean/declarations/mkexpratan--a85b953b425aaa736218c772.md) | 134 | `declaration-track:a85b953b425aaa736218c7724d6c02a5f79a1579af68c6253d78d7a02bc37aac` |
| 19 | `def` | [mkExprArsinh](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToExpr/Variant669a3431f4ceb33903488ecb4fabb8f0213bc682d4a6e5db777a8367b6e8ec2b.lean/declarations/mkexprarsinh--e664d2ab60a542f3293b1bb1.md) | 138 | `declaration-track:e664d2ab60a542f3293b1bb1e2a43307f0f52a367dc171533ce353b294dbdc99` |
| 20 | `def` | [mkExprAtanh](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToExpr/Variant669a3431f4ceb33903488ecb4fabb8f0213bc682d4a6e5db777a8367b6e8ec2b.lean/declarations/mkexpratanh--47ed89efe3ce302f87489d90.md) | 142 | `declaration-track:47ed89efe3ce302f87489d906fdfdfc18653d9efc0d2eab948c5c5b52974cb2d` |
| 21 | `def` | [mkExprSinc](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToExpr/Variant669a3431f4ceb33903488ecb4fabb8f0213bc682d4a6e5db777a8367b6e8ec2b.lean/declarations/mkexprsinc--50113e60172a187ff07c0a1c.md) | 146 | `declaration-track:50113e60172a187ff07c0a1cf19d04a37b4bb7a04006ee12404a4eb09cddfbfb` |
| 22 | `def` | [mkExprErf](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToExpr/Variant669a3431f4ceb33903488ecb4fabb8f0213bc682d4a6e5db777a8367b6e8ec2b.lean/declarations/mkexprerf--7e015ffcb1295ff980d95b0a.md) | 150 | `declaration-track:7e015ffcb1295ff980d95b0aeb3b90dd011c49fb3fb595d2ccbd794a021797ce` |
| 23 | `def` | [mkExprSqrt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToExpr/Variant669a3431f4ceb33903488ecb4fabb8f0213bc682d4a6e5db777a8367b6e8ec2b.lean/declarations/mkexprsqrt--69c5f9160b588a72bc27832e.md) | 154 | `declaration-track:69c5f9160b588a72bc27832e142107c8a85e32502fc39bd1d9f8b5ffe456f623` |
| 24 | `def` | [mkExprAbs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToExpr/Variant669a3431f4ceb33903488ecb4fabb8f0213bc682d4a6e5db777a8367b6e8ec2b.lean/declarations/mkexprabs--1c961f875ed3e3ed7859ae64.md) | 158 | `declaration-track:1c961f875ed3e3ed7859ae643dec0ce9d7cc5069d104ced3bc8b8e5bcc467136` |
| 25 | `def` | [mkExprSinh](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToExpr/Variant669a3431f4ceb33903488ecb4fabb8f0213bc682d4a6e5db777a8367b6e8ec2b.lean/declarations/mkexprsinh--bc58571095478bb36a0f6d3e.md) | 162 | `declaration-track:bc58571095478bb36a0f6d3eeda3d212336a991427aa663deaa6c4cb43d66525` |
| 26 | `def` | [mkExprCosh](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToExpr/Variant669a3431f4ceb33903488ecb4fabb8f0213bc682d4a6e5db777a8367b6e8ec2b.lean/declarations/mkexprcosh--91a897992df5f569977d4fc0.md) | 166 | `declaration-track:91a897992df5f569977d4fc02a1f4fd2414861d6b4a8ce608c32048bd64cfee7` |
| 27 | `def` | [mkExprTanh](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToExpr/Variant669a3431f4ceb33903488ecb4fabb8f0213bc682d4a6e5db777a8367b6e8ec2b.lean/declarations/mkexprtanh--bebb7803aa2e3bd7843796d3.md) | 170 | `declaration-track:bebb7803aa2e3bd7843796d3e953b295c96ed95807d75fecc04eb6d9db0432e8` |
| 28 | `def` | [mkExprNamedConst](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToExpr/Variant669a3431f4ceb33903488ecb4fabb8f0213bc682d4a6e5db777a8367b6e8ec2b.lean/declarations/mkexprnamedconst--2f3c90a4754a407aa985a04e.md) | 174 | `declaration-track:2f3c90a4754a407aa985a04ef977557d1c95e2e424a258f2f8579a230729711d` |
| 29 | `def` | [mkExprPi](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToExpr/Variant669a3431f4ceb33903488ecb4fabb8f0213bc682d4a6e5db777a8367b6e8ec2b.lean/declarations/mkexprpi--ef5bc45711f05e60abe568c2.md) | 178 | `declaration-track:ef5bc45711f05e60abe568c2761027a75d798259279673191cd02c75323e3eb2` |
| 30 | `def` | [mkExprEulerMascheroni](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToExpr/Variant669a3431f4ceb33903488ecb4fabb8f0213bc682d4a6e5db777a8367b6e8ec2b.lean/declarations/mkexpreulermascheroni--5a7651da05c41ba46c42c97b.md) | 182 | `declaration-track:5a7651da05c41ba46c42c97b1a7f694222fda5a775e2c812228beec30fc22720` |
| 31 | `def` | [mkExprMaxViaAbs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToExpr/Variant669a3431f4ceb33903488ecb4fabb8f0213bc682d4a6e5db777a8367b6e8ec2b.lean/declarations/mkexprmaxviaabs--7ac7a437a9fcabb24b075867.md) | 186 | `declaration-track:7ac7a437a9fcabb24b0758675498bcbafb033fcebf16a5765a128c358e95cf14` |
| 32 | `def` | [mkExprMinViaAbs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToExpr/Variant669a3431f4ceb33903488ecb4fabb8f0213bc682d4a6e5db777a8367b6e8ec2b.lean/declarations/mkexprminviaabs--962c05fb4b0eb40d52970553.md) | 195 | `declaration-track:962c05fb4b0eb40d52970553d909b266b25ca605da818436c2866c2c1c3dcef1` |
| 33 | `def` | [toLeanCertExpr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToExpr/Variant669a3431f4ceb33903488ecb4fabb8f0213bc682d4a6e5db777a8367b6e8ec2b.lean/declarations/toleancertexpr--4d5361b358901dadd06bb5ad.md) | 223 | `declaration-track:4d5361b358901dadd06bb5ad655611b4e0f64bc1e0a675bd46846de5f8e72b92` |
| 34 | `def` | [reify](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToExpr/Variant669a3431f4ceb33903488ecb4fabb8f0213bc682d4a6e5db777a8367b6e8ec2b.lean/declarations/reify--6973e8eb01f6de5aecaf89ff.md) | 513 | `declaration-track:6973e8eb01f6de5aecaf89ffd29b662028327cbd96464d697e7ae6f0cd0d7256` |
| 35 | `elab` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToExpr/Variant669a3431f4ceb33903488ecb4fabb8f0213bc682d4a6e5db777a8367b6e8ec2b.lean/declarations/elab--6d90b6fc517b069001877e4a.md) | 523 | `declaration-track:6d90b6fc517b069001877e4af75096d1f87fffc6a6201c7523003f21447fffb2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
