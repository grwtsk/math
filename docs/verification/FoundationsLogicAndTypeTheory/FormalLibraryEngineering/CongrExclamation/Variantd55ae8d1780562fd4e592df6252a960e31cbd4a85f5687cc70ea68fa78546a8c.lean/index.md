# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CongrExclamation.Variantd55ae8d1780562fd4e592df6252a960e31cbd4a85f5687cc70ea68fa78546a8c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c39698c53abaa2d5431201f627f6fc34b2385acb",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrExclamation/Variantd55ae8d1780562fd4e592df6252a960e31cbd4a85f5687cc70ea68fa78546a8c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrExclamation/Variantd55ae8d1780562fd4e592df6252a960e31cbd4a85f5687cc70ea68fa78546a8c.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrExclamation/Variantd55ae8d1780562fd4e592df6252a960e31cbd4a85f5687cc70ea68fa78546a8c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c39698c53abaa2d5431201f627f6fc34b2385acb`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrExclamation/Variantd55ae8d1780562fd4e592df6252a960e31cbd4a85f5687cc70ea68fa78546a8c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrExclamation/Variantd55ae8d1780562fd4e592df6252a960e31cbd4a85f5687cc70ea68fa78546a8c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Elab.Tactic.Config` — import line 11; external provider; requires a separately pinned dependency.
- `Lean.Elab.Tactic.RCases` — import line 12; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Assumption` — import line 13; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Rfl` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Lean.Meta.CongrTheorems` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Basic` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrExclamation/Variantd55ae8d1780562fd4e592df6252a960e31cbd4a85f5687cc70ea68fa78546a8c.lean/declarations/initialize--5ee22bd0c81902e05cd77ca9.md) | 36 | `declaration-track:5ee22bd0c81902e05cd77ca925d94cefa49a1135549db411abde6f4a57a101d1` |
| 2 | `initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrExclamation/Variantd55ae8d1780562fd4e592df6252a960e31cbd4a85f5687cc70ea68fa78546a8c.lean/declarations/initialize--ec5dfd557231ea4c4717cc96.md) | 37 | `declaration-track:ec5dfd557231ea4c4717cc9670baedfe6baac644fecbfc7469316a9fddc11c70` |
| 3 | `structure` | [Congr!.Config](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrExclamation/Variantd55ae8d1780562fd4e592df6252a960e31cbd4a85f5687cc70ea68fa78546a8c.lean/declarations/congr-config--bd285b6e119bd8afa2f902da.md) | 40 | `declaration-track:bd285b6e119bd8afa2f902da27912ea445617424253a17094c14ed54a73bea4b` |
| 4 | `def` | [Congr!.Config.unfoldSameFun](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrExclamation/Variantd55ae8d1780562fd4e592df6252a960e31cbd4a85f5687cc70ea68fa78546a8c.lean/declarations/congr-config-unfoldsamefun--ac377e7dc99a0bc60ba04452.md) | 126 | `declaration-track:ac377e7dc99a0bc60ba04452cbc64f617403b7edb3a4b98dc6e81c2d60fde4fe` |
| 5 | `def` | [Congr!.Config.numArgsOk](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrExclamation/Variantd55ae8d1780562fd4e592df6252a960e31cbd4a85f5687cc70ea68fa78546a8c.lean/declarations/congr-config-numargsok--9ed12ed85a77f1001dddb228.md) | 133 | `declaration-track:9ed12ed85a77f1001dddb228273c2620d6020ca77b1f7d1ebd65c0d5d84a160a` |
| 6 | `def` | [Congr!.Config.maxArgsFor](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrExclamation/Variantd55ae8d1780562fd4e592df6252a960e31cbd4a85f5687cc70ea68fa78546a8c.lean/declarations/congr-config-maxargsfor--98a7288943c8059b15069ef4.md) | 137 | `declaration-track:98a7288943c8059b15069ef4fdca230771dde8e0fc6177a08f7711b6e6a1bc0c` |
| 7 | `def` | [applyCongrThm?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrExclamation/Variantd55ae8d1780562fd4e592df6252a960e31cbd4a85f5687cc70ea68fa78546a8c.lean/declarations/applycongrthm--e36696badf1e4956d4b11df3.md) | 146 | `declaration-track:e36696badf1e4956d4b11df3597be5bd4db7b6bef215d5f7267e18fb7f7db57c` |
| 8 | `def` | [Congr!.plausiblyEqualTypes](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrExclamation/Variantd55ae8d1780562fd4e592df6252a960e31cbd4a85f5687cc70ea68fa78546a8c.lean/declarations/congr-plausiblyequaltypes--0d35d94029c42e9533c814eb.md) | 173 | `declaration-track:0d35d94029c42e9533c814eb3c3f9e57c97ed188336e3f579db22fb25a2378d2` |
| 9 | `def` | [Lean.MVarId.smartHCongr?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrExclamation/Variantd55ae8d1780562fd4e592df6252a960e31cbd4a85f5687cc70ea68fa78546a8c.lean/declarations/lean-mvarid-smarthcongr--a76d8aa2b427d1480c1b5e33.md) | 210 | `declaration-track:a76d8aa2b427d1480c1b5e3380ec76eb4201e62c713d87b896972696c3cc7494` |
| 10 | `def` | [Lean.MVarId.congrSimp?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrExclamation/Variantd55ae8d1780562fd4e592df6252a960e31cbd4a85f5687cc70ea68fa78546a8c.lean/declarations/lean-mvarid-congrsimp--a58f5706b3420cc9cf2fa114.md) | 319 | `declaration-track:a58f5706b3420cc9cf2fa114cc6765d7e25e8923ea2b26d8542e06061d465705` |
| 11 | `def` | [Lean.MVarId.userCongr?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrExclamation/Variantd55ae8d1780562fd4e592df6252a960e31cbd4a85f5687cc70ea68fa78546a8c.lean/declarations/lean-mvarid-usercongr--d7b3a075cdc281ed4fdf1912.md) | 358 | `declaration-track:d7b3a075cdc281ed4fdf1912ac66d1a72d531d6d1f490ac4dcaab9b5dca4fbd8` |
| 12 | `def` | [Lean.MVarId.congrPi?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrExclamation/Variantd55ae8d1780562fd4e592df6252a960e31cbd4a85f5687cc70ea68fa78546a8c.lean/declarations/lean-mvarid-congrpi--bbd21df96c10e3c5a15a7a09.md) | 391 | `declaration-track:bbd21df96c10e3c5a15a7a09340166a845f0de46c3b1ab16e624a9eab6b855ea` |
| 13 | `def` | [Lean.MVarId.obviousFunext?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrExclamation/Variantd55ae8d1780562fd4e592df6252a960e31cbd4a85f5687cc70ea68fa78546a8c.lean/declarations/lean-mvarid-obviousfunext--5af93b4e2109cef67896dde8.md) | 401 | `declaration-track:5af93b4e2109cef67896dde82d99c4846a99e2eb68006877db305084f5f3c985` |
| 14 | `def` | [Lean.MVarId.obviousHfunext?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrExclamation/Variantd55ae8d1780562fd4e592df6252a960e31cbd4a85f5687cc70ea68fa78546a8c.lean/declarations/lean-mvarid-obvioushfunext--8ba6b34d82f467724426c576.md) | 414 | `declaration-track:8ba6b34d82f467724426c576ea67940fa3dc091fc7eca525cfd1ad9b76265e57` |
| 15 | `theorem` | [implies_congr'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrExclamation/Variantd55ae8d1780562fd4e592df6252a960e31cbd4a85f5687cc70ea68fa78546a8c.lean/declarations/implies-congr--3fd3bc1e8d29605cc5041912.md) | 422 | `result-track:3fd3bc1e8d29605cc50419129736cb44ed4df227cd814558ef46db36d0b46996` |
| 16 | `def` | [Lean.MVarId.congrImplies?'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrExclamation/Variantd55ae8d1780562fd4e592df6252a960e31cbd4a85f5687cc70ea68fa78546a8c.lean/declarations/lean-mvarid-congrimplies--760c82cb8627a13f3165e199.md) | 430 | `declaration-track:760c82cb8627a13f3165e19963a375f23cf4de4dc544a97c5f228483070c6a7c` |
| 17 | `def` | [Lean.MVarId.subsingletonHelim?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrExclamation/Variantd55ae8d1780562fd4e592df6252a960e31cbd4a85f5687cc70ea68fa78546a8c.lean/declarations/lean-mvarid-subsingletonhelim--94003df6b2527a894912fc0a.md) | 442 | `declaration-track:94003df6b2527a894912fc0aa0e40c08dce65dd11c5757a7ddc315b40786b6c8` |
| 18 | `def` | [Lean.MVarId.beqInst?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrExclamation/Variantd55ae8d1780562fd4e592df6252a960e31cbd4a85f5687cc70ea68fa78546a8c.lean/declarations/lean-mvarid-beqinst--c97d5ac0192dcca64e2091c8.md) | 463 | `declaration-track:c97d5ac0192dcca64e2091c8604eef82fac5f4e784888e64991a2e3745dd3d87` |
| 19 | `def` | [Lean.MVarId.congrPasses!](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrExclamation/Variantd55ae8d1780562fd4e592df6252a960e31cbd4a85f5687cc70ea68fa78546a8c.lean/declarations/lean-mvarid-congrpasses--6e7df1c7a7b40dcbfa8eabd2.md) | 469 | `declaration-track:6e7df1c7a7b40dcbfa8eabd269da34eb78f73660677b3907c512cedf335119d8` |
| 20 | `structure` | [CongrState](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrExclamation/Variantd55ae8d1780562fd4e592df6252a960e31cbd4a85f5687cc70ea68fa78546a8c.lean/declarations/congrstate--64aa1c61098e1fef7c196087.md) | 489 | `declaration-track:64aa1c61098e1fef7c196087eb736bb807ca1b0ac3ae1d13860cf9ad8d85bbe3` |
| 21 | `abbrev` | [CongrMetaM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrExclamation/Variantd55ae8d1780562fd4e592df6252a960e31cbd4a85f5687cc70ea68fa78546a8c.lean/declarations/congrmetam--0d1d0707df67f6aa1a24096b.md) | 495 | `declaration-track:0d1d0707df67f6aa1a24096b2100cf0bfa7bbb0a0fe8e486c65c47e66861e193` |
| 22 | `def` | [CongrMetaM.nextPattern](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrExclamation/Variantd55ae8d1780562fd4e592df6252a960e31cbd4a85f5687cc70ea68fa78546a8c.lean/declarations/congrmetam-nextpattern--7364f8abbefd78fddc87fb8e.md) | 498 | `declaration-track:7364f8abbefd78fddc87fb8ea20fdfc807fff8d440628ab1a92724bfa941a318` |
| 23 | `theorem` | [heq_imp_of_eq_imp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrExclamation/Variantd55ae8d1780562fd4e592df6252a960e31cbd4a85f5687cc70ea68fa78546a8c.lean/declarations/heq-imp-of-eq-imp--5ae059f7ec186309bab4b42b.md) | 505 | `result-track:5ae059f7ec186309bab4b42b947a743fd6dc8d38ad8f062ea88f49fec9e50773` |
| 24 | `theorem` | [eq_imp_of_iff_imp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrExclamation/Variantd55ae8d1780562fd4e592df6252a960e31cbd4a85f5687cc70ea68fa78546a8c.lean/declarations/eq-imp-of-iff-imp--28f0a4e04046c24118b026d3.md) | 510 | `result-track:28f0a4e04046c24118b026d325f6a94188d3be3ae37f287bfb8670809ecb7525` |
| 25 | `def` | [Lean.MVarId.introsClean](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrExclamation/Variantd55ae8d1780562fd4e592df6252a960e31cbd4a85f5687cc70ea68fa78546a8c.lean/declarations/lean-mvarid-introsclean--fee1ac337b540d6c3790ba6a.md) | 527 | `declaration-track:fee1ac337b540d6c3790ba6af918acf6cff19b478c7053d097e2aba8734adc88` |
| 26 | `def` | [Lean.MVarId.preCongr!](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrExclamation/Variantd55ae8d1780562fd4e592df6252a960e31cbd4a85f5687cc70ea68fa78546a8c.lean/declarations/lean-mvarid-precongr--f00cd23a40b56724ed933ffa.md) | 577 | `declaration-track:f00cd23a40b56724ed933ffa5fed81bd42afead0d2522168634a3986e7208c66` |
| 27 | `def` | [Lean.MVarId.congrCore!](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrExclamation/Variantd55ae8d1780562fd4e592df6252a960e31cbd4a85f5687cc70ea68fa78546a8c.lean/declarations/lean-mvarid-congrcore--d2f942f8e340e14b6a00471e.md) | 594 | `declaration-track:d2f942f8e340e14b6a00471e207d303e165f7fa799a6bdd63787c68560f85a40` |
| 28 | `def` | [Lean.MVarId.postCongr!](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrExclamation/Variantd55ae8d1780562fd4e592df6252a960e31cbd4a85f5687cc70ea68fa78546a8c.lean/declarations/lean-mvarid-postcongr--a84383de29df30ce9e1dd0ef.md) | 617 | `declaration-track:a84383de29df30ce9e1dd0efef1ae9b93fcfd20352049df02e8d207668c5bfe5` |
| 29 | `def` | [Lean.MVarId.congrN!](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrExclamation/Variantd55ae8d1780562fd4e592df6252a960e31cbd4a85f5687cc70ea68fa78546a8c.lean/declarations/lean-mvarid-congrn--527a939d1d43efe8f0e990d2.md) | 636 | `declaration-track:527a939d1d43efe8f0e990d20741d3c1435b25ae6715a9f45ee3d9531ca6376e` |
| 30 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrExclamation/Variantd55ae8d1780562fd4e592df6252a960e31cbd4a85f5687cc70ea68fa78546a8c.lean/declarations/syntax--3966d46e0ce46a1e5fb434d1.md) | 739 | `declaration-track:3966d46e0ce46a1e5fb434d13a30ef928dd6b196afa4dc202b7ef4ad15663917` |
| 31 | `elab_rules` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrExclamation/Variantd55ae8d1780562fd4e592df6252a960e31cbd4a85f5687cc70ea68fa78546a8c.lean/declarations/elab-rules--15cbf1a8d23634788d0f71b7.md) | 742 | `declaration-track:15cbf1a8d23634788d0f71b741ed710bb7e386f3235174fd4362fe184fb86190` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
