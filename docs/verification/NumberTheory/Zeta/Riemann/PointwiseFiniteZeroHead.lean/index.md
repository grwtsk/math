# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.PointwiseFiniteZeroHead

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ab0b6d128604780f158a3093dce6d67085d46c55",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/PointwiseFiniteZeroHead.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/PointwiseFiniteZeroHead.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/PointwiseFiniteZeroHead.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ab0b6d128604780f158a3093dce6d67085d46c55`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/PointwiseFiniteZeroHead.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/PointwiseFiniteZeroHead.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.CanonicalZeroDivisor`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalZeroDivisor.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Analysis.SpecialFunctions.Pow.Complex` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [canonicalZero_denominator_ne_zero](../../../../../mathematics/NumberTheory/Zeta/Riemann/PointwiseFiniteZeroHead.lean/declarations/canonicalzero-denominator-ne-zero--8ed3b260eef6eec485b30064.md) | 28 | `result-track:8ed3b260eef6eec485b30064c0b7ec1e538e82fccb0d1a27106d5788a76b02ac` |
| 2 | `def` | [pointwiseZeroTerm](../../../../../mathematics/NumberTheory/Zeta/Riemann/PointwiseFiniteZeroHead.lean/declarations/pointwisezeroterm--ec40031869cd2372b623e332.md) | 32 | `declaration-track:ec40031869cd2372b623e33224f8270ddd2aca69cb219c5388fd2cd9e22639d8` |
| 3 | `theorem` | [pointwiseZeroTerm_eq_cpow](../../../../../mathematics/NumberTheory/Zeta/Riemann/PointwiseFiniteZeroHead.lean/declarations/pointwisezeroterm-eq-cpow--a090f8a233cec38097c7930a.md) | 35 | `result-track:a090f8a233cec38097c7930a68244fef32bdb4bbbb118dd4a8df5e658c91d3b1` |
| 4 | `theorem` | [pointwiseZeroTerm_conj](../../../../../mathematics/NumberTheory/Zeta/Riemann/PointwiseFiniteZeroHead.lean/declarations/pointwisezeroterm-conj--6d407d73e0b5e724a4af90ee.md) | 40 | `result-track:6d407d73e0b5e724a4af90ee68f456588850c3642454727b4045e7a01d1a3bb8` |
| 5 | `theorem` | [pointwiseZeroTerm_pair](../../../../../mathematics/NumberTheory/Zeta/Riemann/PointwiseFiniteZeroHead.lean/declarations/pointwisezeroterm-pair--1762d9a2c3ae7a59af060cb7.md) | 44 | `result-track:1762d9a2c3ae7a59af060cb752e9495141a253ba1dc1e3158f90c2c001c4490c` |
| 6 | `theorem` | [norm_pointwiseZeroTerm](../../../../../mathematics/NumberTheory/Zeta/Riemann/PointwiseFiniteZeroHead.lean/declarations/norm-pointwisezeroterm--31b8596bb0be19f663736ce4.md) | 52 | `result-track:31b8596bb0be19f663736ce4fc85a5dfd049610d74940f4005b6068419c24491` |
| 7 | `def` | [finiteHeightZeroHead](../../../../../mathematics/NumberTheory/Zeta/Riemann/PointwiseFiniteZeroHead.lean/declarations/finiteheightzerohead--1e010a0b64c11cc5ab447292.md) | 56 | `declaration-track:1e010a0b64c11cc5ab447292e17d8909f97b038241e943b51d84283630ec3bd8` |
| 8 | `def` | [evaluatedFiniteHeightZeroHead](../../../../../mathematics/NumberTheory/Zeta/Riemann/PointwiseFiniteZeroHead.lean/declarations/evaluatedfiniteheightzerohead--40c3d3c6d7730429dd2f95d1.md) | 61 | `declaration-track:40c3d3c6d7730429dd2f95d1baaec5ec9ad1fe8c6950900d57dcbeb2ef627324` |
| 9 | `theorem` | [finiteHeightZeroHead_evaluation_error](../../../../../mathematics/NumberTheory/Zeta/Riemann/PointwiseFiniteZeroHead.lean/declarations/finiteheightzerohead-evaluation-error--952ce03b70a73a0b1b4ddb1b.md) | 64 | `result-track:952ce03b70a73a0b1b4ddb1b651ccf936cbdf9a1208a444a82121d449d92e6b4` |
| 10 | `theorem` | [finiteHeightZeroHead_enclosure_error](../../../../../mathematics/NumberTheory/Zeta/Riemann/PointwiseFiniteZeroHead.lean/declarations/finiteheightzerohead-enclosure-error--41b97c848b442119f7700cdc.md) | 82 | `result-track:41b97c848b442119f7700cdcd7c21de229e4b04bc7b05d9b29d91c4d6ff5e93a` |
| 11 | `theorem` | [completeZeroContribution_evaluation_error](../../../../../mathematics/NumberTheory/Zeta/Riemann/PointwiseFiniteZeroHead.lean/declarations/completezerocontribution-evaluation-error--8007f43fb2b7980f13db25e5.md) | 94 | `result-track:8007f43fb2b7980f13db25e510c6e428484f9b3dce839add86b4e10069ca59a1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
