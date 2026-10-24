# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Bell.Variant3b14238662af06875a62278149c6cd269a4599e584178acf453830850d8fb1c2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6e2dfb37732cdc58a598e118928db4af215e5388",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Bell/Variant3b14238662af06875a62278149c6cd269a4599e584178acf453830850d8fb1c2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Bell/Variant3b14238662af06875a62278149c6cd269a4599e584178acf453830850d8fb1c2.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Bell/Variant3b14238662af06875a62278149c6cd269a4599e584178acf453830850d8fb1c2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6e2dfb37732cdc58a598e118928db4af215e5388`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Bell/Variant3b14238662af06875a62278149c6cd269a4599e584178acf453830850d8fb1c2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Bell/Variant3b14238662af06875a62278149c6cd269a4599e584178acf453830850d8fb1c2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.Choose.Multinomial` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Choose.Mul` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [bell](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Bell/Variant3b14238662af06875a62278149c6cd269a4599e584178acf453830850d8fb1c2.lean/declarations/bell--796d8c9161098c60363c31fb.md) | 53 | `declaration-track:796d8c9161098c60363c31fb112c295f0ffba1e1d6aa98097db7db5fafaf889c` |
| 2 | `theorem` | [bell_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Bell/Variant3b14238662af06875a62278149c6cd269a4599e584178acf453830850d8fb1c2.lean/declarations/bell-zero--7cd3959dbdc73a894d7a18c9.md) | 58 | `result-track:7cd3959dbdc73a894d7a18c9666da45ca9fbec477946c43d13bd2723686fa772` |
| 3 | `theorem` | [bell_mul_eq_lemma](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Bell/Variant3b14238662af06875a62278149c6cd269a4599e584178acf453830850d8fb1c2.lean/declarations/bell-mul-eq-lemma--b828c56768e1a33d89f05f68.md) | 60 | `result-track:b828c56768e1a33d89f05f68f0ea8128596c655be08723ccb569eadd9c7b18f0` |
| 4 | `theorem` | [bell_mul_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Bell/Variant3b14238662af06875a62278149c6cd269a4599e584178acf453830850d8fb1c2.lean/declarations/bell-mul-eq--d8b6051cd26df1967d87ab99.md) | 77 | `result-track:d8b6051cd26df1967d87ab99dd84b94d37d693fb6ab4b46c00db8fb194c30e9d` |
| 5 | `theorem` | [bell_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Bell/Variant3b14238662af06875a62278149c6cd269a4599e584178acf453830850d8fb1c2.lean/declarations/bell-eq--84f37fa576c7b140f9f1c85b.md) | 107 | `result-track:84f37fa576c7b140f9f1c85b6d127d04f063617dd93c9519d656199dcd15e15f` |
| 6 | `def` | [uniformBell](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Bell/Variant3b14238662af06875a62278149c6cd269a4599e584178acf453830850d8fb1c2.lean/declarations/uniformbell--d1016d47d0a71ce02463a112.md) | 129 | `declaration-track:d1016d47d0a71ce02463a1123ec6e50a0ecda95d180b9906698237ed0185ba34` |
| 7 | `theorem` | [uniformBell_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Bell/Variant3b14238662af06875a62278149c6cd269a4599e584178acf453830850d8fb1c2.lean/declarations/uniformbell-eq--f9219cc4d0759a10bee56bc6.md) | 131 | `result-track:f9219cc4d0759a10bee56bc6587c845df3d0646c13c3e01753dfb7f025073fbe` |
| 8 | `theorem` | [uniformBell_zero_left](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Bell/Variant3b14238662af06875a62278149c6cd269a4599e584178acf453830850d8fb1c2.lean/declarations/uniformbell-zero-left--4583910ff01ea3d97783783f.md) | 142 | `result-track:4583910ff01ea3d97783783f4d9b2cfe4b8fa616a4f1d5cbe6b80e4da6287b1b` |
| 9 | `theorem` | [uniformBell_zero_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Bell/Variant3b14238662af06875a62278149c6cd269a4599e584178acf453830850d8fb1c2.lean/declarations/uniformbell-zero-right--9e4ecb0434932f84d3bbc391.md) | 145 | `result-track:9e4ecb0434932f84d3bbc391d1f05d6ffaca2df968738d9cf25bd6f673356ae0` |
| 10 | `theorem` | [uniformBell_succ_left](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Bell/Variant3b14238662af06875a62278149c6cd269a4599e584178acf453830850d8fb1c2.lean/declarations/uniformbell-succ-left--3429da55317279a13b9f15b6.md) | 148 | `result-track:3429da55317279a13b9f15b64603b8adcd8d1d9c260b1d01e9e5dbc0fc7cc2df` |
| 11 | `theorem` | [uniformBell_one_left](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Bell/Variant3b14238662af06875a62278149c6cd269a4599e584178acf453830850d8fb1c2.lean/declarations/uniformbell-one-left--b5bd2666820d3ea956905c31.md) | 152 | `result-track:b5bd2666820d3ea956905c3146ac027f80e7c575ab4dd00328a394cefe36114a` |
| 12 | `theorem` | [uniformBell_one_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Bell/Variant3b14238662af06875a62278149c6cd269a4599e584178acf453830850d8fb1c2.lean/declarations/uniformbell-one-right--bd96a57699a1adabe54b1f14.md) | 156 | `result-track:bd96a57699a1adabe54b1f14435027944b9ba4667acc2ec8464f3341b663d89d` |
| 13 | `theorem` | [uniformBell_mul_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Bell/Variant3b14238662af06875a62278149c6cd269a4599e584178acf453830850d8fb1c2.lean/declarations/uniformbell-mul-eq--52ff307f58860db3df32b7e7.md) | 160 | `result-track:52ff307f58860db3df32b7e741d90336fecabd68d1cc12bde5407c19bc33afae` |
| 14 | `theorem` | [uniformBell_eq_div](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Bell/Variant3b14238662af06875a62278149c6cd269a4599e584178acf453830850d8fb1c2.lean/declarations/uniformbell-eq-div--ad17b426419b18342eb3832e.md) | 172 | `result-track:ad17b426419b18342eb3832ec7e0e8971213654d854a2f117e8b69dfc16c982a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
