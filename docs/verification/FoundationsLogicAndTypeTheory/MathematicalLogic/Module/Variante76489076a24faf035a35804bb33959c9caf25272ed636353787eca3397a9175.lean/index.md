# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Module.Variante76489076a24faf035a35804bb33959c9caf25272ed636353787eca3397a9175

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ca518e6c713b620f21f33323989f8ae4a390fbc7",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Module/Variante76489076a24faf035a35804bb33959c9caf25272ed636353787eca3397a9175.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Module/Variante76489076a24faf035a35804bb33959c9caf25272ed636353787eca3397a9175.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Module/Variante76489076a24faf035a35804bb33959c9caf25272ed636353787eca3397a9175.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ca518e6c713b620f21f33323989f8ae4a390fbc7`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Module/Variante76489076a24faf035a35804bb33959c9caf25272ed636353787eca3397a9175.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Module/Variante76489076a24faf035a35804bb33959c9caf25272ed636353787eca3397a9175.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.KrullDimension.NonZeroDivisors` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Support` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [supportDim](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Module/Variante76489076a24faf035a35804bb33959c9caf25272ed636353787eca3397a9175.lean/declarations/supportdim--44330db2aac0c8a322dd03ef.md) | 35 | `declaration-track:44330db2aac0c8a322dd03ef205e7d93b9381bc4d02aea005933bdba3294d06e` |
| 2 | `lemma` | [supportDim_eq_bot_of_subsingleton](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Module/Variante76489076a24faf035a35804bb33959c9caf25272ed636353787eca3397a9175.lean/declarations/supportdim-eq-bot-of-subsingleton--372e783d2c01fb3eab10516f.md) | 38 | `result-track:372e783d2c01fb3eab10516fced1cff1ec43e614b8784368a012eb39ccce795a` |
| 3 | `lemma` | [supportDim_ne_bot_of_nontrivial](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Module/Variante76489076a24faf035a35804bb33959c9caf25272ed636353787eca3397a9175.lean/declarations/supportdim-ne-bot-of-nontrivial--4b2d341ee6a0ec04ef34e60f.md) | 41 | `result-track:4b2d341ee6a0ec04ef34e60f6bcdf36dcddbbc897f6ee92af7688f43318b1f07` |
| 4 | `lemma` | [supportDim_eq_bot_iff_subsingleton](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Module/Variante76489076a24faf035a35804bb33959c9caf25272ed636353787eca3397a9175.lean/declarations/supportdim-eq-bot-iff-subsingleton--267a9f3776073ffa6b6ae714.md) | 44 | `result-track:267a9f3776073ffa6b6ae714d85be95393c18fdf1762d82e17dbcc86a8c3719a` |
| 5 | `lemma` | [supportDim_ne_bot_iff_nontrivial](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Module/Variante76489076a24faf035a35804bb33959c9caf25272ed636353787eca3397a9175.lean/declarations/supportdim-ne-bot-iff-nontrivial--7fc7bef71ea7e6c10df2a476.md) | 47 | `result-track:7fc7bef71ea7e6c10df2a476a8fc28af25f03e3d4cfaf84451c9f790f26d6cc4` |
| 6 | `lemma` | [supportDim_eq_ringKrullDim_quotient_annihilator](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Module/Variante76489076a24faf035a35804bb33959c9caf25272ed636353787eca3397a9175.lean/declarations/supportdim-eq-ringkrulldim-quotient-annihilator--a080d09e50c5218a49bdeca4.md) | 50 | `result-track:a080d09e50c5218a49bdeca4721117726a18005ff2da758b2e90b2f4ce474852` |
| 7 | `lemma` | [supportDim_self_eq_ringKrullDim](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Module/Variante76489076a24faf035a35804bb33959c9caf25272ed636353787eca3397a9175.lean/declarations/supportdim-self-eq-ringkrulldim--30c672eb091bed23cbe16518.md) | 55 | `result-track:30c672eb091bed23cbe16518ece3f83be9d69c83ad2acf9548f16ad71ff11cf8` |
| 8 | `lemma` | [supportDim_le_ringKrullDim](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Module/Variante76489076a24faf035a35804bb33959c9caf25272ed636353787eca3397a9175.lean/declarations/supportdim-le-ringkrulldim--a3c4ecf9c86e1d8f57ffc851.md) | 61 | `result-track:a3c4ecf9c86e1d8f57ffc85152dbfedf057a2a3b00199588e580c807813d526f` |
| 9 | `lemma` | [supportDim_quotient_eq_ringKrullDim](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Module/Variante76489076a24faf035a35804bb33959c9caf25272ed636353787eca3397a9175.lean/declarations/supportdim-quotient-eq-ringkrulldim--fbf0696f1bd3ba9d67f17226.md) | 66 | `result-track:fbf0696f1bd3ba9d67f1722692ff477bf456de0c7496b87aeb3696af22282c26` |
| 10 | `lemma` | [supportDim_le_of_injective](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Module/Variante76489076a24faf035a35804bb33959c9caf25272ed636353787eca3397a9175.lean/declarations/supportdim-le-of-injective--45416f628dea8b4ff7391d94.md) | 70 | `result-track:45416f628dea8b4ff7391d944e9b4eaf8fc036a28f765cd298663a6cd8dcc15b` |
| 11 | `lemma` | [supportDim_le_of_surjective](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Module/Variante76489076a24faf035a35804bb33959c9caf25272ed636353787eca3397a9175.lean/declarations/supportdim-le-of-surjective--8917432ae1340ab3b3a21c44.md) | 75 | `result-track:8917432ae1340ab3b3a21c44091c5cdb7b9ed44a5beb5a771a9953a838a66aa0` |
| 12 | `lemma` | [supportDim_eq_of_equiv](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Module/Variante76489076a24faf035a35804bb33959c9caf25272ed636353787eca3397a9175.lean/declarations/supportdim-eq-of-equiv--95393945687db59247778c8e.md) | 80 | `result-track:95393945687db59247778c8e10c640729b5f438cd59f2cf448953db776f94f63` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
