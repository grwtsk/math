# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Option.Variant9e021fd2e25adc521eef73116c7c3fce717a5643f811dae8771a9cc29d433559

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0b58ddaea3c141bce5831f94bfc631a3461fe2d0",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Variant9e021fd2e25adc521eef73116c7c3fce717a5643f811dae8771a9cc29d433559.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Variant9e021fd2e25adc521eef73116c7c3fce717a5643f811dae8771a9cc29d433559.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Variant9e021fd2e25adc521eef73116c7c3fce717a5643f811dae8771a9cc29d433559.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0b58ddaea3c141bce5831f94bfc631a3461fe2d0`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Variant9e021fd2e25adc521eef73116c7c3fce717a5643f811dae8771a9cc29d433559.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Variant9e021fd2e25adc521eef73116c7c3fce717a5643f811dae8771a9cc29d433559.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Fintype.Option` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Perm.Sign` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Equiv.optionCongr_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Variant9e021fd2e25adc521eef73116c7c3fce717a5643f811dae8771a9cc29d433559.lean/declarations/equiv-optioncongr-one--434ded4bf2c5c86347c03469.md) | 17 | `result-track:434ded4bf2c5c86347c03469540365f6c70ff8a39efb1ef52e7d9af6fcb2432b` |
| 2 | `theorem` | [Equiv.optionCongr_swap](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Variant9e021fd2e25adc521eef73116c7c3fce717a5643f811dae8771a9cc29d433559.lean/declarations/equiv-optioncongr-swap--5a34fe35f81ad6f5e3a75252.md) | 21 | `result-track:5a34fe35f81ad6f5e3a752522b96b3962fb4c94f2e6541bb1611b6b9e52039a5` |
| 3 | `theorem` | [Equiv.optionCongr_sign](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Variant9e021fd2e25adc521eef73116c7c3fce717a5643f811dae8771a9cc29d433559.lean/declarations/equiv-optioncongr-sign--1b871ceb9c5112bd95a187c6.md) | 31 | `result-track:1b871ceb9c5112bd95a187c6af8fa03fbb560d803c03b81cba03ecdb3ae211d9` |
| 4 | `theorem` | [map_equiv_removeNone](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Variant9e021fd2e25adc521eef73116c7c3fce717a5643f811dae8771a9cc29d433559.lean/declarations/map-equiv-removenone--2a0fbf286ffaa1c7d3ddefd1.md) | 39 | `result-track:2a0fbf286ffaa1c7d3ddefd169b40eb11d729e40dbffffd8438994ed667cbee9` |
| 5 | `def` | [Equiv.Perm.decomposeOption](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Variant9e021fd2e25adc521eef73116c7c3fce717a5643f811dae8771a9cc29d433559.lean/declarations/equiv-perm-decomposeoption--0da5c427f1f92ea1df95df9a.md) | 56 | `declaration-track:0da5c427f1f92ea1df95df9a674fe465c85f0b20a1fa72f805a6132cef08165b` |
| 6 | `theorem` | [Equiv.Perm.decomposeOption_symm_of_none_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Variant9e021fd2e25adc521eef73116c7c3fce717a5643f811dae8771a9cc29d433559.lean/declarations/equiv-perm-decomposeoption-symm-of-none-apply--b0b4f612bee8b1539da41667.md) | 66 | `result-track:b0b4f612bee8b1539da41667459abb7a4a56ee0815d980563cf536f4d997ee5b` |
| 7 | `theorem` | [Equiv.Perm.decomposeOption_symm_sign](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Variant9e021fd2e25adc521eef73116c7c3fce717a5643f811dae8771a9cc29d433559.lean/declarations/equiv-perm-decomposeoption-symm-sign--15655170cb922a8e221f063d.md) | 69 | `result-track:15655170cb922a8e221f063de1177e6a6edd4d90e8c1f853820726a59abb72a9` |
| 8 | `theorem` | [Finset.univ_perm_option](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Variant9e021fd2e25adc521eef73116c7c3fce717a5643f811dae8771a9cc29d433559.lean/declarations/finset-univ-perm-option--c2edb644f43d9905aaf978cd.md) | 74 | `result-track:c2edb644f43d9905aaf978cdacc00ccb8b5279375cf7584a6d70c813e1f70d39` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
