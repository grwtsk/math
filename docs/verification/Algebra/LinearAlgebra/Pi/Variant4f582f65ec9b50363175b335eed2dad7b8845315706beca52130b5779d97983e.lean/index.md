# Verification target: GRWTSK.Algebra.LinearAlgebra.Pi.Variant4f582f65ec9b50363175b335eed2dad7b8845315706beca52130b5779d97983e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7733a0f139667af8bfd1f856f52db9b5dccc6e66",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Pi/Variant4f582f65ec9b50363175b335eed2dad7b8845315706beca52130b5779d97983e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variant4f582f65ec9b50363175b335eed2dad7b8845315706beca52130b5779d97983e.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variant4f582f65ec9b50363175b335eed2dad7b8845315706beca52130b5779d97983e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7733a0f139667af8bfd1f856f52db9b5dccc6e66`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Pi/Variant4f582f65ec9b50363175b335eed2dad7b8845315706beca52130b5779d97983e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Pi/Variant4f582f65ec9b50363175b335eed2dad7b8845315706beca52130b5779d97983e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.Pi` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.TensorProduct.Pi` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.TensorProduct.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [piRightHom_one](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variant4f582f65ec9b50363175b335eed2dad7b8845315706beca52130b5779d97983e.lean/declarations/pirighthom-one--6a596fbfd35ec59c6bc1147a.md) | 35 | `result-track:6a596fbfd35ec59c6bc1147a7023c3dc5a68fcef144bb1da3540cc2762a2c1d8` |
| 2 | `lemma` | [piRightHom_mul](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variant4f582f65ec9b50363175b335eed2dad7b8845315706beca52130b5779d97983e.lean/declarations/pirighthom-mul--e3e4c7dc9d554ca980776ccd.md) | 39 | `result-track:e3e4c7dc9d554ca980776ccd9350ecc9212f4cb3b1568da9eb8279b9b906bf03` |
| 3 | `def` | [piRightHom](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variant4f582f65ec9b50363175b335eed2dad7b8845315706beca52130b5779d97983e.lean/declarations/pirighthom--eb220ba2ab2a0083f86197b0.md) | 52 | `declaration-track:eb220ba2ab2a0083f86197b094ed615c78fcb9e81cebbfd6dc6dce59d9817528` |
| 4 | `def` | [Algebra.TensorProduct.piRight](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variant4f582f65ec9b50363175b335eed2dad7b8845315706beca52130b5779d97983e.lean/declarations/algebra-tensorproduct-piright--5e79a878a1fc0142a34b4aef.md) | 58 | `declaration-track:5e79a878a1fc0142a34b4aef6a442d045a5ae7a769b8bd425e35a322d89733bd` |
| 5 | `lemma` | [Algebra.TensorProduct.piRight_tmul](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variant4f582f65ec9b50363175b335eed2dad7b8845315706beca52130b5779d97983e.lean/declarations/algebra-tensorproduct-piright-tmul--5d6c04922ef09bd04d434a0b.md) | 63 | `result-track:5d6c04922ef09bd04d434a0be702f904a0f55925d9f5612b84b85c3c90c4b264` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
