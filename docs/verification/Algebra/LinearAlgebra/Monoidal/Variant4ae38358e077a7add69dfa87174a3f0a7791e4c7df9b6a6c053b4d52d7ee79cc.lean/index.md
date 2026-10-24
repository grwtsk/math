# Verification target: GRWTSK.Algebra.LinearAlgebra.Monoidal.Variant4ae38358e077a7add69dfa87174a3f0a7791e4c7df9b6a6c053b4d52d7ee79cc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d4aee19a8ef255c45ca8549451b12e0bba468e2f",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Monoidal/Variant4ae38358e077a7add69dfa87174a3f0a7791e4c7df9b6a6c053b4d52d7ee79cc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Monoidal/Variant4ae38358e077a7add69dfa87174a3f0a7791e4c7df9b6a6c053b4d52d7ee79cc.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Monoidal/Variant4ae38358e077a7add69dfa87174a3f0a7791e4c7df9b6a6c053b4d52d7ee79cc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d4aee19a8ef255c45ca8549451b12e0bba468e2f`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Monoidal/Variant4ae38358e077a7add69dfa87174a3f0a7791e4c7df9b6a6c053b4d52d7ee79cc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Monoidal/Variant4ae38358e077a7add69dfa87174a3f0a7791e4c7df9b6a6c053b4d52d7ee79cc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.BialgCat.Monoidal` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.HopfAlgCat.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.HopfAlgebra.TensorProduct` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instMonoidalCategoryStruct](../../../../../mathematics/Algebra/LinearAlgebra/Monoidal/Variant4ae38358e077a7add69dfa87174a3f0a7791e4c7df9b6a6c053b4d52d7ee79cc.lean/declarations/instmonoidalcategorystruct--6b4d87c98b1dd2ce3f6578b1.md) | 35 | `declaration-track:6b4d87c98b1dd2ce3f6578b14efe522cfe68ef659922ef062a02eddfd330a3de` |
| 2 | `def` | [MonoidalCategory.inducingFunctorData](../../../../../mathematics/Algebra/LinearAlgebra/Monoidal/Variant4ae38358e077a7add69dfa87174a3f0a7791e4c7df9b6a6c053b4d52d7ee79cc.lean/declarations/monoidalcategory-inducingfunctordata--3091e091919a863b601984f6.md) | 49 | `declaration-track:3091e091919a863b601984f60d66d149d39102fe2a7e0aebb057a7aad3697646` |
| 3 | `instance` | [instMonoidalCategory](../../../../../mathematics/Algebra/LinearAlgebra/Monoidal/Variant4ae38358e077a7add69dfa87174a3f0a7791e4c7df9b6a6c053b4d52d7ee79cc.lean/declarations/instmonoidalcategory--42e712fbb4699d5ea2f67419.md) | 63 | `declaration-track:42e712fbb4699d5ea2f674197e7c3145adf81e3e7e8896db623035ff0b64563c` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Monoidal/Variant4ae38358e077a7add69dfa87174a3f0a7791e4c7df9b6a6c053b4d52d7ee79cc.lean/declarations/instance--aea000e152e992b85ab9658e.md) | 67 | `declaration-track:aea000e152e992b85ab9658eeb87a8597dd2523998ecd80f937d951fa48413db` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
