# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.ActualMangoldtLaplaceAttempt02.Variantc4cfd050b152110f2a49ca99f0615c3c2bb53afda9bce5aa2ba56ab01da25746

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "55453c4a3659ece04773b5119ad787578d37e1d6",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/ActualMangoldtLaplaceAttempt02/Variantc4cfd050b152110f2a49ca99f0615c3c2bb53afda9bce5aa2ba56ab01da25746.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualMangoldtLaplaceAttempt02/Variantc4cfd050b152110f2a49ca99f0615c3c2bb53afda9bce5aa2ba56ab01da25746.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualMangoldtLaplaceAttempt02/Variantc4cfd050b152110f2a49ca99f0615c3c2bb53afda9bce5aa2ba56ab01da25746.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `55453c4a3659ece04773b5119ad787578d37e1d6`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/ActualMangoldtLaplaceAttempt02/Variantc4cfd050b152110f2a49ca99f0615c3c2bb53afda9bce5aa2ba56ab01da25746.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/ActualMangoldtLaplaceAttempt02/Variantc4cfd050b152110f2a49ca99f0615c3c2bb53afda9bce5aa2ba56ab01da25746.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceMangoldtAbel` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.LSeries.Dirichlet` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.ImproperIntegrals` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.DominatedConvergence` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mangoldtWeight](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualMangoldtLaplaceAttempt02/Variantc4cfd050b152110f2a49ca99f0615c3c2bb53afda9bce5aa2ba56ab01da25746.lean/declarations/mangoldtweight--d07e12941e10a8534a18722a.md) | 18 | `declaration-track:d07e12941e10a8534a18722a6bcdd06e948af6e8841180fcb9882be5398324d8` |
| 2 | `def` | [laplaceAtom](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualMangoldtLaplaceAttempt02/Variantc4cfd050b152110f2a49ca99f0615c3c2bb53afda9bce5aa2ba56ab01da25746.lean/declarations/laplaceatom--5965d1c887d8128ce288b801.md) | 21 | `declaration-track:5965d1c887d8128ce288b801c115e05eaa0bb2f0c8d7862a998dff2cbd042399` |
| 3 | `theorem` | [onset_pos](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualMangoldtLaplaceAttempt02/Variantc4cfd050b152110f2a49ca99f0615c3c2bb53afda9bce5aa2ba56ab01da25746.lean/declarations/onset-pos--5d33c1f272b54ee3ccad4830.md) | 25 | `result-track:5d33c1f272b54ee3ccad48305707d5c96b5c2f3165de2b409b0819d67d3e1671` |
| 4 | `theorem` | [weight_nonneg](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualMangoldtLaplaceAttempt02/Variantc4cfd050b152110f2a49ca99f0615c3c2bb53afda9bce5aa2ba56ab01da25746.lean/declarations/weight-nonneg--13952b872a580e1eed1888a4.md) | 28 | `result-track:13952b872a580e1eed1888a45504331049ec639d45cfdc28d333a05179063f21` |
| 5 | `theorem` | [atom_nonneg](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualMangoldtLaplaceAttempt02/Variantc4cfd050b152110f2a49ca99f0615c3c2bb53afda9bce5aa2ba56ab01da25746.lean/declarations/atom-nonneg--76eb40ecb368325a2ac212fc.md) | 32 | `result-track:76eb40ecb368325a2ac212fc3d66df03a48c39a8bd587f48203bf438b24c3d23` |
| 6 | `theorem` | [atom_measurable](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualMangoldtLaplaceAttempt02/Variantc4cfd050b152110f2a49ca99f0615c3c2bb53afda9bce5aa2ba56ab01da25746.lean/declarations/atom-measurable--ddb8a06d9fb849b7b2e44915.md) | 35 | `result-track:ddb8a06d9fb849b7b2e44915a7cfbfb17546fd7abe07eef04a116907736889d6` |
| 7 | `theorem` | [atom_integrable](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualMangoldtLaplaceAttempt02/Variantc4cfd050b152110f2a49ca99f0615c3c2bb53afda9bce5aa2ba56ab01da25746.lean/declarations/atom-integrable--40b287487a3590eabffc029b.md) | 41 | `result-track:40b287487a3590eabffc029b20d04cee191bc86ed40039689923f48b983e2f24` |
| 8 | `theorem` | [atom_integral](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualMangoldtLaplaceAttempt02/Variantc4cfd050b152110f2a49ca99f0615c3c2bb53afda9bce5aa2ba56ab01da25746.lean/declarations/atom-integral--e3d6ed34a7e203b9d8ddafc7.md) | 48 | `result-track:e3d6ed34a7e203b9d8ddafc7bf5e3f50629390550bbbee6cef4351d7556c1cb3` |
| 9 | `theorem` | [weighted_exp_eq_norm_term](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualMangoldtLaplaceAttempt02/Variantc4cfd050b152110f2a49ca99f0615c3c2bb53afda9bce5aa2ba56ab01da25746.lean/declarations/weighted-exp-eq-norm-term--83ea10e1c2a2f338cec0802b.md) | 56 | `result-track:83ea10e1c2a2f338cec0802b64decd7836604b8ece4401cb79fcfad6bf7d1f12` |
| 10 | `theorem` | [atom_norm_integrals_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualMangoldtLaplaceAttempt02/Variantc4cfd050b152110f2a49ca99f0615c3c2bb53afda9bce5aa2ba56ab01da25746.lean/declarations/atom-norm-integrals-summable--09d76a284fcef8405cbee941.md) | 69 | `result-track:09d76a284fcef8405cbee9411db11d11e7f0b86a4b7b7b4f2b7f71c9405bf5ca` |
| 11 | `theorem` | [onset_closed_iff](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualMangoldtLaplaceAttempt02/Variantc4cfd050b152110f2a49ca99f0615c3c2bb53afda9bce5aa2ba56ab01da25746.lean/declarations/onset-closed-iff--8b088bdc8cc474fcd8a9c629.md) | 82 | `result-track:8b088bdc8cc474fcd8a9c6292b75aa2be16d50cd7dd4887f89b801ad22919af9` |
| 12 | `theorem` | [atom_zero_outside](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualMangoldtLaplaceAttempt02/Variantc4cfd050b152110f2a49ca99f0615c3c2bb53afda9bce5aa2ba56ab01da25746.lean/declarations/atom-zero-outside--027918748e9542876c8b2290.md) | 87 | `result-track:027918748e9542876c8b2290fee467694b89c3644f266fa5f898822ae44d531d` |
| 13 | `theorem` | [atoms_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualMangoldtLaplaceAttempt02/Variantc4cfd050b152110f2a49ca99f0615c3c2bb53afda9bce5aa2ba56ab01da25746.lean/declarations/atoms-summable--05d9b4d39354f7f660244d8c.md) | 96 | `result-track:05d9b4d39354f7f660244d8c5c1227ac9905d0e30091a8bc28faa87e63b6123b` |
| 14 | `theorem` | [atoms_tsum_eq_actual](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualMangoldtLaplaceAttempt02/Variantc4cfd050b152110f2a49ca99f0615c3c2bb53afda9bce5aa2ba56ab01da25746.lean/declarations/atoms-tsum-eq-actual--9bba38a582cc6597fcb1abb0.md) | 99 | `result-track:9bba38a582cc6597fcb1abb07fabbf0e524e17c19048e92d3dea235395a967f3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
