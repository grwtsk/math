# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Counting.Variant36c0a8fdb0d51671429bdafa62bb22c7633d16dee0821769a3f7cb8d4299d4ae

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5bc280f10378ec0866456bc76842aabebf1ce6e4",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Counting/Variant36c0a8fdb0d51671429bdafa62bb22c7633d16dee0821769a3f7cb8d4299d4ae.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Counting/Variant36c0a8fdb0d51671429bdafa62bb22c7633d16dee0821769a3f7cb8d4299d4ae.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Counting/Variant36c0a8fdb0d51671429bdafa62bb22c7633d16dee0821769a3f7cb8d4299d4ae.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5bc280f10378ec0866456bc76842aabebf1ce6e4`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Counting/Variant36c0a8fdb0d51671429bdafa62bb22c7633d16dee0821769a3f7cb8d4299d4ae.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Counting/Variant36c0a8fdb0d51671429bdafa62bb22c7633d16dee0821769a3f7cb8d4299d4ae.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.Legacy.BinaryLogicMatrix.Tree.Core` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [CountableEncoding](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Counting/Variant36c0a8fdb0d51671429bdafa62bb22c7633d16dee0821769a3f7cb8d4299d4ae.lean/declarations/countableencoding--bc6543838da04212abb57512.md) | 7 | `declaration-track:bc6543838da04212abb575125442d77a4e776b5ac001b7fafe0155e528a836bf` |
| 2 | `theorem` | [CountableEncoding.encode_injective](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Counting/Variant36c0a8fdb0d51671429bdafa62bb22c7633d16dee0821769a3f7cb8d4299d4ae.lean/declarations/countableencoding-encode-injective--c03ce2f68442f63666616c7a.md) | 12 | `result-track:c03ce2f68442f63666616c7a79314d9252198fdacdfbc151a793f9ad200188f4` |
| 3 | `def` | [decodeByPreimage](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Counting/Variant36c0a8fdb0d51671429bdafa62bb22c7633d16dee0821769a3f7cb8d4299d4ae.lean/declarations/decodebypreimage--967332e4c102e84989941ebf.md) | 21 | `declaration-track:967332e4c102e84989941ebfacf5b729b3065e9aa8e10937b76e4275e4d5be1c` |
| 4 | `theorem` | [decodeByPreimage_roundTrip](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Counting/Variant36c0a8fdb0d51671429bdafa62bb22c7633d16dee0821769a3f7cb8d4299d4ae.lean/declarations/decodebypreimage-roundtrip--90f0db84fc3e2c7b07cd24d5.md) | 32 | `result-track:90f0db84fc3e2c7b07cd24d53425666b52ae7575f6de11faaaf0736db1ad6b89` |
| 5 | `structure` | [PairingCodec](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Counting/Variant36c0a8fdb0d51671429bdafa62bb22c7633d16dee0821769a3f7cb8d4299d4ae.lean/declarations/pairingcodec--20eb0070507f3f26ea2e5410.md) | 46 | `declaration-track:20eb0070507f3f26ea2e5410b3f50891808ce3259766157517d4d61f64f9ffc1` |
| 6 | `def` | [tagEncode](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Counting/Variant36c0a8fdb0d51671429bdafa62bb22c7633d16dee0821769a3f7cb8d4299d4ae.lean/declarations/tagencode--7abd2ca3edeadbc12646b562.md) | 53 | `declaration-track:7abd2ca3edeadbc12646b56287a59c05c4102577ef80f406f35e4609635f88d3` |
| 7 | `def` | [binaryLogicAtom_countable](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Counting/Variant36c0a8fdb0d51671429bdafa62bb22c7633d16dee0821769a3f7cb8d4299d4ae.lean/declarations/binarylogicatom-countable--84c97df28c2a0ed2fa419eee.md) | 56 | `declaration-track:84c97df28c2a0ed2fa419eee44f97a8f32a112ae922961951834d3fd96a86c4d` |
| 8 | `def` | [encodeTree](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Counting/Variant36c0a8fdb0d51671429bdafa62bb22c7633d16dee0821769a3f7cb8d4299d4ae.lean/declarations/encodetree--71e70351bd42edf69eaa0832.md) | 90 | `declaration-track:71e70351bd42edf69eaa083213d9d1f938510b408d6888e33323c92544da196e` |
| 9 | `theorem` | [encodeTree_injective](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Counting/Variant36c0a8fdb0d51671429bdafa62bb22c7633d16dee0821769a3f7cb8d4299d4ae.lean/declarations/encodetree-injective--a0ffefb58645e6fa06829cef.md) | 99 | `result-track:a0ffefb58645e6fa06829cefb8bd5f31a7a879b47a2bb9f72a54481b1318cd66` |
| 10 | `def` | [decodeTree](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Counting/Variant36c0a8fdb0d51671429bdafa62bb22c7633d16dee0821769a3f7cb8d4299d4ae.lean/declarations/decodetree--3615b6952d21feb60234ff96.md) | 147 | `declaration-track:3615b6952d21feb60234ff96cc1c8714578ce7b5c33f4d0dec4827f3253a1aba` |
| 11 | `theorem` | [decodeTree_encodeTree](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Counting/Variant36c0a8fdb0d51671429bdafa62bb22c7633d16dee0821769a3f7cb8d4299d4ae.lean/declarations/decodetree-encodetree--b8b8cc62a3deebba2329eab6.md) | 153 | `result-track:b8b8cc62a3deebba2329eab694b39e6484679617743c5fcad9bd663863525719` |
| 12 | `def` | [binaryLogicTree_countable](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Counting/Variant36c0a8fdb0d51671429bdafa62bb22c7633d16dee0821769a3f7cb8d4299d4ae.lean/declarations/binarylogictree-countable--c0ab43ac6eff83f3b2944ff6.md) | 163 | `declaration-track:c0ab43ac6eff83f3b2944ff60f26e47f1df5a8d9e9c9fa08b6d591d6820ea76f` |
| 13 | `def` | [natMatrixAtom](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Counting/Variant36c0a8fdb0d51671429bdafa62bb22c7633d16dee0821769a3f7cb8d4299d4ae.lean/declarations/natmatrixatom--bf40df4b41d03ad6a85c6188.md) | 171 | `declaration-track:bf40df4b41d03ad6a85c6188e2402fffc58c5907c3211c1185ecea982b833cc1` |
| 14 | `def` | [natLeaf](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Counting/Variant36c0a8fdb0d51671429bdafa62bb22c7633d16dee0821769a3f7cb8d4299d4ae.lean/declarations/natleaf--4d67da21f12220db717e946b.md) | 178 | `declaration-track:4d67da21f12220db717e946b891156f3200c4bed9d0021c34b2ee8904d6a645a` |
| 15 | `theorem` | [natLeaf_injective](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Counting/Variant36c0a8fdb0d51671429bdafa62bb22c7633d16dee0821769a3f7cb8d4299d4ae.lean/declarations/natleaf-injective--512ca2873be5fdb3c03e472d.md) | 181 | `result-track:512ca2873be5fdb3c03e472d4a174f9ad206cb7076cfd04b41bf038b4fc73bbf` |
| 16 | `theorem` | [binaryLogicTree_countably_infinite](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Counting/Variant36c0a8fdb0d51671429bdafa62bb22c7633d16dee0821769a3f7cb8d4299d4ae.lean/declarations/binarylogictree-countably-infinite--dfeb8e59af70ecd34f2766c5.md) | 190 | `result-track:dfeb8e59af70ecd34f2766c5e8844c6ee985a5928a6f24c10bec255f646fa9eb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
