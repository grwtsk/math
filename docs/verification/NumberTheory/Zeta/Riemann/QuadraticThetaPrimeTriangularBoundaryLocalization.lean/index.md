# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeTriangularBoundaryLocalization

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9cbc88796c5d11a9df21ad3e5b2590a3859d040e",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeTriangularBoundaryLocalization.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeTriangularBoundaryLocalization.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeTriangularBoundaryLocalization.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9cbc88796c5d11a9df21ad3e5b2590a3859d040e`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeTriangularBoundaryLocalization.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeTriangularBoundaryLocalization.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeTriangularSmoothingCandidate`](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeTriangularSmoothingCandidate.lean/index.md) — import line 3; pinned internal source present.
- `Mathlib.Tactic` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [triangularBoundaryApproximationClaim_trivial](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeTriangularBoundaryLocalization.lean/declarations/triangularboundaryapproximationclaim-trivial--a58e36cf03e0a653e7087459.md) | 14 | `result-track:a58e36cf03e0a653e7087459bfc1b088ad0595d509f40436f516eab06cec6c02` |
| 2 | `theorem` | [primeIntervalLogMass_le_length_mul_log](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeTriangularBoundaryLocalization.lean/declarations/primeintervallogmass-le-length-mul-log--b3dba33825b2fd98a6bd56f7.md) | 22 | `result-track:b3dba33825b2fd98a6bd56f7fdb5c205ec465277977d6adc638a8cce3804f8a8` |
| 3 | `theorem` | [primeBoundaryMass_le_length_log_fourX](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeTriangularBoundaryLocalization.lean/declarations/primeboundarymass-le-length-log-fourx--fa26cc162a8e126c6150dcc2.md) | 72 | `result-track:fa26cc162a8e126c6150dcc25ccaecea1eba726759c1443e0e3d791a47a82c56` |
| 4 | `structure` | [TriangularBoundaryLocalizationData](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeTriangularBoundaryLocalization.lean/declarations/triangularboundarylocalizationdata--bc52c669a3b42b1d2130c80f.md) | 95 | `declaration-track:bc52c669a3b42b1d2130c80f147dae19cb2d9aec713338d77ef896282b71524b` |
| 5 | `def` | [TriangularBoundaryLocalizationClaim](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeTriangularBoundaryLocalization.lean/declarations/triangularboundarylocalizationclaim--415f29c3cc8f0e7c984ac749.md) | 109 | `declaration-track:415f29c3cc8f0e7c984ac749ec53ec70e7cd268c880a8106e7c6d320b1772f07` |
| 6 | `theorem` | [TriangularBoundaryLocalizationData.error_le_boundary_budget](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeTriangularBoundaryLocalization.lean/declarations/triangularboundarylocalizationdata-error-le-boundary-budget--6a975b00d4b69d587f18fc31.md) | 115 | `result-track:6a975b00d4b69d587f18fc316adedd15d49ead55b397c751ba8e6ef624231b7d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
