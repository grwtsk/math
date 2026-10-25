# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BitVec.Variant47332ff3345067b8190198afd910dca1d89ea8fa64e126fd9a1e211fb2ea496f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5a8261da699ebf63cbad7d6508d1149945fc3b55",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BitVec/Variant47332ff3345067b8190198afd910dca1d89ea8fa64e126fd9a1e211fb2ea496f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BitVec/Variant47332ff3345067b8190198afd910dca1d89ea8fa64e126fd9a1e211fb2ea496f.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BitVec/Variant47332ff3345067b8190198afd910dca1d89ea8fa64e126fd9a1e211fb2ea496f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5a8261da699ebf63cbad7d6508d1149945fc3b55`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BitVec/Variant47332ff3345067b8190198afd910dca1d89ea8fa64e126fd9a1e211fb2ea496f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BitVec/Variant47332ff3345067b8190198afd910dca1d89ea8fa64e126fd9a1e211fb2ea496f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Omega` — import line 10; external provider; requires a separately pinned dependency.
- `Init.Data.BitVec.Bootstrap` — import line 11; external provider; requires a separately pinned dependency.
- `Init.Data.BitVec.Lemmas` — import line 12; external provider; requires a separately pinned dependency.
- `Init.Data.Nat.Lemmas` — import line 13; external provider; requires a separately pinned dependency.
- `Init.Data.Option.Lemmas` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BitVec/Variant47332ff3345067b8190198afd910dca1d89ea8fa64e126fd9a1e211fb2ea496f.lean/declarations/instance--6fef7554f07c8f0d44281c4e.md) | 24 | `declaration-track:6fef7554f07c8f0d44281c4e3eb79c5e3e623172b985ed60e67ae3a073b677b8` |
| 2 | `theorem` | [succ?_eq_none](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BitVec/Variant47332ff3345067b8190198afd910dca1d89ea8fa64e126fd9a1e211fb2ea496f.lean/declarations/succ-eq-none--785badf42855cb76d0ac565b.md) | 28 | `result-track:785badf42855cb76d0ac565b7ae30d9018564d5a0155c0d4174f39756fade370` |
| 3 | `theorem` | [succ?_eq_some](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BitVec/Variant47332ff3345067b8190198afd910dca1d89ea8fa64e126fd9a1e211fb2ea496f.lean/declarations/succ-eq-some--d77e67982f5015f6ccf77311.md) | 37 | `result-track:d77e67982f5015f6ccf773119312df1c488def924111f656efb57b0df11af5c3` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BitVec/Variant47332ff3345067b8190198afd910dca1d89ea8fa64e126fd9a1e211fb2ea496f.lean/declarations/instance--37b9ffbfb0125cc88953b4f8.md) | 59 | `declaration-track:37b9ffbfb0125cc88953b4f85508a532949a8991d58d252943036629267cfc20` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BitVec/Variant47332ff3345067b8190198afd910dca1d89ea8fa64e126fd9a1e211fb2ea496f.lean/declarations/instance--5099da135650f33c08d33a15.md) | 75 | `declaration-track:5099da135650f33c08d33a15a15422f637392e3a1067e62990dcc14ce6cec2d9` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BitVec/Variant47332ff3345067b8190198afd910dca1d89ea8fa64e126fd9a1e211fb2ea496f.lean/declarations/instance--3e724c8138cf19d61fe54197.md) | 85 | `declaration-track:3e724c8138cf19d61fe54197637755e24641d52f8bd32fbbfad7353edce6b354` |
| 7 | `instance` | [instRxcHasSize](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BitVec/Variant47332ff3345067b8190198afd910dca1d89ea8fa64e126fd9a1e211fb2ea496f.lean/declarations/instrxchassize--21f46b885a4d3225bf0d6f69.md) | 87 | `declaration-track:21f46b885a4d3225bf0d6f6916ba55b26d5a001119548b68c857d6709732dd89` |
| 8 | `instance` | [instRxcLawfulHasSize](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BitVec/Variant47332ff3345067b8190198afd910dca1d89ea8fa64e126fd9a1e211fb2ea496f.lean/declarations/instrxclawfulhassize--d7e1e5b00d58de769b370b3b.md) | 90 | `declaration-track:d7e1e5b00d58de769b370b3b7b378214e21e914ac0c3b4509144269ac00fdf3a` |
| 9 | `instance` | [instRxcIsAlwaysFinite](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BitVec/Variant47332ff3345067b8190198afd910dca1d89ea8fa64e126fd9a1e211fb2ea496f.lean/declarations/instrxcisalwaysfinite--a22a5c220c204c0baaa60344.md) | 102 | `declaration-track:a22a5c220c204c0baaa60344112e07a5f9e587151d690a2a0507809d1db38695` |
| 10 | `instance` | [instRxoHasSize](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BitVec/Variant47332ff3345067b8190198afd910dca1d89ea8fa64e126fd9a1e211fb2ea496f.lean/declarations/instrxohassize--c3592c74f7097543e4908260.md) | 104 | `declaration-track:c3592c74f7097543e490826020bd4171c4d87e00f85c409f629b78ee03970544` |
| 11 | `instance` | [instRxoLawfulHasSize](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BitVec/Variant47332ff3345067b8190198afd910dca1d89ea8fa64e126fd9a1e211fb2ea496f.lean/declarations/instrxolawfulhassize--27486eba3b8b0321d312baa3.md) | 105 | `declaration-track:27486eba3b8b0321d312baa3aef18b83fc6274b7b2e8e3fa35d9cfda27524f26` |
| 12 | `instance` | [instRxoIsAlwaysFinite](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BitVec/Variant47332ff3345067b8190198afd910dca1d89ea8fa64e126fd9a1e211fb2ea496f.lean/declarations/instrxoisalwaysfinite--09d8dc41d8cc7be7e392e946.md) | 106 | `declaration-track:09d8dc41d8cc7be7e392e9468df6fc6e94babfb24e34efcc8cee419b66a96b82` |
| 13 | `instance` | [instRxiHasSize](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BitVec/Variant47332ff3345067b8190198afd910dca1d89ea8fa64e126fd9a1e211fb2ea496f.lean/declarations/instrxihassize--a9c841124b7ac807aaa1adbf.md) | 108 | `declaration-track:a9c841124b7ac807aaa1adbf2022486165714d14e3ae7e83ed29029481275d11` |
| 14 | `instance` | [instRxiLawfulHasSize](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BitVec/Variant47332ff3345067b8190198afd910dca1d89ea8fa64e126fd9a1e211fb2ea496f.lean/declarations/instrxilawfulhassize--7b8b625a4848b03d0de4d511.md) | 111 | `declaration-track:7b8b625a4848b03d0de4d5115b37b9df151e5baca1259c2378d43b1c9e662da7` |
| 15 | `instance` | [instRxiIsAlwaysFinite](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BitVec/Variant47332ff3345067b8190198afd910dca1d89ea8fa64e126fd9a1e211fb2ea496f.lean/declarations/instrxiisalwaysfinite--52a8e46b2f98ae45c5b75fd4.md) | 119 | `declaration-track:52a8e46b2f98ae45c5b75fd4c329a8f4ea0558e5b682be23ce1458f52189017f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
