# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentCorrectedArithmeticGram

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "856f4ef78aa8b52ac0219ba008f6d38a591e1676",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/CanonicalSquareTentCorrectedArithmeticGram.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentCorrectedArithmeticGram.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentCorrectedArithmeticGram.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `856f4ef78aa8b52ac0219ba008f6d38a591e1676`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/CanonicalSquareTentCorrectedArithmeticGram.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/CanonicalSquareTentCorrectedArithmeticGram.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentThreeTentMomentCorrection`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentThreeTentMomentCorrection.lean/index.md) — import line 5; pinned internal source present.
- `Mathlib.Tactic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [correctedCoordinates](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentCorrectedArithmeticGram.lean/declarations/correctedcoordinates--299f6ec153060b87f24bf5ba.md) | 47 | `declaration-track:299f6ec153060b87f24bf5bab1ce0522d55869986857e445e60f076a6e08bcc7` |
| 2 | `theorem` | [correctedCoordinates_ordinary_balance](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentCorrectedArithmeticGram.lean/declarations/correctedcoordinates-ordinary-balance--8a2e3c145a15a883289cb7c3.md) | 52 | `result-track:8a2e3c145a15a883289cb7c3d4e799504b9a83de3d9c6e89d05630efa7cb936b` |
| 3 | `theorem` | [correctedCoordinates_multiplicative_balance](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentCorrectedArithmeticGram.lean/declarations/correctedcoordinates-multiplicative-balance--07c3c4d9ed521998b3526e80.md) | 59 | `result-track:07c3c4d9ed521998b3526e80c2ad758cec195ab5f1f503f09c2077c8f2e7a3f1` |
| 4 | `theorem` | [correctedThreeTent_eq_coordinate_realization](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentCorrectedArithmeticGram.lean/declarations/correctedthreetent-eq-coordinate-realization--f94cee3e12d4766211760bbd.md) | 67 | `result-track:f94cee3e12d4766211760bbde78e25bcd87fbeacaf40c9d894c7b2b1a97207ba` |
| 5 | `theorem` | [correctedCoordinates_ne_zero](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentCorrectedArithmeticGram.lean/declarations/correctedcoordinates-ne-zero--3c936f4a8e3d4ed25427d452.md) | 76 | `result-track:3c936f4a8e3d4ed25427d4527d12f5d66bcebaf7b1195d6c9696bceeadcf26b1` |
| 6 | `def` | [correctedSourceDiagonal](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentCorrectedArithmeticGram.lean/declarations/correctedsourcediagonal--3c1ce7e6bc40f73ba86f46b6.md) | 85 | `declaration-track:3c1ce7e6bc40f73ba86f46b6f2124cc7c846f40868bca7291d7a188c121380d6` |
| 7 | `def` | [correctedFiniteDiagonal](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentCorrectedArithmeticGram.lean/declarations/correctedfinitediagonal--681595c253f60efe41203a08.md) | 90 | `declaration-track:681595c253f60efe41203a08fcd99bbac0ed756bc60bf28b2159232086b46311` |
| 8 | `def` | [correctedTailBudget](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentCorrectedArithmeticGram.lean/declarations/correctedtailbudget--38204b3b4b2f2303ac7fa7a4.md) | 94 | `declaration-track:38204b3b4b2f2303ac7fa7a4ba61d90e1d4338f0dfd027b20d1c54565b62b5e3` |
| 9 | `theorem` | [correctedSourceDiagonal_eq_weighted_sum](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentCorrectedArithmeticGram.lean/declarations/correctedsourcediagonal-eq-weighted-sum--83b4ff51290cddfdddac8e77.md) | 100 | `result-track:83b4ff51290cddfdddac8e77009a4cf6c5ded48a5468a0c0c32703f1674f2f65` |
| 10 | `theorem` | [correctedSourceDiagonal_nonnegative](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentCorrectedArithmeticGram.lean/declarations/correctedsourcediagonal-nonnegative--4cd4579c370e9115aa7c8ecb.md) | 111 | `result-track:4cd4579c370e9115aa7c8ecb2917bd048ee9e6f30debf2ded18efd8cca88f46e` |
| 11 | `theorem` | [correctedFiniteDiagonal_error_le](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentCorrectedArithmeticGram.lean/declarations/correctedfinitediagonal-error-le--6fa3d663258e0fdaae2c4f93.md) | 117 | `result-track:6fa3d663258e0fdaae2c4f93281847156939677b2c4c4b03892f514428af4272` |
| 12 | `theorem` | [correctedFiniteDiagonal_lower_bound](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentCorrectedArithmeticGram.lean/declarations/correctedfinitediagonal-lower-bound--15cc377aaddb322e7a06b01e.md) | 127 | `result-track:15cc377aaddb322e7a06b01e84b1fef96427aa8b2097171820a97162619a1ce7` |
| 13 | `theorem` | [correctedTailBudget_vanishes](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentCorrectedArithmeticGram.lean/declarations/correctedtailbudget-vanishes--7b8526af8e7e377660ca46b8.md) | 136 | `result-track:7b8526af8e7e377660ca46b87c49e9b0e784677e7cd09e25b6f846182083b80b` |
| 14 | `theorem` | [correctedFiniteDiagonal_comparison_vanishes](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentCorrectedArithmeticGram.lean/declarations/correctedfinitediagonal-comparison-vanishes--4f981c6e82aaa79a0e1c2f98.md) | 145 | `result-track:4f981c6e82aaa79a0e1c2f9859275cc11232f02b8858da82e8d4383d0ed3d7b8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
