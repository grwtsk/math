# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripTaperedBoundary

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ca8be3674bb665ffd299f7323571742654b42fa6",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripTaperedBoundary.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripTaperedBoundary.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripTaperedBoundary.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ca8be3674bb665ffd299f7323571742654b42fa6`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripTaperedBoundary.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/CriticalStripTaperedBoundary.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripParabolicConfinement`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripParabolicConfinement.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [rightBand](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripTaperedBoundary.lean/declarations/rightband--f1c2c167ae7779bd70a129e3.md) | 29 | `declaration-track:f1c2c167ae7779bd70a129e389a3626f4828bb5a35b55dacdf287c58aa6951c1` |
| 2 | `theorem` | [factor_norm_le_on_band](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripTaperedBoundary.lean/declarations/factor-norm-le-on-band--30a2e66fcc7c90f342843cbc.md) | 33 | `result-track:30a2e66fcc7c90f342843cbcec966f4f623005f99edecc0e19f441abab24dd0f` |
| 3 | `theorem` | [norm_lower_on_band](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripTaperedBoundary.lean/declarations/norm-lower-on-band--c7892c94c6add05da390de63.md) | 50 | `result-track:c7892c94c6add05da390de63b401360fd04f43abf6e7342677eae434e18793bb` |
| 4 | `theorem` | [tapered_norm_lower](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripTaperedBoundary.lean/declarations/tapered-norm-lower--5605d534aec697f6c51a1fd0.md) | 59 | `result-track:5605d534aec697f6c51a1fd05381a8708fb9e9f33a522a3f7f43d09a957edc18` |
| 5 | `theorem` | [tapered_norm_lower_by_height](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripTaperedBoundary.lean/declarations/tapered-norm-lower-by-height--756ff8e6bcb36254b5d5fb2f.md) | 73 | `result-track:756ff8e6bcb36254b5d5fb2f86f588b5785ff9655b600c5dfd3d59d29db40a03` |
| 6 | `theorem` | [halfHeight_norm_lower](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripTaperedBoundary.lean/declarations/halfheight-norm-lower--9d12973bc87799d64e33821b.md) | 88 | `result-track:9d12973bc87799d64e33821b1ee03fa935d15463e089092d53fe45a8be88fa0b` |
| 7 | `theorem` | [threeQuarterHeight_norm_lower](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripTaperedBoundary.lean/declarations/threequarterheight-norm-lower--b25e804fcb3a987b8af33502.md) | 96 | `result-track:b25e804fcb3a987b8af335020b8bf5a377ae624d6811071ed2257a37a264fb9d` |
| 8 | `theorem` | [target_avoids_tapered_bands](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripTaperedBoundary.lean/declarations/target-avoids-tapered-bands--51374ed33b45ef098aff45af.md) | 106 | `result-track:51374ed33b45ef098aff45af655da9bfd6de8a0ea3cfdd7a17b8829d5a60bd96` |
| 9 | `def` | [firstRemainder](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripTaperedBoundary.lean/declarations/firstremainder--77b7476acc1402eef8f9e2b3.md) | 132 | `declaration-track:77b7476acc1402eef8f9e2b35d5366e253455a891f218c669d58a458719db740` |
| 10 | `theorem` | [window_one_iff_firstRemainder](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripTaperedBoundary.lean/declarations/window-one-iff-firstremainder--e8372aa1dde95fdfc0a3228d.md) | 137 | `result-track:e8372aa1dde95fdfc0a3228ddb30211067fdc0302d081798037e64e2e832da0e` |
| 11 | `theorem` | [window_one_of_remaining_cover](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripTaperedBoundary.lean/declarations/window-one-of-remaining-cover--c1a3f92681ec279436ae433d.md) | 158 | `result-track:c1a3f92681ec279436ae433da3954e31ffb4c7a3f8135cfa8914e33a69282921` |
| 12 | `theorem` | [firstRemainder_boundary_nonempty](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripTaperedBoundary.lean/declarations/firstremainder-boundary-nonempty--88439bb97a60d545f4606bb8.md) | 166 | `result-track:88439bb97a60d545f4606bb85a09faadf8082d81328f9d2b55037baeef7a50fc` |
| 13 | `theorem` | [tapered_endpoint_margin_zero](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripTaperedBoundary.lean/declarations/tapered-endpoint-margin-zero--f349da7d19cec48022b0e062.md) | 171 | `result-track:f349da7d19cec48022b0e0620818f6307e78c75b9964b644ebcda77d78a1ff90` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
