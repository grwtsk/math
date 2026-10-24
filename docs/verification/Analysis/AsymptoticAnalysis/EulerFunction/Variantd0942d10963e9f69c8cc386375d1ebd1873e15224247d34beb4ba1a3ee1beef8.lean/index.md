# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.EulerFunction.Variantd0942d10963e9f69c8cc386375d1ebd1873e15224247d34beb4ba1a3ee1beef8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6716622248c8a860cefda6fa8ef560265949dadf",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/EulerFunction/Variantd0942d10963e9f69c8cc386375d1ebd1873e15224247d34beb4ba1a3ee1beef8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/EulerFunction/Variantd0942d10963e9f69c8cc386375d1ebd1873e15224247d34beb4ba1a3ee1beef8.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/EulerFunction/Variantd0942d10963e9f69c8cc386375d1ebd1873e15224247d34beb4ba1a3ee1beef8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6716622248c8a860cefda6fa8ef560265949dadf`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/EulerFunction/Variantd0942d10963e9f69c8cc386375d1ebd1873e15224247d34beb4ba1a3ee1beef8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/EulerFunction/Variantd0942d10963e9f69c8cc386375d1ebd1873e15224247d34beb4ba1a3ee1beef8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Log.Summable` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.Combinatorics.Enumerative.Pentagonal.Ring` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [pow_mul_prod_bound](../../../../../mathematics/Analysis/AsymptoticAnalysis/EulerFunction/Variantd0942d10963e9f69c8cc386375d1ebd1873e15224247d34beb4ba1a3ee1beef8.lean/declarations/pow-mul-prod-bound--7c8ee2797967f0c4b96db007.md) | 51 | `result-track:7c8ee2797967f0c4b96db0071bff969d3daa3e56dd0b28b2119a877c7836a87e` |
| 2 | `lemma` | [summable_norm_pow_mul_prod](../../../../../mathematics/Analysis/AsymptoticAnalysis/EulerFunction/Variantd0942d10963e9f69c8cc386375d1ebd1873e15224247d34beb4ba1a3ee1beef8.lean/declarations/summable-norm-pow-mul-prod--582b344df20dffb7ae274582.md) | 63 | `result-track:582b344df20dffb7ae27458224b9637638b3663790e5908efb09483434401d1a` |
| 3 | `lemma` | [tsum_pow_mul_prod_bound](../../../../../mathematics/Analysis/AsymptoticAnalysis/EulerFunction/Variantd0942d10963e9f69c8cc386375d1ebd1873e15224247d34beb4ba1a3ee1beef8.lean/declarations/tsum-pow-mul-prod-bound--59684b6cb90314e114baa8e6.md) | 71 | `result-track:59684b6cb90314e114baa8e6d39a32150447a1e1d14e3fbaf4a27d38bf103ca4` |
| 4 | `lemma` | [multipliable_one_sub_pow_add](../../../../../mathematics/Analysis/AsymptoticAnalysis/EulerFunction/Variantd0942d10963e9f69c8cc386375d1ebd1873e15224247d34beb4ba1a3ee1beef8.lean/declarations/multipliable-one-sub-pow-add--457d7491dd1901d7a3e35176.md) | 82 | `result-track:457d7491dd1901d7a3e35176ea3a190902ad43a8ae0f6c19bd908c86b23bf211` |
| 5 | `def` | [eulerFunction](../../../../../mathematics/Analysis/AsymptoticAnalysis/EulerFunction/Variantd0942d10963e9f69c8cc386375d1ebd1873e15224247d34beb4ba1a3ee1beef8.lean/declarations/eulerfunction--8bfa53554081dc3dcc696ff3.md) | 96 | `declaration-track:8bfa53554081dc3dcc696ff3879324c68971ee9e00c529d61224eac43f0fcf0b` |
| 6 | `theorem` | [eulerFunction_def](../../../../../mathematics/Analysis/AsymptoticAnalysis/EulerFunction/Variantd0942d10963e9f69c8cc386375d1ebd1873e15224247d34beb4ba1a3ee1beef8.lean/declarations/eulerfunction-def--f390d3950887f245074688c5.md) | 100 | `result-track:f390d3950887f245074688c5f18d1281fc9533164527bfb1b6a7150d83665416` |
| 7 | `theorem` | [eulerFunction_eq_tsum_pentagonal](../../../../../mathematics/Analysis/AsymptoticAnalysis/EulerFunction/Variantd0942d10963e9f69c8cc386375d1ebd1873e15224247d34beb4ba1a3ee1beef8.lean/declarations/eulerfunction-eq-tsum-pentagonal--ec39c930f904c69ce9a72d3b.md) | 105 | `result-track:ec39c930f904c69ce9a72d3b1e6c88d328fc1c59562bea4ca058443292082814` |
| 8 | `theorem` | [hasSum_eulerFunction_pentagonalSeries](../../../../../mathematics/Analysis/AsymptoticAnalysis/EulerFunction/Variantd0942d10963e9f69c8cc386375d1ebd1873e15224247d34beb4ba1a3ee1beef8.lean/declarations/hassum-eulerfunction-pentagonalseries--cb3ecba3b180c8a1bc0a50b0.md) | 111 | `result-track:cb3ecba3b180c8a1bc0a50b05d473a7a0a20f6716e93c798cec80e37f97b2264` |
| 9 | `theorem` | [hasSum_eulerFunction_pentagonal](../../../../../mathematics/Analysis/AsymptoticAnalysis/EulerFunction/Variantd0942d10963e9f69c8cc386375d1ebd1873e15224247d34beb4ba1a3ee1beef8.lean/declarations/hassum-eulerfunction-pentagonal--54dd7ff2f0e81d48fd747220.md) | 122 | `result-track:54dd7ff2f0e81d48fd747220ab3c82e738615a4adb72819a227d45d026cce998` |
| 10 | `theorem` | [hasSum_eulerFunction_pentagonal_pair](../../../../../mathematics/Analysis/AsymptoticAnalysis/EulerFunction/Variantd0942d10963e9f69c8cc386375d1ebd1873e15224247d34beb4ba1a3ee1beef8.lean/declarations/hassum-eulerfunction-pentagonal-pair--f925c97e21926f1922f5646e.md) | 127 | `result-track:f925c97e21926f1922f5646ee4c367c3b166dda2b501bfb1eabaaee65abe070f` |
| 11 | `theorem` | [eulerFunction_eq_tsum_pentagonal_pair](../../../../../mathematics/Analysis/AsymptoticAnalysis/EulerFunction/Variantd0942d10963e9f69c8cc386375d1ebd1873e15224247d34beb4ba1a3ee1beef8.lean/declarations/eulerfunction-eq-tsum-pentagonal-pair--2e9330ca6702cdefd0b9859e.md) | 136 | `result-track:2e9330ca6702cdefd0b9859e5f5f4bd18151fa251f2f21621b626308a3d8adab` |
| 12 | `theorem` | [eulerFunction_eq_tprod](../../../../../mathematics/Analysis/AsymptoticAnalysis/EulerFunction/Variantd0942d10963e9f69c8cc386375d1ebd1873e15224247d34beb4ba1a3ee1beef8.lean/declarations/eulerfunction-eq-tprod--83fb0c168fcdf4a66407f4e5.md) | 142 | `result-track:83fb0c168fcdf4a66407f4e5e21cae7cc18715ab55ce70edcc71baa2501d55ef` |
| 13 | `theorem` | [hasProd_eulerFunction](../../../../../mathematics/Analysis/AsymptoticAnalysis/EulerFunction/Variantd0942d10963e9f69c8cc386375d1ebd1873e15224247d34beb4ba1a3ee1beef8.lean/declarations/hasprod-eulerfunction--95974d8a9041661244d4f9c4.md) | 159 | `result-track:95974d8a9041661244d4f9c42ca9f3d58f0c292451033364bd5a18feca2442e8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
