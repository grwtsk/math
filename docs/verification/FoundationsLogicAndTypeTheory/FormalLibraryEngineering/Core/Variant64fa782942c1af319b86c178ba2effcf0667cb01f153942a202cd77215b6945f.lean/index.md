# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Core.Variant64fa782942c1af319b86c178ba2effcf0667cb01f153942a202cd77215b6945f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c2c98a080ce0eb8a5bb5ec95ccfda0f08fe1d15d",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant64fa782942c1af319b86c178ba2effcf0667cb01f153942a202cd77215b6945f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant64fa782942c1af319b86c178ba2effcf0667cb01f153942a202cd77215b6945f.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant64fa782942c1af319b86c178ba2effcf0667cb01f153942a202cd77215b6945f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c2c98a080ce0eb8a5bb5ec95ccfda0f08fe1d15d`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant64fa782942c1af319b86c178ba2effcf0667cb01f153942a202cd77215b6945f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant64fa782942c1af319b86c178ba2effcf0667cb01f153942a202cd77215b6945f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.NormNum.Core` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.HaveI` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Invertible` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Ring.Cast` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Control.Basic` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Cast.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Qq` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant64fa782942c1af319b86c178ba2effcf0667cb01f153942a202cd77215b6945f.lean/declarations/syntax--b330915b9952231357975a5a.md) | 27 | `declaration-track:b330915b9952231357975a5aeadaf34a9fbebad40bdc09e4e5ead7eeb6416193` |
| 2 | `lemma` | [ne_of_ne_of_eq'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant64fa782942c1af319b86c178ba2effcf0667cb01f153942a202cd77215b6945f.lean/declarations/ne-of-ne-of-eq--fca0e4bd23eb743998c57e1b.md) | 29 | `result-track:fca0e4bd23eb743998c57e1b7b1b1e413bebdbcb5c60bf2f27a3f3de643c82cd` |
| 3 | `inductive` | [Strictness](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant64fa782942c1af319b86c178ba2effcf0667cb01f153942a202cd77215b6945f.lean/declarations/strictness--908382c61984414d9e318611.md) | 36 | `declaration-track:908382c61984414d9e3186111cc42ae1bcae0df9a8434e99f0d0085af287ed43` |
| 4 | `def` | [Strictness.toString](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant64fa782942c1af319b86c178ba2effcf0667cb01f153942a202cd77215b6945f.lean/declarations/strictness-tostring--75665a8bef39fe5bf0903038.md) | 44 | `declaration-track:75665a8bef39fe5bf0903038ae0a938c61739dc0df88814e356657e3a43b3be8` |
| 5 | `def` | [Strictness.toNonneg](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant64fa782942c1af319b86c178ba2effcf0667cb01f153942a202cd77215b6945f.lean/declarations/strictness-tononneg--f3765f73a341fb2fc5ff2ad1.md) | 52 | `declaration-track:f3765f73a341fb2fc5ff2ad1492b7033ea85ad2533d4ea4d037729b913298518` |
| 6 | `def` | [Strictness.toNonzero](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant64fa782942c1af319b86c178ba2effcf0667cb01f153942a202cd77215b6945f.lean/declarations/strictness-tononzero--958f310779e553ddac9aba55.md) | 58 | `declaration-track:958f310779e553ddac9aba559d5c3a610ac4101f28ac9160ee49d927ef128cad` |
| 7 | `structure` | [PositivityExt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant64fa782942c1af319b86c178ba2effcf0667cb01f153942a202cd77215b6945f.lean/declarations/positivityext--834e2ae0ba1023e57235ac99.md) | 64 | `declaration-track:834e2ae0ba1023e57235ac99545bd539e4eba3c1fedb9f124a70b8d0269e6bfa` |
| 8 | `def` | [mkPositivityExt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant64fa782942c1af319b86c178ba2effcf0667cb01f153942a202cd77215b6945f.lean/declarations/mkpositivityext--a99331281ea57f8479720051.md) | 70 | `declaration-track:a99331281ea57f84797200511da49c5554e1b77fe2cea7c6f3f21f1f744b8c10` |
| 9 | `abbrev` | [Entry](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant64fa782942c1af319b86c178ba2effcf0667cb01f153942a202cd77215b6945f.lean/declarations/entry--fcc82a0285aa1f3088a62b0f.md) | 76 | `declaration-track:fcc82a0285aa1f3088a62b0f54213a275c50b8aad02fcc08cd99e557ca778516` |
| 10 | `initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant64fa782942c1af319b86c178ba2effcf0667cb01f153942a202cd77215b6945f.lean/declarations/initialize--cd225f5a98ff52c3d43dd700.md) | 79 | `declaration-track:cd225f5a98ff52c3d43dd700d5a8730cdf7a62e94ec290b2ff8f815427b28c11` |
| 11 | `initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant64fa782942c1af319b86c178ba2effcf0667cb01f153942a202cd77215b6945f.lean/declarations/initialize--f9f00b70a82ac055d6542b8f.md) | 94 | `declaration-track:f9f00b70a82ac055d6542b8f1d00e9eec83367b0af179e0c429a1a40e2ae4685` |
| 12 | `lemma` | [lt_of_le_of_ne'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant64fa782942c1af319b86c178ba2effcf0667cb01f153942a202cd77215b6945f.lean/declarations/lt-of-le-of-ne--94657223d7c440fffe20f61b.md) | 120 | `result-track:94657223d7c440fffe20f61b255275b5005ee55f5b4ff8a5831d7f1a24d4acf6` |
| 13 | `lemma` | [pos_of_isNat](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant64fa782942c1af319b86c178ba2effcf0667cb01f153942a202cd77215b6945f.lean/declarations/pos-of-isnat--b1994d8800f1ea4fc4aa71d3.md) | 123 | `result-track:b1994d8800f1ea4fc4aa71d363726bd4585dc5bdbcae8bd9410bae26402e23d6` |
| 14 | `lemma` | [nonneg_of_isNat](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant64fa782942c1af319b86c178ba2effcf0667cb01f153942a202cd77215b6945f.lean/declarations/nonneg-of-isnat--22add2ae4fc3efe7bcb9372f.md) | 129 | `result-track:22add2ae4fc3efe7bcb9372ff0d68b9d3d25086667e1402ee772c72d2443016f` |
| 15 | `lemma` | [nz_of_isNegNat](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant64fa782942c1af319b86c178ba2effcf0667cb01f153942a202cd77215b6945f.lean/declarations/nz-of-isnegnat--9aea8bf0ae2b92995e81a138.md) | 134 | `result-track:9aea8bf0ae2b92995e81a13833465df3b0551af3b2fdf887273889514b887580` |
| 16 | `lemma` | [pos_of_isRat](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant64fa782942c1af319b86c178ba2effcf0667cb01f153942a202cd77215b6945f.lean/declarations/pos-of-israt--2a021b9ff654c14b4069c166.md) | 141 | `result-track:2a021b9ff654c14b4069c166a1387a199a6c391c82b2ef95ca2de1f69da1ed8f` |
| 17 | `lemma` | [nonneg_of_isRat](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant64fa782942c1af319b86c178ba2effcf0667cb01f153942a202cd77215b6945f.lean/declarations/nonneg-of-israt--98e32cac55e223f8c9ea70aa.md) | 149 | `result-track:98e32cac55e223f8c9ea70aa19ca0245e28731e0ba84a3981f28b6393a46ce98` |
| 18 | `lemma` | [nz_of_isRat](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant64fa782942c1af319b86c178ba2effcf0667cb01f153942a202cd77215b6945f.lean/declarations/nz-of-israt--cbb6bd569b88feea7f1af48b.md) | 153 | `result-track:cbb6bd569b88feea7f1af48bb3c3f8312b53e981fff57c6da6030d072b7403c9` |
| 19 | `def` | [catchNone](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant64fa782942c1af319b86c178ba2effcf0667cb01f153942a202cd77215b6945f.lean/declarations/catchnone--2aba4d002af526b3733806ef.md) | 165 | `declaration-track:2aba4d002af526b3733806ef52b46046df285b74cb7b9c1ebd4ae82a65000134` |
| 20 | `def` | [throwNone](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant64fa782942c1af319b86c178ba2effcf0667cb01f153942a202cd77215b6945f.lean/declarations/thrownone--377446197bdda3d424967645.md) | 173 | `declaration-track:377446197bdda3d42496764564d9827a8d0b71c05348506f07e4c388b216126c` |
| 21 | `def` | [normNumPositivity](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant64fa782942c1af319b86c178ba2effcf0667cb01f153942a202cd77215b6945f.lean/declarations/normnumpositivity--85969ee99ff2770cb9bfa22f.md) | 180 | `declaration-track:85969ee99ff2770cb9bfa22fcdbd0950e86d58bc9c2b77fa7533fc5478050395` |
| 22 | `def` | [positivityCanon](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant64fa782942c1af319b86c178ba2effcf0667cb01f153942a202cd77215b6945f.lean/declarations/positivitycanon--2b18b58c3cfdfbaa86cb997a.md) | 225 | `declaration-track:2b18b58c3cfdfbaa86cb997afff37809edf631b7212ced8ad1ce5fa09e2d27e6` |
| 23 | `def` | [compareHypLE](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant64fa782942c1af319b86c178ba2effcf0667cb01f153942a202cd77215b6945f.lean/declarations/comparehyple--18d3c1d3dfef8a0307454eb7.md) | 233 | `declaration-track:18d3c1d3dfef8a0307454eb787b8c65fc0df8435f634bfc126d223dc6d33d1ef` |
| 24 | `def` | [compareHypLT](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant64fa782942c1af319b86c178ba2effcf0667cb01f153942a202cd77215b6945f.lean/declarations/comparehyplt--34c1ddf021cb35852148f484.md) | 240 | `declaration-track:34c1ddf021cb35852148f4848edb19b9cb2fd43b92531a7082f3a0d0c9557144` |
| 25 | `def` | [compareHypEq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant64fa782942c1af319b86c178ba2effcf0667cb01f153942a202cd77215b6945f.lean/declarations/comparehypeq--072c7566a61c2f6115567c9e.md) | 247 | `declaration-track:072c7566a61c2f6115567c9e1fd283fd899c0f8771d843232d44cdfcfa8b6301` |
| 26 | `initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant64fa782942c1af319b86c178ba2effcf0667cb01f153942a202cd77215b6945f.lean/declarations/initialize--c21410cced5afe8be9238820.md) | 254 | `declaration-track:c21410cced5afe8be923882091fea270b3bcb892a89c9c4aa57850a2822354d4` |
| 27 | `initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant64fa782942c1af319b86c178ba2effcf0667cb01f153942a202cd77215b6945f.lean/declarations/initialize--40fd598becf6151d14fc2535.md) | 255 | `declaration-track:40fd598becf6151d14fc2535aee6b5c0d4b4ff7a435bd40f400f05b439a9d6c3` |
| 28 | `def` | [compareHyp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant64fa782942c1af319b86c178ba2effcf0667cb01f153942a202cd77215b6945f.lean/declarations/comparehyp--e865c32b2b5e4a80b3ce61b9.md) | 259 | `declaration-track:e865c32b2b5e4a80b3ce61b95aa0ec475370a12d49fe3a4e40b4f4ca5f29d250` |
| 29 | `def` | [orElse](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant64fa782942c1af319b86c178ba2effcf0667cb01f153942a202cd77215b6945f.lean/declarations/orelse--64139b518f4114dc06012de6.md) | 308 | `declaration-track:64139b518f4114dc06012de6247223e766af94b2ebed4a5124ebad8725be9d52` |
| 30 | `def` | [core](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant64fa782942c1af319b86c178ba2effcf0667cb01f153942a202cd77215b6945f.lean/declarations/core--0b1e9b87244f46373eb097c0.md) | 325 | `declaration-track:0b1e9b87244f46373eb097c030f3c80d0b5ab9b6631b8276ddf40b957471602b` |
| 31 | `inductive` | [OrderRel](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant64fa782942c1af319b86c178ba2effcf0667cb01f153942a202cd77215b6945f.lean/declarations/orderrel--d1d307f5cb066f63c60fa352.md) | 344 | `declaration-track:d1d307f5cb066f63c60fa352d267e553a8e9e45f2922e4cf3baf160056b8671c` |
| 32 | `def` | [bestResult](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant64fa782942c1af319b86c178ba2effcf0667cb01f153942a202cd77215b6945f.lean/declarations/bestresult--8a6ffb58a45803da86e930dc.md) | 356 | `declaration-track:8a6ffb58a45803da86e930dcd35a3d4867b720819aeaa7efc9c41b7d63c83e56` |
| 33 | `def` | [proveNonneg](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant64fa782942c1af319b86c178ba2effcf0667cb01f153942a202cd77215b6945f.lean/declarations/provenonneg--807cfd0b158d8d15dbab2a82.md) | 367 | `declaration-track:807cfd0b158d8d15dbab2a827d32780a151b7383f63e87f5691de005ac2966c8` |
| 34 | `def` | [solve](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant64fa782942c1af319b86c178ba2effcf0667cb01f153942a202cd77215b6945f.lean/declarations/solve--eb33174266b516b66d0631e3.md) | 374 | `declaration-track:eb33174266b516b66d0631e34e8a7a553724c872fe86259036681a1141bda616` |
| 35 | `def` | [positivity](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant64fa782942c1af319b86c178ba2effcf0667cb01f153942a202cd77215b6945f.lean/declarations/positivity--813b03bdc739e9b9c898a7fc.md) | 414 | `declaration-track:813b03bdc739e9b9c898a7fc4d6c354e19e6e686d615c44d21f5b9cf0c2e9a80` |
| 36 | `elab` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant64fa782942c1af319b86c178ba2effcf0667cb01f153942a202cd77215b6945f.lean/declarations/elab--763b7d552c2dc43d5cad2eae.md) | 439 | `declaration-track:763b7d552c2dc43d5cad2eae4aec0e7aea2925a3b69ddaa8b53f67d4209ee54a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
