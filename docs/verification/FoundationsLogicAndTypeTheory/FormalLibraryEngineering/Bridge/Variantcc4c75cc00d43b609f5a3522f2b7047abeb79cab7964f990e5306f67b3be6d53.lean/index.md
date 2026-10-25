# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Bridge.Variantcc4c75cc00d43b609f5a3522f2b7047abeb79cab7964f990e5306f67b3be6d53

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ce092e6db89b4336a50f9a6613738f249d427ae3",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bridge/Variantcc4c75cc00d43b609f5a3522f2b7047abeb79cab7964f990e5306f67b3be6d53.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bridge/Variantcc4c75cc00d43b609f5a3522f2b7047abeb79cab7964f990e5306f67b3be6d53.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bridge/Variantcc4c75cc00d43b609f5a3522f2b7047abeb79cab7964f990e5306f67b3be6d53.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ce092e6db89b4336a50f9a6613738f249d427ae3`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bridge/Variantcc4c75cc00d43b609f5a3522f2b7047abeb79cab7964f990e5306f67b3be6d53.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bridge/Variantcc4c75cc00d43b609f5a3522f2b7047abeb79cab7964f990e5306f67b3be6d53.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `LeanCert.Validity.Bounds.Smart` — import line 6; external provider; requires a separately pinned dependency.
- `LeanCert.Engine.Integrate` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [verify_upper_bound_Icc](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bridge/Variantcc4c75cc00d43b609f5a3522f2b7047abeb79cab7964f990e5306f67b3be6d53.lean/declarations/verify-upper-bound-icc--8acffd3429b23831b550a9d3.md) | 48 | `result-track:8acffd3429b23831b550a9d335513801a8bbe711ff7281c94667ba34494a3844` |
| 2 | `theorem` | [verify_lower_bound_Icc](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bridge/Variantcc4c75cc00d43b609f5a3522f2b7047abeb79cab7964f990e5306f67b3be6d53.lean/declarations/verify-lower-bound-icc--9cab41b6630c358b1483ad7f.md) | 58 | `result-track:9cab41b6630c358b1483ad7f3605ac5afe91c3e0f4226a73f44fa166168468a6` |
| 3 | `theorem` | [verify_upper_bound_Icc_core](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bridge/Variantcc4c75cc00d43b609f5a3522f2b7047abeb79cab7964f990e5306f67b3be6d53.lean/declarations/verify-upper-bound-icc-core--60ec2b06fd644f1d79bd99ae.md) | 69 | `result-track:60ec2b06fd644f1d79bd99aeae16652ee6da02b18c1bc9384e01a47a855309a1` |
| 4 | `theorem` | [verify_lower_bound_Icc_core](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bridge/Variantcc4c75cc00d43b609f5a3522f2b7047abeb79cab7964f990e5306f67b3be6d53.lean/declarations/verify-lower-bound-icc-core--02d0ccdc06391e423997f184.md) | 80 | `result-track:02d0ccdc06391e423997f18496486958d2201b03a33b0f363756b535810e81ae` |
| 5 | `theorem` | [verify_strict_upper_bound_Icc_core](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bridge/Variantcc4c75cc00d43b609f5a3522f2b7047abeb79cab7964f990e5306f67b3be6d53.lean/declarations/verify-strict-upper-bound-icc-core--0ad65f517db6ef8a6b20971c.md) | 90 | `result-track:0ad65f517db6ef8a6b20971c6a425a32ce2e840378b5e61bfd0e9eb36e557af8` |
| 6 | `theorem` | [verify_strict_lower_bound_Icc_core](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bridge/Variantcc4c75cc00d43b609f5a3522f2b7047abeb79cab7964f990e5306f67b3be6d53.lean/declarations/verify-strict-lower-bound-icc-core--408f73a9e9fd38b2bd5c1d1d.md) | 100 | `result-track:408f73a9e9fd38b2bd5c1d1d06f681b9e2b9f227a135af27b4df1699c38b389a` |
| 7 | `theorem` | [verify_upper_bound_split](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bridge/Variantcc4c75cc00d43b609f5a3522f2b7047abeb79cab7964f990e5306f67b3be6d53.lean/declarations/verify-upper-bound-split--cd29ceb434fc16e2b723ae8b.md) | 118 | `result-track:cd29ceb434fc16e2b723ae8ba93737ffda35ddbfe82acabdb472ec9560a2dc9a` |
| 8 | `theorem` | [verify_lower_bound_split](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bridge/Variantcc4c75cc00d43b609f5a3522f2b7047abeb79cab7964f990e5306f67b3be6d53.lean/declarations/verify-lower-bound-split--b5854b9e0bdfdf21d96e3310.md) | 129 | `result-track:b5854b9e0bdfdf21d96e33107282508ea70fbc159614f3c008cc049409ea8ba1` |
| 9 | `theorem` | [verify_strict_upper_bound_split](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bridge/Variantcc4c75cc00d43b609f5a3522f2b7047abeb79cab7964f990e5306f67b3be6d53.lean/declarations/verify-strict-upper-bound-split--557a44ea5b9f9a5a36c57494.md) | 140 | `result-track:557a44ea5b9f9a5a36c574942686c8810593dfb4866e2eafcc05194b5c1242ed` |
| 10 | `theorem` | [verify_strict_lower_bound_split](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bridge/Variantcc4c75cc00d43b609f5a3522f2b7047abeb79cab7964f990e5306f67b3be6d53.lean/declarations/verify-strict-lower-bound-split--6d5cb85d08501e8931f2bd6f.md) | 151 | `result-track:6d5cb85d08501e8931f2bd6f5e1f1954344b9fc7c0c9516352e4df6500ba6ac3` |
| 11 | `theorem` | [verify_upper_bound_Icc_split](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bridge/Variantcc4c75cc00d43b609f5a3522f2b7047abeb79cab7964f990e5306f67b3be6d53.lean/declarations/verify-upper-bound-icc-split--d4149efc1045753633d92e56.md) | 162 | `result-track:d4149efc1045753633d92e56a4e72ea86343467be40df2bee4f80233188af689` |
| 12 | `theorem` | [verify_lower_bound_Icc_split](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bridge/Variantcc4c75cc00d43b609f5a3522f2b7047abeb79cab7964f990e5306f67b3be6d53.lean/declarations/verify-lower-bound-icc-split--5de5e4714b6f42260097dea6.md) | 173 | `result-track:5de5e4714b6f42260097dea6a21bd9daa70d2ac4867bec42b1419f19e7d44e44` |
| 13 | `theorem` | [verify_strict_upper_bound_Icc_split](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bridge/Variantcc4c75cc00d43b609f5a3522f2b7047abeb79cab7964f990e5306f67b3be6d53.lean/declarations/verify-strict-upper-bound-icc-split--94c48318bdaf36ded9bed355.md) | 184 | `result-track:94c48318bdaf36ded9bed35513393d112e4f6a21a5e9af7cfa36b048f2aee1fc` |
| 14 | `theorem` | [verify_strict_lower_bound_Icc_split](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bridge/Variantcc4c75cc00d43b609f5a3522f2b7047abeb79cab7964f990e5306f67b3be6d53.lean/declarations/verify-strict-lower-bound-icc-split--73fd93d93db5dc0216f89c15.md) | 195 | `result-track:73fd93d93db5dc0216f89c154b8679be16747ca4857acd5174ffb33a18c03cb8` |
| 15 | `theorem` | [mem_split_general](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bridge/Variantcc4c75cc00d43b609f5a3522f2b7047abeb79cab7964f990e5306f67b3be6d53.lean/declarations/mem-split-general--403d5290736dc4841f1e4b7a.md) | 212 | `result-track:403d5290736dc4841f1e4b7a359f26766ea6390380502994abcd8107b8a82122` |
| 16 | `theorem` | [verify_upper_bound_general_split](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bridge/Variantcc4c75cc00d43b609f5a3522f2b7047abeb79cab7964f990e5306f67b3be6d53.lean/declarations/verify-upper-bound-general-split--baed51abb0d6f0448b55eabe.md) | 224 | `result-track:baed51abb0d6f0448b55eabec346963f1edc3e0c079b437af13a8e0b21aebe2d` |
| 17 | `theorem` | [verify_lower_bound_general_split](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bridge/Variantcc4c75cc00d43b609f5a3522f2b7047abeb79cab7964f990e5306f67b3be6d53.lean/declarations/verify-lower-bound-general-split--0762da54ab951c232195dbb1.md) | 237 | `result-track:0762da54ab951c232195dbb1700d6d07c3163c74045365125a42e40234f24d43` |
| 18 | `theorem` | [verify_strict_upper_bound_general_split](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bridge/Variantcc4c75cc00d43b609f5a3522f2b7047abeb79cab7964f990e5306f67b3be6d53.lean/declarations/verify-strict-upper-bound-general-split--4c8fc68f1e76109f1ba716da.md) | 250 | `result-track:4c8fc68f1e76109f1ba716da631f515ede4d218e99b3ec1f5c26a077038432a0` |
| 19 | `theorem` | [verify_strict_lower_bound_general_split](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bridge/Variantcc4c75cc00d43b609f5a3522f2b7047abeb79cab7964f990e5306f67b3be6d53.lean/declarations/verify-strict-lower-bound-general-split--01d9fbc8c3d38d6dbb8026aa.md) | 263 | `result-track:01d9fbc8c3d38d6dbb8026aa48ef85b94e1db2326e8c8c8213673dbb933af726` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
