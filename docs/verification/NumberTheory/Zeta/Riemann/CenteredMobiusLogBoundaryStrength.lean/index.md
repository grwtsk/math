# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.CenteredMobiusLogBoundaryStrength

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c2f522669554014ff28d0a04608a6bdc4b736edc",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/CenteredMobiusLogBoundaryStrength.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogBoundaryStrength.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogBoundaryStrength.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c2f522669554014ff28d0a04608a6bdc4b736edc`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/CenteredMobiusLogBoundaryStrength.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/CenteredMobiusLogBoundaryStrength.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.CenteredMobiusLogBoundaryReduction`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogBoundaryReduction.lean/index.md) — import line 6; pinned internal source present.
- `Mathlib.Tactic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [centeredGreenDyadicMangoldtRawError](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogBoundaryStrength.lean/declarations/centeredgreendyadicmangoldtrawerror--12d23cc287ca535cc1e49e30.md) | 15 | `declaration-track:12d23cc287ca535cc1e49e303d8065efcac24e89e38a45331e9e1d85cfa5e47d` |
| 2 | `theorem` | [normalizedMangoldtDiscrepancy_eq_raw_div](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogBoundaryStrength.lean/declarations/normalizedmangoldtdiscrepancy-eq-raw-div--97d8171a6de42c3fde080218.md) | 18 | `result-track:97d8171a6de42c3fde0802180d549cc5921417bb3da9f4e5d5e46bced1791a99` |
| 3 | `theorem` | [normalized_square_bound_iff_raw_square_bound](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogBoundaryStrength.lean/declarations/normalized-square-bound-iff-raw-square-bound--4f238a16a4d929e12b7e1d03.md) | 30 | `result-track:4f238a16a4d929e12b7e1d030375d64ed04f95adee8565f77394b542342d40ac` |
| 4 | `def` | [AllDyadicRawMangoldtSquareRootPlusEpsilonBound](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogBoundaryStrength.lean/declarations/alldyadicrawmangoldtsquarerootplusepsilonbound--de6fa043670e490ba7717448.md) | 56 | `declaration-track:de6fa043670e490ba77174486d148b0fa615e19ba8d9ce78cfc6630b2301fa97` |
| 5 | `theorem` | [allDyadicNormalizedMangoldt_iff_rawSquareRoot](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogBoundaryStrength.lean/declarations/alldyadicnormalizedmangoldt-iff-rawsquareroot--0ae1ef8287b19709b6068953.md) | 63 | `result-track:0ae1ef8287b19709b6068953895ed65a16f23a2ccc5e126258e9ac963c8471cb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
