# Verification target: GRWTSK.NumberTheory.ArithmeticFunctions.ExcludedDensityCorrection

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dbd76c9bcd8ab8764e07242a352a67dadd8c8b24",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ArithmeticFunctions/ExcludedDensityCorrection.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ExcludedDensityCorrection.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ExcludedDensityCorrection.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dbd76c9bcd8ab8764e07242a352a67dadd8c8b24`.

Source path: `GRWTSK/NumberTheory/ArithmeticFunctions/ExcludedDensityCorrection.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ArithmeticFunctions/ExcludedDensityCorrection.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.ArithmeticFunctions.PositiveDensityCorrection`](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PositiveDensityCorrection.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [excludedDensityMoebius](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ExcludedDensityCorrection.lean/declarations/excludeddensitymoebius--2c00b7ef00a920646e9ed827.md) | 19 | `declaration-track:2c00b7ef00a920646e9ed82784753975cab01fb57135c944189737e5c0c80f13` |
| 2 | `def` | [excludedDensityCorrection](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ExcludedDensityCorrection.lean/declarations/excludeddensitycorrection--36a673feb7830068b7f1f72d.md) | 22 | `declaration-track:36a673feb7830068b7f1f72d78aaed132b12c63f4eb361060d9ab07c3aae26be` |
| 3 | `theorem` | [excluded_density_source_apply](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ExcludedDensityCorrection.lean/declarations/excluded-density-source-apply--73a1300f1420168b0dbde21f.md) | 25 | `result-track:73a1300f1420168b0dbde21f3f25961971227fcc2f8996e05c9dde1aeb2d7d6a` |
| 4 | `theorem` | [excluded_density_source_one](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ExcludedDensityCorrection.lean/declarations/excluded-density-source-one--efdd1ba22e23ca1462bb2aaa.md) | 28 | `result-track:efdd1ba22e23ca1462bb2aaa155c7d4f23d98d2f9abd3034e9d608d6c077f62a` |
| 5 | `theorem` | [excluded_density_source_multiplicative](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ExcludedDensityCorrection.lean/declarations/excluded-density-source-multiplicative--06d073a126df54578de4904c.md) | 31 | `result-track:06d073a126df54578de4904c56f1cd81d3c98f7f37530e81719bcf9a3b54d805` |
| 6 | `theorem` | [excluded_density_correction_multiplicative](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ExcludedDensityCorrection.lean/declarations/excluded-density-correction-multiplicative--06242cb8f5060a0c3c2c83d7.md) | 42 | `result-track:06242cb8f5060a0c3c2c83d7ee4c97fb57613fbefa6906380a977bbcf615e3b4` |
| 7 | `theorem` | [excluded_density_correction_return](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ExcludedDensityCorrection.lean/declarations/excluded-density-correction-return--7b1424cbd1042a7e8c80dd86.md) | 46 | `result-track:7b1424cbd1042a7e8c80dd86808582893b9151d09c540687da797cbbf747b4a0` |
| 8 | `theorem` | [excluded_density_correction_divisors](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ExcludedDensityCorrection.lean/declarations/excluded-density-correction-divisors--cb8dcb36df43879e62c22c85.md) | 53 | `result-track:cb8dcb36df43879e62c22c856cb69f3aaf189cb00f7657819d5108a76f588aa6` |
| 9 | `theorem` | [excluded_density_correction_one](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ExcludedDensityCorrection.lean/declarations/excluded-density-correction-one--20f7b452fdb0eff2bfc4c1a3.md) | 58 | `result-track:20f7b452fdb0eff2bfc4c1a3ed5347050c598d9b25bacc1a1c3bcc6200add7dd` |
| 10 | `theorem` | [excluded_density_source_prime_power](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ExcludedDensityCorrection.lean/declarations/excluded-density-source-prime-power--f7cdce1a1b37a3e7b578c764.md) | 62 | `result-track:f7cdce1a1b37a3e7b578c76453cf768ad5cf20227541d8579bd262abe2d1a711` |
| 11 | `theorem` | [excluded_density_correction_prime_power](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ExcludedDensityCorrection.lean/declarations/excluded-density-correction-prime-power--d1ca2f149d16443f65611bbc.md) | 69 | `result-track:d1ca2f149d16443f65611bbc3c52c503fc604a6d128feb6721789e40eba73fdf` |
| 12 | `theorem` | [excluded_density_correction_bounds](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ExcludedDensityCorrection.lean/declarations/excluded-density-correction-bounds--851addff6eaa2b3ca7efb7f4.md) | 96 | `result-track:851addff6eaa2b3ca7efb7f48548d0f05a749e8b6cc8f4936b442a55b3e1c54a` |
| 13 | `theorem` | [excluded_density_correction_pos](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ExcludedDensityCorrection.lean/declarations/excluded-density-correction-pos--49c3cc82fb23d62e79cf64f1.md) | 115 | `result-track:49c3cc82fb23d62e79cf64f159a8c543f8616b8bb5f9a232fae22f095901fbd5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
