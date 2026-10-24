# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.ExternalPNTAndChebyshevThetaPort

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "265a7061b7a70aea1b8bbc9c23c0b6b62f47c79e",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/ExternalPNTAndChebyshevThetaPort.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/ExternalPNTAndChebyshevThetaPort.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/ExternalPNTAndChebyshevThetaPort.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `265a7061b7a70aea1b8bbc9c23c0b6b62f47c79e`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/ExternalPNTAndChebyshevThetaPort.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/ExternalPNTAndChebyshevThetaPort.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.Checks.PinnedPrimeWeightCanonicalThetaGridRecurrenceControls`](../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PinnedPrimeWeightCanonicalThetaGridRecurrenceControls.lean/index.md) — import line 7; pinned internal source present.
- `Mathlib.Analysis.Asymptotics.AsymptoticEquivalent` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Chebyshev` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ExternalPNTAndChebyshevSourceRecord](../../../../../mathematics/NumberTheory/Zeta/Riemann/ExternalPNTAndChebyshevThetaPort.lean/declarations/externalpntandchebyshevsourcerecord--f9dd5d868cf6e1a95f175d6d.md) | 50 | `declaration-track:f9dd5d868cf6e1a95f175d6dab80ede6031161e6a0222cc6ad3b31477f057a02` |
| 2 | `def` | [externalPNTAndChebyshevSource](../../../../../mathematics/NumberTheory/Zeta/Riemann/ExternalPNTAndChebyshevThetaPort.lean/declarations/externalpntandchebyshevsource--eef17b8192bb5427605c61a2.md) | 62 | `declaration-track:eef17b8192bb5427605c61a2bef52cfcb208ef2e6d1a1d02a6e9bc16882eaab2` |
| 3 | `def` | [externalPNTAndPrimeLogSum](../../../../../mathematics/NumberTheory/Zeta/Riemann/ExternalPNTAndChebyshevThetaPort.lean/declarations/externalpntandprimelogsum--1d7e40c9c1246446824eea23.md) | 75 | `declaration-track:1d7e40c9c1246446824eea2322ba9af7970c5129cf847e96eef6ac08bc50fdf5` |
| 4 | `theorem` | [externalPNTAndPrimeIndex_eq_pinned](../../../../../mathematics/NumberTheory/Zeta/Riemann/ExternalPNTAndChebyshevThetaPort.lean/declarations/externalpntandprimeindex-eq-pinned--b24ad7d3c4511ea641e9d4a9.md) | 80 | `result-track:b24ad7d3c4511ea641e9d4a99531319e6e9b02e1d1de2b78695f830b678b4195` |
| 5 | `theorem` | [externalPNTAndPrimeLogSum_eq_theta](../../../../../mathematics/NumberTheory/Zeta/Riemann/ExternalPNTAndChebyshevThetaPort.lean/declarations/externalpntandprimelogsum-eq-theta--878ea7991d438db3241a07cd.md) | 88 | `result-track:878ea7991d438db3241a07cd0a3c0468f684110fd7d02778798233e2cff81786` |
| 6 | `def` | [ExternalPNTAndChebyshevAsymptotic](../../../../../mathematics/NumberTheory/Zeta/Riemann/ExternalPNTAndChebyshevThetaPort.lean/declarations/externalpntandchebyshevasymptotic--804fea327855e433fd685b9e.md) | 96 | `declaration-track:804fea327855e433fd685b9e9f1c5d05254a8ec32557c9391c654843c923e0f8` |
| 7 | `theorem` | [externalPNTAndAsymptotic_to_thetaPNT](../../../../../mathematics/NumberTheory/Zeta/Riemann/ExternalPNTAndChebyshevThetaPort.lean/declarations/externalpntandasymptotic-to-thetapnt--0eb8e71a3b2d4c11ef5c5e51.md) | 102 | `result-track:0eb8e71a3b2d4c11ef5c5e51e62319dd199120a5167967dae189f444b5c9d802` |
| 8 | `theorem` | [thetaPNT_to_externalPNTAndAsymptotic](../../../../../mathematics/NumberTheory/Zeta/Riemann/ExternalPNTAndChebyshevThetaPort.lean/declarations/thetapnt-to-externalpntandasymptotic--ee9cd8a0f6d13a7fb36d2a64.md) | 132 | `result-track:ee9cd8a0f6d13a7fb36d2a64c70e66f4a984ecf7142e7fe08c3f5660cc697aa6` |
| 9 | `theorem` | [externalPNTAndAsymptotic_iff_thetaPNT](../../../../../mathematics/NumberTheory/Zeta/Riemann/ExternalPNTAndChebyshevThetaPort.lean/declarations/externalpntandasymptotic-iff-thetapnt--c3686153b6d6156ec5e0c7b4.md) | 155 | `result-track:c3686153b6d6156ec5e0c7b4601864626ec261228534e1a6451645cbd5953379` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
