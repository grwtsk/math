# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RingNF.Variante9957045f96e87b38650d1e88fb00fb06569d849459a25645f9dcefacae535e0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9f205590ff6c01eed936460dbc59969a85e3cd93",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingNF/Variante9957045f96e87b38650d1e88fb00fb06569d849459a25645f9dcefacae535e0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingNF/Variante9957045f96e87b38650d1e88fb00fb06569d849459a25645f9dcefacae535e0.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingNF/Variante9957045f96e87b38650d1e88fb00fb06569d849459a25645f9dcefacae535e0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9f205590ff6c01eed936460dbc59969a85e3cd93`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingNF/Variante9957045f96e87b38650d1e88fb00fb06569d849459a25645f9dcefacae535e0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingNF/Variante9957045f96e87b38650d1e88fb00fb06569d849459a25645f9dcefacae535e0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.Ring.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Conv` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Util.Qq` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ExBase.isAtom](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingNF/Variante9957045f96e87b38650d1e88fb00fb06569d849459a25645f9dcefacae535e0.lean/declarations/exbase-isatom--c7dc959086627f454337b9f6.md) | 40 | `declaration-track:c7dc959086627f454337b9f6843b752f06cdc191d1e987b936577889d72d45d4` |
| 2 | `def` | [ExProd.isAtom](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingNF/Variante9957045f96e87b38650d1e88fb00fb06569d849459a25645f9dcefacae535e0.lean/declarations/exprod-isatom--f7d8203567722f0f6e3c0927.md) | 45 | `declaration-track:f7d8203567722f0f6e3c09277e89e1643546f9cdea011e5f070c5df08e5ccf9b` |
| 3 | `def` | [ExSum.isAtom](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingNF/Variante9957045f96e87b38650d1e88fb00fb06569d849459a25645f9dcefacae535e0.lean/declarations/exsum-isatom--3b52cc94cc8de99afd43917c.md) | 50 | `declaration-track:3b52cc94cc8de99afd43917c001698cffc161904c6db9d5a16653f86518fc5a1` |
| 4 | `inductive` | [RingMode](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingNF/Variante9957045f96e87b38650d1e88fb00fb06569d849459a25645f9dcefacae535e0.lean/declarations/ringmode--19d78247728c9188df1d5738.md) | 62 | `declaration-track:19d78247728c9188df1d57383de4cd851f3b6aa21b48cb72fcec742f2b52533f` |
| 5 | `structure` | [Config](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingNF/Variante9957045f96e87b38650d1e88fb00fb06569d849459a25645f9dcefacae535e0.lean/declarations/config--cc18df7124ef0e733ae12e5f.md) | 70 | `declaration-track:cc18df7124ef0e733ae12e5f69b3648dd5cd0864e71ef631461a0c4af52f88f3` |
| 6 | `structure` | [Context](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingNF/Variante9957045f96e87b38650d1e88fb00fb06569d849459a25645f9dcefacae535e0.lean/declarations/context--a274fbb5841baebc305c83ed.md) | 83 | `declaration-track:a274fbb5841baebc305c83ede3c4feff44ce6856c530c248a2329ca16ae631fa` |
| 7 | `abbrev` | [M](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingNF/Variante9957045f96e87b38650d1e88fb00fb06569d849459a25645f9dcefacae535e0.lean/declarations/m--c00aa48b7580960b2066aa2d.md) | 93 | `declaration-track:c00aa48b7580960b2066aa2d66976b8484c2a1451fc018000442842ca26b802d` |
| 8 | `def` | [rewrite](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingNF/Variante9957045f96e87b38650d1e88fb00fb06569d849459a25645f9dcefacae535e0.lean/declarations/rewrite--fb0997c4e82915bbe014b479.md) | 100 | `declaration-track:fb0997c4e82915bbe014b4793b6128d08a0bf96d477d661e40fd114b90b9cc20` |
| 9 | `theorem` | [add_assoc_rev](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingNF/Variante9957045f96e87b38650d1e88fb00fb06569d849459a25645f9dcefacae535e0.lean/declarations/add-assoc-rev--458226ac25728b4e728f8690.md) | 123 | `result-track:458226ac25728b4e728f8690df030639b73dadb9a9805a6a2601ac485bf2b25f` |
| 10 | `theorem` | [mul_assoc_rev](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingNF/Variante9957045f96e87b38650d1e88fb00fb06569d849459a25645f9dcefacae535e0.lean/declarations/mul-assoc-rev--f0392c30684b68f5630717d5.md) | 124 | `result-track:f0392c30684b68f5630717d55fbe8ee03361221b898040d88165b5ec24d021e2` |
| 11 | `theorem` | [mul_neg](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingNF/Variante9957045f96e87b38650d1e88fb00fb06569d849459a25645f9dcefacae535e0.lean/declarations/mul-neg--8e1d43044111fb9b1e15958b.md) | 125 | `result-track:8e1d43044111fb9b1e15958b060e8e94c5dd276f6fa206d4c57135b268d86629` |
| 12 | `theorem` | [add_neg](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingNF/Variante9957045f96e87b38650d1e88fb00fb06569d849459a25645f9dcefacae535e0.lean/declarations/add-neg--157f69793db2f9960aa064b8.md) | 126 | `result-track:157f69793db2f9960aa064b80c8208078619b5af431fb2145668af685e5d388a` |
| 13 | `theorem` | [nat_rawCast_0](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingNF/Variante9957045f96e87b38650d1e88fb00fb06569d849459a25645f9dcefacae535e0.lean/declarations/nat-rawcast-0--c22836dd2b8fb4cb694e78e3.md) | 127 | `result-track:c22836dd2b8fb4cb694e78e33946c187ca3feff27af576bb78a645937d42a1c9` |
| 14 | `theorem` | [nat_rawCast_1](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingNF/Variante9957045f96e87b38650d1e88fb00fb06569d849459a25645f9dcefacae535e0.lean/declarations/nat-rawcast-1--b4c8b1ebe7fb83bbd4887628.md) | 128 | `result-track:b4c8b1ebe7fb83bbd488762823911ca73a48fb3c38b07e5bfb4d2535b242be5e` |
| 15 | `theorem` | [nat_rawCast_2](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingNF/Variante9957045f96e87b38650d1e88fb00fb06569d849459a25645f9dcefacae535e0.lean/declarations/nat-rawcast-2--48d2c4e63878a20d851e77ec.md) | 129 | `result-track:48d2c4e63878a20d851e77ec879ccb82de48bc598da9cc2ac24b5780c49b06c6` |
| 16 | `theorem` | [int_rawCast_1](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingNF/Variante9957045f96e87b38650d1e88fb00fb06569d849459a25645f9dcefacae535e0.lean/declarations/int-rawcast-1--5fd46b32635ece1cbf7176a1.md) | 130 | `result-track:5fd46b32635ece1cbf7176a1938970929b9f1196ce0ab730a599cb4a64290d72` |
| 17 | `theorem` | [int_rawCast_2](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingNF/Variante9957045f96e87b38650d1e88fb00fb06569d849459a25645f9dcefacae535e0.lean/declarations/int-rawcast-2--f511bf66905c0b38e96d76d2.md) | 132 | `result-track:f511bf66905c0b38e96d76d2b95ad7b8a98918f5f7968692bdce8704c6267673` |
| 18 | `theorem` | [rat_rawCast_2](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingNF/Variante9957045f96e87b38650d1e88fb00fb06569d849459a25645f9dcefacae535e0.lean/declarations/rat-rawcast-2--061a44f4a839b77f52584e45.md) | 135 | `result-track:061a44f4a839b77f52584e45f127d7fa725ec94591cc004dbb1d43b35daef675` |
| 19 | `def` | [M.run](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingNF/Variante9957045f96e87b38650d1e88fb00fb06569d849459a25645f9dcefacae535e0.lean/declarations/m-run--b258c9dd7b0d6a70095162cd.md) | 145 | `declaration-track:b258c9dd7b0d6a70095162cdb216a56d2175f9d3cb1cc147240a8e57ca922fd5` |
| 20 | `initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingNF/Variante9957045f96e87b38650d1e88fb00fb06569d849459a25645f9dcefacae535e0.lean/declarations/initialize--437fe0f96e612ba1a6666c49.md) | 173 | `declaration-track:437fe0f96e612ba1a6666c49803a6c8813143895121836f530639bda1b9a5691` |
| 21 | `def` | [ringNFTarget](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingNF/Variante9957045f96e87b38650d1e88fb00fb06569d849459a25645f9dcefacae535e0.lean/declarations/ringnftarget--dc99a3c135e7c27258847a2c.md) | 179 | `declaration-track:dc99a3c135e7c27258847a2c81e21e22337daac61fad0cc7877328f115206ee4` |
| 22 | `def` | [ringNFLocalDecl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingNF/Variante9957045f96e87b38650d1e88fb00fb06569d849459a25645f9dcefacae535e0.lean/declarations/ringnflocaldecl--efc3236266fe48240a0cf733.md) | 190 | `declaration-track:efc3236266fe48240a0cf7334462c919617288af3bace9699b62d47a923d980c` |
| 23 | `elab` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingNF/Variante9957045f96e87b38650d1e88fb00fb06569d849459a25645f9dcefacae535e0.lean/declarations/elab--1092f9a8683197584a81f36b.md) | 209 | `declaration-track:1092f9a8683197584a81f36bf690594b1b914664c40b7becdf271098a49bf00f` |
| 24 | `macro` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingNF/Variante9957045f96e87b38650d1e88fb00fb06569d849459a25645f9dcefacae535e0.lean/declarations/macro--c0960f76d4a03ffe2a040bbb.md) | 217 | `declaration-track:c0960f76d4a03ffe2a040bbb89e4d8e919c6f4a0786973c6a0fc84440483a780` |
| 25 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingNF/Variante9957045f96e87b38650d1e88fb00fb06569d849459a25645f9dcefacae535e0.lean/declarations/syntax--b2a28a55c441798578850254.md) | 220 | `declaration-track:b2a28a55c441798578850254c9a5a63f59928de1c98616953e2beeedff8b88d2` |
| 26 | `elab` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingNF/Variante9957045f96e87b38650d1e88fb00fb06569d849459a25645f9dcefacae535e0.lean/declarations/elab--4f50cafbe8c2154343f3d68f.md) | 229 | `declaration-track:4f50cafbe8c2154343f3d68fc72e446e86a1c83e26fe88739ea87047840b2d8d` |
| 27 | `macro` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingNF/Variante9957045f96e87b38650d1e88fb00fb06569d849459a25645f9dcefacae535e0.lean/declarations/macro--d507cb808ae08daa9c99ea06.md) | 235 | `declaration-track:d507cb808ae08daa9c99ea06c48fd7fe80c963e8b6c1e24a31680bd7e8e37d3d` |
| 28 | `def` | [elabRingNFConv](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingNF/Variante9957045f96e87b38650d1e88fb00fb06569d849459a25645f9dcefacae535e0.lean/declarations/elabringnfconv--c17470d5140baf735c6de146.md) | 238 | `declaration-track:c17470d5140baf735c6de146379ae9c40a942ab107de5dc4a1750304216964de` |
| 29 | `macro` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingNF/Variante9957045f96e87b38650d1e88fb00fb06569d849459a25645f9dcefacae535e0.lean/declarations/macro--f5148f6f85c3653307675dea.md) | 246 | `declaration-track:f5148f6f85c3653307675dea1ab907e3c20d9e8db9df3c9318c3c9d907a6077a` |
| 30 | `macro` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingNF/Variante9957045f96e87b38650d1e88fb00fb06569d849459a25645f9dcefacae535e0.lean/declarations/macro--dbb336bd10ad290c6dba5fbe.md) | 262 | `declaration-track:dbb336bd10ad290c6dba5fbeac72282cea35a6c55ce3f4779ebf70c4449637df` |
| 31 | `macro` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingNF/Variante9957045f96e87b38650d1e88fb00fb06569d849459a25645f9dcefacae535e0.lean/declarations/macro--f79014bce08080958f192775.md) | 264 | `declaration-track:f79014bce08080958f1927753b4d3414c25e4319ee0334278f3e97920f776a1e` |
| 32 | `macro` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingNF/Variante9957045f96e87b38650d1e88fb00fb06569d849459a25645f9dcefacae535e0.lean/declarations/macro--05c432568532445798ee3529.md) | 273 | `declaration-track:05c432568532445798ee35298ad60b032df921d9be4f810b3c133ba215a0fa1e` |
| 33 | `macro` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingNF/Variante9957045f96e87b38650d1e88fb00fb06569d849459a25645f9dcefacae535e0.lean/declarations/macro--4b9a6d7542722626286ce903.md) | 275 | `declaration-track:4b9a6d7542722626286ce903048520fdc14f280aee15c7ba120264bd68d327f4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
