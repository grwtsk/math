# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeTriangularHarmonicTail

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e53971e909952315398ec6b560ab5dba8c8ea46b",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeTriangularHarmonicTail.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeTriangularHarmonicTail.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeTriangularHarmonicTail.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e53971e909952315398ec6b560ab5dba8c8ea46b`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeTriangularHarmonicTail.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeTriangularHarmonicTail.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeTriangularTailDecomposition`](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeTriangularTailDecomposition.lean/index.md) — import line 3; pinned internal source present.
- `Mathlib.NumberTheory.Harmonic.Bounds` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [triangularHarmonicTailMajorant](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeTriangularHarmonicTail.lean/declarations/triangularharmonictailmajorant--2c5df71739e98b1bc243a610.md) | 16 | `declaration-track:2c5df71739e98b1bc243a610df5fd20a279ed1ce3cffd7eff3e3a261efdd1e28` |
| 2 | `def` | [TriangularHarmonicTailDecayClaim](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeTriangularHarmonicTail.lean/declarations/triangularharmonictaildecayclaim--b6d4de3bbf2bb7c72e1c6754.md) | 25 | `declaration-track:b6d4de3bbf2bb7c72e1c67546463b37edb51150ecc63a013bf510ec32dbad7db` |
| 3 | `theorem` | [triangularHarmonicTailMajorant_le_log](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeTriangularHarmonicTail.lean/declarations/triangularharmonictailmajorant-le-log--6a80ec8dcc73509afaef34d9.md) | 36 | `result-track:6a80ec8dcc73509afaef34d9394862b80c2e18cbd484e1df439be1ec50e364c5` |
| 4 | `def` | [balancedTriangularCutoff](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeTriangularHarmonicTail.lean/declarations/balancedtriangularcutoff--8eb0e403682d070c0daa1709.md) | 58 | `declaration-track:8eb0e403682d070c0daa17095f3c425a8c5dd6c2ac2cb04092a804bef500ef39` |
| 5 | `theorem` | [balancedTriangularCutoff_pos](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeTriangularHarmonicTail.lean/declarations/balancedtriangularcutoff-pos--7fce8a6a2065e96be87a992d.md) | 61 | `result-track:7fce8a6a2065e96be87a992d8ef41dac5e8b6cfbe42b5c27234ce9ef110aefec` |
| 6 | `theorem` | [balancedTriangularTail_power](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeTriangularHarmonicTail.lean/declarations/balancedtriangulartail-power--b5996e5da08ad219ac361a55.md) | 70 | `result-track:b5996e5da08ad219ac361a55ba13e6442308b3b0e60912c25a04e1089edcdba1` |
| 7 | `theorem` | [balancedTriangularTail_power_lt_threeQuarters](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeTriangularHarmonicTail.lean/declarations/balancedtriangulartail-power-lt-threequarters--1ead7e48d3676101b312c6f0.md) | 76 | `result-track:1ead7e48d3676101b312c6f08cd426638f54d83350a924692d657f94927aefb2` |
| 8 | `structure` | [TriangularHarmonicTailAccepted](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeTriangularHarmonicTail.lean/declarations/triangularharmonictailaccepted--85cc424f038694bdbcb15ad1.md) | 84 | `declaration-track:85cc424f038694bdbcb15ad1b906f2e59b3ed43b2a5f8ca370e39ed22a9fbdf4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
