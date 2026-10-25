# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.Enum.Variant84eddc04d211ecfe8d5c6eb02183cb2245d585c6b511a0d3196e46bf958ad9c6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b670a02d775495b13ecf5d1d6d63a489501d5416",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Enum/Variant84eddc04d211ecfe8d5c6eb02183cb2245d585c6b511a0d3196e46bf958ad9c6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Enum/Variant84eddc04d211ecfe8d5c6eb02183cb2245d585c6b511a0d3196e46bf958ad9c6.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Enum/Variant84eddc04d211ecfe8d5c6eb02183cb2245d585c6b511a0d3196e46bf958ad9c6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b670a02d775495b13ecf5d1d6d63a489501d5416`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Enum/Variant84eddc04d211ecfe8d5c6eb02183cb2245d585c6b511a0d3196e46bf958ad9c6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/SetTheory/Enum/Variant84eddc04d211ecfe8d5c6eb02183cb2245d585c6b511a0d3196e46bf958ad9c6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.SetTheory.Ordinal.Family` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [enumOrd](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Enum/Variant84eddc04d211ecfe8d5c6eb02183cb2245d585c6b511a0d3196e46bf958ad9c6.lean/declarations/enumord--35ab19ae85a3060d9f2fe231.md) | 38 | `declaration-track:35ab19ae85a3060d9f2fe231b2b5695963b5aaf3e0aba76fcc4e169ecccf8df5` |
| 2 | `theorem` | [enumOrd_le_of_forall_lt](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Enum/Variant84eddc04d211ecfe8d5c6eb02183cb2245d585c6b511a0d3196e46bf958ad9c6.lean/declarations/enumord-le-of-forall-lt--d9b4f4c3b4672acb0f394c9a.md) | 44 | `result-track:d9b4f4c3b4672acb0f394c9a028ff76697b0bca0fc22b523b046baaf91027486` |
| 3 | `theorem` | [enumOrd_nonempty](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Enum/Variant84eddc04d211ecfe8d5c6eb02183cb2245d585c6b511a0d3196e46bf958ad9c6.lean/declarations/enumord-nonempty--25d73e1e7882064b72885579.md) | 49 | `result-track:25d73e1e7882064b7288557955bf3bf01ce4c51d54b5f3274ceb9e2ea4e26c2a` |
| 4 | `theorem` | [enumOrd_mem_aux](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Enum/Variant84eddc04d211ecfe8d5c6eb02183cb2245d585c6b511a0d3196e46bf958ad9c6.lean/declarations/enumord-mem-aux--017000b0f5058f0acd7c50b3.md) | 56 | `result-track:017000b0f5058f0acd7c50b303b965f1ca79cc4c0fe2ee46b9aa266c2f0b4086` |
| 5 | `theorem` | [enumOrd_mem](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Enum/Variant84eddc04d211ecfe8d5c6eb02183cb2245d585c6b511a0d3196e46bf958ad9c6.lean/declarations/enumord-mem--a5c1d908f533f3cff6f5f2bf.md) | 61 | `result-track:a5c1d908f533f3cff6f5f2bfdff6c0f77823751a59b4691f997b1007d973138e` |
| 6 | `theorem` | [enumOrd_strictMono](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Enum/Variant84eddc04d211ecfe8d5c6eb02183cb2245d585c6b511a0d3196e46bf958ad9c6.lean/declarations/enumord-strictmono--ce63c5cf24fb6b584fd8cb34.md) | 64 | `result-track:ce63c5cf24fb6b584fd8cb349241fc163a41a309c84bc7f1e2f6210fbef2a8aa` |
| 7 | `theorem` | [enumOrd_injective](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Enum/Variant84eddc04d211ecfe8d5c6eb02183cb2245d585c6b511a0d3196e46bf958ad9c6.lean/declarations/enumord-injective--0b43f3a2b5f68d65a5857988.md) | 67 | `result-track:0b43f3a2b5f68d65a58579887f7ea2ef53b38bad8c44d9b118d1b1836f399cbb` |
| 8 | `theorem` | [enumOrd_inj](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Enum/Variant84eddc04d211ecfe8d5c6eb02183cb2245d585c6b511a0d3196e46bf958ad9c6.lean/declarations/enumord-inj--d28f5dc8c47708cd7958c30e.md) | 70 | `result-track:d28f5dc8c47708cd7958c30e2165e6402a8d3ff53803bf5697d1949d5b9d13b6` |
| 9 | `theorem` | [enumOrd_le_enumOrd](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Enum/Variant84eddc04d211ecfe8d5c6eb02183cb2245d585c6b511a0d3196e46bf958ad9c6.lean/declarations/enumord-le-enumord--93cb5884b3bfe4fd1dfff486.md) | 73 | `result-track:93cb5884b3bfe4fd1dfff486d0e5713cb629b263af52e062733268f9baa2862e` |
| 10 | `theorem` | [enumOrd_lt_enumOrd](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Enum/Variant84eddc04d211ecfe8d5c6eb02183cb2245d585c6b511a0d3196e46bf958ad9c6.lean/declarations/enumord-lt-enumord--f059d6f6f58446e4aa35be6d.md) | 77 | `result-track:f059d6f6f58446e4aa35be6df548d97fd5a289bd0db27eb932f8eb27b254d29f` |
| 11 | `theorem` | [id_le_enumOrd](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Enum/Variant84eddc04d211ecfe8d5c6eb02183cb2245d585c6b511a0d3196e46bf958ad9c6.lean/declarations/id-le-enumord--fa96d61a0c35494246785f44.md) | 81 | `result-track:fa96d61a0c35494246785f44fd6c6d948c7796c2dc111998ab7b17c74ad9219b` |
| 12 | `theorem` | [le_enumOrd_self](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Enum/Variant84eddc04d211ecfe8d5c6eb02183cb2245d585c6b511a0d3196e46bf958ad9c6.lean/declarations/le-enumord-self--d806f6aca15ec9e5eae86338.md) | 84 | `result-track:d806f6aca15ec9e5eae86338861107ac4b420a455d21c60f018259ad381181ef` |
| 13 | `theorem` | [enumOrd_succ_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Enum/Variant84eddc04d211ecfe8d5c6eb02183cb2245d585c6b511a0d3196e46bf958ad9c6.lean/declarations/enumord-succ-le--e94d8213e444d68d092204d8.md) | 87 | `result-track:e94d8213e444d68d092204d89c7856d935d4dffe58c1bdd0a3f85cb436a9ffd5` |
| 14 | `theorem` | [range_enumOrd](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Enum/Variant84eddc04d211ecfe8d5c6eb02183cb2245d585c6b511a0d3196e46bf958ad9c6.lean/declarations/range-enumord--1a3cd01a7c04118347560b96.md) | 94 | `result-track:1a3cd01a7c04118347560b960b55430dc3ea076d48c4785e7bc6dea6cf5daf72` |
| 15 | `theorem` | [enumOrd_surjective](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Enum/Variant84eddc04d211ecfe8d5c6eb02183cb2245d585c6b511a0d3196e46bf958ad9c6.lean/declarations/enumord-surjective--485de56c51ad40ff9dfbc4d6.md) | 107 | `result-track:485de56c51ad40ff9dfbc4d6be0acadd24956348603eb5f48f7ca3c94efed21a` |
| 16 | `theorem` | [enumOrd_le_of_subset](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Enum/Variant84eddc04d211ecfe8d5c6eb02183cb2245d585c6b511a0d3196e46bf958ad9c6.lean/declarations/enumord-le-of-subset--fe5f960c8dc0c047dd015d67.md) | 111 | `result-track:fe5f960c8dc0c047dd015d672c7f002ccd8ad986cb46f4130acab02f6ef40517` |
| 17 | `theorem` | [eq_enumOrd](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Enum/Variant84eddc04d211ecfe8d5c6eb02183cb2245d585c6b511a0d3196e46bf958ad9c6.lean/declarations/eq-enumord--5da5e404005460672b881d4a.md) | 121 | `result-track:5da5e404005460672b881d4a0cc6e97f054e29b15ac2d55582a8995a8395295a` |
| 18 | `theorem` | [enumOrd_range](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Enum/Variant84eddc04d211ecfe8d5c6eb02183cb2245d585c6b511a0d3196e46bf958ad9c6.lean/declarations/enumord-range--73147f45e521150f5d749342.md) | 129 | `result-track:73147f45e521150f5d7493427c147ae137fd317ed713541ea08a9614bee504a7` |
| 19 | `theorem` | [isNormal_enumOrd](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Enum/Variant84eddc04d211ecfe8d5c6eb02183cb2245d585c6b511a0d3196e46bf958ad9c6.lean/declarations/isnormal-enumord--4b80b02ac1530593f231adae.md) | 134 | `result-track:4b80b02ac1530593f231adae71b19c8845fa29838238c706fd8eabb5affc9f25` |
| 20 | `theorem` | [enumOrd_univ](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Enum/Variant84eddc04d211ecfe8d5c6eb02183cb2245d585c6b511a0d3196e46bf958ad9c6.lean/declarations/enumord-univ--5208cb9b8d4e286e6f7c208f.md) | 147 | `result-track:5208cb9b8d4e286e6f7c208fcefbe79cf2d9357a568041c5f1fbabbc6096f2a1` |
| 21 | `theorem` | [enumOrd_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Enum/Variant84eddc04d211ecfe8d5c6eb02183cb2245d585c6b511a0d3196e46bf958ad9c6.lean/declarations/enumord-zero--a09be306f3de5c160d7e9e3c.md) | 152 | `result-track:a09be306f3de5c160d7e9e3caf916243d2b366fdf4a80cec1ec89b902a766f09` |
| 22 | `def` | [enumOrdOrderIso](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Enum/Variant84eddc04d211ecfe8d5c6eb02183cb2245d585c6b511a0d3196e46bf958ad9c6.lean/declarations/enumordorderiso--a1c2b9d2f885891d0221e08e.md) | 157 | `declaration-track:a1c2b9d2f885891d0221e08e62b1c0253d16f14d8b945e7b63b4d801301752a5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
