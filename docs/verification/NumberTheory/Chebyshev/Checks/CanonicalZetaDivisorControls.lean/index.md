# Verification target: GRWTSK.NumberTheory.Chebyshev.Checks.CanonicalZetaDivisorControls

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "83319bde85c44ef6faa1b4ebf4c02ec6c0098608",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Chebyshev/Checks/CanonicalZetaDivisorControls.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Chebyshev/Checks/CanonicalZetaDivisorControls.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Chebyshev/Checks/CanonicalZetaDivisorControls.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `83319bde85c44ef6faa1b4ebf4c02ec6c0098608`.

Source path: `GRWTSK/NumberTheory/Chebyshev/Checks/CanonicalZetaDivisorControls.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Chebyshev/Checks/CanonicalZetaDivisorControls.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Chebyshev.CanonicalZetaTent`](../../../../../mathematics/NumberTheory/Chebyshev/CanonicalZetaTent.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.ZeroExclusions`](../../../../../mathematics/NumberTheory/Zeta/Riemann/ZeroExclusions.lean/index.md) — import line 5; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [trivial_point_excluded](../../../../../mathematics/NumberTheory/Chebyshev/Checks/CanonicalZetaDivisorControls.lean/declarations/trivial-point-excluded--344b0397b92312a1409cd9c0.md) | 19 | `result-track:344b0397b92312a1409cd9c004f19aaaad0550ee87644c494f113490f25ef06d` |
| 2 | `theorem` | [pole_point_excluded](../../../../../mathematics/NumberTheory/Chebyshev/Checks/CanonicalZetaDivisorControls.lean/declarations/pole-point-excluded--23f0d0b2c821bc7343432982.md) | 23 | `result-track:23f0d0b2c821bc73434329829150eef7aaec2b41d032bc6badf92c5bddfb5e3c` |
| 3 | `theorem` | [canonical_weight_not_zero](../../../../../mathematics/NumberTheory/Chebyshev/Checks/CanonicalZetaDivisorControls.lean/declarations/canonical-weight-not-zero--2b1bc24067604c2583144109.md) | 26 | `result-track:2b1bc24067604c258314410915065ab62b8cd50dbabd5f80f049c7fedf06ce5b` |
| 4 | `theorem` | [boundary_atom_retained](../../../../../mathematics/NumberTheory/Chebyshev/Checks/CanonicalZetaDivisorControls.lean/declarations/boundary-atom-retained--31aa4a2c6133690f4978b338.md) | 30 | `result-track:31aa4a2c6133690f4978b338f93e5fd3394334a1a630b046ea521d8915ded46e` |
| 5 | `theorem` | [negative_cutoff_empty](../../../../../mathematics/NumberTheory/Chebyshev/Checks/CanonicalZetaDivisorControls.lean/declarations/negative-cutoff-empty--a381d12b314f43f0e823512b.md) | 34 | `result-track:a381d12b314f43f0e823512bae2857bb399a6c4ed35030283dd64010dd9f4a98` |
| 6 | `theorem` | [infinite_order_conversion_control](../../../../../mathematics/NumberTheory/Chebyshev/Checks/CanonicalZetaDivisorControls.lean/declarations/infinite-order-conversion-control--68a5be63b0aed10c08d658ea.md) | 39 | `result-track:68a5be63b0aed10c08d658eab633870c97494b3948363356e90389d82000c055` |
| 7 | `theorem` | [polynomial_double_root_control](../../../../../mathematics/NumberTheory/Chebyshev/Checks/CanonicalZetaDivisorControls.lean/declarations/polynomial-double-root-control--36b300160a2408ce5bfe1124.md) | 47 | `result-track:36b300160a2408ce5bfe1124241f1f17bf87c377fe23db4b4c8762e0896bc3a9` |
| 8 | `theorem` | [equal_absolute_height_distinct_points](../../../../../mathematics/NumberTheory/Chebyshev/Checks/CanonicalZetaDivisorControls.lean/declarations/equal-absolute-height-distinct-points--bb75d242431c6c1352ad5e3d.md) | 55 | `result-track:bb75d242431c6c1352ad5e3dac136ed998b9d7578d6a0df7d1970ef0b2b6030c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
