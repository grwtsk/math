# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.AnalyticBase.Variantd1469969dc798ec5c50fa1a105556fbed75d1ab8fdb8524df6feb2b683736e7b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7fed292df5d23c85ffcaa16baf0d6da0ab0d04a3",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/AnalyticBase/Variantd1469969dc798ec5c50fa1a105556fbed75d1ab8fdb8524df6feb2b683736e7b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/AnalyticBase/Variantd1469969dc798ec5c50fa1a105556fbed75d1ab8fdb8524df6feb2b683736e7b.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/AnalyticBase/Variantd1469969dc798ec5c50fa1a105556fbed75d1ab8fdb8524df6feb2b683736e7b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7fed292df5d23c85ffcaa16baf0d6da0ab0d04a3`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/AnalyticBase/Variantd1469969dc798ec5c50fa1a105556fbed75d1ab8fdb8524df6feb2b683736e7b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/AnalyticBase/Variantd1469969dc798ec5c50fa1a105556fbed75d1ab8fdb8524df6feb2b683736e7b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.LSeries.RiemannZeta` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [CompletedZeta](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/AnalyticBase/Variantd1469969dc798ec5c50fa1a105556fbed75d1ab8fdb8524df6feb2b683736e7b.lean/declarations/completedzeta--e961579549dd479507e1cdf6.md) | 27 | `declaration-track:e961579549dd479507e1cdf680f3c871f6953dc1cfea1d49b56e3c366deb4dde` |
| 2 | `def` | [Xi](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/AnalyticBase/Variantd1469969dc798ec5c50fa1a105556fbed75d1ab8fdb8524df6feb2b683736e7b.lean/declarations/xi--4f970dc3c9ef6b2f5805cbe1.md) | 33 | `declaration-track:4f970dc3c9ef6b2f5805cbe1c6568e5aca13152784174ee85dc2aef064ce7c86` |
| 3 | `def` | [H0SpectralParameter](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/AnalyticBase/Variantd1469969dc798ec5c50fa1a105556fbed75d1ab8fdb8524df6feb2b683736e7b.lean/declarations/h0spectralparameter--9744d3ebf6eca0e4c7f2278b.md) | 42 | `declaration-track:9744d3ebf6eca0e4c7f2278b9b63528badb46f2bd5adb234ffb96fde173b3d75` |
| 4 | `def` | [H0](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/AnalyticBase/Variantd1469969dc798ec5c50fa1a105556fbed75d1ab8fdb8524df6feb2b683736e7b.lean/declarations/h0--8e06e115fb971488105fdeea.md) | 51 | `declaration-track:8e06e115fb971488105fdeead2eb1ee1e34104c424d4e1306a83b8258fbb30b5` |
| 5 | `theorem` | [completed_zeta_eq_mathlib](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/AnalyticBase/Variantd1469969dc798ec5c50fa1a105556fbed75d1ab8fdb8524df6feb2b683736e7b.lean/declarations/completed-zeta-eq-mathlib--734399f3b7407481238046c8.md) | 54 | `result-track:734399f3b7407481238046c868e31c6d38f46f16d7be62be5169124dd2f6b393` |
| 6 | `theorem` | [xi_completed_zeta_relation](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/AnalyticBase/Variantd1469969dc798ec5c50fa1a105556fbed75d1ab8fdb8524df6feb2b683736e7b.lean/declarations/xi-completed-zeta-relation--540f40209721376619e70082.md) | 59 | `result-track:540f40209721376619e700821a5efe4eb10eb95d0e559d080dd3100293dd5563` |
| 7 | `theorem` | [h0_spectral_parameter_definition](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/AnalyticBase/Variantd1469969dc798ec5c50fa1a105556fbed75d1ab8fdb8524df6feb2b683736e7b.lean/declarations/h0-spectral-parameter-definition--ef2f4f91c7adbe3b085ec0c5.md) | 65 | `result-track:ef2f4f91c7adbe3b085ec0c5b731ac8350e8ef941bd23dc180e2706484957811` |
| 8 | `theorem` | [h0_definition](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/AnalyticBase/Variantd1469969dc798ec5c50fa1a105556fbed75d1ab8fdb8524df6feb2b683736e7b.lean/declarations/h0-definition--9a91616221123c8a183948c8.md) | 71 | `result-track:9a91616221123c8a183948c8bddcd88a240472d8e330498cfe5dc9685b7dded1` |
| 9 | `theorem` | [h0_spectral_parameter_real_part_on_real_axis](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/AnalyticBase/Variantd1469969dc798ec5c50fa1a105556fbed75d1ab8fdb8524df6feb2b683736e7b.lean/declarations/h0-spectral-parameter-real-part-on-real-axis--31041e9a2a110c883e3f9780.md) | 77 | `result-track:31041e9a2a110c883e3f9780b8725ab875980471be3567b1d181fee1d069c140` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
