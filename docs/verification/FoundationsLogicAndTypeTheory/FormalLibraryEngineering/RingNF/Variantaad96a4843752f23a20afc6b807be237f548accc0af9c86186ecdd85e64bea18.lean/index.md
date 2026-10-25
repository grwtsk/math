# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RingNF.Variantaad96a4843752f23a20afc6b807be237f548accc0af9c86186ecdd85e64bea18

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "574e1b69e3de14a1a85ca0c9e911151b9c3c0d12",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingNF/Variantaad96a4843752f23a20afc6b807be237f548accc0af9c86186ecdd85e64bea18.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingNF/Variantaad96a4843752f23a20afc6b807be237f548accc0af9c86186ecdd85e64bea18.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingNF/Variantaad96a4843752f23a20afc6b807be237f548accc0af9c86186ecdd85e64bea18.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `574e1b69e3de14a1a85ca0c9e911151b9c3c0d12`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingNF/Variantaad96a4843752f23a20afc6b807be237f548accc0af9c86186ecdd85e64bea18.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingNF/Variantaad96a4843752f23a20afc6b807be237f548accc0af9c86186ecdd85e64bea18.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.Ring.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.TryThis` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Conv` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Util.Qq` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ExBase.isAtom](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingNF/Variantaad96a4843752f23a20afc6b807be237f548accc0af9c86186ecdd85e64bea18.lean/declarations/exbase-isatom--da02eed5f0708d2d39e4089a.md) | 38 | `declaration-track:da02eed5f0708d2d39e4089a1683e8c2d618f77bf781253ced8cb66fb3598889` |
| 2 | `def` | [ExProd.isAtom](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingNF/Variantaad96a4843752f23a20afc6b807be237f548accc0af9c86186ecdd85e64bea18.lean/declarations/exprod-isatom--2e597eca7b61fbfdea265fa2.md) | 43 | `declaration-track:2e597eca7b61fbfdea265fa2965c39a8662b0856b9e341c6ef2eb9ac419bd696` |
| 3 | `def` | [ExSum.isAtom](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingNF/Variantaad96a4843752f23a20afc6b807be237f548accc0af9c86186ecdd85e64bea18.lean/declarations/exsum-isatom--3dc10f63e31adfc5f1885282.md) | 48 | `declaration-track:3dc10f63e31adfc5f1885282693afa3e4c1c30b745e78009e8176925779e48bf` |
| 4 | `inductive` | [RingMode](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingNF/Variantaad96a4843752f23a20afc6b807be237f548accc0af9c86186ecdd85e64bea18.lean/declarations/ringmode--66abcefd44cdb8f2c9fe3d6e.md) | 60 | `declaration-track:66abcefd44cdb8f2c9fe3d6e3163f0d80a102ec9e8e71502709dd42be9288b8b` |
| 5 | `structure` | [Config](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingNF/Variantaad96a4843752f23a20afc6b807be237f548accc0af9c86186ecdd85e64bea18.lean/declarations/config--a2ebc476fb52f53b71572eef.md) | 68 | `declaration-track:a2ebc476fb52f53b71572eefb6daf6583f138f48f423fccb55e2d5b66684d4a9` |
| 6 | `structure` | [Context](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingNF/Variantaad96a4843752f23a20afc6b807be237f548accc0af9c86186ecdd85e64bea18.lean/declarations/context--5d1ab2bdeb039641b40e9da7.md) | 85 | `declaration-track:5d1ab2bdeb039641b40e9da7b0babae0f3465390b6a8e11fd47690d0ff7a9c24` |
| 7 | `abbrev` | [M](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingNF/Variantaad96a4843752f23a20afc6b807be237f548accc0af9c86186ecdd85e64bea18.lean/declarations/m--8de15612adb230c94278b697.md) | 95 | `declaration-track:8de15612adb230c94278b697c242c133b3c9f42a7d770c05cf9a67b93c14f4ef` |
| 8 | `def` | [rewrite](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingNF/Variantaad96a4843752f23a20afc6b807be237f548accc0af9c86186ecdd85e64bea18.lean/declarations/rewrite--a870962ec949927464b014cc.md) | 102 | `declaration-track:a870962ec949927464b014cc49ead99ce02d2560ca0b7b84be0779ec7c736fc2` |
| 9 | `theorem` | [add_assoc_rev](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingNF/Variantaad96a4843752f23a20afc6b807be237f548accc0af9c86186ecdd85e64bea18.lean/declarations/add-assoc-rev--1019dd052b03d37b4fb2b681.md) | 125 | `result-track:1019dd052b03d37b4fb2b6816a33a8443600cb5bc783ed931055c9d4bd166a53` |
| 10 | `theorem` | [mul_assoc_rev](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingNF/Variantaad96a4843752f23a20afc6b807be237f548accc0af9c86186ecdd85e64bea18.lean/declarations/mul-assoc-rev--f090b8c627c76dc5c7ff0554.md) | 126 | `result-track:f090b8c627c76dc5c7ff05542e5d44aaff35154bf44a68bf687422ff129b9200` |
| 11 | `theorem` | [mul_neg](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingNF/Variantaad96a4843752f23a20afc6b807be237f548accc0af9c86186ecdd85e64bea18.lean/declarations/mul-neg--5c3a0a65c6746cb55be65f89.md) | 127 | `result-track:5c3a0a65c6746cb55be65f894f8ec03b40645ddb336b123ab61f693c3efb19f1` |
| 12 | `theorem` | [add_neg](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingNF/Variantaad96a4843752f23a20afc6b807be237f548accc0af9c86186ecdd85e64bea18.lean/declarations/add-neg--0f8205dce19b1eaf2a641aa3.md) | 128 | `result-track:0f8205dce19b1eaf2a641aa31f3b248652f004634d4688b436da6d6817b28dea` |
| 13 | `theorem` | [nat_rawCast_0](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingNF/Variantaad96a4843752f23a20afc6b807be237f548accc0af9c86186ecdd85e64bea18.lean/declarations/nat-rawcast-0--e2bbe53f25970292cfe50297.md) | 129 | `result-track:e2bbe53f25970292cfe5029721033026f0ad148dc0d5453969c13fe8ef7bebbf` |
| 14 | `theorem` | [nat_rawCast_1](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingNF/Variantaad96a4843752f23a20afc6b807be237f548accc0af9c86186ecdd85e64bea18.lean/declarations/nat-rawcast-1--2422f3a3c45aeaf97c624e40.md) | 130 | `result-track:2422f3a3c45aeaf97c624e40a15a1b96f5ab1e8d6cdd2a1ce03c55ad6bda93bf` |
| 15 | `theorem` | [nat_rawCast_2](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingNF/Variantaad96a4843752f23a20afc6b807be237f548accc0af9c86186ecdd85e64bea18.lean/declarations/nat-rawcast-2--e92512b1aa839f9939e3cd0a.md) | 131 | `result-track:e92512b1aa839f9939e3cd0ab7469845cc152b819bfaa0e27594af540ad50323` |
| 16 | `theorem` | [int_rawCast_neg](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingNF/Variantaad96a4843752f23a20afc6b807be237f548accc0af9c86186ecdd85e64bea18.lean/declarations/int-rawcast-neg--1aae3b876288237c5d07974a.md) | 132 | `result-track:1aae3b876288237c5d07974a0b005663b1582b5e10615f663742389b0b5c9545` |
| 17 | `theorem` | [rat_rawCast_pos](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingNF/Variantaad96a4843752f23a20afc6b807be237f548accc0af9c86186ecdd85e64bea18.lean/declarations/rat-rawcast-pos--3eefc743189ca991b64cd5a6.md) | 133 | `result-track:3eefc743189ca991b64cd5a65d13be3783c9eb42a4cd9c596644b1761a89bb50` |
| 18 | `theorem` | [rat_rawCast_neg](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingNF/Variantaad96a4843752f23a20afc6b807be237f548accc0af9c86186ecdd85e64bea18.lean/declarations/rat-rawcast-neg--492e869c8a2306b7a7db5c20.md) | 135 | `result-track:492e869c8a2306b7a7db5c20d48dfac5ec16e2d868e678b5a7e8458683e49f0d` |
| 19 | `def` | [M.run](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingNF/Variantaad96a4843752f23a20afc6b807be237f548accc0af9c86186ecdd85e64bea18.lean/declarations/m-run--9ddf2d6027ed467b47f9e770.md) | 146 | `declaration-track:9ddf2d6027ed467b47f9e770dc8a389d9892806177fb8fa7bafb9e9f9712d947` |
| 20 | `initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingNF/Variantaad96a4843752f23a20afc6b807be237f548accc0af9c86186ecdd85e64bea18.lean/declarations/initialize--2bb48334abda4c172f1ea927.md) | 176 | `declaration-track:2bb48334abda4c172f1ea927388321e89c0aa63382da18c327630e19c0845691` |
| 21 | `def` | [ringNFTarget](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingNF/Variantaad96a4843752f23a20afc6b807be237f548accc0af9c86186ecdd85e64bea18.lean/declarations/ringnftarget--17b91c5e85016c8eff149f9e.md) | 182 | `declaration-track:17b91c5e85016c8eff149f9e28a47b98f68f49ab27a32656619ac2f73b843ff6` |
| 22 | `def` | [ringNFLocalDecl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingNF/Variantaad96a4843752f23a20afc6b807be237f548accc0af9c86186ecdd85e64bea18.lean/declarations/ringnflocaldecl--99584ed3821e7132935a4bc3.md) | 196 | `declaration-track:99584ed3821e7132935a4bc3ada8fb7a312a5d8e4ec4f685d4e314767813fc0c` |
| 23 | `elab` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingNF/Variantaad96a4843752f23a20afc6b807be237f548accc0af9c86186ecdd85e64bea18.lean/declarations/elab--44e832f7848c622ef3a9b1e1.md) | 224 | `declaration-track:44e832f7848c622ef3a9b1e10127543ba7477ce45445e865240b94030b762353` |
| 24 | `macro` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingNF/Variantaad96a4843752f23a20afc6b807be237f548accc0af9c86186ecdd85e64bea18.lean/declarations/macro--a2c58e9ce803e0cce2e5d821.md) | 232 | `declaration-track:a2c58e9ce803e0cce2e5d821aad6e48cb92f6e8bfe193ffc3263bfb0995e5a8f` |
| 25 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingNF/Variantaad96a4843752f23a20afc6b807be237f548accc0af9c86186ecdd85e64bea18.lean/declarations/syntax--c68578b7d1b72b23e219d6aa.md) | 235 | `declaration-track:c68578b7d1b72b23e219d6aa725f14d8bb0efeefa6f6a28c9c05a39173e084dc` |
| 26 | `elab` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingNF/Variantaad96a4843752f23a20afc6b807be237f548accc0af9c86186ecdd85e64bea18.lean/declarations/elab--3b82420f602bc08ad3de2357.md) | 244 | `declaration-track:3b82420f602bc08ad3de2357ca1019a17331dbff09e0f1e7c4df003dc9177c73` |
| 27 | `macro` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingNF/Variantaad96a4843752f23a20afc6b807be237f548accc0af9c86186ecdd85e64bea18.lean/declarations/macro--9681b5f5d5679cabeb217262.md) | 250 | `declaration-track:9681b5f5d5679cabeb217262f26ee5556f1d51a66e13768eed1541b21eb8df8f` |
| 28 | `def` | [elabRingNFConv](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingNF/Variantaad96a4843752f23a20afc6b807be237f548accc0af9c86186ecdd85e64bea18.lean/declarations/elabringnfconv--670fb27843d6bbf8e72b364a.md) | 254 | `declaration-track:670fb27843d6bbf8e72b364a34182d172d78366e20fabca19734f01897305fc4` |
| 29 | `macro` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingNF/Variantaad96a4843752f23a20afc6b807be237f548accc0af9c86186ecdd85e64bea18.lean/declarations/macro--1307acde11af3cdd768c390b.md) | 262 | `declaration-track:1307acde11af3cdd768c390b32165c69988c7e334bdc8c4fcf6d880b55271a95` |
| 30 | `macro` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingNF/Variantaad96a4843752f23a20afc6b807be237f548accc0af9c86186ecdd85e64bea18.lean/declarations/macro--d9cd6ebff4706552054af754.md) | 281 | `declaration-track:d9cd6ebff4706552054af75489025f30d9280d1b9a807bfeced40511bf117f91` |
| 31 | `macro` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingNF/Variantaad96a4843752f23a20afc6b807be237f548accc0af9c86186ecdd85e64bea18.lean/declarations/macro--b92def3cb837558de5c22b92.md) | 287 | `declaration-track:b92def3cb837558de5c22b926d7fdc80d9ec55311284168017d6220af58033b4` |
| 32 | `macro` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingNF/Variantaad96a4843752f23a20afc6b807be237f548accc0af9c86186ecdd85e64bea18.lean/declarations/macro--7e831fff25abbba9d22df818.md) | 300 | `declaration-track:7e831fff25abbba9d22df818f4cb78247096a3a42da1daf750bd81df513c3fe5` |
| 33 | `macro` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingNF/Variantaad96a4843752f23a20afc6b807be237f548accc0af9c86186ecdd85e64bea18.lean/declarations/macro--b55ff67fa2e5ea032ad1078b.md) | 306 | `declaration-track:b55ff67fa2e5ea032ad1078bb73d213c0d252af9c0dc33654d1fcbfd18a35108` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
