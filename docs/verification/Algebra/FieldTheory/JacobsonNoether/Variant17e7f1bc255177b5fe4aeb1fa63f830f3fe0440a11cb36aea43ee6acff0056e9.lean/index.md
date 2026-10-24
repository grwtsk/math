# Verification target: GRWTSK.Algebra.FieldTheory.JacobsonNoether.Variant17e7f1bc255177b5fe4aeb1fa63f830f3fe0440a11cb36aea43ee6acff0056e9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "82ffe9d7d65aa18de973789f5386ebf6d5ef0bbb",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/FieldTheory/JacobsonNoether/Variant17e7f1bc255177b5fe4aeb1fa63f830f3fe0440a11cb36aea43ee6acff0056e9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/FieldTheory/JacobsonNoether/Variant17e7f1bc255177b5fe4aeb1fa63f830f3fe0440a11cb36aea43ee6acff0056e9.lean/index.md) · [Full source](../../../../../mathematics/Algebra/FieldTheory/JacobsonNoether/Variant17e7f1bc255177b5fe4aeb1fa63f830f3fe0440a11cb36aea43ee6acff0056e9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `82ffe9d7d65aa18de973789f5386ebf6d5ef0bbb`.

Source path: `GRWTSK/Algebra/FieldTheory/JacobsonNoether/Variant17e7f1bc255177b5fe4aeb1fa63f830f3fe0440a11cb36aea43ee6acff0056e9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/FieldTheory/JacobsonNoether/Variant17e7f1bc255177b5fe4aeb1fa63f830f3fe0440a11cb36aea43ee6acff0056e9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Central.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.CharP.LinearMaps` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.CharP.Subring` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.Conj` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Lie.OfAssociative` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.PurelyInseparable.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [exists_pow_mem_center_of_inseparable](../../../../../mathematics/Algebra/FieldTheory/JacobsonNoether/Variant17e7f1bc255177b5fe4aeb1fa63f830f3fe0440a11cb36aea43ee6acff0056e9.lean/declarations/exists-pow-mem-center-of-inseparable--598e4c32bdf378f055a749cd.md) | 60 | `result-track:598e4c32bdf378f055a749cda020a41241ddd668b51110339a753036845efe32` |
| 2 | `lemma` | [exists_pow_mem_center_of_inseparable'](../../../../../mathematics/Algebra/FieldTheory/JacobsonNoether/Variant17e7f1bc255177b5fe4aeb1fa63f830f3fe0440a11cb36aea43ee6acff0056e9.lean/declarations/exists-pow-mem-center-of-inseparable--d7d2dbf86d356693c63624a5.md) | 73 | `result-track:d7d2dbf86d356693c63624a589fac18a04db1b9b0d26031bddc78d876015320b` |
| 3 | `lemma` | [exist_pow_eq_zero_of_le](../../../../../mathematics/Algebra/FieldTheory/JacobsonNoether/Variant17e7f1bc255177b5fe4aeb1fa63f830f3fe0440a11cb36aea43ee6acff0056e9.lean/declarations/exist-pow-eq-zero-of-le--8ac6026f9718962d28fd9ef1.md) | 86 | `result-track:8ac6026f9718962d28fd9ef105d680c22212caa3c1f45a8b25b939fa2772b3e2` |
| 4 | `theorem` | [exists_separable_and_not_isCentral](../../../../../mathematics/Algebra/FieldTheory/JacobsonNoether/Variant17e7f1bc255177b5fe4aeb1fa63f830f3fe0440a11cb36aea43ee6acff0056e9.lean/declarations/exists-separable-and-not-iscentral--1267918b23e6e8e76e6d9212.md) | 105 | `result-track:1267918b23e6e8e76e6d92126c57836e84f1ad9331783e2783c487cc060744f4` |
| 5 | `theorem` | [exists_separable_and_not_isCentral'](../../../../../mathematics/Algebra/FieldTheory/JacobsonNoether/Variant17e7f1bc255177b5fe4aeb1fa63f830f3fe0440a11cb36aea43ee6acff0056e9.lean/declarations/exists-separable-and-not-iscentral--343f2ff3d75419b917943112.md) | 176 | `result-track:343f2ff3d75419b9179431127238c68ec04f02e732c4124abd3ad8af34919f91` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
