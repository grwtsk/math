# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Bell.Variant612b283055706c745c80bd8b147c5e9fc6c4881639d4e8471fa055f21f62b8b8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ba9a97116a36946aeedae98f5c65aff0c234bd0a",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Bell/Variant612b283055706c745c80bd8b147c5e9fc6c4881639d4e8471fa055f21f62b8b8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Bell/Variant612b283055706c745c80bd8b147c5e9fc6c4881639d4e8471fa055f21f62b8b8.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Bell/Variant612b283055706c745c80bd8b147c5e9fc6c4881639d4e8471fa055f21f62b8b8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ba9a97116a36946aeedae98f5c65aff0c234bd0a`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Bell/Variant612b283055706c745c80bd8b147c5e9fc6c4881639d4e8471fa055f21f62b8b8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Bell/Variant612b283055706c745c80bd8b147c5e9fc6c4881639d4e8471fa055f21f62b8b8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.Choose.Multinomial` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Choose.Mul` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [bell](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Bell/Variant612b283055706c745c80bd8b147c5e9fc6c4881639d4e8471fa055f21f62b8b8.lean/declarations/bell--4cfa7cae8315cc23d3826e10.md) | 45 | `declaration-track:4cfa7cae8315cc23d3826e1054243743ebd4426c772cb2e59350139bfb187b92` |
| 2 | `theorem` | [bell_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Bell/Variant612b283055706c745c80bd8b147c5e9fc6c4881639d4e8471fa055f21f62b8b8.lean/declarations/bell-zero--d43fa00f23a671d4956e1cd7.md) | 50 | `result-track:d43fa00f23a671d4956e1cd76e3f6e85046386f97771e297f8203dace1ad8029` |
| 3 | `theorem` | [bell_mul_eq_lemma](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Bell/Variant612b283055706c745c80bd8b147c5e9fc6c4881639d4e8471fa055f21f62b8b8.lean/declarations/bell-mul-eq-lemma--99fa2cd887275d38ac5aa155.md) | 52 | `result-track:99fa2cd887275d38ac5aa155ec95fbe60827cad258540f335a0cb855ccbd5407` |
| 4 | `theorem` | [bell_mul_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Bell/Variant612b283055706c745c80bd8b147c5e9fc6c4881639d4e8471fa055f21f62b8b8.lean/declarations/bell-mul-eq--781f56a2194683bb53489ede.md) | 69 | `result-track:781f56a2194683bb53489ede494c65e877111b5ef9130f0071efb7c02842e141` |
| 5 | `theorem` | [bell_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Bell/Variant612b283055706c745c80bd8b147c5e9fc6c4881639d4e8471fa055f21f62b8b8.lean/declarations/bell-eq--76f9665e2e479ec4ca686082.md) | 99 | `result-track:76f9665e2e479ec4ca6860829169720d0b0afe9261cd54a8776027f3d478c767` |
| 6 | `def` | [uniformBell](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Bell/Variant612b283055706c745c80bd8b147c5e9fc6c4881639d4e8471fa055f21f62b8b8.lean/declarations/uniformbell--e6a349370a9d922d6352396d.md) | 121 | `declaration-track:e6a349370a9d922d6352396d9af7941c4984e151405b7e93b3d86ec4411fc1a3` |
| 7 | `theorem` | [uniformBell_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Bell/Variant612b283055706c745c80bd8b147c5e9fc6c4881639d4e8471fa055f21f62b8b8.lean/declarations/uniformbell-eq--ef788db20194c44857b76370.md) | 123 | `result-track:ef788db20194c44857b76370eec9ab67aebbf62b17cf738fd2cccac2b944008a` |
| 8 | `theorem` | [uniformBell_zero_left](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Bell/Variant612b283055706c745c80bd8b147c5e9fc6c4881639d4e8471fa055f21f62b8b8.lean/declarations/uniformbell-zero-left--6b46fedd624cf9615c59537a.md) | 134 | `result-track:6b46fedd624cf9615c59537a2d9ac790f6c08c985242cacbb430061d63f45b65` |
| 9 | `theorem` | [uniformBell_zero_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Bell/Variant612b283055706c745c80bd8b147c5e9fc6c4881639d4e8471fa055f21f62b8b8.lean/declarations/uniformbell-zero-right--4cd8d598a35af48391f83d3c.md) | 137 | `result-track:4cd8d598a35af48391f83d3c6329d35155000babec81bc848b08017c6928eb99` |
| 10 | `theorem` | [uniformBell_succ_left](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Bell/Variant612b283055706c745c80bd8b147c5e9fc6c4881639d4e8471fa055f21f62b8b8.lean/declarations/uniformbell-succ-left--6e038306b20b9d613d2aa942.md) | 140 | `result-track:6e038306b20b9d613d2aa9420f97f1b13d6006f10c2f5c7d69c5a8be1c5545cf` |
| 11 | `theorem` | [uniformBell_one_left](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Bell/Variant612b283055706c745c80bd8b147c5e9fc6c4881639d4e8471fa055f21f62b8b8.lean/declarations/uniformbell-one-left--58de9d894603db6b8bcf00dc.md) | 144 | `result-track:58de9d894603db6b8bcf00dc85d11d7e1b9a01d0eb1ed5c23ec1240bef44c276` |
| 12 | `theorem` | [uniformBell_one_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Bell/Variant612b283055706c745c80bd8b147c5e9fc6c4881639d4e8471fa055f21f62b8b8.lean/declarations/uniformbell-one-right--0abe966eb8380c2c44a5515c.md) | 148 | `result-track:0abe966eb8380c2c44a5515c86e0b1f26f334cd29f3275ae1bf8530f87eec4fe` |
| 13 | `theorem` | [uniformBell_mul_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Bell/Variant612b283055706c745c80bd8b147c5e9fc6c4881639d4e8471fa055f21f62b8b8.lean/declarations/uniformbell-mul-eq--475ce89a261c3e412902bee9.md) | 152 | `result-track:475ce89a261c3e412902bee9f5b4f1a378478a59e33f891b9acb5ff01f0d3fc7` |
| 14 | `theorem` | [uniformBell_eq_div](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Bell/Variant612b283055706c745c80bd8b147c5e9fc6c4881639d4e8471fa055f21f62b8b8.lean/declarations/uniformbell-eq-div--76fb9ac30e153726271ee534.md) | 164 | `result-track:76fb9ac30e153726271ee5348bf609db9204718dd383b1b318eecf4be910ab36` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
