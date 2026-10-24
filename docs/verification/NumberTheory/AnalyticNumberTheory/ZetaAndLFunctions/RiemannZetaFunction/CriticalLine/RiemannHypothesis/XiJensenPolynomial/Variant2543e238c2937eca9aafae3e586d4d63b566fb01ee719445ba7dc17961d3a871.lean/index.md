# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.XiJensenPolynomial.Variant2543e238c2937eca9aafae3e586d4d63b566fb01ee719445ba7dc17961d3a871

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fdd7c8336ebc6227c8b05cfe2c7774f32c82b63d",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiJensenPolynomial/Variant2543e238c2937eca9aafae3e586d4d63b566fb01ee719445ba7dc17961d3a871.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiJensenPolynomial/Variant2543e238c2937eca9aafae3e586d4d63b566fb01ee719445ba7dc17961d3a871.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiJensenPolynomial/Variant2543e238c2937eca9aafae3e586d4d63b566fb01ee719445ba7dc17961d3a871.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fdd7c8336ebc6227c8b05cfe2c7774f32c82b63d`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiJensenPolynomial/Variant2543e238c2937eca9aafae3e586d4d63b566fb01ee719445ba7dc17961d3a871.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiJensenPolynomial/Variant2543e238c2937eca9aafae3e586d4d63b566fb01ee719445ba7dc17961d3a871.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.XiJensenReconstruction` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [jensenPolynomial](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiJensenPolynomial/Variant2543e238c2937eca9aafae3e586d4d63b566fb01ee719445ba7dc17961d3a871.lean/declarations/jensenpolynomial--5e5370acca463237642022d9.md) | 16 | `declaration-track:5e5370acca463237642022d904ac8cacf2151b23bb80112963cf3281d49ea70a` |
| 2 | `theorem` | [jensenPolynomial_coeff](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiJensenPolynomial/Variant2543e238c2937eca9aafae3e586d4d63b566fb01ee719445ba7dc17961d3a871.lean/declarations/jensenpolynomial-coeff--cb590d5164b58e9a944a3541.md) | 21 | `result-track:cb590d5164b58e9a944a35419b97a38da7ef22a3e8660f740394d756d9aa1892` |
| 3 | `theorem` | [jensenPolynomial_coeff_zero](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiJensenPolynomial/Variant2543e238c2937eca9aafae3e586d4d63b566fb01ee719445ba7dc17961d3a871.lean/declarations/jensenpolynomial-coeff-zero--e468ca4e97d3548858150a12.md) | 30 | `result-track:e468ca4e97d3548858150a12a9e02a3e1e9065442a1e2dabe2714d67924b042c` |
| 4 | `def` | [leadingScalar](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiJensenPolynomial/Variant2543e238c2937eca9aafae3e586d4d63b566fb01ee719445ba7dc17961d3a871.lean/declarations/leadingscalar--873c50e34bdd9151cfc7530f.md) | 35 | `declaration-track:873c50e34bdd9151cfc7530ff68236e218ee2eb388fa6d86bf829c03b8006d69` |
| 5 | `theorem` | [leadingScalar_eq](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiJensenPolynomial/Variant2543e238c2937eca9aafae3e586d4d63b566fb01ee719445ba7dc17961d3a871.lean/declarations/leadingscalar-eq--606d3c16284cc05e13bdd7b9.md) | 39 | `result-track:606d3c16284cc05e13bdd7b9470450c369593d90e6535dc5d147ab48b2c5363a` |
| 6 | `theorem` | [leadingScalar_ne_zero](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiJensenPolynomial/Variant2543e238c2937eca9aafae3e586d4d63b566fb01ee719445ba7dc17961d3a871.lean/declarations/leadingscalar-ne-zero--b452b4f47728e87b05a87cd7.md) | 46 | `result-track:b452b4f47728e87b05a87cd771aca8957cdf4f27b5f8ad5e23d97aa100b90429` |
| 7 | `theorem` | [jensenPolynomial_natDegree](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiJensenPolynomial/Variant2543e238c2937eca9aafae3e586d4d63b566fb01ee719445ba7dc17961d3a871.lean/declarations/jensenpolynomial-natdegree--e87e4ba6810b9690233d8ecd.md) | 53 | `result-track:e87e4ba6810b9690233d8ecdf1d819e8b4c14d0bc5d39694eb6b547dc0c0a05e` |
| 8 | `theorem` | [jensenPolynomial_leadingCoeff](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiJensenPolynomial/Variant2543e238c2937eca9aafae3e586d4d63b566fb01ee719445ba7dc17961d3a871.lean/declarations/jensenpolynomial-leadingcoeff--dc61a12e60bd1714dfd6fa00.md) | 65 | `result-track:dc61a12e60bd1714dfd6fa00ceba3068a24388f3803f597692bef2f886c9f792` |
| 9 | `def` | [monicPolynomial](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiJensenPolynomial/Variant2543e238c2937eca9aafae3e586d4d63b566fb01ee719445ba7dc17961d3a871.lean/declarations/monicpolynomial--9332b6e22ffd4167baa8dbe1.md) | 71 | `declaration-track:9332b6e22ffd4167baa8dbe13af2c3578d58fb1c0b2c4b1abc7b8b15cf1b801b` |
| 10 | `theorem` | [monicPolynomial_monic](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiJensenPolynomial/Variant2543e238c2937eca9aafae3e586d4d63b566fb01ee719445ba7dc17961d3a871.lean/declarations/monicpolynomial-monic--30901445ee05f05f9dec2275.md) | 74 | `result-track:30901445ee05f05f9dec2275f461f61faecba16e652c21178899f51a5f7c4f1f` |
| 11 | `theorem` | [monicPolynomial_natDegree](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiJensenPolynomial/Variant2543e238c2937eca9aafae3e586d4d63b566fb01ee719445ba7dc17961d3a871.lean/declarations/monicpolynomial-natdegree--4af441bb1ed161689e761779.md) | 79 | `result-track:4af441bb1ed161689e761779323a6358e3200597305ed460f76bc380d35e3591` |
| 12 | `theorem` | [leadingScalar_mul_monicPolynomial](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiJensenPolynomial/Variant2543e238c2937eca9aafae3e586d4d63b566fb01ee719445ba7dc17961d3a871.lean/declarations/leadingscalar-mul-monicpolynomial--2c283eb2ee742b92799db751.md) | 85 | `result-track:2c283eb2ee742b92799db7514c93f059f8cee423f21ee1697229cca3c9fd4bb9` |
| 13 | `theorem` | [jensenPolynomial_eval₂_sum](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiJensenPolynomial/Variant2543e238c2937eca9aafae3e586d4d63b566fb01ee719445ba7dc17961d3a871.lean/declarations/jensenpolynomial-eval-sum--3beafd13ded04d03469306ef.md) | 91 | `result-track:3beafd13ded04d03469306efc74d32180ffc05dc9881d0e04a5a27f38d08a62b` |
| 14 | `theorem` | [jensenPolynomial_eval₂](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiJensenPolynomial/Variant2543e238c2937eca9aafae3e586d4d63b566fb01ee719445ba7dc17961d3a871.lean/declarations/jensenpolynomial-eval--3be65eca9babca3ed7b78cae.md) | 106 | `result-track:3be65eca9babca3ed7b78cae7702da2109a88e635341ea38b96b619f2d22e321` |
| 15 | `theorem` | [leadingScalar_mul_monicPolynomial_eval₂](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiJensenPolynomial/Variant2543e238c2937eca9aafae3e586d4d63b566fb01ee719445ba7dc17961d3a871.lean/declarations/leadingscalar-mul-monicpolynomial-eval--6e63c00c00f4aa514f00712a.md) | 112 | `result-track:6e63c00c00f4aa514f00712a7a50a36bf57293d6d6dff63f614e9bc5ab6a5468` |
| 16 | `theorem` | [monicPolynomial_eval₂_zero_iff](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiJensenPolynomial/Variant2543e238c2937eca9aafae3e586d4d63b566fb01ee719445ba7dc17961d3a871.lean/declarations/monicpolynomial-eval-zero-iff--297a090221a81cb9474e0178.md) | 120 | `result-track:297a090221a81cb9474e017839b07e8d52e965ac7af47f61701d95d93351c763` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
