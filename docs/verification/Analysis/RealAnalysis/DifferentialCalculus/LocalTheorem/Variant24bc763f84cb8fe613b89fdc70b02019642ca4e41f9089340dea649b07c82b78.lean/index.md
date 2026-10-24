# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.LocalTheorem.Variant24bc763f84cb8fe613b89fdc70b02019642ca4e41f9089340dea649b07c82b78

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b333272f1c0715bbcfdd65cb845f372585c2424a",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/LocalTheorem/Variant24bc763f84cb8fe613b89fdc70b02019642ca4e41f9089340dea649b07c82b78.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LocalTheorem/Variant24bc763f84cb8fe613b89fdc70b02019642ca4e41f9089340dea649b07c82b78.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LocalTheorem/Variant24bc763f84cb8fe613b89fdc70b02019642ca4e41f9089340dea649b07c82b78.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b333272f1c0715bbcfdd65cb845f372585c2424a`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/LocalTheorem/Variant24bc763f84cb8fe613b89fdc70b02019642ca4e41f9089340dea649b07c82b78.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/LocalTheorem/Variant24bc763f84cb8fe613b89fdc70b02019642ca4e41f9089340dea649b07c82b78.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `CenteredAbel` — import line 6; external provider; requires a separately pinned dependency.
- `Budgets` — import line 7; external provider; requires a separately pinned dependency.
- `ActualSource` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [innerCutoff](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LocalTheorem/Variant24bc763f84cb8fe613b89fdc70b02019642ca4e41f9089340dea649b07c82b78.lean/declarations/innercutoff--c739cbf3d3bfb9a2a83b691e.md) | 28 | `declaration-track:c739cbf3d3bfb9a2a83b691ebc1bc72b92e29b943c3cdd37a0a8d20213b0238c` |
| 2 | `def` | [innerRemainder](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LocalTheorem/Variant24bc763f84cb8fe613b89fdc70b02019642ca4e41f9089340dea649b07c82b78.lean/declarations/innerremainder--232eb416b1902640d9d8f9d7.md) | 30 | `declaration-track:232eb416b1902640d9d8f9d7847dbbf17e92022345c587eb0722ff88de0700c9` |
| 3 | `theorem` | [innerRemainder_integrand_intervalIntegrable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LocalTheorem/Variant24bc763f84cb8fe613b89fdc70b02019642ca4e41f9089340dea649b07c82b78.lean/declarations/innerremainder-integrand-intervalintegrable--67dbda8cba799eb8cfe330e9.md) | 34 | `result-track:67dbda8cba799eb8cfe330e97346e5feab914e2a285d7c0cca27366fd9105e65` |
| 4 | `theorem` | [innerCutoff_ge_one](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LocalTheorem/Variant24bc763f84cb8fe613b89fdc70b02019642ca4e41f9089340dea649b07c82b78.lean/declarations/innercutoff-ge-one--5cece1214e7741d7025686ae.md) | 41 | `result-track:5cece1214e7741d7025686ae4c8d3b144b386dff1822daebb5fe776b344cc4a5` |
| 5 | `theorem` | [innerCutoff_mul](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LocalTheorem/Variant24bc763f84cb8fe613b89fdc70b02019642ca4e41f9089340dea649b07c82b78.lean/declarations/innercutoff-mul--5514d65f63190b30cbb9ee29.md) | 46 | `result-track:5514d65f63190b30cbb9ee29872d9ba5f2f77eeef70f97fd1b05dea0fb46b8bb` |
| 6 | `theorem` | [innerCutoff_log](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LocalTheorem/Variant24bc763f84cb8fe613b89fdc70b02019642ca4e41f9089340dea649b07c82b78.lean/declarations/innercutoff-log--bd253c9ca0c9cfd7d47a8db7.md) | 51 | `result-track:bd253c9ca0c9cfd7d47a8db74a7612710611284acbaf2f40d431b17655e640c7` |
| 7 | `theorem` | [logProfile_at_cutoff](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LocalTheorem/Variant24bc763f84cb8fe613b89fdc70b02019642ca4e41f9089340dea649b07c82b78.lean/declarations/logprofile-at-cutoff--adb4b2febb1ca3e88620ab10.md) | 55 | `result-track:adb4b2febb1ca3e88620ab10b8c9b5db1d8ea23e97bee57a37e75f83d1e88d1e` |
| 8 | `theorem` | [innerRemainder_eq_uncentered](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LocalTheorem/Variant24bc763f84cb8fe613b89fdc70b02019642ca4e41f9089340dea649b07c82b78.lean/declarations/innerremainder-eq-uncentered--9c1200193c890f1f73611a0e.md) | 63 | `result-track:9c1200193c890f1f73611a0e3c76ad94df4fc90195ad8bf380705889fd84e231` |
| 9 | `theorem` | [innerRemainder_abs_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LocalTheorem/Variant24bc763f84cb8fe613b89fdc70b02019642ca4e41f9089340dea649b07c82b78.lean/declarations/innerremainder-abs-le--2257496c48519d6e71b59176.md) | 71 | `result-track:2257496c48519d6e71b59176f6c2a17002705f9bd80810915fe14867b556e67d` |
| 10 | `theorem` | [innerRemainder_abs_le_twelve](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LocalTheorem/Variant24bc763f84cb8fe613b89fdc70b02019642ca4e41f9089340dea649b07c82b78.lean/declarations/innerremainder-abs-le-twelve--9083be97a1c22d8b2ee4d382.md) | 90 | `result-track:9083be97a1c22d8b2ee4d382ebfad9eaeb6a9b3f35a7e612a7d80aa249660cd3` |
| 11 | `theorem` | [inner_sum_eq](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LocalTheorem/Variant24bc763f84cb8fe613b89fdc70b02019642ca4e41f9089340dea649b07c82b78.lean/declarations/inner-sum-eq--b061fa12e165ad8b8cd22ba3.md) | 95 | `result-track:b061fa12e165ad8b8cd22ba3cef7c581226dfe125a1f77d9d496b5bf9c71c1ca` |
| 12 | `theorem` | [inner_sum_abel_estimate](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LocalTheorem/Variant24bc763f84cb8fe613b89fdc70b02019642ca4e41f9089340dea649b07c82b78.lean/declarations/inner-sum-abel-estimate--561a5c0161962e3e190a91da.md) | 123 | `result-track:561a5c0161962e3e190a91dab2fbe80d0123289764be9d498639ca022eabfdd6` |
| 13 | `theorem` | [innerCutoff_log_ge_scale](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LocalTheorem/Variant24bc763f84cb8fe613b89fdc70b02019642ca4e41f9089340dea649b07c82b78.lean/declarations/innercutoff-log-ge-scale--33f9c8419b49ce9cc1034ec5.md) | 137 | `result-track:33f9c8419b49ce9cc1034ec5de522cebe10413ed8d35dbca0733623a8c58b535` |
| 14 | `theorem` | [innerRemainder_abs_le_logarithmic](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LocalTheorem/Variant24bc763f84cb8fe613b89fdc70b02019642ca4e41f9089340dea649b07c82b78.lean/declarations/innerremainder-abs-le-logarithmic--72cae4336c0815436f147cc0.md) | 147 | `result-track:72cae4336c0815436f147cc040cad74ac1503094704b6b0781d7231bce42bc3a` |
| 15 | `theorem` | [innerRemainder_at_support_equality](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LocalTheorem/Variant24bc763f84cb8fe613b89fdc70b02019642ca4e41f9089340dea649b07c82b78.lean/declarations/innerremainder-at-support-equality--01452e894b5d85d40f8120d4.md) | 159 | `result-track:01452e894b5d85d40f8120d48c954c093bf445c8cf759f10bd91bdd5396956fd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
