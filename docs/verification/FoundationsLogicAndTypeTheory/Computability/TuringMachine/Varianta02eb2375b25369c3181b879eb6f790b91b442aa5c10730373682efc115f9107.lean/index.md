# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.Computability.TuringMachine.Varianta02eb2375b25369c3181b879eb6f790b91b442aa5c10730373682efc115f9107

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c14e91790357aeb78628835fe8af4a3d1cad9f8c",
  "lexical_observation_count": 57,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/Computability/TuringMachine/Varianta02eb2375b25369c3181b879eb6f790b91b442aa5c10730373682efc115f9107.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TuringMachine/Varianta02eb2375b25369c3181b879eb6f790b91b442aa5c10730373682efc115f9107.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TuringMachine/Varianta02eb2375b25369c3181b879eb6f790b91b442aa5c10730373682efc115f9107.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c14e91790357aeb78628835fe8af4a3d1cad9f8c`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/Computability/TuringMachine/Varianta02eb2375b25369c3181b879eb6f790b91b442aa5c10730373682efc115f9107.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/Computability/TuringMachine/Varianta02eb2375b25369c3181b879eb6f790b91b442aa5c10730373682efc115f9107.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Computability.Tape` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Option` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Prod` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Pi` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Data.PFun` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Computability.PostTuringMachine` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [Stmt](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TuringMachine/Varianta02eb2375b25369c3181b879eb6f790b91b442aa5c10730373682efc115f9107.lean/declarations/stmt--ba61b8320e742c8d2286a0a4.md) | 131 | `declaration-track:ba61b8320e742c8d2286a0a49e429b747534f0db2d077250ac14d7dad3f2022c` |
| 2 | `instance` | [Stmt.inhabited](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TuringMachine/Varianta02eb2375b25369c3181b879eb6f790b91b442aa5c10730373682efc115f9107.lean/declarations/stmt-inhabited--97513ee6fddd20e50b76e351.md) | 142 | `declaration-track:97513ee6fddd20e50b76e35111502fd5938b665de86c65e7d8dea98939a37c7c` |
| 3 | `structure` | [Cfg](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TuringMachine/Varianta02eb2375b25369c3181b879eb6f790b91b442aa5c10730373682efc115f9107.lean/declarations/cfg--7692ab58a0657acc201387d5.md) | 148 | `declaration-track:7692ab58a0657acc201387d5d3ba89050c0e426d71967dd42beb1450d6370edc` |
| 4 | `instance` | [Cfg.inhabited](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TuringMachine/Varianta02eb2375b25369c3181b879eb6f790b91b442aa5c10730373682efc115f9107.lean/declarations/cfg-inhabited--7c43921a14031bd948c7ff4f.md) | 156 | `declaration-track:7c43921a14031bd948c7ff4fc031a00acedda4a3a55410c9e6990625fdd37c3d` |
| 5 | `def` | [stepAux](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TuringMachine/Varianta02eb2375b25369c3181b879eb6f790b91b442aa5c10730373682efc115f9107.lean/declarations/stepaux--98937ab4242dc0706daa4556.md) | 165 | `declaration-track:98937ab4242dc0706daa4556fb4ea008870bca484270e96b45902fc2186b90be` |
| 6 | `def` | [step](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TuringMachine/Varianta02eb2375b25369c3181b879eb6f790b91b442aa5c10730373682efc115f9107.lean/declarations/step--9f33347cdd9ea599033ac9f3.md) | 175 | `declaration-track:9f33347cdd9ea599033ac9f3088679eb271c3344285caf54544c22b63ac4eac0` |
| 7 | `def` | [Reaches](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TuringMachine/Varianta02eb2375b25369c3181b879eb6f790b91b442aa5c10730373682efc115f9107.lean/declarations/reaches--584cbf0c8d751e860eff1f48.md) | 183 | `declaration-track:584cbf0c8d751e860eff1f48bfb55189d4aa23d5f443661e0af268fdfff92e0f` |
| 8 | `def` | [SupportsStmt](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TuringMachine/Varianta02eb2375b25369c3181b879eb6f790b91b442aa5c10730373682efc115f9107.lean/declarations/supportsstmt--3dae4cb0eed9e8f1b0cd8ece.md) | 189 | `declaration-track:3dae4cb0eed9e8f1b0cd8ecefee477575a826b9d7a1f2c88c7210d2ea2a6c551` |
| 9 | `def` | [stmts₁](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TuringMachine/Varianta02eb2375b25369c3181b879eb6f790b91b442aa5c10730373682efc115f9107.lean/declarations/stmts--83e187a4706b9880171c9456.md) | 202 | `declaration-track:83e187a4706b9880171c9456e91dcf0628c1dcda94d5182e3fe54a7e7405092e` |
| 10 | `theorem` | [stmts₁_self](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TuringMachine/Varianta02eb2375b25369c3181b879eb6f790b91b442aa5c10730373682efc115f9107.lean/declarations/stmts-self--88bb6721bd5260cba3c83500.md) | 211 | `result-track:88bb6721bd5260cba3c83500b00452eeec37ce66fb8737513003cef063adcfd8` |
| 11 | `theorem` | [stmts₁_trans](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TuringMachine/Varianta02eb2375b25369c3181b879eb6f790b91b442aa5c10730373682efc115f9107.lean/declarations/stmts-trans--628a4480eab5d98732c9b4ab.md) | 214 | `result-track:628a4480eab5d98732c9b4ab3573aa26e9e21ca114cf79bd6d7cbeb2d43d14a3` |
| 12 | `theorem` | [stmts₁_supportsStmt_mono](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TuringMachine/Varianta02eb2375b25369c3181b879eb6f790b91b442aa5c10730373682efc115f9107.lean/declarations/stmts-supportsstmt-mono--8458d890c9fe07d7f051c1f4.md) | 234 | `result-track:8458d890c9fe07d7f051c1f486f88ccdab7dd63289a7ec86873d86b613de99cd` |
| 13 | `def` | [stmts](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TuringMachine/Varianta02eb2375b25369c3181b879eb6f790b91b442aa5c10730373682efc115f9107.lean/declarations/stmts--ed1caff62881f1671ecb7623.md) | 246 | `declaration-track:ed1caff62881f1671ecb76235a9d8e4ba60cced5e7cb227e493c6785dd29d0ed` |
| 14 | `theorem` | [stmts_trans](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TuringMachine/Varianta02eb2375b25369c3181b879eb6f790b91b442aa5c10730373682efc115f9107.lean/declarations/stmts-trans--d0b55f8c25afea512fffce10.md) | 249 | `result-track:d0b55f8c25afea512fffce1083de8be735bfe4975cbed24c39d5e789ad1b6f78` |
| 15 | `def` | [Supports](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TuringMachine/Varianta02eb2375b25369c3181b879eb6f790b91b442aa5c10730373682efc115f9107.lean/declarations/supports--f0d48af738846f774323e4be.md) | 261 | `declaration-track:f0d48af738846f774323e4bed863b433f999d1fa4022d8e3ce24edf14b939bb1` |
| 16 | `theorem` | [stmts_supportsStmt](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TuringMachine/Varianta02eb2375b25369c3181b879eb6f790b91b442aa5c10730373682efc115f9107.lean/declarations/stmts-supportsstmt--886ca6d4c64c923dd3e3221d.md) | 264 | `result-track:886ca6d4c64c923dd3e3221dc082c7413b9c01a252053183badf214f7120a24b` |
| 17 | `theorem` | [step_supports](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TuringMachine/Varianta02eb2375b25369c3181b879eb6f790b91b442aa5c10730373682efc115f9107.lean/declarations/step-supports--467db48bb14713ab27ed7fef.md) | 272 | `result-track:467db48bb14713ab27ed7fef3468946fed333842453ba8ebe01e342b30e04c5d` |
| 18 | `def` | [init](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TuringMachine/Varianta02eb2375b25369c3181b879eb6f790b91b442aa5c10730373682efc115f9107.lean/declarations/init--809a136f7e1d701baff3495a.md) | 289 | `declaration-track:809a136f7e1d701baff3495a61e9c9fe9d1c7220b5e21425cc1bf71d5ca795af` |
| 19 | `def` | [eval](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TuringMachine/Varianta02eb2375b25369c3181b879eb6f790b91b442aa5c10730373682efc115f9107.lean/declarations/eval--35da63008dd6f8d73ad35f41.md) | 293 | `declaration-track:35da63008dd6f8d73ad35f41762c79bbb6791edffeecf6b97442dee5c137c6d0` |
| 20 | `theorem` | [stk_nth_val](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TuringMachine/Varianta02eb2375b25369c3181b879eb6f790b91b442aa5c10730373682efc115f9107.lean/declarations/stk-nth-val--3c0ec820bfcbbcb9e04b94d0.md) | 340 | `result-track:3c0ec820bfcbbcb9e04b94d0fdda5887c35ce0e20a4482772cfa8d5f88611d52` |
| 21 | `def` | [Γ'](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TuringMachine/Varianta02eb2375b25369c3181b879eb6f790b91b442aa5c10730373682efc115f9107.lean/declarations/anonymous--fe4909daa347e66386d14e2b.md) | 353 | `declaration-track:fe4909daa347e66386d14e2bd79483e0d664cbd4f869eb3b68188e127bbcffc9` |
| 22 | `instance` | [Γ'.inhabited](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TuringMachine/Varianta02eb2375b25369c3181b879eb6f790b91b442aa5c10730373682efc115f9107.lean/declarations/inhabited--21b93d0857e9a1f92c4a017a.md) | 358 | `declaration-track:21b93d0857e9a1f92c4a017aa5cb0d8ab7fbdae0d0ee23f2fe96d393299ce97e` |
| 23 | `instance` | [Γ'.fintype](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TuringMachine/Varianta02eb2375b25369c3181b879eb6f790b91b442aa5c10730373682efc115f9107.lean/declarations/fintype--8401b9fd7dcf52c54297cbb9.md) | 361 | `declaration-track:8401b9fd7dcf52c54297cbb90d0873c0c0490ce3f23fe98597698480469c360e` |
| 24 | `def` | [addBottom](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TuringMachine/Varianta02eb2375b25369c3181b879eb6f790b91b442aa5c10730373682efc115f9107.lean/declarations/addbottom--28fa44f21312d81e05173b32.md) | 366 | `declaration-track:28fa44f21312d81e05173b32a830bba10ef8f82187fefa6a8498c2a1e62a7494` |
| 25 | `theorem` | [addBottom_map](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TuringMachine/Varianta02eb2375b25369c3181b879eb6f790b91b442aa5c10730373682efc115f9107.lean/declarations/addbottom-map--b4408e7ba6d85b4dfc846e51.md) | 369 | `result-track:b4408e7ba6d85b4dfc846e51bc20111d05c56b75537b40d760c99e26d2a1710d` |
| 26 | `theorem` | [addBottom_modifyNth](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TuringMachine/Varianta02eb2375b25369c3181b879eb6f790b91b442aa5c10730373682efc115f9107.lean/declarations/addbottom-modifynth--b1a717fff0a9bf24df7b22bd.md) | 376 | `result-track:b1a717fff0a9bf24df7b22bdec8d08712c601adb63c32c44fb45f3041f960cdf` |
| 27 | `theorem` | [addBottom_nth_snd](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TuringMachine/Varianta02eb2375b25369c3181b879eb6f790b91b442aa5c10730373682efc115f9107.lean/declarations/addbottom-nth-snd--0b718559643fce84268fc88c.md) | 383 | `result-track:0b718559643fce84268fc88c32c3739c6b341c01db7bf72f2059358180b48366` |
| 28 | `theorem` | [addBottom_nth_succ_fst](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TuringMachine/Varianta02eb2375b25369c3181b879eb6f790b91b442aa5c10730373682efc115f9107.lean/declarations/addbottom-nth-succ-fst--f82ea77fce1172cf3a4cb24c.md) | 387 | `result-track:f82ea77fce1172cf3a4cb24c65cb231f0ebcac65c1d0a6e624d3db272a47ffdd` |
| 29 | `theorem` | [addBottom_head_fst](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TuringMachine/Varianta02eb2375b25369c3181b879eb6f790b91b442aa5c10730373682efc115f9107.lean/declarations/addbottom-head-fst--ca33f4bd5723d267bf28d2ef.md) | 391 | `result-track:ca33f4bd5723d267bf28d2ef79a13a3b85b5076c8ce6ee3b525c164b3f96129e` |
| 30 | `inductive` | [StAct](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TuringMachine/Varianta02eb2375b25369c3181b879eb6f790b91b442aa5c10730373682efc115f9107.lean/declarations/stact--277662f86725e8eabe82b932.md) | 398 | `declaration-track:277662f86725e8eabe82b932fb0a0f92f48bd7b8dbf0d6dbfb7c6f46a9443499` |
| 31 | `instance` | [StAct.inhabited](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TuringMachine/Varianta02eb2375b25369c3181b879eb6f790b91b442aa5c10730373682efc115f9107.lean/declarations/stact-inhabited--677714b93d14f5fe783c836d.md) | 403 | `declaration-track:677714b93d14f5fe783c836dd80c5b74ec06058b7b097cb96804f5bad2ad34d5` |
| 32 | `def` | [stRun](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TuringMachine/Varianta02eb2375b25369c3181b879eb6f790b91b442aa5c10730373682efc115f9107.lean/declarations/strun--31365c2cf790a0af594c64e4.md) | 411 | `declaration-track:31365c2cf790a0af594c64e49d682e14ace4e53ef4949d43dc15fcc404ffcead` |
| 33 | `def` | [stVar](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TuringMachine/Varianta02eb2375b25369c3181b879eb6f790b91b442aa5c10730373682efc115f9107.lean/declarations/stvar--d6151fe6e5e3457fb30e471f.md) | 417 | `declaration-track:d6151fe6e5e3457fb30e471f60a52d2950159abca94ab8df0c0a8c698bc67e5c` |
| 34 | `def` | [stWrite](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TuringMachine/Varianta02eb2375b25369c3181b879eb6f790b91b442aa5c10730373682efc115f9107.lean/declarations/stwrite--9e35cadec03a36b7ab835763.md) | 423 | `declaration-track:9e35cadec03a36b7ab835763d11367c9229a2d1541f534ee945ddc0a115a1aa0` |
| 35 | `def` | [stmtStRec.](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TuringMachine/Varianta02eb2375b25369c3181b879eb6f790b91b442aa5c10730373682efc115f9107.lean/declarations/stmtstrec--d83f2b8bdb23a892072df266.md) | 432 | `declaration-track:d83f2b8bdb23a892072df266d0b9eb9050f1ffb8e90d287e0cc2504ebcd404a2` |
| 36 | `theorem` | [supports_run](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TuringMachine/Varianta02eb2375b25369c3181b879eb6f790b91b442aa5c10730373682efc115f9107.lean/declarations/supports-run--ba56bd69e37824dc7f89b830.md) | 446 | `result-track:ba56bd69e37824dc7f89b830834de729aa49cb8a54a171e86fe0ecc7c68e6318` |
| 37 | `inductive` | [Λ'](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TuringMachine/Varianta02eb2375b25369c3181b879eb6f790b91b442aa5c10730373682efc115f9107.lean/declarations/anonymous--d2a571c222b3e9a583f022f4.md) | 457 | `declaration-track:d2a571c222b3e9a583f022f486555ebd6c8c87c9429de8834886217e6e432594` |
| 38 | `instance` | [Λ'.inhabited](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TuringMachine/Varianta02eb2375b25369c3181b879eb6f790b91b442aa5c10730373682efc115f9107.lean/declarations/inhabited--7faa24517fb8b669f7bb195f.md) | 466 | `declaration-track:7faa24517fb8b669f7bb195f878e452573c92cd139626b7a1a1aa5851e844397` |
| 39 | `def` | [trStAct](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TuringMachine/Varianta02eb2375b25369c3181b879eb6f790b91b442aa5c10730373682efc115f9107.lean/declarations/trstact--d27aef04dabe276ddcb5a84c.md) | 476 | `declaration-track:d27aef04dabe276ddcb5a84cd7f83de5ea65606588d8af35d1992dc49cc52124` |
| 40 | `def` | [trInit](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TuringMachine/Varianta02eb2375b25369c3181b879eb6f790b91b442aa5c10730373682efc115f9107.lean/declarations/trinit--a5be3924abe18511efb7ea77.md) | 487 | `declaration-track:a5be3924abe18511efb7ea7720b01d61d506e86937c07ef8ff4e6c9937e8ddd4` |
| 41 | `theorem` | [step_run](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TuringMachine/Varianta02eb2375b25369c3181b879eb6f790b91b442aa5c10730373682efc115f9107.lean/declarations/step-run--e00ef0bc9eab8494782f6d16.md) | 491 | `result-track:e00ef0bc9eab8494782f6d1629d29ebc46a8ae1534d60d187c0e0620d084d842` |
| 42 | `def` | [trNormal](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TuringMachine/Varianta02eb2375b25369c3181b879eb6f790b91b442aa5c10730373682efc115f9107.lean/declarations/trnormal--c41dcd0a5e894be6f09d5975.md) | 502 | `declaration-track:c41dcd0a5e894be6f09d597548b20113936ba27f15f854c72e60a26bf8eb3cd2` |
| 43 | `theorem` | [trNormal_run](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TuringMachine/Varianta02eb2375b25369c3181b879eb6f790b91b442aa5c10730373682efc115f9107.lean/declarations/trnormal-run--745e95fb4defaa0c010c7d4b.md) | 511 | `result-track:745e95fb4defaa0c010c7d4bc5400ad84c47cad9ef156f795572c70161762b22` |
| 44 | `def` | [trStmts₁](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TuringMachine/Varianta02eb2375b25369c3181b879eb6f790b91b442aa5c10730373682efc115f9107.lean/declarations/trstmts--d5c7638af4dc61f8ba6758c5.md) | 519 | `declaration-track:d5c7638af4dc61f8ba6758c53f10960b742a5bd040c8b71c9987dd35138255eb` |
| 45 | `theorem` | [trStmts₁_run](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TuringMachine/Varianta02eb2375b25369c3181b879eb6f790b91b442aa5c10730373682efc115f9107.lean/declarations/trstmts-run--89c29497a067341c73b44763.md) | 527 | `result-track:89c29497a067341c73b4476314214ade0bdbc581e6f0f57db5b20561b6c84a84` |
| 46 | `theorem` | [tr_respects_aux₂](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TuringMachine/Varianta02eb2375b25369c3181b879eb6f790b91b442aa5c10730373682efc115f9107.lean/declarations/tr-respects-aux--e333b7812699b29ed86e15fc.md) | 532 | `result-track:e333b7812699b29ed86e15fc5b19cbcf18b153ebaf12945d46be4e9e0bdb2f8c` |
| 47 | `def` | [tr](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TuringMachine/Varianta02eb2375b25369c3181b879eb6f790b91b442aa5c10730373682efc115f9107.lean/declarations/tr--985951006a1bf9c17c63fea9.md) | 624 | `declaration-track:985951006a1bf9c17c63fea9b984dd075cf53ce77c2e00c52e1185a22b5040cf` |
| 48 | `inductive` | [TrCfg](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TuringMachine/Varianta02eb2375b25369c3181b879eb6f790b91b442aa5c10730373682efc115f9107.lean/declarations/trcfg--1a8724f7815884137b39c006.md) | 632 | `declaration-track:1a8724f7815884137b39c006bbab8b072332cc140203c4bfd9ab650adaacafa2` |
| 49 | `theorem` | [tr_respects_aux₁](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TuringMachine/Varianta02eb2375b25369c3181b879eb6f790b91b442aa5c10730373682efc115f9107.lean/declarations/tr-respects-aux--993b16983b293f18241c7223.md) | 637 | `result-track:993b16983b293f18241c722383284d4e3406138050a4402e501227777e296b20` |
| 50 | `theorem` | [tr_respects_aux₃](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TuringMachine/Varianta02eb2375b25369c3181b879eb6f790b91b442aa5c10730373682efc115f9107.lean/declarations/tr-respects-aux--a5d22ff1b53a78b128cc127c.md) | 650 | `result-track:a5d22ff1b53a78b128cc127c917a6d22781374e578373106826672002db54c24` |
| 51 | `theorem` | [tr_respects_aux](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TuringMachine/Varianta02eb2375b25369c3181b879eb6f790b91b442aa5c10730373682efc115f9107.lean/declarations/tr-respects-aux--260183c94b4e4f062e512703.md) | 660 | `result-track:260183c94b4e4f062e51270332b392521075353cd43bb95bc6243e4a0977c2e7` |
| 52 | `theorem` | [tr_respects](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TuringMachine/Varianta02eb2375b25369c3181b879eb6f790b91b442aa5c10730373682efc115f9107.lean/declarations/tr-respects--4e1a767f849d69b0b5aa0f2a.md) | 683 | `result-track:4e1a767f849d69b0b5aa0f2ae053a97ff10f4ceac726d3211cc5468f81b3c2e3` |
| 53 | `theorem` | [trCfg_init](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TuringMachine/Varianta02eb2375b25369c3181b879eb6f790b91b442aa5c10730373682efc115f9107.lean/declarations/trcfg-init--fbc6ae7a73fe98ecc7d7ea2e.md) | 704 | `result-track:fbc6ae7a73fe98ecc7d7ea2e5a55392baec6a17522464000e09f21c3f2ba0482` |
| 54 | `theorem` | [tr_eval_dom](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TuringMachine/Varianta02eb2375b25369c3181b879eb6f790b91b442aa5c10730373682efc115f9107.lean/declarations/tr-eval-dom--6f053212ea236b7a8fb97140.md) | 726 | `result-track:6f053212ea236b7a8fb97140b31924b52902bde32fa36ca03c2473a682d36903` |
| 55 | `theorem` | [tr_eval](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TuringMachine/Varianta02eb2375b25369c3181b879eb6f790b91b442aa5c10730373682efc115f9107.lean/declarations/tr-eval--f1a37a80a1a7997f2ae60113.md) | 730 | `result-track:f1a37a80a1a7997f2ae60113072142a040bfcce66c4f51028f0273226aa265ea` |
| 56 | `def` | [trSupp](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TuringMachine/Varianta02eb2375b25369c3181b879eb6f790b91b442aa5c10730373682efc115f9107.lean/declarations/trsupp--704996f6551df7ee93bb094a.md) | 749 | `declaration-track:704996f6551df7ee93bb094adc91587a62c5c00f21d25c39396ec8af643ed6a6` |
| 57 | `theorem` | [tr_supports](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TuringMachine/Varianta02eb2375b25369c3181b879eb6f790b91b442aa5c10730373682efc115f9107.lean/declarations/tr-supports--df7b56a2cb3d47f9be7783af.md) | 753 | `result-track:df7b56a2cb3d47f9be7783af3f87286f0b90823807e5d628c85993965554bf6e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
