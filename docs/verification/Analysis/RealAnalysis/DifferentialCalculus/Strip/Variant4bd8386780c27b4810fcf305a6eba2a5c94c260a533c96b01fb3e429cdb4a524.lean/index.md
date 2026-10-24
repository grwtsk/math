# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Strip.Variant4bd8386780c27b4810fcf305a6eba2a5c94c260a533c96b01fb3e429cdb4a524

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ac44c49c44d5089268b23a66c0bd640550a8efe2",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Strip/Variant4bd8386780c27b4810fcf305a6eba2a5c94c260a533c96b01fb3e429cdb4a524.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Strip/Variant4bd8386780c27b4810fcf305a6eba2a5c94c260a533c96b01fb3e429cdb4a524.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Strip/Variant4bd8386780c27b4810fcf305a6eba2a5c94c260a533c96b01fb3e429cdb4a524.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ac44c49c44d5089268b23a66c0bd640550a8efe2`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Strip/Variant4bd8386780c27b4810fcf305a6eba2a5c94c260a533c96b01fb3e429cdb4a524.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Strip/Variant4bd8386780c27b4810fcf305a6eba2a5c94c260a533c96b01fb3e429cdb4a524.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Star.Real` — import line 19; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Bochner.Set` — import line 20; external provider; requires a separately pinned dependency.
- `Zeta23.Taper.Basic` — import line 21; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [phiC_contDiff](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Strip/Variant4bd8386780c27b4810fcf305a6eba2a5c94c260a533c96b01fb3e429cdb4a524.lean/declarations/phic-contdiff--ede459eebbd4c02d9834ff09.md) | 37 | `result-track:ede459eebbd4c02d9834ff0944a383f326cb3618a9f5453315c7980a6cbc955f` |
| 2 | `theorem` | [phiC_support](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Strip/Variant4bd8386780c27b4810fcf305a6eba2a5c94c260a533c96b01fb3e429cdb4a524.lean/declarations/phic-support--1b7522428221eb29cddbe14a.md) | 41 | `result-track:1b7522428221eb29cddbe14ac9ff4dc37e783579aff686146853c8eeeea55cbc` |
| 3 | `theorem` | [deriv_ofReal_comp](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Strip/Variant4bd8386780c27b4810fcf305a6eba2a5c94c260a533c96b01fb3e429cdb4a524.lean/declarations/deriv-ofreal-comp--84b292ba74d08d4abd1224bd.md) | 48 | `result-track:84b292ba74d08d4abd1224bd52cf7fbba2412b607b97fca5f77a65abaf302ad3` |
| 4 | `theorem` | [deriv_deriv_phiC](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Strip/Variant4bd8386780c27b4810fcf305a6eba2a5c94c260a533c96b01fb3e429cdb4a524.lean/declarations/deriv-deriv-phic--2f1bc996831aee397d86e917.md) | 53 | `result-track:2f1bc996831aee397d86e917303d8a590fed450b0c709cbb7309f2cee2f0521d` |
| 5 | `theorem` | [norm_phiHat_mul_sq_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Strip/Variant4bd8386780c27b4810fcf305a6eba2a5c94c260a533c96b01fb3e429cdb4a524.lean/declarations/norm-phihat-mul-sq-le--299db0689045b5d24725f8fc.md) | 64 | `result-track:299db0689045b5d24725f8fc7a57c26e9fb89703fcbd90afc86dd2611fbfbfb8` |
| 6 | `theorem` | [integral_phi_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Strip/Variant4bd8386780c27b4810fcf305a6eba2a5c94c260a533c96b01fb3e429cdb4a524.lean/declarations/integral-phi-le--11c634c4da8cb0296a171e25.md) | 73 | `result-track:11c634c4da8cb0296a171e259747c153982022d470508fd3e4d32e6225037939` |
| 7 | `theorem` | [norm_phiHat_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Strip/Variant4bd8386780c27b4810fcf305a6eba2a5c94c260a533c96b01fb3e429cdb4a524.lean/declarations/norm-phihat-le--ad1ccfba1f2e3bbaaed987b6.md) | 93 | `result-track:ad1ccfba1f2e3bbaaed987b692882cb9d6641f8a20ccb5c376814b12ecac3fd2` |
| 8 | `theorem` | [norm_phiHat_sub_I_mul_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Strip/Variant4bd8386780c27b4810fcf305a6eba2a5c94c260a533c96b01fb3e429cdb4a524.lean/declarations/norm-phihat-sub-i-mul-le--3315c3969efd85fd62a6b7c9.md) | 106 | `result-track:3315c3969efd85fd62a6b7c9501ac7187c6298a380d640b897afd440f218ff22` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
