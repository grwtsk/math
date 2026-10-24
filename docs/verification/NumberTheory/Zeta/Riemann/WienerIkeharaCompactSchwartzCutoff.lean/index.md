# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.WienerIkeharaCompactSchwartzCutoff

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3f80979eff132745516a99f5ab4268a73da696b7",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/WienerIkeharaCompactSchwartzCutoff.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/WienerIkeharaCompactSchwartzCutoff.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/WienerIkeharaCompactSchwartzCutoff.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3f80979eff132745516a99f5ab4268a73da696b7`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/WienerIkeharaCompactSchwartzCutoff.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/WienerIkeharaCompactSchwartzCutoff.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.WienerIkeharaQuantitativeSchwartzError`](../../../../../mathematics/NumberTheory/Zeta/Riemann/WienerIkeharaQuantitativeSchwartzError.lean/index.md) — import line 10; pinned internal source present.
- `Mathlib.Geometry.Manifold.PartitionOfUnity` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Distribution.TemperateGrowth` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Distribution.SchwartzSpace.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [wienerBaseSchwartzCutoff_exists](../../../../../mathematics/NumberTheory/Zeta/Riemann/WienerIkeharaCompactSchwartzCutoff.lean/declarations/wienerbaseschwartzcutoff-exists--0982db61f6da2a96a73dcf16.md) | 55 | `result-track:0982db61f6da2a96a73dcf16638c5b38668486d9e9d18ef07fd0d0a592780054` |
| 2 | `def` | [wienerBaseSchwartzCutoff](../../../../../mathematics/NumberTheory/Zeta/Riemann/WienerIkeharaCompactSchwartzCutoff.lean/declarations/wienerbaseschwartzcutoff--bbb37b6b86d7adfe86be898a.md) | 85 | `declaration-track:bbb37b6b86d7adfe86be898acd5b6c5d8e797e6f261f0555c41387c4f8232b6a` |
| 3 | `theorem` | [wienerBaseSchwartzCutoff_smooth](../../../../../mathematics/NumberTheory/Zeta/Riemann/WienerIkeharaCompactSchwartzCutoff.lean/declarations/wienerbaseschwartzcutoff-smooth--2bbb3dc3d57954d99bc1435f.md) | 88 | `result-track:2bbb3dc3d57954d99bc1435f3346e38ca222b0611887bb65d6e38371e311ed97` |
| 4 | `theorem` | [wienerBaseSchwartzCutoff_compact](../../../../../mathematics/NumberTheory/Zeta/Riemann/WienerIkeharaCompactSchwartzCutoff.lean/declarations/wienerbaseschwartzcutoff-compact--b8da0029004aa1bb844c3da2.md) | 92 | `result-track:b8da0029004aa1bb844c3da27a4b46b99da97ad3097a05ab0881d42786a1eb51` |
| 5 | `theorem` | [wienerBaseSchwartzCutoff_range](../../../../../mathematics/NumberTheory/Zeta/Riemann/WienerIkeharaCompactSchwartzCutoff.lean/declarations/wienerbaseschwartzcutoff-range--0e26d2ff3981bb9bf0186a14.md) | 96 | `result-track:0e26d2ff3981bb9bf0186a14357613fa20286977209c2b742c1bc3b82d3bb144` |
| 6 | `theorem` | [wienerBaseSchwartzCutoff_core](../../../../../mathematics/NumberTheory/Zeta/Riemann/WienerIkeharaCompactSchwartzCutoff.lean/declarations/wienerbaseschwartzcutoff-core--4690f5763d9fbe046f358cdf.md) | 101 | `result-track:4690f5763d9fbe046f358cdf77aa0a2f9b776082fffbf606bf7b078c1f328722` |
| 7 | `theorem` | [wienerBaseSchwartzCutoff_support](../../../../../mathematics/NumberTheory/Zeta/Riemann/WienerIkeharaCompactSchwartzCutoff.lean/declarations/wienerbaseschwartzcutoff-support--01f0f8d5406e089989b6cc1b.md) | 106 | `result-track:01f0f8d5406e089989b6cc1b16b864f39637ae2356f90a5476899333ee31f8e3` |
| 8 | `def` | [wienerScaledSchwartzCutoff](../../../../../mathematics/NumberTheory/Zeta/Riemann/WienerIkeharaCompactSchwartzCutoff.lean/declarations/wienerscaledschwartzcutoff--b220350d9047d54fe2ce1774.md) | 113 | `declaration-track:b220350d9047d54fe2ce1774dcc53a7664a05f5367abb1605d00b5390973e372` |
| 9 | `theorem` | [wienerScaledSchwartzCutoff_smooth](../../../../../mathematics/NumberTheory/Zeta/Riemann/WienerIkeharaCompactSchwartzCutoff.lean/declarations/wienerscaledschwartzcutoff-smooth--1b9699a76990e7745a02a317.md) | 116 | `result-track:1b9699a76990e7745a02a317111d018448fd784e86b0d228045b46e4da9fec17` |
| 10 | `theorem` | [wienerScaledSchwartzCutoff_compact](../../../../../mathematics/NumberTheory/Zeta/Riemann/WienerIkeharaCompactSchwartzCutoff.lean/declarations/wienerscaledschwartzcutoff-compact--a577dd6c80f40b900ca619a3.md) | 121 | `result-track:a577dd6c80f40b900ca619a36ff827146528b970ecd9c97306bbe1020a3ba3d8` |
| 11 | `theorem` | [wienerScaledSchwartzCutoff_temperate](../../../../../mathematics/NumberTheory/Zeta/Riemann/WienerIkeharaCompactSchwartzCutoff.lean/declarations/wienerscaledschwartzcutoff-temperate--11892e11b6892bd64442b92f.md) | 130 | `result-track:11892e11b6892bd64442b92f047f90b46d534783c32e94d334e8c5d48a8b92ff` |
| 12 | `def` | [wienerCompactSchwartzTruncation](../../../../../mathematics/NumberTheory/Zeta/Riemann/WienerIkeharaCompactSchwartzCutoff.lean/declarations/wienercompactschwartztruncation--597413d6f41389674b3de47f.md) | 138 | `declaration-track:597413d6f41389674b3de47f9d7fe46fd7ad7a606d0c5583a356e466b6194516` |
| 13 | `theorem` | [wienerCompactSchwartzTruncation_apply](../../../../../mathematics/NumberTheory/Zeta/Riemann/WienerIkeharaCompactSchwartzCutoff.lean/declarations/wienercompactschwartztruncation-apply--9b1173551a5880d5aad76159.md) | 142 | `result-track:9b1173551a5880d5aad7615909ef16e2d40a9e539216e42a63a1567655294475` |
| 14 | `theorem` | [wienerCompactSchwartzTruncation_compact](../../../../../mathematics/NumberTheory/Zeta/Riemann/WienerIkeharaCompactSchwartzCutoff.lean/declarations/wienercompactschwartztruncation-compact--187c13e6d2c9620461abbbc0.md) | 152 | `result-track:187c13e6d2c9620461abbbc0238a0a3085aa550f417c5f97fc8d652a79aff93a` |
| 15 | `theorem` | [wienerScaledSchwartzCutoff_one_on](../../../../../mathematics/NumberTheory/Zeta/Riemann/WienerIkeharaCompactSchwartzCutoff.lean/declarations/wienerscaledschwartzcutoff-one-on--86017e912e4b20d0fe9b0067.md) | 167 | `result-track:86017e912e4b20d0fe9b00674576791e1e1821c94e19e2a61d6be7ff555567c0` |
| 16 | `theorem` | [wienerCompactSchwartzTruncation_eventually_pointwise](../../../../../mathematics/NumberTheory/Zeta/Riemann/WienerIkeharaCompactSchwartzCutoff.lean/declarations/wienercompactschwartztruncation-eventually-pointwise--650a0fb177f8022aff9c55f2.md) | 185 | `result-track:650a0fb177f8022aff9c55f27ee753a54ddb37914297574bea6a53742de4448a` |
| 17 | `theorem` | [wienerCompactSchwartzTruncation_tendsto_pointwise](../../../../../mathematics/NumberTheory/Zeta/Riemann/WienerIkeharaCompactSchwartzCutoff.lean/declarations/wienercompactschwartztruncation-tendsto-pointwise--ae3a921e186183b88db36da4.md) | 203 | `result-track:ae3a921e186183b88db36da47c29a870745561f2dba10880f9461b98f70cf4c2` |
| 18 | `theorem` | [wienerCompactSchwartzTruncation_agrees_on_core](../../../../../mathematics/NumberTheory/Zeta/Riemann/WienerIkeharaCompactSchwartzCutoff.lean/declarations/wienercompactschwartztruncation-agrees-on-core--eee165f22b97558d8a1cf7e5.md) | 213 | `result-track:eee165f22b97558d8a1cf7e5ceb4762b7518e38ec1b12e90534f207b4d080a32` |
| 19 | `theorem` | [wienerCompactSchwartzTruncation_error_zero_on_core](../../../../../mathematics/NumberTheory/Zeta/Riemann/WienerIkeharaCompactSchwartzCutoff.lean/declarations/wienercompactschwartztruncation-error-zero-on-core--836ca5a214349f031c3414b7.md) | 224 | `result-track:836ca5a214349f031c3414b733957c2e9182575cfbbc1a4f7cd30b501a545133` |
| 20 | `theorem` | [wienerCompactSchwartzTruncation_error_support_far](../../../../../mathematics/NumberTheory/Zeta/Riemann/WienerIkeharaCompactSchwartzCutoff.lean/declarations/wienercompactschwartztruncation-error-support-far--bc7a7d022ee132078a7d3010.md) | 235 | `result-track:bc7a7d022ee132078a7d30104f8b1bd71a4c290f0f2b8f29791d78bc746dc681` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
