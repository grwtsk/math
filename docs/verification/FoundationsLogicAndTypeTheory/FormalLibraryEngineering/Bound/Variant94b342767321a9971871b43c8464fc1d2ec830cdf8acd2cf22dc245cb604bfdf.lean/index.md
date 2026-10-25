# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Bound.Variant94b342767321a9971871b43c8464fc1d2ec830cdf8acd2cf22dc245cb604bfdf

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d93926ee517e90a51d82000f33e3dd3235561ff6",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bound/Variant94b342767321a9971871b43c8464fc1d2ec830cdf8acd2cf22dc245cb604bfdf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bound/Variant94b342767321a9971871b43c8464fc1d2ec830cdf8acd2cf22dc245cb604bfdf.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bound/Variant94b342767321a9971871b43c8464fc1d2ec830cdf8acd2cf22dc245cb604bfdf.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d93926ee517e90a51d82000f33e3dd3235561ff6`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bound/Variant94b342767321a9971871b43c8464fc1d2ec830cdf8acd2cf22dc245cb604bfdf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bound/Variant94b342767321a9971871b43c8464fc1d2ec830cdf8acd2cf22dc245cb604bfdf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Aesop` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Bound.Attribute` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Lemma` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith.Frontend` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum.Core` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [mul_lt_mul_left_of_pos_of_lt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bound/Variant94b342767321a9971871b43c8464fc1d2ec830cdf8acd2cf22dc245cb604bfdf.lean/declarations/mul-lt-mul-left-of-pos-of-lt--d37aa970d8f61f89630c6fb6.md) | 110 | `result-track:d37aa970d8f61f89630c6fb67ac8e70df34c18deaad9a36c13fe4b17e6019b10` |
| 2 | `lemma` | [mul_lt_mul_right_of_pos_of_lt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bound/Variant94b342767321a9971871b43c8464fc1d2ec830cdf8acd2cf22dc245cb604bfdf.lean/declarations/mul-lt-mul-right-of-pos-of-lt--c825effe68e7791920ee1ec0.md) | 114 | `result-track:c825effe68e7791920ee1ec0cc4c0cccffb7fd37f075a687c0b294dad466c1ed` |
| 3 | `lemma` | [Nat.cast_pos_of_pos](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bound/Variant94b342767321a9971871b43c8464fc1d2ec830cdf8acd2cf22dc245cb604bfdf.lean/declarations/nat-cast-pos-of-pos--d8a0a079069aa0fb26f6517e.md) | 118 | `result-track:d8a0a079069aa0fb26f6517e14cac1aafc821f6420a7aee5e1d19508b6f86fce` |
| 4 | `lemma` | [Nat.one_le_cast_of_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bound/Variant94b342767321a9971871b43c8464fc1d2ec830cdf8acd2cf22dc245cb604bfdf.lean/declarations/nat-one-le-cast-of-le--60816e02316aafe9d1ac02b9.md) | 122 | `result-track:60816e02316aafe9d1ac02b966a2a35e9007d551c87d77213226ba8de39c546f` |
| 5 | `lemma` | [le_max_of_le_left_or_le_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bound/Variant94b342767321a9971871b43c8464fc1d2ec830cdf8acd2cf22dc245cb604bfdf.lean/declarations/le-max-of-le-left-or-le-right--10f3bfb1c26da55cc9d899b0.md) | 176 | `result-track:10f3bfb1c26da55cc9d899b0fb38507923b5589c7034c506d5ec0b332a26c1c5` |
| 6 | `lemma` | [lt_max_of_lt_left_or_lt_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bound/Variant94b342767321a9971871b43c8464fc1d2ec830cdf8acd2cf22dc245cb604bfdf.lean/declarations/lt-max-of-lt-left-or-lt-right--0c3634e7629d38ec36f9bfa8.md) | 177 | `result-track:0c3634e7629d38ec36f9bfa80655ff704a5f8efeddeb5fc25c53e6c18dcb6527` |
| 7 | `lemma` | [min_le_of_left_le_or_right_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bound/Variant94b342767321a9971871b43c8464fc1d2ec830cdf8acd2cf22dc245cb604bfdf.lean/declarations/min-le-of-left-le-or-right-le--128a4edef6b26d13d0fad7c1.md) | 178 | `result-track:128a4edef6b26d13d0fad7c1c2c12d60b4a7d070d46d0a24e4fe98bba7db17f7` |
| 8 | `lemma` | [min_lt_of_left_lt_or_right_lt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bound/Variant94b342767321a9971871b43c8464fc1d2ec830cdf8acd2cf22dc245cb604bfdf.lean/declarations/min-lt-of-left-lt-or-right-lt--8f0a70ff57830243d6218d3d.md) | 179 | `result-track:8f0a70ff57830243d6218d3d93607c8b4d10270d47447cf6a2218887a474b0f3` |
| 9 | `def` | [boundNormNum](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bound/Variant94b342767321a9971871b43c8464fc1d2ec830cdf8acd2cf22dc245cb604bfdf.lean/declarations/boundnormnum--5709cfb61dbff2a343a03d8b.md) | 199 | `declaration-track:5709cfb61dbff2a343a03d8bece1d182c1e374834212c05a6b3dcfb5818b33fa` |
| 10 | `def` | [boundLinarith](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bound/Variant94b342767321a9971871b43c8464fc1d2ec830cdf8acd2cf22dc245cb604bfdf.lean/declarations/boundlinarith--bfe587ce8eff8027a0c22018.md) | 208 | `declaration-track:bfe587ce8eff8027a0c22018de7fda8db37a4115f176cbfcc5b8e54c78d31213` |
| 11 | `def` | [boundConfig](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bound/Variant94b342767321a9971871b43c8464fc1d2ec830cdf8acd2cf22dc245cb604bfdf.lean/declarations/boundconfig--3e518cf24cf423363b019007.md) | 219 | `declaration-track:3e518cf24cf423363b019007e81e26d2c17cdbf700d5f7192ab8f67b1612fba1` |
| 12 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bound/Variant94b342767321a9971871b43c8464fc1d2ec830cdf8acd2cf22dc245cb604bfdf.lean/declarations/syntax--4ea4d07d815bfdbbf007e484.md) | 255 | `declaration-track:4ea4d07d815bfdbbf007e48466f9f00f7f3c5a3c31b8e1866b1f0a02f63cfde3` |
| 13 | `elab_rules` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bound/Variant94b342767321a9971871b43c8464fc1d2ec830cdf8acd2cf22dc245cb604bfdf.lean/declarations/elab-rules--bb100ddc394c3f6b8a46c149.md) | 258 | `declaration-track:bb100ddc394c3f6b8a46c149d13f3ea5d1652b0cc1bc2451b18ce05bc7ad2038` |
| 14 | `macro_rules` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bound/Variant94b342767321a9971871b43c8464fc1d2ec830cdf8acd2cf22dc245cb604bfdf.lean/declarations/macro-rules--3d94decd7ce5dbb3c9165f9b.md) | 264 | `declaration-track:3d94decd7ce5dbb3c9165f9beca07e17e171a5772b1708c69f55ba9a74fb9447` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
