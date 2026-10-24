# Verification target: GRWTSK.Algebra.LinearAlgebra.ContinuousOfBounded.Variant1dfb48e6eabb3eeef98f0856f81d03c6fcd74132c390a41980dc5f59d2e6a880

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ad8917fcfb6cfead1fd0e2a4664dc362f1d60ce2",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/ContinuousOfBounded/Variant1dfb48e6eabb3eeef98f0856f81d03c6fcd74132c390a41980dc5f59d2e6a880.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/ContinuousOfBounded/Variant1dfb48e6eabb3eeef98f0856f81d03c6fcd74132c390a41980dc5f59d2e6a880.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/ContinuousOfBounded/Variant1dfb48e6eabb3eeef98f0856f81d03c6fcd74132c390a41980dc5f59d2e6a880.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ad8917fcfb6cfead1fd0e2a4664dc362f1d60ce2`.

Source path: `GRWTSK/Algebra/LinearAlgebra/ContinuousOfBounded/Variant1dfb48e6eabb3eeef98f0856f81d03c6fcd74132c390a41980dc5f59d2e6a880.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/ContinuousOfBounded/Variant1dfb48e6eabb3eeef98f0856f81d03c6fcd74132c390a41980dc5f59d2e6a880.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.LocallyConvex.Bounded` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.IsROrC.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [LinearMap.clmOfExistsBoundedImage](../../../../../mathematics/Algebra/LinearAlgebra/ContinuousOfBounded/Variant1dfb48e6eabb3eeef98f0856f81d03c6fcd74132c390a41980dc5f59d2e6a880.lean/declarations/linearmap-clmofexistsboundedimage--75fecd7b63c142e885cf8385.md) | 46 | `declaration-track:75fecd7b63c142e885cf83852886fcca1a4d7007f25cbec982fac53e1a63ac82` |
| 2 | `theorem` | [LinearMap.clmOfExistsBoundedImage_coe](../../../../../mathematics/Algebra/LinearAlgebra/ContinuousOfBounded/Variant1dfb48e6eabb3eeef98f0856f81d03c6fcd74132c390a41980dc5f59d2e6a880.lean/declarations/linearmap-clmofexistsboundedimage-coe--a86a743b8daa471160301abc.md) | 75 | `result-track:a86a743b8daa471160301abc00a2f2d2592de5a5d86e35be55d023fea79b6115` |
| 3 | `theorem` | [LinearMap.clmOfExistsBoundedImage_apply](../../../../../mathematics/Algebra/LinearAlgebra/ContinuousOfBounded/Variant1dfb48e6eabb3eeef98f0856f81d03c6fcd74132c390a41980dc5f59d2e6a880.lean/declarations/linearmap-clmofexistsboundedimage-apply--d781c696ea6efe73730d029f.md) | 82 | `result-track:d781c696ea6efe73730d029fe94fc7d16873d1f1a9cba8aa35e3d7b3c2e71e47` |
| 4 | `theorem` | [LinearMap.continuousAt_zero_of_locally_bounded](../../../../../mathematics/Algebra/LinearAlgebra/ContinuousOfBounded/Variant1dfb48e6eabb3eeef98f0856f81d03c6fcd74132c390a41980dc5f59d2e6a880.lean/declarations/linearmap-continuousat-zero-of-locally-bounded--afd7eff1732ee5dd7d5ddc3b.md) | 102 | `result-track:afd7eff1732ee5dd7d5ddc3b1e3c5c909f1207fdca166c410996649508a62589` |
| 5 | `theorem` | [LinearMap.continuous_of_locally_bounded](../../../../../mathematics/Algebra/LinearAlgebra/ContinuousOfBounded/Variant1dfb48e6eabb3eeef98f0856f81d03c6fcd74132c390a41980dc5f59d2e6a880.lean/declarations/linearmap-continuous-of-locally-bounded--5f1afcbee634ef1d1493b10e.md) | 176 | `result-track:5f1afcbee634ef1d1493b10eb4e1c152c90e08bc11b6314ecae2b1881cffc388` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
