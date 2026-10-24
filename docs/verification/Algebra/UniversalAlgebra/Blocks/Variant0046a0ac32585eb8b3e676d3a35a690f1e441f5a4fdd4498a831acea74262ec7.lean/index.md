# Verification target: GRWTSK.Algebra.UniversalAlgebra.Blocks.Variant0046a0ac32585eb8b3e676d3a35a690f1e441f5a4fdd4498a831acea74262ec7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e1df3567a89d242a0ad61bf3bce5bec43a2fd9d2",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Blocks/Variant0046a0ac32585eb8b3e676d3a35a690f1e441f5a4fdd4498a831acea74262ec7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Blocks/Variant0046a0ac32585eb8b3e676d3a35a690f1e441f5a4fdd4498a831acea74262ec7.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Blocks/Variant0046a0ac32585eb8b3e676d3a35a690f1e441f5a4fdd4498a831acea74262ec7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e1df3567a89d242a0ad61bf3bce5bec43a2fd9d2`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Blocks/Variant0046a0ac32585eb8b3e676d3a35a690f1e441f5a4fdd4498a831acea74262ec7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Blocks/Variant0046a0ac32585eb8b3e676d3a35a690f1e441f5a4fdd4498a831acea74262ec7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FilesystemCodec.Serialization` — import line 6; external provider; requires a separately pinned dependency.
- `BinaryMatrix.GaloisField` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Floor.Div` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [BitString](../../../../../mathematics/Algebra/UniversalAlgebra/Blocks/Variant0046a0ac32585eb8b3e676d3a35a690f1e441f5a4fdd4498a831acea74262ec7.lean/declarations/bitstring--fec000875c1b8af94ed34659.md) | 39 | `declaration-track:fec000875c1b8af94ed34659ca10ac1e094fdf9cca47a3c9e4266e991210e5df` |
| 2 | `theorem` | [BitString.ext](../../../../../mathematics/Algebra/UniversalAlgebra/Blocks/Variant0046a0ac32585eb8b3e676d3a35a690f1e441f5a4fdd4498a831acea74262ec7.lean/declarations/bitstring-ext--70b4fb12ac9cc6ef29e1a030.md) | 46 | `result-track:70b4fb12ac9cc6ef29e1a030007cd5aabe60f98b2f5f607e2ebf5f3329d7352e` |
| 3 | `def` | [BitString.empty](../../../../../mathematics/Algebra/UniversalAlgebra/Blocks/Variant0046a0ac32585eb8b3e676d3a35a690f1e441f5a4fdd4498a831acea74262ec7.lean/declarations/bitstring-empty--bb0ccc5e132778897f4a4112.md) | 58 | `declaration-track:bb0ccc5e132778897f4a411261dce9cad9e8552a928e1ae0a544c38deec366bf` |
| 4 | `def` | [BitString.ofBits](../../../../../mathematics/Algebra/UniversalAlgebra/Blocks/Variant0046a0ac32585eb8b3e676d3a35a690f1e441f5a4fdd4498a831acea74262ec7.lean/declarations/bitstring-ofbits--c017660e3a0f8ce7f93518b7.md) | 62 | `declaration-track:c017660e3a0f8ce7f93518b702bf28376d91dd04fad6801c21ba59573986975b` |
| 5 | `abbrev` | [ByteBitCodec](../../../../../mathematics/Algebra/UniversalAlgebra/Blocks/Variant0046a0ac32585eb8b3e676d3a35a690f1e441f5a4fdd4498a831acea74262ec7.lean/declarations/bytebitcodec--11a49b82a9fbebf93b1cce89.md) | 66 | `declaration-track:11a49b82a9fbebf93b1cce8960ac408ee8695ea3a4d14729d6ea43f8e35d96d5` |
| 6 | `def` | [rowsFor](../../../../../mathematics/Algebra/UniversalAlgebra/Blocks/Variant0046a0ac32585eb8b3e676d3a35a690f1e441f5a4fdd4498a831acea74262ec7.lean/declarations/rowsfor--871d6a0cd4d4edef49e0f049.md) | 72 | `declaration-track:871d6a0cd4d4edef49e0f04905fddb029b56de8117d9752b826060e608041220` |
| 7 | `theorem` | [payloadBits_le_rowsFor_mul](../../../../../mathematics/Algebra/UniversalAlgebra/Blocks/Variant0046a0ac32585eb8b3e676d3a35a690f1e441f5a4fdd4498a831acea74262ec7.lean/declarations/payloadbits-le-rowsfor-mul--041e693e03a2c45fb89323d7.md) | 76 | `result-track:041e693e03a2c45fb89323d7272b3505a748be8fb0d085a1fb135372c21fc45f` |
| 8 | `theorem` | [rowsFor_minimal](../../../../../mathematics/Algebra/UniversalAlgebra/Blocks/Variant0046a0ac32585eb8b3e676d3a35a690f1e441f5a4fdd4498a831acea74262ec7.lean/declarations/rowsfor-minimal--6db8a4a7a6f213a4ddc8f5de.md) | 82 | `result-track:6db8a4a7a6f213a4ddc8f5de32225600803223058c216ca2943c36b1c9d66156` |
| 9 | `structure` | [RawBitPacket](../../../../../mathematics/Algebra/UniversalAlgebra/Blocks/Variant0046a0ac32585eb8b3e676d3a35a690f1e441f5a4fdd4498a831acea74262ec7.lean/declarations/rawbitpacket--4f4e75c8196f9a9652dbf84f.md) | 91 | `declaration-track:4f4e75c8196f9a9652dbf84f7ea18b8494d6ad55760c73726a342be5eac3a8c3` |
| 10 | `theorem` | [RawBitPacket.ext](../../../../../mathematics/Algebra/UniversalAlgebra/Blocks/Variant0046a0ac32585eb8b3e676d3a35a690f1e441f5a4fdd4498a831acea74262ec7.lean/declarations/rawbitpacket-ext--ac4abff38061d9dadb308d59.md) | 99 | `result-track:ac4abff38061d9dadb308d59a78caf98328e181230480f7d0056ee2b6153ce36` |
| 11 | `def` | [RawBitPacket.Canonical](../../../../../mathematics/Algebra/UniversalAlgebra/Blocks/Variant0046a0ac32585eb8b3e676d3a35a690f1e441f5a4fdd4498a831acea74262ec7.lean/declarations/rawbitpacket-canonical--e9ca32a055d2d85a319fdae3.md) | 116 | `declaration-track:e9ca32a055d2d85a319fdae34be78c0c1cbe01a83efcbdb56e3d2fa0501eef5a` |
| 12 | `def` | [BitPacket](../../../../../mathematics/Algebra/UniversalAlgebra/Blocks/Variant0046a0ac32585eb8b3e676d3a35a690f1e441f5a4fdd4498a831acea74262ec7.lean/declarations/bitpacket--4039eb3e1a1bfcd2bff16591.md) | 124 | `declaration-track:4039eb3e1a1bfcd2bff16591d202da37828f180c8fc9a734118d78ba3c6b2eb7` |
| 13 | `def` | [rows](../../../../../mathematics/Algebra/UniversalAlgebra/Blocks/Variant0046a0ac32585eb8b3e676d3a35a690f1e441f5a4fdd4498a831acea74262ec7.lean/declarations/rows--deda9f965244e6b533a9f595.md) | 130 | `declaration-track:deda9f965244e6b533a9f5954d049f159489ab14992db85e2a661a985dcaabfd` |
| 14 | `def` | [matrix](../../../../../mathematics/Algebra/UniversalAlgebra/Blocks/Variant0046a0ac32585eb8b3e676d3a35a690f1e441f5a4fdd4498a831acea74262ec7.lean/declarations/matrix--5a13fd999699ffa2dafd5980.md) | 134 | `declaration-track:5a13fd999699ffa2dafd59808b9b62dff2c3de03d4ee6b81f5b2a299bce76581` |
| 15 | `def` | [payloadBits](../../../../../mathematics/Algebra/UniversalAlgebra/Blocks/Variant0046a0ac32585eb8b3e676d3a35a690f1e441f5a4fdd4498a831acea74262ec7.lean/declarations/payloadbits--4436f7a96d83ee5d1bbb230b.md) | 138 | `declaration-track:4436f7a96d83ee5d1bbb230b9eb7c683ce16eaff2b291edced0591d475e15d35` |
| 16 | `theorem` | [rows_mk](../../../../../mathematics/Algebra/UniversalAlgebra/Blocks/Variant0046a0ac32585eb8b3e676d3a35a690f1e441f5a4fdd4498a831acea74262ec7.lean/declarations/rows-mk--02f98a17d265ad5ce838982e.md) | 141 | `result-track:02f98a17d265ad5ce838982e86c4cb17195ed906402d84efb2374afad0fc928b` |
| 17 | `theorem` | [matrix_mk](../../../../../mathematics/Algebra/UniversalAlgebra/Blocks/Variant0046a0ac32585eb8b3e676d3a35a690f1e441f5a4fdd4498a831acea74262ec7.lean/declarations/matrix-mk--d5af7b5cf631d4215e0a28e4.md) | 144 | `result-track:d5af7b5cf631d4215e0a28e473b39e2376d770a4066ddbcfe64bd2950c58c464` |
| 18 | `theorem` | [payloadBits_mk](../../../../../mathematics/Algebra/UniversalAlgebra/Blocks/Variant0046a0ac32585eb8b3e676d3a35a690f1e441f5a4fdd4498a831acea74262ec7.lean/declarations/payloadbits-mk--ddb664230b2ff5bea8473067.md) | 147 | `result-track:ddb664230b2ff5bea84730671d554360b2dce896d57d3742d4612f48b6462813` |
| 19 | `theorem` | [capacity](../../../../../mathematics/Algebra/UniversalAlgebra/Blocks/Variant0046a0ac32585eb8b3e676d3a35a690f1e441f5a4fdd4498a831acea74262ec7.lean/declarations/capacity--47dc6dfc58f5982a0d30e2cd.md) | 150 | `result-track:47dc6dfc58f5982a0d30e2cdbe353add6f19c73cb70163a7c9a2b6f60ae1b131` |
| 20 | `theorem` | [rows_eq](../../../../../mathematics/Algebra/UniversalAlgebra/Blocks/Variant0046a0ac32585eb8b3e676d3a35a690f1e441f5a4fdd4498a831acea74262ec7.lean/declarations/rows-eq--009412f82837dda540c137f4.md) | 154 | `result-track:009412f82837dda540c137f425ceb312319c4922d637add72d8229fa73045370` |
| 21 | `theorem` | [padding](../../../../../mathematics/Algebra/UniversalAlgebra/Blocks/Variant0046a0ac32585eb8b3e676d3a35a690f1e441f5a4fdd4498a831acea74262ec7.lean/declarations/padding--0d6989940b525550c884ec87.md) | 158 | `result-track:0d6989940b525550c884ec87d71f0b7718581d3e9caae23c981ef16b1cdf0e6a` |
| 22 | `def` | [block](../../../../../mathematics/Algebra/UniversalAlgebra/Blocks/Variant0046a0ac32585eb8b3e676d3a35a690f1e441f5a4fdd4498a831acea74262ec7.lean/declarations/block--032d45edf5ab6a2c06c3a4fb.md) | 172 | `declaration-track:032d45edf5ab6a2c06c3a4fb09db5f31b07240a3bbce03e36aa9cea0b41ded43` |
| 23 | `def` | [unblock](../../../../../mathematics/Algebra/UniversalAlgebra/Blocks/Variant0046a0ac32585eb8b3e676d3a35a690f1e441f5a4fdd4498a831acea74262ec7.lean/declarations/unblock--130396b7e9a56631d44994dc.md) | 185 | `declaration-track:130396b7e9a56631d44994dc019f2a322e7e5649f08ddd284f03537f9175bf5f` |
| 24 | `theorem` | [block_rows](../../../../../mathematics/Algebra/UniversalAlgebra/Blocks/Variant0046a0ac32585eb8b3e676d3a35a690f1e441f5a4fdd4498a831acea74262ec7.lean/declarations/block-rows--8616ce80096bd2ee3005a74e.md) | 191 | `result-track:8616ce80096bd2ee3005a74e6db595ec9f8a02986b3d5fbfd528bf10505f2bac` |
| 25 | `theorem` | [block_payloadBits](../../../../../mathematics/Algebra/UniversalAlgebra/Blocks/Variant0046a0ac32585eb8b3e676d3a35a690f1e441f5a4fdd4498a831acea74262ec7.lean/declarations/block-payloadbits--817d2504cee155c4ff346027.md) | 196 | `result-track:817d2504cee155c4ff3460273705a4477c997fd9c38dc5146c7e8f2513585d20` |
| 26 | `theorem` | [unblock_bitLength](../../../../../mathematics/Algebra/UniversalAlgebra/Blocks/Variant0046a0ac32585eb8b3e676d3a35a690f1e441f5a4fdd4498a831acea74262ec7.lean/declarations/unblock-bitlength--35bd96c03f2f020de3447a59.md) | 201 | `result-track:35bd96c03f2f020de3447a59b01176f2a7094402243abea6c5ff356cbed39fbe` |
| 27 | `theorem` | [unblock_block](../../../../../mathematics/Algebra/UniversalAlgebra/Blocks/Variant0046a0ac32585eb8b3e676d3a35a690f1e441f5a4fdd4498a831acea74262ec7.lean/declarations/unblock-block--76846eca4650eafeaa998b29.md) | 207 | `result-track:76846eca4650eafeaa998b296d1bbefd2f6e888226a1032de2f5fde8f5665b2b` |
| 28 | `theorem` | [block_unblock](../../../../../mathematics/Algebra/UniversalAlgebra/Blocks/Variant0046a0ac32585eb8b3e676d3a35a690f1e441f5a4fdd4498a831acea74262ec7.lean/declarations/block-unblock--09801a11eecf17e304b2a911.md) | 221 | `result-track:09801a11eecf17e304b2a9112e239c0ac9ba26dc2f42ccf5745d6f4afd4c0f54` |
| 29 | `def` | [blockEquiv](../../../../../mathematics/Algebra/UniversalAlgebra/Blocks/Variant0046a0ac32585eb8b3e676d3a35a690f1e441f5a4fdd4498a831acea74262ec7.lean/declarations/blockequiv--5d34849ebee87e87d153a818.md) | 242 | `declaration-track:5d34849ebee87e87d153a81806b74b302129cda41b5deb04b2316ccbe2c562dd` |
| 30 | `abbrev` | [VariableMatrix](../../../../../mathematics/Algebra/UniversalAlgebra/Blocks/Variant0046a0ac32585eb8b3e676d3a35a690f1e441f5a4fdd4498a831acea74262ec7.lean/declarations/variablematrix--b6c0a8da2b0e93858010d592.md) | 251 | `declaration-track:b6c0a8da2b0e93858010d5923fef5f77c478b0e67d5dbe7e7a19d12fa54ddff2` |
| 31 | `def` | [BitPacket.toVariableMatrix](../../../../../mathematics/Algebra/UniversalAlgebra/Blocks/Variant0046a0ac32585eb8b3e676d3a35a690f1e441f5a4fdd4498a831acea74262ec7.lean/declarations/bitpacket-tovariablematrix--3610762caf0df384634558d9.md) | 255 | `declaration-track:3610762caf0df384634558d99f5a4a4e996401ced0fe6210ad057b90ae0cf741` |
| 32 | `def` | [zeroPayloadOne](../../../../../mathematics/Algebra/UniversalAlgebra/Blocks/Variant0046a0ac32585eb8b3e676d3a35a690f1e441f5a4fdd4498a831acea74262ec7.lean/declarations/zeropayloadone--f8753e3c74ccb0da9618fa00.md) | 259 | `declaration-track:f8753e3c74ccb0da9618fa0098a1c6e32c55a01c1d909a630f01b804f14b2b75` |
| 33 | `def` | [zeroPayloadTwo](../../../../../mathematics/Algebra/UniversalAlgebra/Blocks/Variant0046a0ac32585eb8b3e676d3a35a690f1e441f5a4fdd4498a831acea74262ec7.lean/declarations/zeropayloadtwo--0a78292431e01c16c529dba4.md) | 263 | `declaration-track:0a78292431e01c16c529dba4610af3fd07765709a897cee1756ef821a081d8ed` |
| 34 | `theorem` | [variableMatrix_forgets_payload_length](../../../../../mathematics/Algebra/UniversalAlgebra/Blocks/Variant0046a0ac32585eb8b3e676d3a35a690f1e441f5a4fdd4498a831acea74262ec7.lean/declarations/variablematrix-forgets-payload-length--6529cb973ef195649a0dcb84.md) | 270 | `result-track:6529cb973ef195649a0dcb84af2dfc7d84ef2e4198bda6e1cec8724e4212e2f4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
