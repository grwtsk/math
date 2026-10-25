# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Fintype.Variant7425e69c66be41b1d4c14e62d25ff2989a70a9ad64d5c6a051e06dab67c7d8fe

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "55a6940204ffb593176e8113921eb7ca80d71c9c",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Fintype/Variant7425e69c66be41b1d4c14e62d25ff2989a70a9ad64d5c6a051e06dab67c7d8fe.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Fintype/Variant7425e69c66be41b1d4c14e62d25ff2989a70a9ad64d5c6a051e06dab67c7d8fe.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Fintype/Variant7425e69c66be41b1d4c14e62d25ff2989a70a9ad64d5c6a051e06dab67c7d8fe.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `55a6940204ffb593176e8113921eb7ca80d71c9c`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Fintype/Variant7425e69c66be41b1d4c14e62d25ff2989a70a9ad64d5c6a051e06dab67c7d8fe.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Fintype/Variant7425e69c66be41b1d4c14e62d25ff2989a70a9ad64d5c6a051e06dab67c7d8fe.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Fintype.EquivFin` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Inv` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Function.Embedding.toEquivRange](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Fintype/Variant7425e69c66be41b1d4c14e62d25ff2989a70a9ad64d5c6a051e06dab67c7d8fe.lean/declarations/function-embedding-toequivrange--477100d99f54112ad38ee8a4.md) | 46 | `declaration-track:477100d99f54112ad38ee8a4286f0aa02a3df4830750ae05e92de5b77c2160dc` |
| 2 | `theorem` | [Function.Embedding.toEquivRange_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Fintype/Variant7425e69c66be41b1d4c14e62d25ff2989a70a9ad64d5c6a051e06dab67c7d8fe.lean/declarations/function-embedding-toequivrange-apply--e6d4b4e6df303496211e587b.md) | 50 | `result-track:e6d4b4e6df303496211e587b1fd0fe8cb7bf6d1d4c0fa9c59be26d2af1400186` |
| 3 | `theorem` | [Function.Embedding.toEquivRange_symm_apply_self](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Fintype/Variant7425e69c66be41b1d4c14e62d25ff2989a70a9ad64d5c6a051e06dab67c7d8fe.lean/declarations/function-embedding-toequivrange-symm-apply-self--9783a3fe3077a2d1492d967c.md) | 55 | `result-track:9783a3fe3077a2d1492d967c4f105aecf1a2f61ccba2deb8107acc2e3be2d3e0` |
| 4 | `theorem` | [Function.Embedding.toEquivRange_eq_ofInjective](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Fintype/Variant7425e69c66be41b1d4c14e62d25ff2989a70a9ad64d5c6a051e06dab67c7d8fe.lean/declarations/function-embedding-toequivrange-eq-ofinjective--d4cb4af41ebd95fdfa16b04b.md) | 58 | `result-track:d4cb4af41ebd95fdfa16b04be1e4c2fda6ab2710f338b5a7b66654d4fff7e30e` |
| 5 | `def` | [Equiv.Perm.viaFintypeEmbedding](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Fintype/Variant7425e69c66be41b1d4c14e62d25ff2989a70a9ad64d5c6a051e06dab67c7d8fe.lean/declarations/equiv-perm-viafintypeembedding--5a0b248162cb6a75ec820d87.md) | 70 | `declaration-track:5a0b248162cb6a75ec820d87dea6dd44cb8caf8bb1464048f7559c6c19a365ef` |
| 6 | `theorem` | [Equiv.Perm.viaFintypeEmbedding_apply_image](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Fintype/Variant7425e69c66be41b1d4c14e62d25ff2989a70a9ad64d5c6a051e06dab67c7d8fe.lean/declarations/equiv-perm-viafintypeembedding-apply-image--2e9a4035e0e560840fc654b2.md) | 74 | `result-track:2e9a4035e0e560840fc654b23d48b3e5397749c0ab368b9751904e0d786a0e6e` |
| 7 | `theorem` | [Equiv.Perm.viaFintypeEmbedding_apply_mem_range](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Fintype/Variant7425e69c66be41b1d4c14e62d25ff2989a70a9ad64d5c6a051e06dab67c7d8fe.lean/declarations/equiv-perm-viafintypeembedding-apply-mem-range--78dc798b2402120338571584.md) | 79 | `result-track:78dc798b2402120338571584157c6873ba75bc0da321ff532a2572a24535b113` |
| 8 | `theorem` | [Equiv.Perm.viaFintypeEmbedding_apply_notMem_range](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Fintype/Variant7425e69c66be41b1d4c14e62d25ff2989a70a9ad64d5c6a051e06dab67c7d8fe.lean/declarations/equiv-perm-viafintypeembedding-apply-notmem-range--70874b4b671edd2feb9a33f0.md) | 85 | `result-track:70874b4b671edd2feb9a33f01abe41158c321a8869b669d15ba80834192befac` |
| 9 | `def` | [toCompl](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Fintype/Variant7425e69c66be41b1d4c14e62d25ff2989a70a9ad64d5c6a051e06dab67c7d8fe.lean/declarations/tocompl--56bb9c818da9e67850bde324.md) | 104 | `declaration-track:56bb9c818da9e67850bde324d8d694c5a1bad78f7b78263dd6dcd60867f3f990` |
| 10 | `abbrev` | [extendSubtype](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Fintype/Variant7425e69c66be41b1d4c14e62d25ff2989a70a9ad64d5c6a051e06dab67c7d8fe.lean/declarations/extendsubtype--848dd3980d2705cbeac59bcf.md) | 117 | `declaration-track:848dd3980d2705cbeac59bcfcdd10bc493541970191050f38bf5ca15d4b069d8` |
| 11 | `theorem` | [extendSubtype_apply_of_mem](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Fintype/Variant7425e69c66be41b1d4c14e62d25ff2989a70a9ad64d5c6a051e06dab67c7d8fe.lean/declarations/extendsubtype-apply-of-mem--2cbe2efd940e71e415074fd3.md) | 120 | `result-track:2cbe2efd940e71e415074fd3035e1c42a0586c726c1ed3c835a501e292ff3219` |
| 12 | `theorem` | [extendSubtype_mem](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Fintype/Variant7425e69c66be41b1d4c14e62d25ff2989a70a9ad64d5c6a051e06dab67c7d8fe.lean/declarations/extendsubtype-mem--71df47c9e5deb3dc022b58e2.md) | 126 | `result-track:71df47c9e5deb3dc022b58e291802548b8a135cca66bdc23d69a67e2111b8f21` |
| 13 | `theorem` | [extendSubtype_apply_of_not_mem](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Fintype/Variant7425e69c66be41b1d4c14e62d25ff2989a70a9ad64d5c6a051e06dab67c7d8fe.lean/declarations/extendsubtype-apply-of-not-mem--758ff93b50d3ae4e70378e2f.md) | 131 | `result-track:758ff93b50d3ae4e70378e2f166a1d6ceb5efe303e3608bdc491572d22f7451e` |
| 14 | `theorem` | [extendSubtype_not_mem](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Fintype/Variant7425e69c66be41b1d4c14e62d25ff2989a70a9ad64d5c6a051e06dab67c7d8fe.lean/declarations/extendsubtype-not-mem--840e1b7b1601641cebba523d.md) | 137 | `result-track:840e1b7b1601641cebba523dd63ddcb6b5df47bf3f2c727157e6e7dc4120af1e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
