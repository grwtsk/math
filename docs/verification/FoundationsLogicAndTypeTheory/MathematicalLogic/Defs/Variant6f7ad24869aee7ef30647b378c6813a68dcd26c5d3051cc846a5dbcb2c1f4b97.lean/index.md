# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Defs.Variant6f7ad24869aee7ef30647b378c6813a68dcd26c5d3051cc846a5dbcb2c1f4b97

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8a40e0203b5e74d5918173deb9a5149ea02f3060",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant6f7ad24869aee7ef30647b378c6813a68dcd26c5d3051cc846a5dbcb2c1f4b97.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant6f7ad24869aee7ef30647b378c6813a68dcd26c5d3051cc846a5dbcb2c1f4b97.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant6f7ad24869aee7ef30647b378c6813a68dcd26c5d3051cc846a5dbcb2c1f4b97.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8a40e0203b5e74d5918173deb9a5149ea02f3060`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant6f7ad24869aee7ef30647b378c6813a68dcd26c5d3051cc846a5dbcb2c1f4b97.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant6f7ad24869aee7ef30647b378c6813a68dcd26c5d3051cc846a5dbcb2c1f4b97.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finite.Defs` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [Countable](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant6f7ad24869aee7ef30647b378c6813a68dcd26c5d3051cc846a5dbcb2c1f4b97.lean/declarations/countable--476385f2ab98b0e44dc6cc30.md) | 41 | `declaration-track:476385f2ab98b0e44dc6cc3047dd2b017e1700cebf0e72418d2f9ccd169e1993` |
| 2 | `lemma` | [Countable.exists_injective_nat](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant6f7ad24869aee7ef30647b378c6813a68dcd26c5d3051cc846a5dbcb2c1f4b97.lean/declarations/countable-exists-injective-nat--7eefd3c20439dc3ca8a23c64.md) | 47 | `result-track:7eefd3c20439dc3ca8a23c64c2008102a9777abda196425dd4ebf8359d306df9` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant6f7ad24869aee7ef30647b378c6813a68dcd26c5d3051cc846a5dbcb2c1f4b97.lean/declarations/instance--36d0b6ec7929dde823b2f4e0.md) | 51 | `declaration-track:36d0b6ec7929dde823b2f4e0cfb0adf3f782c361b48c16aec816bac9e128818a` |
| 4 | `theorem` | [Function.Injective.countable](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant6f7ad24869aee7ef30647b378c6813a68dcd26c5d3051cc846a5dbcb2c1f4b97.lean/declarations/function-injective-countable--6e2214adf54f59d4540aa79d.md) | 56 | `result-track:6e2214adf54f59d4540aa79db89fb9dd2acf45b7abf4228ec6e4d6d997884e75` |
| 5 | `theorem` | [Function.Surjective.countable](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant6f7ad24869aee7ef30647b378c6813a68dcd26c5d3051cc846a5dbcb2c1f4b97.lean/declarations/function-surjective-countable--7388d8c8fe5e83d77965eeb5.md) | 62 | `result-track:7388d8c8fe5e83d77965eeb5785d70d5dcb849a63a3a9c4f5ba19aafcf464d84` |
| 6 | `theorem` | [exists_surjective_nat](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant6f7ad24869aee7ef30647b378c6813a68dcd26c5d3051cc846a5dbcb2c1f4b97.lean/declarations/exists-surjective-nat--6e5d71790b6b7aa8c59bf452.md) | 67 | `result-track:6e5d71790b6b7aa8c59bf452c3de426f4b1fe32aec0cde9f45377007600dfdb3` |
| 7 | `theorem` | [countable_iff_exists_surjective](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant6f7ad24869aee7ef30647b378c6813a68dcd26c5d3051cc846a5dbcb2c1f4b97.lean/declarations/countable-iff-exists-surjective--f85ae19e655e223713fcb8c9.md) | 72 | `result-track:f85ae19e655e223713fcb8c91fd0ccaff1bc61855b87840e6a85095d55f722e0` |
| 8 | `theorem` | [Countable.of_equiv](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant6f7ad24869aee7ef30647b378c6813a68dcd26c5d3051cc846a5dbcb2c1f4b97.lean/declarations/countable-of-equiv--ff4fabbf38753d63cc15845a.md) | 76 | `result-track:ff4fabbf38753d63cc15845a6a1d92d8a45177bddca7428015a03745f1eadc44` |
| 9 | `theorem` | [Equiv.countable_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant6f7ad24869aee7ef30647b378c6813a68dcd26c5d3051cc846a5dbcb2c1f4b97.lean/declarations/equiv-countable-iff--c4355811c8f9a0e4d58d8bf3.md) | 80 | `result-track:c4355811c8f9a0e4d58d8bf350827e016ee9d3cdda7911b59b566439aa03fd39` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant6f7ad24869aee7ef30647b378c6813a68dcd26c5d3051cc846a5dbcb2c1f4b97.lean/declarations/instance--42d59ba8579338654c334894.md) | 84 | `declaration-track:42d59ba8579338654c3348940d4476c3bcf27c16629f71411f04e91377131da1` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant6f7ad24869aee7ef30647b378c6813a68dcd26c5d3051cc846a5dbcb2c1f4b97.lean/declarations/instance--3470e1aa3de9a9fc755ce101.md) | 92 | `declaration-track:3470e1aa3de9a9fc755ce101972a8517a2fb0af21178ee383a881e3ed6d3527c` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant6f7ad24869aee7ef30647b378c6813a68dcd26c5d3051cc846a5dbcb2c1f4b97.lean/declarations/instance--5cb78524993eb26c4207fcf3.md) | 95 | `declaration-track:5cb78524993eb26c4207fcf32e3923e2594daad73f388cf209dfe4157166bc82` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant6f7ad24869aee7ef30647b378c6813a68dcd26c5d3051cc846a5dbcb2c1f4b97.lean/declarations/instance--0bc06426f6ec114769d18567.md) | 98 | `declaration-track:0bc06426f6ec114769d1856752039d7bc81f34ca6c4c49115887faf4db92ceaf` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant6f7ad24869aee7ef30647b378c6813a68dcd26c5d3051cc846a5dbcb2c1f4b97.lean/declarations/instance--455a6a30c5db00569fc577ad.md) | 102 | `declaration-track:455a6a30c5db00569fc577ad03a48f0baf6188b850ef9bb9ecd0fa7bf3494334` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant6f7ad24869aee7ef30647b378c6813a68dcd26c5d3051cc846a5dbcb2c1f4b97.lean/declarations/instance--b4ce715816b5ee5c097f99b4.md) | 105 | `declaration-track:b4ce715816b5ee5c097f99b436f950eee88234563a679186b09fe9f2936639bc` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant6f7ad24869aee7ef30647b378c6813a68dcd26c5d3051cc846a5dbcb2c1f4b97.lean/declarations/instance--b93087143c267edd5474f307.md) | 109 | `declaration-track:b93087143c267edd5474f3078211e8ed82592847dc2940ff5a45bd2c643a709d` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant6f7ad24869aee7ef30647b378c6813a68dcd26c5d3051cc846a5dbcb2c1f4b97.lean/declarations/instance--989531bdfea3e460aa56418f.md) | 112 | `declaration-track:989531bdfea3e460aa56418fba1695f4dd32603387548eee81ae9ff0d2bf117d` |
| 18 | `instance` | [Bool.countable](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant6f7ad24869aee7ef30647b378c6813a68dcd26c5d3051cc846a5dbcb2c1f4b97.lean/declarations/bool-countable--c3c6987f61579eab2036245c.md) | 115 | `declaration-track:c3c6987f61579eab2036245c8e8e22a26e344594419c216abedc1a84fc49562e` |
| 19 | `instance` | [Prop.countable'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant6f7ad24869aee7ef30647b378c6813a68dcd26c5d3051cc846a5dbcb2c1f4b97.lean/declarations/prop-countable--bdd3124c7b7a0ccd2d13137d.md) | 118 | `declaration-track:bdd3124c7b7a0ccd2d13137d71670cf406e97825665da30da68edcfe6582975d` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant6f7ad24869aee7ef30647b378c6813a68dcd26c5d3051cc846a5dbcb2c1f4b97.lean/declarations/instance--30286d4820cc8c1831401521.md) | 121 | `declaration-track:30286d4820cc8c183140152132e0145267eb6b13c94c2e64009b344341d3e5d8` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant6f7ad24869aee7ef30647b378c6813a68dcd26c5d3051cc846a5dbcb2c1f4b97.lean/declarations/instance--0805d5cbaf0b8cef74001d54.md) | 125 | `declaration-track:0805d5cbaf0b8cef74001d54017021290f0ee032c8224901db9da8a4b6abd835` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
