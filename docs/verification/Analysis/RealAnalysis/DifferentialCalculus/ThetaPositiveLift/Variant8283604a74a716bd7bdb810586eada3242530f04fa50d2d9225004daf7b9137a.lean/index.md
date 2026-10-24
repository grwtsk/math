# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ThetaPositiveLift.Variant8283604a74a716bd7bdb810586eada3242530f04fa50d2d9225004daf7b9137a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "395749b4388e7651650eb6ab49b56c9a181c6b20",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant8283604a74a716bd7bdb810586eada3242530f04fa50d2d9225004daf7b9137a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant8283604a74a716bd7bdb810586eada3242530f04fa50d2d9225004daf7b9137a.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant8283604a74a716bd7bdb810586eada3242530f04fa50d2d9225004daf7b9137a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `395749b4388e7651650eb6ab49b56c9a181c6b20`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant8283604a74a716bd7bdb810586eada3242530f04fa50d2d9225004daf7b9137a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant8283604a74a716bd7bdb810586eada3242530f04fa50d2d9225004daf7b9137a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.ThetaTailCalculus` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.IteratedDeriv.Lemmas` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [sourcePowerTail](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant8283604a74a716bd7bdb810586eada3242530f04fa50d2d9225004daf7b9137a.lean/declarations/sourcepowertail--b2c18a41732c794418a9d55e.md) | 26 | `declaration-track:b2c18a41732c794418a9d55e45ef2af885887cc7c1dd4031942bca6b83c31101` |
| 2 | `theorem` | [source_power_integrable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant8283604a74a716bd7bdb810586eada3242530f04fa50d2d9225004daf7b9137a.lean/declarations/source-power-integrable--a6728232d6b65c5774c37763.md) | 29 | `result-track:a6728232d6b65c5774c37763778ed310527e750534ad873b3abbfbbff42c112e` |
| 3 | `theorem` | [sourcePowerTail_eq_sub](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant8283604a74a716bd7bdb810586eada3242530f04fa50d2d9225004daf7b9137a.lean/declarations/sourcepowertail-eq-sub--119d48e2f8d9f52ae780ef9e.md) | 44 | `result-track:119d48e2f8d9f52ae780ef9e92da30b260f0ce4cecc18bfe4087b1049ba83968` |
| 4 | `theorem` | [hasDerivAt_sourcePowerTail](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant8283604a74a716bd7bdb810586eada3242530f04fa50d2d9225004daf7b9137a.lean/declarations/hasderivat-sourcepowertail--bd8e274e44a7765d71ba715f.md) | 52 | `result-track:bd8e274e44a7765d71ba715f9529dbf1ec6984d6b91b3727498757cb65adaab6` |
| 5 | `def` | [tailBinomialCoeff](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant8283604a74a716bd7bdb810586eada3242530f04fa50d2d9225004daf7b9137a.lean/declarations/tailbinomialcoeff--409783c172d1e7352ad35565.md) | 62 | `declaration-track:409783c172d1e7352ad35565fca1801a766e6cbe70f1909394b30d99aa81230f` |
| 6 | `theorem` | [tailBinomialCoeff_sum](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant8283604a74a716bd7bdb810586eada3242530f04fa50d2d9225004daf7b9137a.lean/declarations/tailbinomialcoeff-sum--91f4ac626744cb3f857e6720.md) | 65 | `result-track:91f4ac626744cb3f857e6720618f0c1896bd8de75908eefe7467aa40a3a10f5b` |
| 7 | `theorem` | [hasDerivAt_tailBinomialCoeff](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant8283604a74a716bd7bdb810586eada3242530f04fa50d2d9225004daf7b9137a.lean/declarations/hasderivat-tailbinomialcoeff--aed6c6599c6b2db41759ddfd.md) | 73 | `result-track:aed6c6599c6b2db41759ddfd733c985c797a3fcdcce40f66ae343b4d36f37763` |
| 8 | `theorem` | [tailBinomialCoeff_deriv_sum](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant8283604a74a716bd7bdb810586eada3242530f04fa50d2d9225004daf7b9137a.lean/declarations/tailbinomialcoeff-deriv-sum--23e0046984d2a2ee81ab937a.md) | 79 | `result-track:23e0046984d2a2ee81ab937af4739a57f50ce165c412f827e66635de708f266d` |
| 9 | `theorem` | [integral_source_coeff_sum](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant8283604a74a716bd7bdb810586eada3242530f04fa50d2d9225004daf7b9137a.lean/declarations/integral-source-coeff-sum--a84c80031b119c4d3c355c47.md) | 96 | `result-track:a84c80031b119c4d3c355c47469e54296ccfc24f038c9068b16f29079d497f4d` |
| 10 | `theorem` | [thetaTail_eq_binomial](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant8283604a74a716bd7bdb810586eada3242530f04fa50d2d9225004daf7b9137a.lean/declarations/thetatail-eq-binomial--7fc236485fbfc4a8ac472367.md) | 107 | `result-track:7fc236485fbfc4a8ac472367750b408fd86f419cb968b1808a3826d4bd59fdfd` |
| 11 | `theorem` | [hasDerivAt_thetaTail_succ_succ](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant8283604a74a716bd7bdb810586eada3242530f04fa50d2d9225004daf7b9137a.lean/declarations/hasderivat-thetatail-succ-succ--fe481c671590d5f040c0bd1b.md) | 116 | `result-track:fe481c671590d5f040c0bd1b70c409fd632ad029fc865d37598c04417e4ee7c0` |
| 12 | `theorem` | [hasDerivAt_thetaTail_succ](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant8283604a74a716bd7bdb810586eada3242530f04fa50d2d9225004daf7b9137a.lean/declarations/hasderivat-thetatail-succ--078b0e0d0a0020ab63b63324.md) | 152 | `result-track:078b0e0d0a0020ab63b633243f784f5658155905f5aa20fd68598d6a95c00e8d` |
| 13 | `theorem` | [deriv_thetaTail_succ](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant8283604a74a716bd7bdb810586eada3242530f04fa50d2d9225004daf7b9137a.lean/declarations/deriv-thetatail-succ--3073125a64c2db48c67dd07f.md) | 159 | `result-track:3073125a64c2db48c67dd07fa356a147f21852d4b81593cbb156dd41bb596080` |
| 14 | `theorem` | [iteratedDeriv_thetaTail_add](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant8283604a74a716bd7bdb810586eada3242530f04fa50d2d9225004daf7b9137a.lean/declarations/iteratedderiv-thetatail-add--9929eb8d471f77d273a952c6.md) | 165 | `result-track:9929eb8d471f77d273a952c6d25d387933f6c34ef95edb7364eeda02d4d9ff69` |
| 15 | `theorem` | [iteratedDeriv_thetaTail](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant8283604a74a716bd7bdb810586eada3242530f04fa50d2d9225004daf7b9137a.lean/declarations/iteratedderiv-thetatail--1106f0652114f2eb418ac1a9.md) | 179 | `result-track:1106f0652114f2eb418ac1a97942eb6bbb25cb0fcebd989504d0da45200db204` |
| 16 | `theorem` | [continuous_thetaTail](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant8283604a74a716bd7bdb810586eada3242530f04fa50d2d9225004daf7b9137a.lean/declarations/continuous-thetatail--0a9be5cc65981e7c5bca9451.md) | 185 | `result-track:0a9be5cc65981e7c5bca94512e528677babe4c0f1197675112701dc00c139a73` |
| 17 | `theorem` | [contDiff_thetaTail_order](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant8283604a74a716bd7bdb810586eada3242530f04fa50d2d9225004daf7b9137a.lean/declarations/contdiff-thetatail-order--b350ca41e2837ace3a717c43.md) | 192 | `result-track:b350ca41e2837ace3a717c436bf0f65edd72b52e2ebe13e796b3c8afb06682d7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
