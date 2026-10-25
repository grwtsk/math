# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RingNF.Variant5354c9933d8b0635919a03e1de82b5080c9abce9a45b3da0f970a85c0871f1c7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d74594af863d7ce67f1764f55ea4ce2c3e8c07f0",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingNF/Variant5354c9933d8b0635919a03e1de82b5080c9abce9a45b3da0f970a85c0871f1c7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingNF/Variant5354c9933d8b0635919a03e1de82b5080c9abce9a45b3da0f970a85c0871f1c7.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingNF/Variant5354c9933d8b0635919a03e1de82b5080c9abce9a45b3da0f970a85c0871f1c7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d74594af863d7ce67f1764f55ea4ce2c3e8c07f0`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingNF/Variant5354c9933d8b0635919a03e1de82b5080c9abce9a45b3da0f970a85c0871f1c7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingNF/Variant5354c9933d8b0635919a03e1de82b5080c9abce9a45b3da0f970a85c0871f1c7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.Ring.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.TryThis` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Conv` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Util.Qq` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ExBase.isAtom](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingNF/Variant5354c9933d8b0635919a03e1de82b5080c9abce9a45b3da0f970a85c0871f1c7.lean/declarations/exbase-isatom--875523dca149229f7af8bc72.md) | 30 | `declaration-track:875523dca149229f7af8bc722dc5a40084916fc9b45033716bbed3bfaafeac10` |
| 2 | `def` | [ExProd.isAtom](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingNF/Variant5354c9933d8b0635919a03e1de82b5080c9abce9a45b3da0f970a85c0871f1c7.lean/declarations/exprod-isatom--e69aa9027b723531dd58edc8.md) | 35 | `declaration-track:e69aa9027b723531dd58edc84d9ea59256312c7e19afc18f549cb06923ebdb7e` |
| 3 | `def` | [ExSum.isAtom](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingNF/Variant5354c9933d8b0635919a03e1de82b5080c9abce9a45b3da0f970a85c0871f1c7.lean/declarations/exsum-isatom--7c592af8e0dd68920cbea769.md) | 40 | `declaration-track:7c592af8e0dd68920cbea769d1d0938f4eb12a6959a6c916edc12f8407e7eeb9` |
| 4 | `inductive` | [RingMode](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingNF/Variant5354c9933d8b0635919a03e1de82b5080c9abce9a45b3da0f970a85c0871f1c7.lean/declarations/ringmode--c1393c83bcfe7f275510e067.md) | 52 | `declaration-track:c1393c83bcfe7f275510e067d6a0380be558eb5de7f5261463628d45db83c78f` |
| 5 | `structure` | [Config](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingNF/Variant5354c9933d8b0635919a03e1de82b5080c9abce9a45b3da0f970a85c0871f1c7.lean/declarations/config--ccc143d149657f15532026c1.md) | 60 | `declaration-track:ccc143d149657f15532026c1b81572f5a2e93e31ea9253daaf89987938be58b9` |
| 6 | `structure` | [Context](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingNF/Variant5354c9933d8b0635919a03e1de82b5080c9abce9a45b3da0f970a85c0871f1c7.lean/declarations/context--420d7d239d1859d5d74f4ad8.md) | 77 | `declaration-track:420d7d239d1859d5d74f4ad8a6b16b33e86512c01f32fa22ada9f0bcacb27d4c` |
| 7 | `abbrev` | [M](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingNF/Variant5354c9933d8b0635919a03e1de82b5080c9abce9a45b3da0f970a85c0871f1c7.lean/declarations/m--5448adfaafd653c2524fd5e8.md) | 87 | `declaration-track:5448adfaafd653c2524fd5e88406919f04eed480378765ef0846722e2470c6cc` |
| 8 | `def` | [rewrite](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingNF/Variant5354c9933d8b0635919a03e1de82b5080c9abce9a45b3da0f970a85c0871f1c7.lean/declarations/rewrite--2928cf46453a3399dca1473d.md) | 94 | `declaration-track:2928cf46453a3399dca1473d2275a009be3c2be150a9e2eeb019ad60da8100b6` |
| 9 | `theorem` | [add_assoc_rev](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingNF/Variant5354c9933d8b0635919a03e1de82b5080c9abce9a45b3da0f970a85c0871f1c7.lean/declarations/add-assoc-rev--a37b493aeb773230728cc417.md) | 117 | `result-track:a37b493aeb773230728cc417d46577377ca3e8036a0e0ec46dfff43598fe3ff5` |
| 10 | `theorem` | [mul_assoc_rev](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingNF/Variant5354c9933d8b0635919a03e1de82b5080c9abce9a45b3da0f970a85c0871f1c7.lean/declarations/mul-assoc-rev--13d54928d706012a8d2624aa.md) | 118 | `result-track:13d54928d706012a8d2624aa5e2d6c7102a5de82b8d1b80e6c1b8ef8cd7cfc12` |
| 11 | `theorem` | [mul_neg](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingNF/Variant5354c9933d8b0635919a03e1de82b5080c9abce9a45b3da0f970a85c0871f1c7.lean/declarations/mul-neg--2dd91f888eaceb3857e52730.md) | 119 | `result-track:2dd91f888eaceb3857e52730dd3a76910ed3870edef3f4f4e4123d8ee78eb0f3` |
| 12 | `theorem` | [add_neg](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingNF/Variant5354c9933d8b0635919a03e1de82b5080c9abce9a45b3da0f970a85c0871f1c7.lean/declarations/add-neg--1d2d874f60f6320dd909b97a.md) | 120 | `result-track:1d2d874f60f6320dd909b97a322c7c43c4c8c1ab3d29642cd60f4283e1a48b7a` |
| 13 | `theorem` | [nat_rawCast_0](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingNF/Variant5354c9933d8b0635919a03e1de82b5080c9abce9a45b3da0f970a85c0871f1c7.lean/declarations/nat-rawcast-0--9742bd9abf2f52d3281dfded.md) | 121 | `result-track:9742bd9abf2f52d3281dfded5f953d70241fe889081341c8e6488a11ac50f45d` |
| 14 | `theorem` | [nat_rawCast_1](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingNF/Variant5354c9933d8b0635919a03e1de82b5080c9abce9a45b3da0f970a85c0871f1c7.lean/declarations/nat-rawcast-1--56626b9dfcd0c57c76ca7f24.md) | 122 | `result-track:56626b9dfcd0c57c76ca7f242a0fce2a5525d72db45de5727eda5a2c3ef2b22b` |
| 15 | `theorem` | [nat_rawCast_2](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingNF/Variant5354c9933d8b0635919a03e1de82b5080c9abce9a45b3da0f970a85c0871f1c7.lean/declarations/nat-rawcast-2--5f8d5f09871b9a89d80ec152.md) | 123 | `result-track:5f8d5f09871b9a89d80ec152324cf123d7b586a4e3a715b48f92e0ce2755dbf3` |
| 16 | `theorem` | [int_rawCast_neg](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingNF/Variant5354c9933d8b0635919a03e1de82b5080c9abce9a45b3da0f970a85c0871f1c7.lean/declarations/int-rawcast-neg--a21151135e5e7c839af1c49c.md) | 124 | `result-track:a21151135e5e7c839af1c49c093b0c14055e650870ad40b5e893786b25cb1df9` |
| 17 | `theorem` | [rat_rawCast_pos](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingNF/Variant5354c9933d8b0635919a03e1de82b5080c9abce9a45b3da0f970a85c0871f1c7.lean/declarations/rat-rawcast-pos--4fb89b9b1a353cda252aad20.md) | 125 | `result-track:4fb89b9b1a353cda252aad20eada14f40fbd77b1b279ea3a1b4a0f29f1f8b530` |
| 18 | `theorem` | [rat_rawCast_neg](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingNF/Variant5354c9933d8b0635919a03e1de82b5080c9abce9a45b3da0f970a85c0871f1c7.lean/declarations/rat-rawcast-neg--4da6a0f982984e8ed3cad3f2.md) | 127 | `result-track:4da6a0f982984e8ed3cad3f2717695b9c8d102f4247749d6d81e2a4f19d7c6cc` |
| 19 | `def` | [M.run](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingNF/Variant5354c9933d8b0635919a03e1de82b5080c9abce9a45b3da0f970a85c0871f1c7.lean/declarations/m-run--32c93c49cf007122b5a13cb8.md) | 138 | `declaration-track:32c93c49cf007122b5a13cb858bde006942f3b14318a65f969c410472683fd9a` |
| 20 | `initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingNF/Variant5354c9933d8b0635919a03e1de82b5080c9abce9a45b3da0f970a85c0871f1c7.lean/declarations/initialize--6a065357d423c0ec833b22b8.md) | 168 | `declaration-track:6a065357d423c0ec833b22b8bf4902babacd401ecd23168d477769e7538093ec` |
| 21 | `def` | [ringNFTarget](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingNF/Variant5354c9933d8b0635919a03e1de82b5080c9abce9a45b3da0f970a85c0871f1c7.lean/declarations/ringnftarget--031d3ac185fbd0f753de7849.md) | 174 | `declaration-track:031d3ac185fbd0f753de7849b3d5f3a29c9dfd1d71409a70f1cddac2a8d16b41` |
| 22 | `def` | [ringNFLocalDecl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingNF/Variant5354c9933d8b0635919a03e1de82b5080c9abce9a45b3da0f970a85c0871f1c7.lean/declarations/ringnflocaldecl--8a00203232f0b160991fe137.md) | 188 | `declaration-track:8a00203232f0b160991fe1373b7c8748109b84f226e3c93180adad7177ef46f0` |
| 23 | `elab` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingNF/Variant5354c9933d8b0635919a03e1de82b5080c9abce9a45b3da0f970a85c0871f1c7.lean/declarations/elab--bf3b39a83ef3719f9de2b147.md) | 216 | `declaration-track:bf3b39a83ef3719f9de2b1475463659c244092acebc37d2d529f18977f9e4012` |
| 24 | `macro` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingNF/Variant5354c9933d8b0635919a03e1de82b5080c9abce9a45b3da0f970a85c0871f1c7.lean/declarations/macro--98316a83fb513246d0707201.md) | 224 | `declaration-track:98316a83fb513246d070720192218fe15084aa6000be8c97c312f0c55730bf3e` |
| 25 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingNF/Variant5354c9933d8b0635919a03e1de82b5080c9abce9a45b3da0f970a85c0871f1c7.lean/declarations/syntax--45ceb66a86a50246d12a7c00.md) | 227 | `declaration-track:45ceb66a86a50246d12a7c00afbe74b861d9fea946984e8b2c962260c2da3f59` |
| 26 | `elab` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingNF/Variant5354c9933d8b0635919a03e1de82b5080c9abce9a45b3da0f970a85c0871f1c7.lean/declarations/elab--5b0be8786049c3354cc714f8.md) | 236 | `declaration-track:5b0be8786049c3354cc714f86ac3fdc96052ca9c1d78dd0597030282bb294790` |
| 27 | `macro` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingNF/Variant5354c9933d8b0635919a03e1de82b5080c9abce9a45b3da0f970a85c0871f1c7.lean/declarations/macro--b7c5f89f44e1f8fb348d7af9.md) | 242 | `declaration-track:b7c5f89f44e1f8fb348d7af93bc6564bb6da787174da6dbc63cbbd98f2b1a0d0` |
| 28 | `def` | [elabRingNFConv](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingNF/Variant5354c9933d8b0635919a03e1de82b5080c9abce9a45b3da0f970a85c0871f1c7.lean/declarations/elabringnfconv--8e1cb7e0beed74a43c49195f.md) | 246 | `declaration-track:8e1cb7e0beed74a43c49195fed3c4426055055911dc130c2b6e1c8d9e10945dc` |
| 29 | `macro` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingNF/Variant5354c9933d8b0635919a03e1de82b5080c9abce9a45b3da0f970a85c0871f1c7.lean/declarations/macro--7c02e4718b15f92815c14588.md) | 254 | `declaration-track:7c02e4718b15f92815c14588d8bb76241396477c47486b5c67e719808d4f9116` |
| 30 | `macro` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingNF/Variant5354c9933d8b0635919a03e1de82b5080c9abce9a45b3da0f970a85c0871f1c7.lean/declarations/macro--1028b033283f339425cb8048.md) | 273 | `declaration-track:1028b033283f339425cb80489f53637a198e7f64bc00e24433f1b17549a38eb9` |
| 31 | `macro` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingNF/Variant5354c9933d8b0635919a03e1de82b5080c9abce9a45b3da0f970a85c0871f1c7.lean/declarations/macro--22832414f2c85e057461b02f.md) | 279 | `declaration-track:22832414f2c85e057461b02fc9ddde7b2923ca47a2537869f7b544002ac82ddc` |
| 32 | `macro` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingNF/Variant5354c9933d8b0635919a03e1de82b5080c9abce9a45b3da0f970a85c0871f1c7.lean/declarations/macro--6556c1e5b33fb885c52b6e99.md) | 292 | `declaration-track:6556c1e5b33fb885c52b6e99eb9b8b5ff8d789c2ca525719fc9681e67277c604` |
| 33 | `macro` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingNF/Variant5354c9933d8b0635919a03e1de82b5080c9abce9a45b3da0f970a85c0871f1c7.lean/declarations/macro--92a9b48e03bfa8da0772d857.md) | 298 | `declaration-track:92a9b48e03bfa8da0772d857940d0732dad0188a15cf1efaf86ea80c5c4a54d6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
