# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Set.Variant7e12d79296b3c23f992f16bfcd5139679240ae47836b26b9422125a6929f2d5c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dd8c97890b51c12c96c56fde3de94b3dcce4355b",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Set/Variant7e12d79296b3c23f992f16bfcd5139679240ae47836b26b9422125a6929f2d5c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Set/Variant7e12d79296b3c23f992f16bfcd5139679240ae47836b26b9422125a6929f2d5c.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Set/Variant7e12d79296b3c23f992f16bfcd5139679240ae47836b26b9422125a6929f2d5c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dd8c97890b51c12c96c56fde3de94b3dcce4355b`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Set/Variant7e12d79296b3c23f992f16bfcd5139679240ae47836b26b9422125a6929f2d5c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Set/Variant7e12d79296b3c23f992f16bfcd5139679240ae47836b26b9422125a6929f2d5c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Set.Notation` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.SetNotation` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Embedding.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Pairwise` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Image` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Equiv.asEmbedding_range](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Set/Variant7e12d79296b3c23f992f16bfcd5139679240ae47836b26b9422125a6929f2d5c.lean/declarations/equiv-asembedding-range--aa8330529b2a291e6fe59326.md) | 36 | `result-track:aa8330529b2a291e6fe59326139d867a2daa8b329b7228430439be539e16884a` |
| 2 | `def` | [optionElim](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Set/Variant7e12d79296b3c23f992f16bfcd5139679240ae47836b26b9422125a6929f2d5c.lean/declarations/optionelim--624bb1c18b0350f99aeb12df.md) | 49 | `declaration-track:624bb1c18b0350f99aeb12dfe73cbf14f32f87b8ef5e6075007fdcf84b22703f` |
| 3 | `def` | [optionEmbeddingEquiv](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Set/Variant7e12d79296b3c23f992f16bfcd5139679240ae47836b26b9422125a6929f2d5c.lean/declarations/optionembeddingequiv--02459432f1c37ae974b682ca.md) | 54 | `declaration-track:02459432f1c37ae974b682cabd5ae2932ce0fde1104a8e66ee81ec724e73614b` |
| 4 | `def` | [codRestrict](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Set/Variant7e12d79296b3c23f992f16bfcd5139679240ae47836b26b9422125a6929f2d5c.lean/declarations/codrestrict--6e3ae19140525731bbd29463.md) | 61 | `declaration-track:6e3ae19140525731bbd2946321d88ce8d3d38fb721c406d43f58d352f3625a5f` |
| 5 | `theorem` | [codRestrict_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Set/Variant7e12d79296b3c23f992f16bfcd5139679240ae47836b26b9422125a6929f2d5c.lean/declarations/codrestrict-apply--6083d102a4941442d87db96f.md) | 65 | `result-track:6083d102a4941442d87db96f66f871302d19a1937508b1e5dd52aa0289d9ed21` |
| 6 | `def` | [image](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Set/Variant7e12d79296b3c23f992f16bfcd5139679240ae47836b26b9422125a6929f2d5c.lean/declarations/image--4e8877fac38cabe1fcf7f54a.md) | 72 | `declaration-track:4e8877fac38cabe1fcf7f54af6dc8294b9d60abb845c0a8ac0ef9556baf7cc45` |
| 7 | `def` | [embeddingOfSubset](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Set/Variant7e12d79296b3c23f992f16bfcd5139679240ae47836b26b9422125a6929f2d5c.lean/declarations/embeddingofsubset--1ae86c29493133558466c591.md) | 83 | `declaration-track:1ae86c29493133558466c5911a0d5f95716198fd9cbac99209e9ac03eba17455` |
| 8 | `def` | [subtypeOrEquiv](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Set/Variant7e12d79296b3c23f992f16bfcd5139679240ae47836b26b9422125a6929f2d5c.lean/declarations/subtypeorequiv--45f5157eff63001031b0a5e0.md) | 100 | `declaration-track:45f5157eff63001031b0a5e0e27b77335695b0f7da92742557f0c8eb40fdaaa0` |
| 9 | `theorem` | [subtypeOrEquiv_symm_inl](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Set/Variant7e12d79296b3c23f992f16bfcd5139679240ae47836b26b9422125a6929f2d5c.lean/declarations/subtypeorequiv-symm-inl--abe7b909f609ae8c5fcbb091.md) | 128 | `result-track:abe7b909f609ae8c5fcbb091bc1aec5e21bd0995884adcf944ae6440077a3e0f` |
| 10 | `theorem` | [subtypeOrEquiv_symm_inr](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Set/Variant7e12d79296b3c23f992f16bfcd5139679240ae47836b26b9422125a6929f2d5c.lean/declarations/subtypeorequiv-symm-inr--0420cf006b51484cc03624a3.md) | 133 | `result-track:0420cf006b51484cc03624a3abf29229b96f0591130f81f27ef2f9a1fc94a8c6` |
| 11 | `def` | [Function.Embedding.sumSet](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Set/Variant7e12d79296b3c23f992f16bfcd5139679240ae47836b26b9422125a6929f2d5c.lean/declarations/function-embedding-sumset--5acca11230075abec7340e67.md) | 144 | `declaration-track:5acca11230075abec7340e67fe59c70e13fa3514eef7ec6d9dac9b528c336798` |
| 12 | `lemma` | [Function.Embedding.coe_sumSet](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Set/Variant7e12d79296b3c23f992f16bfcd5139679240ae47836b26b9422125a6929f2d5c.lean/declarations/function-embedding-coe-sumset--22a7127beb8b7080a0b01a59.md) | 153 | `result-track:22a7127beb8b7080a0b01a599de7fd434f8dc638b17cba6d42e1d028b706e157` |
| 13 | `theorem` | [Function.Embedding.sumSet_preimage_inl](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Set/Variant7e12d79296b3c23f992f16bfcd5139679240ae47836b26b9422125a6929f2d5c.lean/declarations/function-embedding-sumset-preimage-inl--2655b9bdedaf3cc2b71e7c24.md) | 156 | `result-track:2655b9bdedaf3cc2b71e7c24d1dc6bf4cad0492fb177db1b9f7c70e92319d8d4` |
| 14 | `theorem` | [Function.Embedding.sumSet_preimage_inr](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Set/Variant7e12d79296b3c23f992f16bfcd5139679240ae47836b26b9422125a6929f2d5c.lean/declarations/function-embedding-sumset-preimage-inr--a61c005243d30c05ac15f16e.md) | 160 | `result-track:a61c005243d30c05ac15f16e1a430b0cc33b3dc1aa5ee714f967f02860a5d666` |
| 15 | `theorem` | [Function.Embedding.sumSet_range](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Set/Variant7e12d79296b3c23f992f16bfcd5139679240ae47836b26b9422125a6929f2d5c.lean/declarations/function-embedding-sumset-range--0bcc9a7f628c6fcde7d58e90.md) | 164 | `result-track:0bcc9a7f628c6fcde7d58e908f1d66670ba6a8dc66258e0d1f999c6774c5e6ae` |
| 16 | `def` | [Function.Embedding.sigmaSet](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Set/Variant7e12d79296b3c23f992f16bfcd5139679240ae47836b26b9422125a6929f2d5c.lean/declarations/function-embedding-sigmaset--83349106c02fcc9cc85b7046.md) | 172 | `declaration-track:83349106c02fcc9cc85b7046bab942d487aa3fac888d207e4e363023acf37f4f` |
| 17 | `lemma` | [Function.Embedding.coe_sigmaSet](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Set/Variant7e12d79296b3c23f992f16bfcd5139679240ae47836b26b9422125a6929f2d5c.lean/declarations/function-embedding-coe-sigmaset--2ab0c31f9f6e0687d0ab33fc.md) | 180 | `result-track:2ab0c31f9f6e0687d0ab33fccba493e6cc378252936856811bd74eb3290d65ce` |
| 18 | `theorem` | [Function.Embedding.sigmaSet_preimage](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Set/Variant7e12d79296b3c23f992f16bfcd5139679240ae47836b26b9422125a6929f2d5c.lean/declarations/function-embedding-sigmaset-preimage--f4a79c35bb1cb3f9bc7841f5.md) | 183 | `result-track:f4a79c35bb1cb3f9bc7841f5da4f9952abf49ea220bcbaa816b6f8abff2b2fbf` |
| 19 | `theorem` | [Function.Embedding.sigmaSet_range](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Set/Variant7e12d79296b3c23f992f16bfcd5139679240ae47836b26b9422125a6929f2d5c.lean/declarations/function-embedding-sigmaset-range--d13f13021bc074838d37d34e.md) | 188 | `result-track:d13f13021bc074838d37d34e46b09defcd752c6c52d4daf6ef50d8a0882700fa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
