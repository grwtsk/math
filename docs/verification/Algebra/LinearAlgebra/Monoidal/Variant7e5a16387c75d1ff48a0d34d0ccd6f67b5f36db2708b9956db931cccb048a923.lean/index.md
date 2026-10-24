# Verification target: GRWTSK.Algebra.LinearAlgebra.Monoidal.Variant7e5a16387c75d1ff48a0d34d0ccd6f67b5f36db2708b9956db931cccb048a923

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "aaa0323c01b65a41d737777af05b3b200e415020",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Monoidal/Variant7e5a16387c75d1ff48a0d34d0ccd6f67b5f36db2708b9956db931cccb048a923.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Monoidal/Variant7e5a16387c75d1ff48a0d34d0ccd6f67b5f36db2708b9956db931cccb048a923.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Monoidal/Variant7e5a16387c75d1ff48a0d34d0ccd6f67b5f36db2708b9956db931cccb048a923.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `aaa0323c01b65a41d737777af05b3b200e415020`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Monoidal/Variant7e5a16387c75d1ff48a0d34d0ccd6f67b5f36db2708b9956db931cccb048a923.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Monoidal/Variant7e5a16387c75d1ff48a0d34d0ccd6f67b5f36db2708b9956db931cccb048a923.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Monoidal.Transport` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.AlgCat.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.ModuleCat.Monoidal.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.TensorProduct.Basic` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [tensorObj](../../../../../mathematics/Algebra/LinearAlgebra/Monoidal/Variant7e5a16387c75d1ff48a0d34d0ccd6f67b5f36db2708b9956db931cccb048a923.lean/declarations/tensorobj--2a57357e8662dde74ef5caeb.md) | 41 | `declaration-track:2a57357e8662dde74ef5caebf48805843cac4397da48ff4d3dde6845a3145b09` |
| 2 | `abbrev` | [tensorHom](../../../../../mathematics/Algebra/LinearAlgebra/Monoidal/Variant7e5a16387c75d1ff48a0d34d0ccd6f67b5f36db2708b9956db931cccb048a923.lean/declarations/tensorhom--faf56623249237590d15ded4.md) | 46 | `declaration-track:faf56623249237590d15ded40865212b491cb43536e3cb5c190c702fcdfaeef3` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Monoidal/Variant7e5a16387c75d1ff48a0d34d0ccd6f67b5f36db2708b9956db931cccb048a923.lean/declarations/instance--42fb5cca73d529966fc6a3b8.md) | 56 | `declaration-track:42fb5cca73d529966fc6a3b85b859302d5fd36698512c63f98e2430881e63805` |
| 4 | `instance` | [instMonoidalCategory](../../../../../mathematics/Algebra/LinearAlgebra/Monoidal/Variant7e5a16387c75d1ff48a0d34d0ccd6f67b5f36db2708b9956db931cccb048a923.lean/declarations/instmonoidalcategory--3aa6b2767cc5a75fb39645a6.md) | 66 | `declaration-track:3aa6b2767cc5a75fb39645a6df4153b1c50dca788785c66403b351c29575963b` |
| 5 | `example` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Monoidal/Variant7e5a16387c75d1ff48a0d34d0ccd6f67b5f36db2708b9956db931cccb048a923.lean/declarations/example--d2b98654520c84f151ad2f95.md) | 77 | `declaration-track:d2b98654520c84f151ad2f953502c5203e42305e19d7a8100a549961986f5de2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
