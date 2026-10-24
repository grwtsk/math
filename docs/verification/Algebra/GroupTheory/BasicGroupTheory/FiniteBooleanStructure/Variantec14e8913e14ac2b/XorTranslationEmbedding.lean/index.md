# Verification target: GRWTSK.Algebra.GroupTheory.BasicGroupTheory.FiniteBooleanStructure.Variantec14e8913e14ac2b.XorTranslationEmbedding

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "35f12936acc41ffc6043bd288e8f06f0724ef2bf",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/BasicGroupTheory/FiniteBooleanStructure/Variantec14e8913e14ac2b/XorTranslationEmbedding.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../mathematics/Algebra/GroupTheory/BasicGroupTheory/FiniteBooleanStructure/Variantec14e8913e14ac2b/XorTranslationEmbedding.lean/index.md) · [Full source](../../../../../../../mathematics/Algebra/GroupTheory/BasicGroupTheory/FiniteBooleanStructure/Variantec14e8913e14ac2b/XorTranslationEmbedding.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `35f12936acc41ffc6043bd288e8f06f0724ef2bf`.

Source path: `GRWTSK/Algebra/GroupTheory/BasicGroupTheory/FiniteBooleanStructure/Variantec14e8913e14ac2b/XorTranslationEmbedding.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/BasicGroupTheory/FiniteBooleanStructure/Variantec14e8913e14ac2b/XorTranslationEmbedding.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `BitMatrix.Network.Permutation` — import line 19; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Group.Finset.Basic` — import line 20; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [BitPerm](../../../../../../../mathematics/Algebra/GroupTheory/BasicGroupTheory/FiniteBooleanStructure/Variantec14e8913e14ac2b/XorTranslationEmbedding.lean/declarations/bitperm--f829390eea1f449e3b9c6116.md) | 49 | `declaration-track:f829390eea1f449e3b9c6116487f7ce89aa3b031da9d10568a4fd2ba1c5f64b6` |
| 2 | `def` | [BitPerm.ofBijective](../../../../../../../mathematics/Algebra/GroupTheory/BasicGroupTheory/FiniteBooleanStructure/Variantec14e8913e14ac2b/XorTranslationEmbedding.lean/declarations/bitperm-ofbijective--52d3676e12fdca8d9fa41e25.md) | 52 | `declaration-track:52d3676e12fdca8d9fa41e25b465ddf49adee8dcd94873e8abdb3db04f12d9a5` |
| 3 | `theorem` | [BitPerm.ofBijective_apply](../../../../../../../mathematics/Algebra/GroupTheory/BasicGroupTheory/FiniteBooleanStructure/Variantec14e8913e14ac2b/XorTranslationEmbedding.lean/declarations/bitperm-ofbijective-apply--20e13dda4519538c979d5eb0.md) | 59 | `result-track:20e13dda4519538c979d5eb0ad5e4f06aaf900383deefc19a76987f91df900b0` |
| 4 | `def` | [XorGroup](../../../../../../../mathematics/Algebra/GroupTheory/BasicGroupTheory/FiniteBooleanStructure/Variantec14e8913e14ac2b/XorTranslationEmbedding.lean/declarations/xorgroup--543ce3fbe2ad502c52779335.md) | 74 | `declaration-track:543ce3fbe2ad502c52779335fc523ddc9b11bc396966cf6bafa08a4f57bc046a` |
| 5 | `instance` | [instOne](../../../../../../../mathematics/Algebra/GroupTheory/BasicGroupTheory/FiniteBooleanStructure/Variantec14e8913e14ac2b/XorTranslationEmbedding.lean/declarations/instone--a99a64fce7b399eda3395b3c.md) | 78 | `declaration-track:a99a64fce7b399eda3395b3c44a5a3e8ab23a79f8d0cab8cdc4567bc7a5524bd` |
| 6 | `instance` | [instMul](../../../../../../../mathematics/Algebra/GroupTheory/BasicGroupTheory/FiniteBooleanStructure/Variantec14e8913e14ac2b/XorTranslationEmbedding.lean/declarations/instmul--18c825572ca8efe9ce7dc726.md) | 81 | `declaration-track:18c825572ca8efe9ce7dc726af0a06b85cdb0a75627899f6172ed5f25f536cd1` |
| 7 | `instance` | [instInv](../../../../../../../mathematics/Algebra/GroupTheory/BasicGroupTheory/FiniteBooleanStructure/Variantec14e8913e14ac2b/XorTranslationEmbedding.lean/declarations/instinv--6b9b4da3f28f6ba5fa0806e1.md) | 84 | `declaration-track:6b9b4da3f28f6ba5fa0806e1567bf18416c194de8edf0094c18278e49e2d3409` |
| 8 | `instance` | [instCommGroup](../../../../../../../mathematics/Algebra/GroupTheory/BasicGroupTheory/FiniteBooleanStructure/Variantec14e8913e14ac2b/XorTranslationEmbedding.lean/declarations/instcommgroup--3f27b04aa0bef3237ac6f807.md) | 87 | `declaration-track:3f27b04aa0bef3237ac6f807b1072243b6e8b058365cca3870295892f9b2fac6` |
| 9 | `def` | [toBits](../../../../../../../mathematics/Algebra/GroupTheory/BasicGroupTheory/FiniteBooleanStructure/Variantec14e8913e14ac2b/XorTranslationEmbedding.lean/declarations/tobits--4f07ab4cf90d84e048fad81a.md) | 95 | `declaration-track:4f07ab4cf90d84e048fad81a9142bf50749028816f17f18596ff8ba21218c8c4` |
| 10 | `theorem` | [one_toBits](../../../../../../../mathematics/Algebra/GroupTheory/BasicGroupTheory/FiniteBooleanStructure/Variantec14e8913e14ac2b/XorTranslationEmbedding.lean/declarations/one-tobits--1ef4882112ef8c0847adb481.md) | 99 | `result-track:1ef4882112ef8c0847adb4817844e163379354f34f9eb8fe6096b591c1aeb624` |
| 11 | `theorem` | [mul_toBits](../../../../../../../mathematics/Algebra/GroupTheory/BasicGroupTheory/FiniteBooleanStructure/Variantec14e8913e14ac2b/XorTranslationEmbedding.lean/declarations/mul-tobits--e57f3ada9ec713c7c1757dae.md) | 104 | `result-track:e57f3ada9ec713c7c1757daec0b0f29296f97f6c9051987e48971361bde5fd86` |
| 12 | `theorem` | [inv_eq](../../../../../../../mathematics/Algebra/GroupTheory/BasicGroupTheory/FiniteBooleanStructure/Variantec14e8913e14ac2b/XorTranslationEmbedding.lean/declarations/inv-eq--b3972c8937d7bbde97ce7de4.md) | 109 | `result-track:b3972c8937d7bbde97ce7de474655eace4aae347331fb0f7b1a2ccd2b926b424` |
| 13 | `structure` | [MonoidEmbedding](../../../../../../../mathematics/Algebra/GroupTheory/BasicGroupTheory/FiniteBooleanStructure/Variantec14e8913e14ac2b/XorTranslationEmbedding.lean/declarations/monoidembedding--bb92fd35ac242d2a457361d2.md) | 120 | `declaration-track:bb92fd35ac242d2a457361d2ae8a6adeed2466647a07ec3dd65f6a8244b6d36a` |
| 14 | `instance` | [instCoeFunForall](../../../../../../../mathematics/Algebra/GroupTheory/BasicGroupTheory/FiniteBooleanStructure/Variantec14e8913e14ac2b/XorTranslationEmbedding.lean/declarations/instcoefunforall--3787f1c714d20523f1f5e4b8.md) | 128 | `declaration-track:3787f1c714d20523f1f5e4b8264aa85d89071dc413af82dc22bfade70eb4d34e` |
| 15 | `theorem` | [injective](../../../../../../../mathematics/Algebra/GroupTheory/BasicGroupTheory/FiniteBooleanStructure/Variantec14e8913e14ac2b/XorTranslationEmbedding.lean/declarations/injective--dca51ec2a09e4033afbd7477.md) | 133 | `result-track:dca51ec2a09e4033afbd7477c1fd7aa5b54554a0081182ecf96e07569572a615` |
| 16 | `theorem` | [translation_mul_apply](../../../../../../../mathematics/Algebra/GroupTheory/BasicGroupTheory/FiniteBooleanStructure/Variantec14e8913e14ac2b/XorTranslationEmbedding.lean/declarations/translation-mul-apply--31b9533407a13ceac9a993b6.md) | 142 | `result-track:31b9533407a13ceac9a993b68b9cd4d966f8828c57833f83d9bde78aa13051eb` |
| 17 | `def` | [translationHom](../../../../../../../mathematics/Algebra/GroupTheory/BasicGroupTheory/FiniteBooleanStructure/Variantec14e8913e14ac2b/XorTranslationEmbedding.lean/declarations/translationhom--259259032c171f6e211d0977.md) | 153 | `declaration-track:259259032c171f6e211d097747aadb2fbf61de8bbf3600e52640fb8d6e63a555` |
| 18 | `theorem` | [translationHom_apply](../../../../../../../mathematics/Algebra/GroupTheory/BasicGroupTheory/FiniteBooleanStructure/Variantec14e8913e14ac2b/XorTranslationEmbedding.lean/declarations/translationhom-apply--9dc9b3a01e861c6af83e4111.md) | 162 | `result-track:9dc9b3a01e861c6af83e411109dd3d6ec615b629e5d8513cd4c861fff7da7010` |
| 19 | `theorem` | [translationHom_injective](../../../../../../../mathematics/Algebra/GroupTheory/BasicGroupTheory/FiniteBooleanStructure/Variantec14e8913e14ac2b/XorTranslationEmbedding.lean/declarations/translationhom-injective--29631c31502eab6c4b21b4b7.md) | 169 | `result-track:29631c31502eab6c4b21b4b70893b1afadee9c7ef1cf94241fbfcc10f93743ce` |
| 20 | `def` | [translationEmbedding](../../../../../../../mathematics/Algebra/GroupTheory/BasicGroupTheory/FiniteBooleanStructure/Variantec14e8913e14ac2b/XorTranslationEmbedding.lean/declarations/translationembedding--c3aa04ff9b42653d4b43db63.md) | 177 | `declaration-track:c3aa04ff9b42653d4b43db63cce2b288f9dbcfd69aa7820d95525130e1c9de20` |
| 21 | `theorem` | [translationHom_one](../../../../../../../mathematics/Algebra/GroupTheory/BasicGroupTheory/FiniteBooleanStructure/Variantec14e8913e14ac2b/XorTranslationEmbedding.lean/declarations/translationhom-one--0375a481e8085fcbf02dea3f.md) | 182 | `result-track:0375a481e8085fcbf02dea3f6152f0d2e33e42f398a51e5cfed76a53d703f17a` |
| 22 | `theorem` | [translation_comm](../../../../../../../mathematics/Algebra/GroupTheory/BasicGroupTheory/FiniteBooleanStructure/Variantec14e8913e14ac2b/XorTranslationEmbedding.lean/declarations/translation-comm--07e75c3ef08ccdf6c0b91658.md) | 186 | `result-track:07e75c3ef08ccdf6c0b9165804d047c230f79ff7d3657535984bdff927dad75e` |
| 23 | `theorem` | [translation_order_two](../../../../../../../mathematics/Algebra/GroupTheory/BasicGroupTheory/FiniteBooleanStructure/Variantec14e8913e14ac2b/XorTranslationEmbedding.lean/declarations/translation-order-two--e2557ff518c8d0d3a789dd20.md) | 191 | `result-track:e2557ff518c8d0d3a789dd20509f457043838020cac7c10e3e2d6a5eeaf46688` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
