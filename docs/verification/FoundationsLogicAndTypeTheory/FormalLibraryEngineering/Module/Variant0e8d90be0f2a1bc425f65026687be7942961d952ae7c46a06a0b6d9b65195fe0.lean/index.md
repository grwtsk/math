# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Module.Variant0e8d90be0f2a1bc425f65026687be7942961d952ae7c46a06a0b6d9b65195fe0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f2a657d568f3498401a5cd7bad6d64575101c6a0",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Module/Variant0e8d90be0f2a1bc425f65026687be7942961d952ae7c46a06a0b6d9b65195fe0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Module/Variant0e8d90be0f2a1bc425f65026687be7942961d952ae7c46a06a0b6d9b65195fe0.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Module/Variant0e8d90be0f2a1bc425f65026687be7942961d952ae7c46a06a0b6d9b65195fe0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f2a657d568f3498401a5cd7bad6d64575101c6a0`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Module/Variant0e8d90be0f2a1bc425f65026687be7942961d952ae7c46a06a0b6d9b65195fe0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Module/Variant0e8d90be0f2a1bc425f65026687be7942961d952ae7c46a06a0b6d9b65195fe0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.ByCases` — import line 12; external provider; requires a separately pinned dependency.
- `Init.Data.Nat.Lemmas` — import line 13; external provider; requires a separately pinned dependency.
- `Init.Grind.Ordered.Order` — import line 14; external provider; requires a separately pinned dependency.
- `Init.Omega` — import line 15; external provider; requires a separately pinned dependency.
- `Init.RCases` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [OrderedAdd](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Module/Variant0e8d90be0f2a1bc425f65026687be7942961d952ae7c46a06a0b6d9b65195fe0.lean/declarations/orderedadd--e0b4e5498aba723dfc8e146b.md) | 27 | `declaration-track:e0b4e5498aba723dfc8e146b0cac8071d1c69c647b72c103caf52859add8ea83` |
| 2 | `class` | [ExistsAddOfLT](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Module/Variant0e8d90be0f2a1bc425f65026687be7942961d952ae7c46a06a0b6d9b65195fe0.lean/declarations/existsaddoflt--0969c332feb339e6a969579d.md) | 31 | `declaration-track:0969c332feb339e6a969579dbedaaa384e18b932f338c9aab92f718b1f189f94` |
| 3 | `theorem` | [add_le_right_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Module/Variant0e8d90be0f2a1bc425f65026687be7942961d952ae7c46a06a0b6d9b65195fe0.lean/declarations/add-le-right-iff--ee42d4db58296818b4e93643.md) | 42 | `result-track:ee42d4db58296818b4e9364327477e36c1db29677b34d53881d5c91394502bdf` |
| 4 | `theorem` | [add_le_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Module/Variant0e8d90be0f2a1bc425f65026687be7942961d952ae7c46a06a0b6d9b65195fe0.lean/declarations/add-le-left--4a89b003a57a7685d4d80e61.md) | 45 | `result-track:4a89b003a57a7685d4d80e615278a32d6c4af9b1e4c5f0e467ea76b911701805` |
| 5 | `theorem` | [add_le_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Module/Variant0e8d90be0f2a1bc425f65026687be7942961d952ae7c46a06a0b6d9b65195fe0.lean/declarations/add-le-right--747b7a3ba14f6fba625855a2.md) | 48 | `result-track:747b7a3ba14f6fba625855a27a03f45c82f0c595c5e072dce9cf9dcce730b1e4` |
| 6 | `theorem` | [add_le_add](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Module/Variant0e8d90be0f2a1bc425f65026687be7942961d952ae7c46a06a0b6d9b65195fe0.lean/declarations/add-le-add--ea064c32a13704897b480b67.md) | 51 | `result-track:ea064c32a13704897b480b6714b921409d94ccf2b33dd4cbc81d0339004e9e78` |
| 7 | `theorem` | [add_lt_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Module/Variant0e8d90be0f2a1bc425f65026687be7942961d952ae7c46a06a0b6d9b65195fe0.lean/declarations/add-lt-left--de84e1650e6cff158b4ca2be.md) | 56 | `result-track:de84e1650e6cff158b4ca2be8a04ef912c88e2dc35b656aed8dd5e0aab30afe8` |
| 8 | `theorem` | [add_lt_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Module/Variant0e8d90be0f2a1bc425f65026687be7942961d952ae7c46a06a0b6d9b65195fe0.lean/declarations/add-lt-right--afa6e6fe20317132925080e2.md) | 64 | `result-track:afa6e6fe20317132925080e297a773694b517d4d00c011092cb9ffe01755c9f4` |
| 9 | `theorem` | [add_lt_left_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Module/Variant0e8d90be0f2a1bc425f65026687be7942961d952ae7c46a06a0b6d9b65195fe0.lean/declarations/add-lt-left-iff--8c89dd19dde3565c3f8390e5.md) | 68 | `result-track:8c89dd19dde3565c3f8390e575bc5adebb64886ce74f60d0dfe8074fdbf6286e` |
| 10 | `theorem` | [add_lt_right_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Module/Variant0e8d90be0f2a1bc425f65026687be7942961d952ae7c46a06a0b6d9b65195fe0.lean/declarations/add-lt-right-iff--21285eee5217709567c7bb5a.md) | 78 | `result-track:21285eee5217709567c7bb5afa21052b9745959afdcdcc472481f2850814dc35` |
| 11 | `theorem` | [add_lt_add](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Module/Variant0e8d90be0f2a1bc425f65026687be7942961d952ae7c46a06a0b6d9b65195fe0.lean/declarations/add-lt-add--3869777fde07c3bd5abf3c2b.md) | 81 | `result-track:3869777fde07c3bd5abf3c2b5708c1f1b8d515a87993341b427be21536a81945` |
| 12 | `theorem` | [nsmul_le_nsmul](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Module/Variant0e8d90be0f2a1bc425f65026687be7942961d952ae7c46a06a0b6d9b65195fe0.lean/declarations/nsmul-le-nsmul--7f86759fce0799f77da44b6b.md) | 90 | `result-track:7f86759fce0799f77da44b6b2ee7356bbb1f80462880c6b9608f2d796c5e24f6` |
| 13 | `theorem` | [nsmul_nonneg](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Module/Variant0e8d90be0f2a1bc425f65026687be7942961d952ae7c46a06a0b6d9b65195fe0.lean/declarations/nsmul-nonneg--449308fcba8550f865717b7b.md) | 97 | `result-track:449308fcba8550f865717b7b29886e6426d1db70ee80bfcb93c48a2e2b430f3e` |
| 14 | `theorem` | [nsmul_le_nsmul_of_le_of_le_of_nonneg](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Module/Variant0e8d90be0f2a1bc425f65026687be7942961d952ae7c46a06a0b6d9b65195fe0.lean/declarations/nsmul-le-nsmul-of-le-of-le-of-nonneg--62fe5773bbda9482f08a4315.md) | 101 | `result-track:62fe5773bbda9482f08a431575e1c05d12c442d429195e1ef48185072461c11b` |
| 15 | `theorem` | [nsmul_lt_nsmul_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Module/Variant0e8d90be0f2a1bc425f65026687be7942961d952ae7c46a06a0b6d9b65195fe0.lean/declarations/nsmul-lt-nsmul-iff--73eddaa4f8ad935e331dc856.md) | 115 | `result-track:73eddaa4f8ad935e331dc856d0c5767a424cdbb2de8fa6728fa3e5a22759edd7` |
| 16 | `theorem` | [nsmul_pos_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Module/Variant0e8d90be0f2a1bc425f65026687be7942961d952ae7c46a06a0b6d9b65195fe0.lean/declarations/nsmul-pos-iff--afe4236da12329bd9af830d4.md) | 126 | `result-track:afe4236da12329bd9af830d4763ff35b3254ad34d6199cec1f0c7cc14fbf74bc` |
| 17 | `theorem` | [neg_le_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Module/Variant0e8d90be0f2a1bc425f65026687be7942961d952ae7c46a06a0b6d9b65195fe0.lean/declarations/neg-le-iff--aeb8d7445d58219d828f1dd4.md) | 136 | `result-track:aeb8d7445d58219d828f1dd4ae1f5ec06f95753caa819ccd4c55f7aa29ac0464` |
| 18 | `theorem` | [zsmul_nonneg](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Module/Variant0e8d90be0f2a1bc425f65026687be7942961d952ae7c46a06a0b6d9b65195fe0.lean/declarations/zsmul-nonneg--460dc76423ffcdf1590cc8ef.md) | 147 | `result-track:460dc76423ffcdf1590cc8ef49dc845283d9cbb169aa3c2a6f5061e85f364752` |
| 19 | `theorem` | [zsmul_pos_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Module/Variant0e8d90be0f2a1bc425f65026687be7942961d952ae7c46a06a0b6d9b65195fe0.lean/declarations/zsmul-pos-iff--364b33ec0b815d3812911765.md) | 154 | `result-track:364b33ec0b815d3812911765487498da9e5d1bc450d033f03e415dee30639c5e` |
| 20 | `theorem` | [le_neg_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Module/Variant0e8d90be0f2a1bc425f65026687be7942961d952ae7c46a06a0b6d9b65195fe0.lean/declarations/le-neg-iff--23be634a068d2db8a2ca3f19.md) | 177 | `result-track:23be634a068d2db8a2ca3f198a11b453677f400a2bfe232f5d3fd4cec3b05da1` |
| 21 | `theorem` | [neg_nonneg_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Module/Variant0e8d90be0f2a1bc425f65026687be7942961d952ae7c46a06a0b6d9b65195fe0.lean/declarations/neg-nonneg-iff--f2ff8c4ef600c26e5de88c41.md) | 181 | `result-track:f2ff8c4ef600c26e5de88c41ddfb6f5d9664d3e8c47b5255bac207199ebfb1f2` |
| 22 | `theorem` | [sub_nonneg_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Module/Variant0e8d90be0f2a1bc425f65026687be7942961d952ae7c46a06a0b6d9b65195fe0.lean/declarations/sub-nonneg-iff--7848a3eb74bc90a4ada61475.md) | 184 | `result-track:7848a3eb74bc90a4ada614754a2f6c8def22bfd1a7a23ffe833ff06ff334a1cf` |
| 23 | `theorem` | [neg_lt_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Module/Variant0e8d90be0f2a1bc425f65026687be7942961d952ae7c46a06a0b6d9b65195fe0.lean/declarations/neg-lt-iff--c59790306c6ba440e67b6b0f.md) | 189 | `result-track:c59790306c6ba440e67b6b0fac206e6cf694ec8f041ea876726cc8f4fe8f18cd` |
| 24 | `theorem` | [lt_neg_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Module/Variant0e8d90be0f2a1bc425f65026687be7942961d952ae7c46a06a0b6d9b65195fe0.lean/declarations/lt-neg-iff--0bb9340cb4a1dc84fd53cda6.md) | 193 | `result-track:0bb9340cb4a1dc84fd53cda6b26255cf24c7e92b674b656ec9f65005327b64d2` |
| 25 | `theorem` | [neg_pos_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Module/Variant0e8d90be0f2a1bc425f65026687be7942961d952ae7c46a06a0b6d9b65195fe0.lean/declarations/neg-pos-iff--5ab074d99d5a5901c28c9a99.md) | 197 | `result-track:5ab074d99d5a5901c28c9a99bc470f5887907dc61f590214b94fb14921b2110a` |
| 26 | `theorem` | [sub_pos_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Module/Variant0e8d90be0f2a1bc425f65026687be7942961d952ae7c46a06a0b6d9b65195fe0.lean/declarations/sub-pos-iff--cab0e05f500b85b75d125c12.md) | 200 | `result-track:cab0e05f500b85b75d125c12a1bb1e425e659ad908ea1d39a6bd8624009cb89a` |
| 27 | `theorem` | [zsmul_nonpos](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Module/Variant0e8d90be0f2a1bc425f65026687be7942961d952ae7c46a06a0b6d9b65195fe0.lean/declarations/zsmul-nonpos--bfa85f6f1dcf5101b8135f7c.md) | 210 | `result-track:bfa85f6f1dcf5101b8135f7c0da770b1854aefba3e2e0f9f405cdaa953507ae1` |
| 28 | `theorem` | [zsmul_le_zsmul](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Module/Variant0e8d90be0f2a1bc425f65026687be7942961d952ae7c46a06a0b6d9b65195fe0.lean/declarations/zsmul-le-zsmul--7ccaae5cd1db6b73780349be.md) | 213 | `result-track:7ccaae5cd1db6b73780349be92fb4505f6d088add1912257e395c1f19644af61` |
| 29 | `theorem` | [zsmul_le_zsmul_of_le_of_le_of_nonneg_of_nonneg](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Module/Variant0e8d90be0f2a1bc425f65026687be7942961d952ae7c46a06a0b6d9b65195fe0.lean/declarations/zsmul-le-zsmul-of-le-of-le-of-nonneg-of-nonneg--2c10062d5fc1e90972777ff1.md) | 216 | `result-track:2c10062d5fc1e90972777ff16aa8d00943e42bccfe3a281050a0dc9420f45189` |
| 30 | `theorem` | [zsmul_neg_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Module/Variant0e8d90be0f2a1bc425f65026687be7942961d952ae7c46a06a0b6d9b65195fe0.lean/declarations/zsmul-neg-iff--67c387f42c88e84d24b52b9d.md) | 227 | `result-track:67c387f42c88e84d24b52b9d0f8a22699c8be21b73b8a6d8b9acaabb9d2cce65` |
| 31 | `theorem` | [zsmul_lt_zsmul_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Module/Variant0e8d90be0f2a1bc425f65026687be7942961d952ae7c46a06a0b6d9b65195fe0.lean/declarations/zsmul-lt-zsmul-iff--841c414f60f32fc02f990a1f.md) | 230 | `result-track:841c414f60f32fc02f990a1f751d21c6c1c506e87c242fa48e6c33a9cf3a6fb8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
