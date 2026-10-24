# Verification target: GRWTSK.Analysis.CharacterProjector.Variante20313c610169b4d6fa59d294dc3ab205a96e7be17cbedf883507d993c807e9f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3c04ef31dd5a0f1df53a9b5dd9264f936db3c2ae",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/CharacterProjector/Variante20313c610169b4d6fa59d294dc3ab205a96e7be17cbedf883507d993c807e9f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/CharacterProjector/Variante20313c610169b4d6fa59d294dc3ab205a96e7be17cbedf883507d993c807e9f.lean/index.md) · [Full source](../../../../mathematics/Analysis/CharacterProjector/Variante20313c610169b4d6fa59d294dc3ab205a96e7be17cbedf883507d993c807e9f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3c04ef31dd5a0f1df53a9b5dd9264f936db3c2ae`.

Source path: `GRWTSK/Analysis/CharacterProjector/Variante20313c610169b4d6fa59d294dc3ab205a96e7be17cbedf883507d993c807e9f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/CharacterProjector/Variante20313c610169b4d6fa59d294dc3ab205a96e7be17cbedf883507d993c807e9f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.Arithmetic.DirichletCharacterProfile` — import line 6; external provider; requires a separately pinned dependency.
- `DAF.Hilbert.Finite` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.CStarAlgebra.Matrix` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.InnerProductSpace.Dual` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FieldSimp` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [CharacterIndex](../../../../mathematics/Analysis/CharacterProjector/Variante20313c610169b4d6fa59d294dc3ab205a96e7be17cbedf883507d993c807e9f.lean/declarations/characterindex--9d2cdecd59e8d3ceb717126f.md) | 34 | `declaration-track:9d2cdecd59e8d3ceb717126fa9ef1e45f188a9244749128186812ffa6f08ebaf` |
| 2 | `instance` | [characterIndexFintype](../../../../mathematics/Analysis/CharacterProjector/Variante20313c610169b4d6fa59d294dc3ab205a96e7be17cbedf883507d993c807e9f.lean/declarations/characterindexfintype--b904ad3659ef5ac7deb85238.md) | 37 | `declaration-track:b904ad3659ef5ac7deb85238470024c10fd22bcc266195ab9316c1c9859ac67c` |
| 3 | `abbrev` | [CharacterHilbert](../../../../mathematics/Analysis/CharacterProjector/Variante20313c610169b4d6fa59d294dc3ab205a96e7be17cbedf883507d993c807e9f.lean/declarations/characterhilbert--476a98b442b5d8ddc8092576.md) | 41 | `declaration-track:476a98b442b5d8ddc80925768d9dcbaf6eb85eb5468a8024b1970e211c78fc23` |
| 4 | `def` | [rightRegularMatrix](../../../../mathematics/Analysis/CharacterProjector/Variante20313c610169b4d6fa59d294dc3ab205a96e7be17cbedf883507d993c807e9f.lean/declarations/rightregularmatrix--296116b4f7c54d630d208b1e.md) | 46 | `declaration-track:296116b4f7c54d630d208b1eb93de00f5a7926acaf8b0b18d49a84653079e700` |
| 5 | `theorem` | [rightRegularMatrix_apply](../../../../mathematics/Analysis/CharacterProjector/Variante20313c610169b4d6fa59d294dc3ab205a96e7be17cbedf883507d993c807e9f.lean/declarations/rightregularmatrix-apply--6e4a7895107042bae6c4e79c.md) | 53 | `result-track:6e4a7895107042bae6c4e79cef6ac3fb7e75bc5c8ae44d115900c57069247666` |
| 6 | `def` | [characterRegularAverageMatrix](../../../../mathematics/Analysis/CharacterProjector/Variante20313c610169b4d6fa59d294dc3ab205a96e7be17cbedf883507d993c807e9f.lean/declarations/characterregularaveragematrix--bc38cc899d48b21be3431a4b.md) | 61 | `declaration-track:bc38cc899d48b21be3431a4bcec74f5fcb89ad1bd4da11c9f60e346d2d8971b5` |
| 7 | `def` | [characterNormalization](../../../../mathematics/Analysis/CharacterProjector/Variante20313c610169b4d6fa59d294dc3ab205a96e7be17cbedf883507d993c807e9f.lean/declarations/characternormalization--42087917f1bc51f469680620.md) | 71 | `declaration-track:42087917f1bc51f469680620cd1c2aa972395f24fc3172f1ca6595b0165f9c57` |
| 8 | `theorem` | [characterIndex_card_pos](../../../../mathematics/Analysis/CharacterProjector/Variante20313c610169b4d6fa59d294dc3ab205a96e7be17cbedf883507d993c807e9f.lean/declarations/characterindex-card-pos--603132295e07329219a23e9c.md) | 74 | `result-track:603132295e07329219a23e9c2cc00130edc9719cec8f1d6609dce87b7e9ad455` |
| 9 | `theorem` | [characterNormalization_nonnegative](../../../../mathematics/Analysis/CharacterProjector/Variante20313c610169b4d6fa59d294dc3ab205a96e7be17cbedf883507d993c807e9f.lean/declarations/characternormalization-nonnegative--04fed8969fda491c61fca84e.md) | 78 | `result-track:04fed8969fda491c61fca84e5a715cd992c1214948357ea3fca392cd847a97fd` |
| 10 | `theorem` | [characterNormalization_sq](../../../../mathematics/Analysis/CharacterProjector/Variante20313c610169b4d6fa59d294dc3ab205a96e7be17cbedf883507d993c807e9f.lean/declarations/characternormalization-sq--3855224a4a255fa4f36b2bb4.md) | 83 | `result-track:3855224a4a255fa4f36b2bb4c081d787dbcde6a91f780efd504455e970d53120` |
| 11 | `def` | [characterVector](../../../../mathematics/Analysis/CharacterProjector/Variante20313c610169b4d6fa59d294dc3ab205a96e7be17cbedf883507d993c807e9f.lean/declarations/charactervector--1787d586f52a71e41ab53e10.md) | 93 | `declaration-track:1787d586f52a71e41ab53e102f561beaa80a8f6dd7e3ccf21389fe07c9b5af43` |
| 12 | `theorem` | [characterVector_apply](../../../../mathematics/Analysis/CharacterProjector/Variante20313c610169b4d6fa59d294dc3ab205a96e7be17cbedf883507d993c807e9f.lean/declarations/charactervector-apply--edee4aacc7893135a0be0831.md) | 99 | `result-track:edee4aacc7893135a0be083131e566a3e522b938d42af3a5e0545f20f0490f5a` |
| 13 | `theorem` | [characterVector_norm_sq](../../../../mathematics/Analysis/CharacterProjector/Variante20313c610169b4d6fa59d294dc3ab205a96e7be17cbedf883507d993c807e9f.lean/declarations/charactervector-norm-sq--313e4ab879a524cc725cf281.md) | 107 | `result-track:313e4ab879a524cc725cf281643483cd736dd8e52e42a69ee55473dbd0144ff1` |
| 14 | `theorem` | [characterVector_norm](../../../../mathematics/Analysis/CharacterProjector/Variante20313c610169b4d6fa59d294dc3ab205a96e7be17cbedf883507d993c807e9f.lean/declarations/charactervector-norm--2e63228350cce432f7ab68f9.md) | 121 | `result-track:2e63228350cce432f7ab68f908db3ded093a80189431076758733a63638747ae` |
| 15 | `theorem` | [conj_character_inv_mul](../../../../mathematics/Analysis/CharacterProjector/Variante20313c610169b4d6fa59d294dc3ab205a96e7be17cbedf883507d993c807e9f.lean/declarations/conj-character-inv-mul--e998a41b40b20ab317b7f583.md) | 128 | `result-track:e998a41b40b20ab317b7f5834f5313310963b64d9d45f8c887c5e4cf07997e38` |
| 16 | `theorem` | [characterRegularAverageMatrix_apply](../../../../mathematics/Analysis/CharacterProjector/Variante20313c610169b4d6fa59d294dc3ab205a96e7be17cbedf883507d993c807e9f.lean/declarations/characterregularaveragematrix-apply--7bd7bfb5eb236722f7e7e3d5.md) | 144 | `result-track:7bd7bfb5eb236722f7e7e3d5e2bbfff6298184683bc83dc55e8ea31dce00d844` |
| 17 | `theorem` | [characterRegularAverageMatrix_eq_outer](../../../../mathematics/Analysis/CharacterProjector/Variante20313c610169b4d6fa59d294dc3ab205a96e7be17cbedf883507d993c807e9f.lean/declarations/characterregularaveragematrix-eq-outer--1055ba8d3b0f289481a44e5d.md) | 173 | `result-track:1055ba8d3b0f289481a44e5dafdd5f17d8f1ab04d3daada7b0363ae600ef7744` |
| 18 | `def` | [characterProjector](../../../../mathematics/Analysis/CharacterProjector/Variante20313c610169b4d6fa59d294dc3ab205a96e7be17cbedf883507d993c807e9f.lean/declarations/characterprojector--7f137c006716f9c5f92c747d.md) | 196 | `declaration-track:7f137c006716f9c5f92c747d63d6de19c8693460344abce2e59465336de63a9d` |
| 19 | `theorem` | [characterProjector_eq_regularAverage](../../../../mathematics/Analysis/CharacterProjector/Variante20313c610169b4d6fa59d294dc3ab205a96e7be17cbedf883507d993c807e9f.lean/declarations/characterprojector-eq-regularaverage--040d5996b6b310864171df6a.md) | 202 | `result-track:040d5996b6b310864171df6ad86d629c7d9a9f1f86d00c5d54b10c25f4a39fe2` |
| 20 | `theorem` | [characterProjector_idempotent](../../../../mathematics/Analysis/CharacterProjector/Variante20313c610169b4d6fa59d294dc3ab205a96e7be17cbedf883507d993c807e9f.lean/declarations/characterprojector-idempotent--bf3dda0db87c17f001f16319.md) | 219 | `result-track:bf3dda0db87c17f001f163190c3921e95d3b369298a586f69b61b77f09ae6fad` |
| 21 | `theorem` | [characterProjector_selfAdjoint](../../../../mathematics/Analysis/CharacterProjector/Variante20313c610169b4d6fa59d294dc3ab205a96e7be17cbedf883507d993c807e9f.lean/declarations/characterprojector-selfadjoint--f6d575b8f2bd0992d919630c.md) | 224 | `result-track:f6d575b8f2bd0992d919630cd3f6307c157cb1dd229efeb8813110f4ec434cf2` |
| 22 | `theorem` | [characterProjector_orthogonal](../../../../mathematics/Analysis/CharacterProjector/Variante20313c610169b4d6fa59d294dc3ab205a96e7be17cbedf883507d993c807e9f.lean/declarations/characterprojector-orthogonal--e488c6d7d12a85d5d7509ca0.md) | 229 | `result-track:e488c6d7d12a85d5d7509ca08edb8023dd8d46b034afd33cd59261b78b84f65d` |
| 23 | `structure` | [CharacterProjector](../../../../mathematics/Analysis/CharacterProjector/Variante20313c610169b4d6fa59d294dc3ab205a96e7be17cbedf883507d993c807e9f.lean/declarations/characterprojector--71b2865626b0caddbbb44bc0.md) | 236 | `declaration-track:71b2865626b0caddbbb44bc05f6774655fbf49f3b78c998b2d229f2600822142` |
| 24 | `def` | [canonicalCharacterProjector](../../../../mathematics/Analysis/CharacterProjector/Variante20313c610169b4d6fa59d294dc3ab205a96e7be17cbedf883507d993c807e9f.lean/declarations/canonicalcharacterprojector--760026c396398ba23d1ce38d.md) | 241 | `declaration-track:760026c396398ba23d1ce38d0a117786f0851cfeb313a7c426db9d69d07a059b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
