# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Variante79f3d589f7182d10f8de31bab65e420a526173bee74bbace839fc178f26d761

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ad91a688c786de277f5344fbd04d9fea2d5ab936",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variante79f3d589f7182d10f8de31bab65e420a526173bee74bbace839fc178f26d761.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variante79f3d589f7182d10f8de31bab65e420a526173bee74bbace839fc178f26d761.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variante79f3d589f7182d10f8de31bab65e420a526173bee74bbace839fc178f26d761.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ad91a688c786de277f5344fbd04d9fea2d5ab936`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variante79f3d589f7182d10f8de31bab65e420a526173bee74bbace839fc178f26d761.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variante79f3d589f7182d10f8de31bab65e420a526173bee74bbace839fc178f26d761.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateMertensResidual` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Factorization.PrimePow` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [primeFirstMoment](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variante79f3d589f7182d10f8de31bab65e420a526173bee74bbace839fc178f26d761.lean/declarations/primefirstmoment--b903ec7d0519509ef52dd79b.md) | 32 | `declaration-track:b903ec7d0519509ef52dd79bfb6e56bf937525368f8025b7a33c91dce4414c69` |
| 2 | `def` | [evenPowerMoment](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variante79f3d589f7182d10f8de31bab65e420a526173bee74bbace839fc178f26d761.lean/declarations/evenpowermoment--e4d12e4b7c34d2dff71a44b7.md) | 38 | `declaration-track:e4d12e4b7c34d2dff71a44b70e88f7718156399f6485c9319abfc446154fa536` |
| 3 | `def` | [oddHigherMoment](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variante79f3d589f7182d10f8de31bab65e420a526173bee74bbace839fc178f26d761.lean/declarations/oddhighermoment--60cdc0d4409e896487fb3f1e.md) | 43 | `declaration-track:60cdc0d4409e896487fb3f1ea5bbcd31a989c0fadd1618774bd96a0c17d49fb7` |
| 4 | `theorem` | [square_cutoff_iff](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variante79f3d589f7182d10f8de31bab65e420a526173bee74bbace839fc178f26d761.lean/declarations/square-cutoff-iff--58b3bcb89896fa67146bd19c.md) | 51 | `result-track:58b3bcb89896fa67146bd19c6e74e4caca151f08cca8c909929314c3b6712105` |
| 5 | `theorem` | [square_mem_inventory_iff](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variante79f3d589f7182d10f8de31bab65e420a526173bee74bbace839fc178f26d761.lean/declarations/square-mem-inventory-iff--df329cf39d2ed836fc0e94d3.md) | 57 | `result-track:df329cf39d2ed836fc0e94d34d3bc928d7db6c28bfbefb5d4feb45bae05a7b08` |
| 6 | `theorem` | [sum_square_inventory](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variante79f3d589f7182d10f8de31bab65e420a526173bee74bbace839fc178f26d761.lean/declarations/sum-square-inventory--ae6e23cc57222b066cfad8b7.md) | 71 | `result-track:ae6e23cc57222b066cfad8b7e0e3a9133ce5e1ee179b24267c989d53049a07e2` |
| 7 | `theorem` | [odd_power_properties](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variante79f3d589f7182d10f8de31bab65e420a526173bee74bbace839fc178f26d761.lean/declarations/odd-power-properties--99e07a2ca53e14cee7ac3126.md) | 90 | `result-track:99e07a2ca53e14cee7ac3126c623ef06d2d144ea238fd6c186fd2c7b1979e77b` |
| 8 | `theorem` | [sum_odd_prime_power_inventory](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variante79f3d589f7182d10f8de31bab65e420a526173bee74bbace839fc178f26d761.lean/declarations/sum-odd-prime-power-inventory--b838732d823aa5d309a2d8fe.md) | 105 | `result-track:b838732d823aa5d309a2d8fe009eef239bad4bcce89a1faec8a2176befae2b31` |
| 9 | `def` | [sourceTerm](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variante79f3d589f7182d10f8de31bab65e420a526173bee74bbace839fc178f26d761.lean/declarations/sourceterm--51e6bcb88150ab6a82f2d17b.md) | 161 | `declaration-track:51e6bcb88150ab6a82f2d17b0b0604d11e8de48da08bd4571ab6c9a49ff2872e` |
| 10 | `theorem` | [sourceTerm_partition](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variante79f3d589f7182d10f8de31bab65e420a526173bee74bbace839fc178f26d761.lean/declarations/sourceterm-partition--8b6f594c183ab6db6ca54bf2.md) | 165 | `result-track:8b6f594c183ab6db6ca54bf296086a09bf339485dfe82539a5ab3652fdc6c409` |
| 11 | `theorem` | [sourceTerm_prime](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variante79f3d589f7182d10f8de31bab65e420a526173bee74bbace839fc178f26d761.lean/declarations/sourceterm-prime--4e656b9e7962a52985bd6102.md) | 185 | `result-track:4e656b9e7962a52985bd6102edceab3b5603c177db6a9adb528f980b5f3d7b4d` |
| 12 | `theorem` | [sourceTerm_square](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variante79f3d589f7182d10f8de31bab65e420a526173bee74bbace839fc178f26d761.lean/declarations/sourceterm-square--2ba068c333364ab560aba0cb.md) | 190 | `result-track:2ba068c333364ab560aba0cb525335dd45b4725756e9caf7a6086b8b2379c8df` |
| 13 | `theorem` | [sourceTerm_odd_power](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variante79f3d589f7182d10f8de31bab65e420a526173bee74bbace839fc178f26d761.lean/declarations/sourceterm-odd-power--c9cb38ece07a6493300b35c7.md) | 196 | `result-track:c9cb38ece07a6493300b35c7d29fab859cbd886029cf66df03f2c01211b1872a` |
| 14 | `theorem` | [closedPrimeMoment_eq_prime_power_sectors](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variante79f3d589f7182d10f8de31bab65e420a526173bee74bbace839fc178f26d761.lean/declarations/closedprimemoment-eq-prime-power-sectors--2c7f03074aba52a2a8f69ba1.md) | 204 | `result-track:2c7f03074aba52a2a8f69ba128dd29d421d40e690912d8bbefe50b419a5d8ab9` |
| 15 | `theorem` | [mertensResidual_eq_prime_power_sectors](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variante79f3d589f7182d10f8de31bab65e420a526173bee74bbace839fc178f26d761.lean/declarations/mertensresidual-eq-prime-power-sectors--0b7b3b5db1184cc1cc10b21f.md) | 239 | `result-track:0b7b3b5db1184cc1cc10b21f46b3a6f9b2dd9ef8c63be5fd2d08bb568d44dfbd` |
| 16 | `theorem` | [primePowerContribution_eq_prime_power_sectors](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variante79f3d589f7182d10f8de31bab65e420a526173bee74bbace839fc178f26d761.lean/declarations/primepowercontribution-eq-prime-power-sectors--a5cec3d06f7292bfb5535760.md) | 244 | `result-track:a5cec3d06f7292bfb5535760252958998ecbce696da8207174446a3e6f8b7499` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
