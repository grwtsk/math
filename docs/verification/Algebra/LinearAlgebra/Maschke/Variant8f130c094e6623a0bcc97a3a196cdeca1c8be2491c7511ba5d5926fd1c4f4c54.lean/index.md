# Verification target: GRWTSK.Algebra.LinearAlgebra.Maschke.Variant8f130c094e6623a0bcc97a3a196cdeca1c8be2491c7511ba5d5926fd1c4f4c54

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "af3d102b10f32271efe49becb6449938847be38e",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Maschke/Variant8f130c094e6623a0bcc97a3a196cdeca1c8be2491c7511ba5d5926fd1c4f4c54.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Maschke/Variant8f130c094e6623a0bcc97a3a196cdeca1c8be2491c7511ba5d5926fd1c4f4c54.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Maschke/Variant8f130c094e6623a0bcc97a3a196cdeca1c8be2491c7511ba5d5926fd1c4f4c54.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `af3d102b10f32271efe49becb6449938847be38e`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Maschke/Variant8f130c094e6623a0bcc97a3a196cdeca1c8be2491c7511ba5d5926fd1c4f4c54.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Maschke/Variant8f130c094e6623a0bcc97a3a196cdeca1c8be2491c7511ba5d5926fd1c4f4c54.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.TypeTags.Finite` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.MonoidAlgebra.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Basis.VectorSpace` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.SimpleModule.Basic` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [conjugate](../../../../../mathematics/Algebra/LinearAlgebra/Maschke/Variant8f130c094e6623a0bcc97a3a196cdeca1c8be2491c7511ba5d5926fd1c4f4c54.lean/declarations/conjugate--2b18ec844ec616ca54df9b11.md) | 75 | `declaration-track:2b18ec844ec616ca54df9b1111f42e6eb7243d728046eae3dba1af7c9e1bee9f` |
| 2 | `theorem` | [conjugate_apply](../../../../../mathematics/Algebra/LinearAlgebra/Maschke/Variant8f130c094e6623a0bcc97a3a196cdeca1c8be2491c7511ba5d5926fd1c4f4c54.lean/declarations/conjugate-apply--b145672099775a9ebfa2f82d.md) | 78 | `result-track:b145672099775a9ebfa2f82db541beb0b8b4bbba5574472ff80e8f30e7cc79ba` |
| 3 | `theorem` | [conjugate_i](../../../../../mathematics/Algebra/LinearAlgebra/Maschke/Variant8f130c094e6623a0bcc97a3a196cdeca1c8be2491c7511ba5d5926fd1c4f4c54.lean/declarations/conjugate-i--75b5de4e790b3dda86aced65.md) | 86 | `result-track:75b5de4e790b3dda86aced65412f92df4dccb501c80ca3e3ba2983848983811a` |
| 4 | `def` | [sumOfConjugates](../../../../../mathematics/Algebra/LinearAlgebra/Maschke/Variant8f130c094e6623a0bcc97a3a196cdeca1c8be2491c7511ba5d5926fd1c4f4c54.lean/declarations/sumofconjugates--0a4fe16021e95503d476d944.md) | 99 | `declaration-track:0a4fe16021e95503d476d94426d98c6bf139e8e90f6ac9b29ea9e300605cf89a` |
| 5 | `lemma` | [sumOfConjugates_apply](../../../../../mathematics/Algebra/LinearAlgebra/Maschke/Variant8f130c094e6623a0bcc97a3a196cdeca1c8be2491c7511ba5d5926fd1c4f4c54.lean/declarations/sumofconjugates-apply--6b07a52b419818a78a9b1631.md) | 102 | `result-track:6b07a52b419818a78a9b1631fef4e8d9b7dccf3c671e549a2aacf765d172deba` |
| 6 | `def` | [sumOfConjugatesEquivariant](../../../../../mathematics/Algebra/LinearAlgebra/Maschke/Variant8f130c094e6623a0bcc97a3a196cdeca1c8be2491c7511ba5d5926fd1c4f4c54.lean/declarations/sumofconjugatesequivariant--f216e26aec94a26d41834b3d.md) | 107 | `declaration-track:f216e26aec94a26d41834b3d83eb778ca629496cb1201585993b8853f9a51625` |
| 7 | `theorem` | [sumOfConjugatesEquivariant_apply](../../../../../mathematics/Algebra/LinearAlgebra/Maschke/Variant8f130c094e6623a0bcc97a3a196cdeca1c8be2491c7511ba5d5926fd1c4f4c54.lean/declarations/sumofconjugatesequivariant-apply--d1d919cc1c58cce20ec28564.md) | 113 | `result-track:d1d919cc1c58cce20ec28564af4fe5a231b7230b0b236a3e00e65e3d2a5eaa85` |
| 8 | `def` | [equivariantProjection](../../../../../mathematics/Algebra/LinearAlgebra/Maschke/Variant8f130c094e6623a0bcc97a3a196cdeca1c8be2491c7511ba5d5926fd1c4f4c54.lean/declarations/equivariantprojection--082b33f945f94fefc92668ce.md) | 122 | `declaration-track:082b33f945f94fefc92668cec9a59918caca1ec2bc5655a7a0d7adf7eb2853de` |
| 9 | `theorem` | [equivariantProjection_apply](../../../../../mathematics/Algebra/LinearAlgebra/Maschke/Variant8f130c094e6623a0bcc97a3a196cdeca1c8be2491c7511ba5d5926fd1c4f4c54.lean/declarations/equivariantprojection-apply--2f76acc8ad5717911a74c117.md) | 125 | `result-track:2f76acc8ad5717911a74c117e42d69b4ff46c801df6385f7ef15c861c5eac7d8` |
| 10 | `theorem` | [equivariantProjection_condition](../../../../../mathematics/Algebra/LinearAlgebra/Maschke/Variant8f130c094e6623a0bcc97a3a196cdeca1c8be2491c7511ba5d5926fd1c4f4c54.lean/declarations/equivariantprojection-condition--4ecd650c0bb69df7ba6edc7b.md) | 129 | `result-track:4ecd650c0bb69df7ba6edc7b40503ffd7f09d1311737d20d89ac3ecc825fc2c1` |
| 11 | `theorem` | [exists_leftInverse_of_injective](../../../../../mathematics/Algebra/LinearAlgebra/Maschke/Variant8f130c094e6623a0bcc97a3a196cdeca1c8be2491c7511ba5d5926fd1c4f4c54.lean/declarations/exists-leftinverse-of-injective--5ee5241ab03a3ea83566cf74.md) | 150 | `result-track:5ee5241ab03a3ea83566cf7438d812dce885503cae2dc60b3b79267b9f896ea1` |
| 12 | `theorem` | [exists_isCompl](../../../../../mathematics/Algebra/LinearAlgebra/Maschke/Variant8f130c094e6623a0bcc97a3a196cdeca1c8be2491c7511ba5d5926fd1c4f4c54.lean/declarations/exists-iscompl--d6bebb6f7dd76c64a4f1c086.md) | 165 | `result-track:d6bebb6f7dd76c64a4f1c086d20840fe81ec2b04476e2abc73c0da4c2b7d05cf` |
| 13 | `instance` | [complementedLattice](../../../../../mathematics/Algebra/LinearAlgebra/Maschke/Variant8f130c094e6623a0bcc97a3a196cdeca1c8be2491c7511ba5d5926fd1c4f4c54.lean/declarations/complementedlattice--8795fc6a50fc7fef9718ea9f.md) | 172 | `declaration-track:8795fc6a50fc7fef9718ea9f70cbebc7924ba88717e4764ad72e69b0b5bae930` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Maschke/Variant8f130c094e6623a0bcc97a3a196cdeca1c8be2491c7511ba5d5926fd1c4f4c54.lean/declarations/instance--edbcbe1909d1fb1e9cbed9a9.md) | 175 | `declaration-track:edbcbe1909d1fb1e9cbed9a93f68d705d9bf9a471f74be046c4c671fd4d0c31f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
