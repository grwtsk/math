# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.CubicRemainder

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4b1b60777f2a3a7cbd103273535a4b54075ed7fc",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/CubicRemainder.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/CubicRemainder.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/CubicRemainder.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4b1b60777f2a3a7cbd103273535a4b54075ed7fc`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/CubicRemainder.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/CubicRemainder.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Real.PowerCellMajorant`](../../../../../mathematics/Analysis/RealAnalysis/PowerCellMajorant.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.CubicPowerSummation`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CubicPowerSummation.lean/index.md) — import line 5; pinned internal source present.
- `Mathlib.Analysis.Complex.LocallyUniformLimit` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.InfiniteSum.NatInt` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [cubicRemainder](../../../../../mathematics/NumberTheory/Zeta/Riemann/CubicRemainder.lean/declarations/cubicremainder--a3e97a82b1f02c47596b02d3.md) | 33 | `declaration-track:a3e97a82b1f02c47596b02d3e5299d0f45e56668456b32c904872e3e4730d9d8` |
| 2 | `theorem` | [cell_integrable](../../../../../mathematics/NumberTheory/Zeta/Riemann/CubicRemainder.lean/declarations/cell-integrable--1dffc37cd11048053e7fcf74.md) | 36 | `result-track:1dffc37cd11048053e7fcf7497c29bcec7c3cc39117a33365ed1835f9822cce7` |
| 3 | `theorem` | [norm_cell_density_le](../../../../../mathematics/NumberTheory/Zeta/Riemann/CubicRemainder.lean/declarations/norm-cell-density-le--c4455fe552283a05d47a6c7e.md) | 44 | `result-track:c4455fe552283a05d47a6c7eec5ca7132937ddc8f30cd3658bdc0f90bdbf6d6c` |
| 4 | `theorem` | [integral_norm_cell_le](../../../../../mathematics/NumberTheory/Zeta/Riemann/CubicRemainder.lean/declarations/integral-norm-cell-le--4d36524e0fe8db0091601f97.md) | 64 | `result-track:4d36524e0fe8db0091601f9759e6bb7015150c788c1e18639c2b02875346d646` |
| 5 | `theorem` | [norm_cell_le](../../../../../mathematics/NumberTheory/Zeta/Riemann/CubicRemainder.lean/declarations/norm-cell-le--97d2f50c1673a1e3c4394085.md) | 85 | `result-track:97d2f50c1673a1e3c4394085c34c4f7f8e7f4d236948288ad70184db2c9cf95b` |
| 6 | `theorem` | [summable_cell_majorant](../../../../../mathematics/NumberTheory/Zeta/Riemann/CubicRemainder.lean/declarations/summable-cell-majorant--267a09dd3930c73ba7af503e.md) | 93 | `result-track:267a09dd3930c73ba7af503e702d44a9f36f99f17e55ac5fe93955e980ddfb4d` |
| 7 | `theorem` | [summable_integral_norm_cells](../../../../../mathematics/NumberTheory/Zeta/Riemann/CubicRemainder.lean/declarations/summable-integral-norm-cells--0ab5deefa6336d10e4b96895.md) | 98 | `result-track:0ab5deefa6336d10e4b968956e010f360b49e50c84861ad5342a76dc14d4ebe6` |
| 8 | `theorem` | [summable_norm_cells](../../../../../mathematics/NumberTheory/Zeta/Riemann/CubicRemainder.lean/declarations/summable-norm-cells--8d69030088e0467b665d6958.md) | 106 | `result-track:8d69030088e0467b665d6958fdf0a467b026c5206fa05edfc93d7f0cc07cf0d6` |
| 9 | `theorem` | [summable_cells](../../../../../mathematics/NumberTheory/Zeta/Riemann/CubicRemainder.lean/declarations/summable-cells--9add8b8f6c494cd10b5a5aee.md) | 112 | `result-track:9add8b8f6c494cd10b5a5aeeb6b66a2067425cc01e14e4d677f507f3c8640a47` |
| 10 | `theorem` | [norm_tsum_cells_le](../../../../../mathematics/NumberTheory/Zeta/Riemann/CubicRemainder.lean/declarations/norm-tsum-cells-le--d160e36f5e48d2a11edce8dc.md) | 117 | `result-track:d160e36f5e48d2a11edce8dc7ed73a347f82af1592699c667c1a34f4f428881e` |
| 11 | `theorem` | [norm_cubicRemainder_le](../../../../../mathematics/NumberTheory/Zeta/Riemann/CubicRemainder.lean/declarations/norm-cubicremainder-le--2629a4054ea36aee1df52a11.md) | 135 | `result-track:2629a4054ea36aee1df52a11fded0603438bfe8e91105a1a1be27b280ffaeaba` |
| 12 | `theorem` | [cubicRemainder_eq_prefix_add_tail](../../../../../mathematics/NumberTheory/Zeta/Riemann/CubicRemainder.lean/declarations/cubicremainder-eq-prefix-add-tail--03462b4cbebf107de3daab52.md) | 141 | `result-track:03462b4cbebf107de3daab52403b8663c69726329828bb5a6344ff5ee52d6986` |
| 13 | `theorem` | [norm_cubicRemainder_sub_prefix_le](../../../../../mathematics/NumberTheory/Zeta/Riemann/CubicRemainder.lean/declarations/norm-cubicremainder-sub-prefix-le--d51fd31670d5c21aeb045569.md) | 151 | `result-track:d51fd31670d5c21aeb04556926fc3edf0daffc827aa6171259c711a173b3e586` |
| 14 | `theorem` | [norm_sub_prefix_le_inverse](../../../../../mathematics/NumberTheory/Zeta/Riemann/CubicRemainder.lean/declarations/norm-sub-prefix-le-inverse--ddf4b84b909eb4c22dd18d8f.md) | 160 | `result-track:ddf4b84b909eb4c22dd18d8f73bec6784db588b33844a9170621f158086e019a` |
| 15 | `theorem` | [norm_cubicRemainder_le_one_div_48](../../../../../mathematics/NumberTheory/Zeta/Riemann/CubicRemainder.lean/declarations/norm-cubicremainder-le-one-div-48--6ac93cef505e33a399ffd585.md) | 172 | `result-track:6ac93cef505e33a399ffd5854ca16f73c3098f845752ac45929b3b310eff64bf` |
| 16 | `theorem` | [prefix_tendsto](../../../../../mathematics/NumberTheory/Zeta/Riemann/CubicRemainder.lean/declarations/prefix-tendsto--054a6620214859a11a44644a.md) | 177 | `result-track:054a6620214859a11a44644aaf6fc2042ce9cbc37230c486489a74b83c7c7464` |
| 17 | `theorem` | [norm_cubicRemainder_sub_approx_le](../../../../../mathematics/NumberTheory/Zeta/Riemann/CubicRemainder.lean/declarations/norm-cubicremainder-sub-approx-le--d490e1034c06580b23bddc03.md) | 185 | `result-track:d490e1034c06580b23bddc031148d874dda24cee5516041394c239f8ef38fc11` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
