# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Cardinality.Variant62599a9a04b4aeec02910eff488dfe6280e4d772a01abb251ebfdb48fd178eea

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "eef75eac83d8f86952edac058391ba056159a41e",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Cardinality/Variant62599a9a04b4aeec02910eff488dfe6280e4d772a01abb251ebfdb48fd178eea.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/Cardinality/Variant62599a9a04b4aeec02910eff488dfe6280e4d772a01abb251ebfdb48fd178eea.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/Cardinality/Variant62599a9a04b4aeec02910eff488dfe6280e4d772a01abb251ebfdb48fd178eea.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `eef75eac83d8f86952edac058391ba056159a41e`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Cardinality/Variant62599a9a04b4aeec02910eff488dfe6280e4d772a01abb251ebfdb48fd178eea.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Cardinality/Variant62599a9a04b4aeec02910eff488dfe6280e4d772a01abb251ebfdb48fd178eea.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Polynomial.Cardinal` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Polynomial.Roots` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Algebraic.Defs` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [lift_cardinalMk_le_sigma_polynomial](../../../../../mathematics/Algebra/CommutativeAlgebra/Cardinality/Variant62599a9a04b4aeec02910eff488dfe6280e4d772a01abb251ebfdb48fd178eea.lean/declarations/lift-cardinalmk-le-sigma-polynomial--19d0e9e6b393df215f5e798f.md) | 28 | `result-track:19d0e9e6b393df215f5e798f69cfb978cf4585c474e0453de82a9350893b2b2e` |
| 2 | `theorem` | [lift_cardinalMk_le_max](../../../../../mathematics/Algebra/CommutativeAlgebra/Cardinality/Variant62599a9a04b4aeec02910eff488dfe6280e4d772a01abb251ebfdb48fd178eea.lean/declarations/lift-cardinalmk-le-max--797b2a57d06691a5527f5d69.md) | 45 | `result-track:797b2a57d06691a5527f5d695ab57b66bd24e3aec367a2a50235f75115e44f68` |
| 3 | `theorem` | [cardinalMk_le_sigma_polynomial](../../../../../mathematics/Algebra/CommutativeAlgebra/Cardinality/Variant62599a9a04b4aeec02910eff488dfe6280e4d772a01abb251ebfdb48fd178eea.lean/declarations/cardinalmk-le-sigma-polynomial--b541c543b991be79fc7f81be.md) | 61 | `result-track:b541c543b991be79fc7f81be8dd4f24bcd73dcc2e5c9d79a9198f9b4a3a00abe` |
| 4 | `theorem` | [cardinalMk_le_max](../../../../../mathematics/Algebra/CommutativeAlgebra/Cardinality/Variant62599a9a04b4aeec02910eff488dfe6280e4d772a01abb251ebfdb48fd178eea.lean/declarations/cardinalmk-le-max--6979d5cf3f110d1d850e08b9.md) | 71 | `result-track:6979d5cf3f110d1d850e08b9c5d89e791771fdd5dfb9fc6fdcfffc478c7cf19b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
