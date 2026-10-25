# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DivMod.Variant0da1736a17f394df8b4361fe8e4f4240867f6be120ef489ef72e992ed027106f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cec2568c179cb94819a365f6858ac128ccaa9482",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DivMod/Variant0da1736a17f394df8b4361fe8e4f4240867f6be120ef489ef72e992ed027106f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DivMod/Variant0da1736a17f394df8b4361fe8e4f4240867f6be120ef489ef72e992ed027106f.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DivMod/Variant0da1736a17f394df8b4361fe8e4f4240867f6be120ef489ef72e992ed027106f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cec2568c179cb94819a365f6858ac128ccaa9482`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DivMod/Variant0da1736a17f394df8b4361fe8e4f4240867f6be120ef489ef72e992ed027106f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DivMod/Variant0da1736a17f394df8b4361fe8e4f4240867f6be120ef489ef72e992ed027106f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [isInt_ediv_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DivMod/Variant0da1736a17f394df8b4361fe8e4f4240867f6be120ef489ef72e992ed027106f.lean/declarations/isint-ediv-zero--72c43615dd190a05b2da9d14.md) | 35 | `result-track:72c43615dd190a05b2da9d144028e6308f0c30815928b61760badd53b2d1bc3e` |
| 2 | `lemma` | [isInt_ediv](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DivMod/Variant0da1736a17f394df8b4361fe8e4f4240867f6be120ef489ef72e992ed027106f.lean/declarations/isint-ediv--13c627dde2a4b6d25a4fc1ed.md) | 38 | `result-track:13c627dde2a4b6d25a4fc1edb62644f11ebfcdee0903700cd447894741dbb10c` |
| 3 | `lemma` | [isInt_ediv_neg](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DivMod/Variant0da1736a17f394df8b4361fe8e4f4240867f6be120ef489ef72e992ed027106f.lean/declarations/isint-ediv-neg--01c47be89e30e55c76a655fb.md) | 47 | `result-track:01c47be89e30e55c76a655fb7b0c25741649af499462bb6ce1792d28dcd25769` |
| 4 | `lemma` | [isNat_neg_of_isNegNat](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DivMod/Variant0da1736a17f394df8b4361fe8e4f4240867f6be120ef489ef72e992ed027106f.lean/declarations/isnat-neg-of-isnegnat--ef3fc280f78a94bc95a403e2.md) | 50 | `result-track:ef3fc280f78a94bc95a403e266debff6b036ae953620e436051b1f06f4bd9606` |
| 5 | `def` | [evalIntDiv](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DivMod/Variant0da1736a17f394df8b4361fe8e4f4240867f6be120ef489ef72e992ed027106f.lean/declarations/evalintdiv--25a42e61723120f4b4054563.md) | 57 | `declaration-track:25a42e61723120f4b4054563b20b7c87535af1434bcb5a7ef8c4d9c2fadfc155` |
| 6 | `lemma` | [isInt_emod_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DivMod/Variant0da1736a17f394df8b4361fe8e4f4240867f6be120ef489ef72e992ed027106f.lean/declarations/isint-emod-zero--a23a4716b2afa91b56ff9a6d.md) | 98 | `result-track:a23a4716b2afa91b56ff9a6d70fe46c854370274fa5c1d8fa1bb14b8bbbb8f4e` |
| 7 | `lemma` | [isInt_emod](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DivMod/Variant0da1736a17f394df8b4361fe8e4f4240867f6be120ef489ef72e992ed027106f.lean/declarations/isint-emod--f65f7b4d8d52c0c61e417217.md) | 101 | `result-track:f65f7b4d8d52c0c61e417217408bc5a6121ad33a2442994c380b04c7b820bfd2` |
| 8 | `lemma` | [isInt_emod_neg](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DivMod/Variant0da1736a17f394df8b4361fe8e4f4240867f6be120ef489ef72e992ed027106f.lean/declarations/isint-emod-neg--7cec3ef68ea323d2994876b8.md) | 109 | `result-track:7cec3ef68ea323d2994876b8f5532d0869f765fb1ef5e5337a06ab546c599514` |
| 9 | `def` | [evalIntMod.go](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DivMod/Variant0da1736a17f394df8b4361fe8e4f4240867f6be120ef489ef72e992ed027106f.lean/declarations/evalintmod-go--869843474c89fbeb811adac8.md) | 113 | `declaration-track:869843474c89fbeb811adac8bb226c237662788f250c97a4e0643ae5fe1cbbf4` |
| 10 | `def` | [evalIntMod](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DivMod/Variant0da1736a17f394df8b4361fe8e4f4240867f6be120ef489ef72e992ed027106f.lean/declarations/evalintmod--fa218b1c9eefbebcfe9d3fbb.md) | 149 | `declaration-track:fa218b1c9eefbebcfe9d3fbb66eca1d38f5c7e874fb8cfccaf060ba9958e762c` |
| 11 | `theorem` | [isInt_dvd_true](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DivMod/Variant0da1736a17f394df8b4361fe8e4f4240867f6be120ef489ef72e992ed027106f.lean/declarations/isint-dvd-true--1b42b3c6b7b1bc19c2bc43ef.md) | 159 | `result-track:1b42b3c6b7b1bc19c2bc43efbe2fd9accc176cd934fd72245ad88c01e1b5e68d` |
| 12 | `theorem` | [isInt_dvd_false](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DivMod/Variant0da1736a17f394df8b4361fe8e4f4240867f6be120ef489ef72e992ed027106f.lean/declarations/isint-dvd-false--8aac5c99627da0ae67f309ad.md) | 163 | `result-track:8aac5c99627da0ae67f309ad8ad26441752137a574d7335dc32b299013657a83` |
| 13 | `def` | [evalIntDvd](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DivMod/Variant0da1736a17f394df8b4361fe8e4f4240867f6be120ef489ef72e992ed027106f.lean/declarations/evalintdvd--f049709775a4dae54cab6c0d.md) | 170 | `declaration-track:f049709775a4dae54cab6c0de6b79a112ce90cac1147afae0fcb72eedfedd336` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
