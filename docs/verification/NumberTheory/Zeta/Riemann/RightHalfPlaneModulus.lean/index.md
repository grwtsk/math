# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.RightHalfPlaneModulus

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b642c3ecd1f44223527afc00b57aec3324b06fc9",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/RightHalfPlaneModulus.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/RightHalfPlaneModulus.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/RightHalfPlaneModulus.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b642c3ecd1f44223527afc00b57aec3324b06fc9`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/RightHalfPlaneModulus.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/RightHalfPlaneModulus.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Real.ReciprocalSquareTail`](../../../../../mathematics/Analysis/RealAnalysis/ReciprocalSquareTail.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.NumberTheory.LSeries.RiemannZeta` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [norm_reciprocal_cpow_le_square](../../../../../mathematics/NumberTheory/Zeta/Riemann/RightHalfPlaneModulus.lean/declarations/norm-reciprocal-cpow-le-square--ccc42e744c7bd7dc4242692f.md) | 28 | `result-track:ccc42e744c7bd7dc4242692f1e38a9b217b597df720274d1f0648861bf41881b` |
| 2 | `theorem` | [summable_shifted_reciprocal_cpow](../../../../../mathematics/NumberTheory/Zeta/Riemann/RightHalfPlaneModulus.lean/declarations/summable-shifted-reciprocal-cpow--bdf9207fa34f428803810091.md) | 36 | `result-track:bdf9207fa34f4288038100915dc8cb8240776980a9dcfb451d08c06fe3a9d017` |
| 3 | `theorem` | [norm_tsum_reciprocal_cpow_tail_le](../../../../../mathematics/NumberTheory/Zeta/Riemann/RightHalfPlaneModulus.lean/declarations/norm-tsum-reciprocal-cpow-tail-le--24d3d3f606ff40929a2bf77b.md) | 42 | `result-track:24d3d3f606ff40929a2bf77b7aa17802fb2e112954e60364c0da55580520595e` |
| 4 | `theorem` | [zeta_eq_one_add_two_add_tail](../../../../../mathematics/NumberTheory/Zeta/Riemann/RightHalfPlaneModulus.lean/declarations/zeta-eq-one-add-two-add-tail--b12be0e2976a1f712cca4f6b.md) | 62 | `result-track:b12be0e2976a1f712cca4f6b4c3964ca9ac1b05e027072dd006a92ea42ea4a92` |
| 5 | `theorem` | [norm_zeta_sub_one_le_three_quarters](../../../../../mathematics/NumberTheory/Zeta/Riemann/RightHalfPlaneModulus.lean/declarations/norm-zeta-sub-one-le-three-quarters--6bb3d33c0a4c6597eb8923ee.md) | 73 | `result-track:6bb3d33c0a4c6597eb8923ee14c8dc43b8d4f922ae7e1e9ef2863170a6407c66` |
| 6 | `theorem` | [one_quarter_le_norm_zeta](../../../../../mathematics/NumberTheory/Zeta/Riemann/RightHalfPlaneModulus.lean/declarations/one-quarter-le-norm-zeta--aa4c2163b5baae0dd39cffa4.md) | 87 | `result-track:aa4c2163b5baae0dd39cffa4b85a3a742b364a382752e5fbebff499eaebeb6a1` |
| 7 | `theorem` | [norm_zeta_le_seven_quarters](../../../../../mathematics/NumberTheory/Zeta/Riemann/RightHalfPlaneModulus.lean/declarations/norm-zeta-le-seven-quarters--e95ca3ad14aef281d7c94913.md) | 94 | `result-track:e95ca3ad14aef281d7c949138996a4aabe1dd81ea62f80e33d243d3c7ce5fa26` |
| 8 | `theorem` | [zeta_ne_zero_of_two_le_re](../../../../../mathematics/NumberTheory/Zeta/Riemann/RightHalfPlaneModulus.lean/declarations/zeta-ne-zero-of-two-le-re--be811a485def52695a578732.md) | 101 | `result-track:be811a485def52695a578732bacce518a0b6a7a3a122fbf229e71f215da83bb8` |
| 9 | `theorem` | [norm_inv_zeta_le_four](../../../../../mathematics/NumberTheory/Zeta/Riemann/RightHalfPlaneModulus.lean/declarations/norm-inv-zeta-le-four--5bf4eebee9461cf15e80367e.md) | 108 | `result-track:5bf4eebee9461cf15e80367e11b7beb49f64fba14e131f3b75a7a03392efa7c7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
