# Verification target: GRWTSK.Algebra.UniversalAlgebra.Monoidal.Variantcb985d64c8d64733c65702a43559072b7886784a64ab4361f7a63e4f2443255d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7a40e4cc260f072947cc72b82b3b25147634262b",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Monoidal/Variantcb985d64c8d64733c65702a43559072b7886784a64ab4361f7a63e4f2443255d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Monoidal/Variantcb985d64c8d64733c65702a43559072b7886784a64ab4361f7a63e4f2443255d.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Monoidal/Variantcb985d64c8d64733c65702a43559072b7886784a64ab4361f7a63e4f2443255d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7a40e4cc260f072947cc72b82b3b25147634262b`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Monoidal/Variantcb985d64c8d64733c65702a43559072b7886784a64ab4361f7a63e4f2443255d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Monoidal/Variantcb985d64c8d64733c65702a43559072b7886784a64ab4361f7a63e4f2443255d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.AlgCat.Monoidal` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.BialgCat.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.CoalgCat.Monoidal` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Bialgebra.TensorProduct` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instMonoidalCategoryStruct](../../../../../mathematics/Algebra/UniversalAlgebra/Monoidal/Variantcb985d64c8d64733c65702a43559072b7886784a64ab4361f7a63e4f2443255d.lean/declarations/instmonoidalcategorystruct--7d8a1ee7b2f42c5ebac9202c.md) | 32 | `declaration-track:7d8a1ee7b2f42c5ebac9202c837a1f546091f467bf2e6796974593af296760d5` |
| 2 | `def` | [MonoidalCategory.inducingFunctorData](../../../../../mathematics/Algebra/UniversalAlgebra/Monoidal/Variantcb985d64c8d64733c65702a43559072b7886784a64ab4361f7a63e4f2443255d.lean/declarations/monoidalcategory-inducingfunctordata--da4502533a51c1d6dd06329b.md) | 46 | `declaration-track:da4502533a51c1d6dd06329b271cc66d1e4557865999b318ad842fc2924c91b5` |
| 3 | `instance` | [instMonoidalCategory](../../../../../mathematics/Algebra/UniversalAlgebra/Monoidal/Variantcb985d64c8d64733c65702a43559072b7886784a64ab4361f7a63e4f2443255d.lean/declarations/instmonoidalcategory--29e9ff405d8dc35c10a0116a.md) | 58 | `declaration-track:29e9ff405d8dc35c10a0116a5412d3c25291a099d0d6b4ade5de975efdfefc91` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Monoidal/Variantcb985d64c8d64733c65702a43559072b7886784a64ab4361f7a63e4f2443255d.lean/declarations/instance--cc67768405abdf1569ed814f.md) | 62 | `declaration-track:cc67768405abdf1569ed814fbc0e0dfce3d93de30b5642b76439c1326915279e` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Monoidal/Variantcb985d64c8d64733c65702a43559072b7886784a64ab4361f7a63e4f2443255d.lean/declarations/instance--8e6c258967f6d3af60c5a79c.md) | 67 | `declaration-track:8e6c258967f6d3af60c5a79c3de3ad23ecb4636d21a09a76bd7d20b125e586bc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
