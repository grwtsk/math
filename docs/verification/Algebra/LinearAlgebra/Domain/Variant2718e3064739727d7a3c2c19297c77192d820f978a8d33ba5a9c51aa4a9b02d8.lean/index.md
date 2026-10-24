# Verification target: GRWTSK.Algebra.LinearAlgebra.Domain.Variant2718e3064739727d7a3c2c19297c77192d820f978a8d33ba5a9c51aa4a9b02d8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7f2fcab9343cbc5da42cec26a7376b0e038749fe",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Domain/Variant2718e3064739727d7a3c2c19297c77192d820f978a8d33ba5a9c51aa4a9b02d8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Domain/Variant2718e3064739727d7a3c2c19297c77192d820f978a8d33ba5a9c51aa4a9b02d8.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Domain/Variant2718e3064739727d7a3c2c19297c77192d820f978a8d33ba5a9c51aa4a9b02d8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7f2fcab9343cbc5da42cec26a7376b0e038749fe`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Domain/Variant2718e3064739727d7a3c2c19297c77192d820f978a8d33ba5a9c51aa4a9b02d8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Domain/Variant2718e3064739727d7a3c2c19297c77192d820f978a8d33ba5a9c51aa4a9b02d8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Basis.VectorSpace` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Flat.Localization` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [TensorProduct.map_injective_of_flat_flat_of_isDomain](../../../../../mathematics/Algebra/LinearAlgebra/Domain/Variant2718e3064739727d7a3c2c19297c77192d820f978a8d33ba5a9c51aa4a9b02d8.lean/declarations/tensorproduct-map-injective-of-flat-flat-of-isdomain--2918f4a6a4f40e7dbc9d1be6.md) | 36 | `result-track:2918f4a6a4f40e7dbc9d1be63524e8fdfbe97299357a4f8e9e477ebd346b97f5` |
| 2 | `lemma` | [LinearIndependent.tmul_of_isDomain](../../../../../mathematics/Algebra/LinearAlgebra/Domain/Variant2718e3064739727d7a3c2c19297c77192d820f978a8d33ba5a9c51aa4a9b02d8.lean/declarations/linearindependent-tmul-of-isdomain--2aeb6acc0925dfc981db5794.md) | 66 | `result-track:2aeb6acc0925dfc981db57941ea99db59f8721d9cbb8ceff7a9f5b1362b2d9fa` |
| 3 | `lemma` | [LinearIndepOn.tmul_of_isDomain](../../../../../mathematics/Algebra/LinearAlgebra/Domain/Variant2718e3064739727d7a3c2c19297c77192d820f978a8d33ba5a9c51aa4a9b02d8.lean/declarations/linearindepon-tmul-of-isdomain--5048c330fbba6d6b7ee5b2b1.md) | 79 | `result-track:5048c330fbba6d6b7ee5b2b187915c9074cdc74e0e05b7ea12b1d7b4a5574373` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
