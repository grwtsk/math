# Verification target: GRWTSK.NumberTheory.SourceActualEulerPotentialZetaPhaseNative03.Variant493a19f5a900947dda10a8fe7a1c873e41809a92637a3de9501ce6a23befc1dd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e7c4830aaf8698d07434f78c49a281c08d7ca8d3",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/SourceActualEulerPotentialZetaPhaseNative03/Variant493a19f5a900947dda10a8fe7a1c873e41809a92637a3de9501ce6a23befc1dd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/SourceActualEulerPotentialZetaPhaseNative03/Variant493a19f5a900947dda10a8fe7a1c873e41809a92637a3de9501ce6a23befc1dd.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/SourceActualEulerPotentialZetaPhaseNative03/Variant493a19f5a900947dda10a8fe7a1c873e41809a92637a3de9501ce6a23befc1dd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e7c4830aaf8698d07434f78c49a281c08d7ca8d3`.

Source path: `GRWTSK/NumberTheory/SourceActualEulerPotentialZetaPhaseNative03/Variant493a19f5a900947dda10a8fe7a1c873e41809a92637a3de9501ce6a23befc1dd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/SourceActualEulerPotentialZetaPhaseNative03/Variant493a19f5a900947dda10a8fe7a1c873e41809a92637a3de9501ce6a23befc1dd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceActualEulerPotentialPhase` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.EulerProduct.DirichletLSeries` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [coeff](../../../../mathematics/NumberTheory/SourceActualEulerPotentialZetaPhaseNative03/Variant493a19f5a900947dda10a8fe7a1c873e41809a92637a3de9501ce6a23befc1dd.lean/declarations/coeff--7f5779fde02911eb407a898c.md) | 17 | `declaration-track:7f5779fde02911eb407a898cdca2ba1101d8753e071408c769dea4a085df586c` |
| 2 | `theorem` | [coeff_norm_le](../../../../mathematics/NumberTheory/SourceActualEulerPotentialZetaPhaseNative03/Variant493a19f5a900947dda10a8fe7a1c873e41809a92637a3de9501ce6a23befc1dd.lean/declarations/coeff-norm-le--7895a6f391440474ca263cf2.md) | 20 | `result-track:7895a6f391440474ca263cf2b9cf7432553e246396852f824232206ea076a430` |
| 3 | `def` | [actualFullPrimeLogPotential](../../../../mathematics/NumberTheory/SourceActualEulerPotentialZetaPhaseNative03/Variant493a19f5a900947dda10a8fe7a1c873e41809a92637a3de9501ce6a23befc1dd.lean/declarations/actualfullprimelogpotential--38ff0ac48c05a5d07d6ec7b2.md) | 32 | `declaration-track:38ff0ac48c05a5d07d6ec7b21ec6f5c79e7530b9ac8736842b8bb3acd6d29a14` |
| 4 | `theorem` | [actualFullPrimeLogPotential_summable](../../../../mathematics/NumberTheory/SourceActualEulerPotentialZetaPhaseNative03/Variant493a19f5a900947dda10a8fe7a1c873e41809a92637a3de9501ce6a23befc1dd.lean/declarations/actualfullprimelogpotential-summable--bd444a620afadd407459944c.md) | 35 | `result-track:bd444a620afadd407459944c2b09e336f3b9d4e57ee0300776ec879d5183b38d` |
| 5 | `theorem` | [actualFullPrimeLogPotential_exp_eq_zeta](../../../../mathematics/NumberTheory/SourceActualEulerPotentialZetaPhaseNative03/Variant493a19f5a900947dda10a8fe7a1c873e41809a92637a3de9501ce6a23befc1dd.lean/declarations/actualfullprimelogpotential-exp-eq-zeta--35e93a5654b283c6866db066.md) | 41 | `result-track:35e93a5654b283c6866db0668136c9fc5ca62800debb3280f2dc476eeb34e652` |
| 6 | `theorem` | [term_eq_exp](../../../../mathematics/NumberTheory/SourceActualEulerPotentialZetaPhaseNative03/Variant493a19f5a900947dda10a8fe7a1c873e41809a92637a3de9501ce6a23befc1dd.lean/declarations/term-eq-exp--513e0f2ee8646c6cbb3ea3c7.md) | 46 | `result-track:513e0f2ee8646c6cbb3ea3c7e7b2cee2a4d913d0f8222270df255a5761a92066` |
| 7 | `theorem` | [actualClosedPrimeLogPotential_tendsto_full](../../../../mathematics/NumberTheory/SourceActualEulerPotentialZetaPhaseNative03/Variant493a19f5a900947dda10a8fe7a1c873e41809a92637a3de9501ce6a23befc1dd.lean/declarations/actualclosedprimelogpotential-tendsto-full--d74fdadc541979b0b7de2640.md) | 60 | `result-track:d74fdadc541979b0b7de264059e4d7bd84d0bb9f54fc7784a95b96471c1fe4fc` |
| 8 | `theorem` | [actualFullPrimeLogPotential_re_negative](../../../../mathematics/NumberTheory/SourceActualEulerPotentialZetaPhaseNative03/Variant493a19f5a900947dda10a8fe7a1c873e41809a92637a3de9501ce6a23befc1dd.lean/declarations/actualfullprimelogpotential-re-negative--c254856c78b3cad62f5eeac0.md) | 74 | `result-track:c254856c78b3cad62f5eeac0cee9b6eae1f1d0273344f9664bf476d153490e60` |
| 9 | `theorem` | [actualZeta_norm_at_prime_two_phase_le](../../../../mathematics/NumberTheory/SourceActualEulerPotentialZetaPhaseNative03/Variant493a19f5a900947dda10a8fe7a1c873e41809a92637a3de9501ce6a23befc1dd.lean/declarations/actualzeta-norm-at-prime-two-phase-le--9daefb4d2072fdb21b6c6b6e.md) | 87 | `result-track:9daefb4d2072fdb21b6c6b6e010d64477072369ee46086647919ce94a90b0249` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
