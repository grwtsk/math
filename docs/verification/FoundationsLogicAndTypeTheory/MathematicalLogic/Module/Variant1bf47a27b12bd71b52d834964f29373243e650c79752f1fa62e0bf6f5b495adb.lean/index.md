# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Module.Variant1bf47a27b12bd71b52d834964f29373243e650c79752f1fa62e0bf6f5b495adb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2229b0e2331e16527379f5659cca7c11220d82c8",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Module/Variant1bf47a27b12bd71b52d834964f29373243e650c79752f1fa62e0bf6f5b495adb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Module/Variant1bf47a27b12bd71b52d834964f29373243e650c79752f1fa62e0bf6f5b495adb.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Module/Variant1bf47a27b12bd71b52d834964f29373243e650c79752f1fa62e0bf6f5b495adb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2229b0e2331e16527379f5659cca7c11220d82c8`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Module/Variant1bf47a27b12bd71b52d834964f29373243e650c79752f1fa62e0bf6f5b495adb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Module/Variant1bf47a27b12bd71b52d834964f29373243e650c79752f1fa62e0bf6f5b495adb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.KrullDimension.NonZeroDivisors` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Support` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [supportDim](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Module/Variant1bf47a27b12bd71b52d834964f29373243e650c79752f1fa62e0bf6f5b495adb.lean/declarations/supportdim--e78847f9426cbcb4b44979a6.md) | 27 | `declaration-track:e78847f9426cbcb4b44979a68aead84aef1eed3af926e5daa7d9b6b5a6e1a76e` |
| 2 | `lemma` | [supportDim_eq_bot_of_subsingleton](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Module/Variant1bf47a27b12bd71b52d834964f29373243e650c79752f1fa62e0bf6f5b495adb.lean/declarations/supportdim-eq-bot-of-subsingleton--e961c7f22651d4d0d4bb86eb.md) | 30 | `result-track:e961c7f22651d4d0d4bb86ebc550523608254ca8b297f18042c174b2a76997d8` |
| 3 | `lemma` | [supportDim_ne_bot_of_nontrivial](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Module/Variant1bf47a27b12bd71b52d834964f29373243e650c79752f1fa62e0bf6f5b495adb.lean/declarations/supportdim-ne-bot-of-nontrivial--402480928c1f558175669fd0.md) | 33 | `result-track:402480928c1f558175669fd06f7157c83020fc6cc5ad1784f5735e6b6af8ce92` |
| 4 | `lemma` | [supportDim_eq_bot_iff_subsingleton](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Module/Variant1bf47a27b12bd71b52d834964f29373243e650c79752f1fa62e0bf6f5b495adb.lean/declarations/supportdim-eq-bot-iff-subsingleton--1a453054463583fef405c8b8.md) | 36 | `result-track:1a453054463583fef405c8b8c56fdef7611b46533fe2661ba3fe1d483df0ff80` |
| 5 | `lemma` | [supportDim_ne_bot_iff_nontrivial](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Module/Variant1bf47a27b12bd71b52d834964f29373243e650c79752f1fa62e0bf6f5b495adb.lean/declarations/supportdim-ne-bot-iff-nontrivial--005ce288760d0d8df2bdab28.md) | 39 | `result-track:005ce288760d0d8df2bdab2856b13d322f85d29e3a91b3ff43d935af18b03946` |
| 6 | `lemma` | [supportDim_eq_ringKrullDim_quotient_annihilator](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Module/Variant1bf47a27b12bd71b52d834964f29373243e650c79752f1fa62e0bf6f5b495adb.lean/declarations/supportdim-eq-ringkrulldim-quotient-annihilator--0276d364b3172338109ea438.md) | 42 | `result-track:0276d364b3172338109ea438318ab083a255d8b16604b5c0154c83f434fc062a` |
| 7 | `lemma` | [supportDim_self_eq_ringKrullDim](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Module/Variant1bf47a27b12bd71b52d834964f29373243e650c79752f1fa62e0bf6f5b495adb.lean/declarations/supportdim-self-eq-ringkrulldim--730608a57cf5aec99f830665.md) | 47 | `result-track:730608a57cf5aec99f830665d7bf3bef4b8348734274804a350b8cc4daefe90a` |
| 8 | `lemma` | [supportDim_le_ringKrullDim](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Module/Variant1bf47a27b12bd71b52d834964f29373243e650c79752f1fa62e0bf6f5b495adb.lean/declarations/supportdim-le-ringkrulldim--0fae6e1a0f88972280a52de6.md) | 53 | `result-track:0fae6e1a0f88972280a52de6cc8222353bebffe53701580940e8e768d25a1ebf` |
| 9 | `lemma` | [supportDim_quotient_eq_ringKrullDim](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Module/Variant1bf47a27b12bd71b52d834964f29373243e650c79752f1fa62e0bf6f5b495adb.lean/declarations/supportdim-quotient-eq-ringkrulldim--157bb0d7d9ba963983ccfb06.md) | 58 | `result-track:157bb0d7d9ba963983ccfb06292d2ff42cb3ae253c80c773d903518aaa66f1a9` |
| 10 | `lemma` | [supportDim_le_of_injective](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Module/Variant1bf47a27b12bd71b52d834964f29373243e650c79752f1fa62e0bf6f5b495adb.lean/declarations/supportdim-le-of-injective--539ef6e69d19f2218897a9fe.md) | 62 | `result-track:539ef6e69d19f2218897a9fe5bff26cffdb436f3867eda655f76a8c89daefdbe` |
| 11 | `lemma` | [supportDim_le_of_surjective](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Module/Variant1bf47a27b12bd71b52d834964f29373243e650c79752f1fa62e0bf6f5b495adb.lean/declarations/supportdim-le-of-surjective--d0c3dfd65fa3ebe885eb28d0.md) | 67 | `result-track:d0c3dfd65fa3ebe885eb28d008f7dcadf477fc5a746cd0791979e6bae5b186e8` |
| 12 | `lemma` | [supportDim_eq_of_equiv](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Module/Variant1bf47a27b12bd71b52d834964f29373243e650c79752f1fa62e0bf6f5b495adb.lean/declarations/supportdim-eq-of-equiv--346062e767549abb8d3fabe8.md) | 72 | `result-track:346062e767549abb8d3fabe8ce0c576c0f8d7b3721872309f8b059fad200df31` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
