# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.ConcreteNewtonLocalization

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dea0f21b0d65708e51c6ad36ad032685557a2f73",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/ConcreteNewtonLocalization.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonLocalization.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonLocalization.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dea0f21b0d65708e51c6ad36ad032685557a2f73`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/ConcreteNewtonLocalization.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/ConcreteNewtonLocalization.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.ConcreteNewtonCriticalLine`](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonCriticalLine.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [innerRadius](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonLocalization.lean/declarations/innerradius--4a9a026738acd6d6bba1f9ca.md) | 38 | `declaration-track:4a9a026738acd6d6bba1f9ca16deded086e081148b4ae32ab2e1ec5bb2a9ce51` |
| 2 | `def` | [innerData](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonLocalization.lean/declarations/innerdata--1d0d345ca19034d1e619510b.md) | 41 | `declaration-track:1d0d345ca19034d1e619510bc9b1cacc24d3e929bcb5716da62691eaca375d99` |
| 3 | `theorem` | [innerData_eq_radius_update](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonLocalization.lean/declarations/innerdata-eq-radius-update--e0296bc517019719bddb2b3b.md) | 46 | `result-track:e0296bc517019719bddb2b3b86970c837488c2198488a48eb67450f45287682f` |
| 4 | `theorem` | [inner_center_enclosures_iff](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonLocalization.lean/declarations/inner-center-enclosures-iff--2ad70ec71480518957efc082.md) | 50 | `result-track:2ad70ec71480518957efc082c0b5c1ffe1710fd36df5c336eab2c67f2aa273cd` |
| 5 | `theorem` | [inner_residual_budget_eq](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonLocalization.lean/declarations/inner-residual-budget-eq--5bc2a0387aaae9bb5ea06c82.md) | 55 | `result-track:5bc2a0387aaae9bb5ea06c8218c531366c01e8db6280974e167e826a6d434d43` |
| 6 | `theorem` | [inner_radius_positive](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonLocalization.lean/declarations/inner-radius-positive--e3e68411a9ca9904a32409a3.md) | 59 | `result-track:e3e68411a9ca9904a32409a30cd765ba4044f48ffa69215e3ce96a84ae3373db` |
| 7 | `theorem` | [inner_radius_lt_outer](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonLocalization.lean/declarations/inner-radius-lt-outer--c9776d0f006a90f376bfb876.md) | 61 | `result-track:c9776d0f006a90f376bfb8761e79cbf91defe17cb003a239700a0e8627b39241` |
| 8 | `theorem` | [inner_admissible](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonLocalization.lean/declarations/inner-admissible--b587cae9e5c760321c98f360.md) | 66 | `result-track:b587cae9e5c760321c98f360550d0f1a46108c32237443db9661dfe25f22bea5` |
| 9 | `theorem` | [inner_accepts](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonLocalization.lean/declarations/inner-accepts--dd98515b22f49d7d18e16336.md) | 76 | `result-track:dd98515b22f49d7d18e16336acff32c7e03b385cb303719018e821614d654138` |
| 10 | `theorem` | [inner_self_map_slack](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonLocalization.lean/declarations/inner-self-map-slack--491ebcfd24d786e293da83cf.md) | 81 | `result-track:491ebcfd24d786e293da83cfb848c78560d38a7d365f266ffc2d9192eafcabe2` |
| 11 | `theorem` | [over_shrunk_radius_rejected](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonLocalization.lean/declarations/over-shrunk-radius-rejected--615bda29b18666774cc95f1d.md) | 91 | `result-track:615bda29b18666774cc95f1d59beb60e2ab12c3db75344121415a9ed67991cb9` |
| 12 | `theorem` | [inner_center_enclosures_of_source](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonLocalization.lean/declarations/inner-center-enclosures-of-source--c2555b1fbda2b6f4fa68239c.md) | 106 | `result-track:c2555b1fbda2b6f4fa68239ce7ee2fcc27acf679d8874610a0316720e22c3206` |
| 13 | `theorem` | [inner_posterior_lt_radius](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonLocalization.lean/declarations/inner-posterior-lt-radius--a85145ca07baff72216d446f.md) | 116 | `result-track:a85145ca07baff72216d446fdcf9ec0cd22c1120d278690f29744ac2a3f249a6` |
| 14 | `theorem` | [local_zero_with_inner_geometry_of_source](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonLocalization.lean/declarations/local-zero-with-inner-geometry-of-source--8fd070f2a5d28c085182af91.md) | 134 | `result-track:8fd070f2a5d28c085182af91f6103cd0d8cfe831f3f046d0660246ef210d16ec` |
| 15 | `theorem` | [every_outer_zero_in_inner_disk](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonLocalization.lean/declarations/every-outer-zero-in-inner-disk--d86f6b5714395f14b77ee774.md) | 162 | `result-track:d86f6b5714395f14b77ee7747571b8f686f4f21768748e8e52e4475ac317f255` |
| 16 | `theorem` | [no_zero_in_outer_annulus](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonLocalization.lean/declarations/no-zero-in-outer-annulus--097b987bc3ea9b452dccd9bc.md) | 172 | `result-track:097b987bc3ea9b452dccd9bc396a8176cc413d8d7e1bbe1239f2bdfb0de4a9f9` |
| 17 | `theorem` | [imaginary_interval_of_inner_location](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonLocalization.lean/declarations/imaginary-interval-of-inner-location--2be2c97f1524022e3fc89ebc.md) | 181 | `result-track:2be2c97f1524022e3fc89ebc34cd108093ee7d30f0361f528b0524c0433b543d` |
| 18 | `theorem` | [local_zero_with_refined_interval_of_source](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonLocalization.lean/declarations/local-zero-with-refined-interval-of-source--e94e107f2d9f13a52fd52486.md) | 193 | `result-track:e94e107f2d9f13a52fd524866b2c6a584182fb0dc7df22d3e38d8646802084e0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
