# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.FiniteDensityInsertionAudit.Variant3989f68719498cd418e06754f4f598023b4db64010052e5049eac5c7fe11fff8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2b20d07e9f1957b1a561ded3b6c086a9bf30e4c5",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/FiniteDensityInsertionAudit/Variant3989f68719498cd418e06754f4f598023b4db64010052e5049eac5c7fe11fff8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/FiniteDensityInsertionAudit/Variant3989f68719498cd418e06754f4f598023b4db64010052e5049eac5c7fe11fff8.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/FiniteDensityInsertionAudit/Variant3989f68719498cd418e06754f4f598023b4db64010052e5049eac5c7fe11fff8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2b20d07e9f1957b1a561ded3b6c086a9bf30e4c5`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/FiniteDensityInsertionAudit/Variant3989f68719498cd418e06754f4f598023b4db64010052e5049eac5c7fe11fff8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/FiniteDensityInsertionAudit/Variant3989f68719498cd418e06754f4f598023b4db64010052e5049eac5c7fe11fff8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.TwoInsertionBoundary` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.SquarefreeCount` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [coprimeReciprocalSquareSum](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/FiniteDensityInsertionAudit/Variant3989f68719498cd418e06754f4f598023b4db64010052e5049eac5c7fe11fff8.lean/declarations/coprimereciprocalsquaresum--29ae589b938a0ec483c41209.md) | 22 | `declaration-track:29ae589b938a0ec483c41209caf81fc2a5d80645998c0906275e3417cce92f7b` |
| 2 | `theorem` | [coprimeDensity_mul](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/FiniteDensityInsertionAudit/Variant3989f68719498cd418e06754f4f598023b4db64010052e5049eac5c7fe11fff8.lean/declarations/coprimedensity-mul--206252f72746f11a46db7831.md) | 26 | `result-track:206252f72746f11a46db78313bdd488eb240fb69c315fc6e7f33454162b0978b` |
| 3 | `theorem` | [coprimeDensity_two](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/FiniteDensityInsertionAudit/Variant3989f68719498cd418e06754f4f598023b4db64010052e5049eac5c7fe11fff8.lean/declarations/coprimedensity-two--7873a8bc9ef9e79e8a0dc4c4.md) | 47 | `result-track:7873a8bc9ef9e79e8a0dc4c42fcb11a849b691a3da7d5b2170eaa5427d40aa19` |
| 4 | `theorem` | [coprimeDensity_two_mul](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/FiniteDensityInsertionAudit/Variant3989f68719498cd418e06754f4f598023b4db64010052e5049eac5c7fe11fff8.lean/declarations/coprimedensity-two-mul--04bdc95af0d894dd778057b5.md) | 51 | `result-track:04bdc95af0d894dd778057b5dfbdb835e095d0a6278e95b6f9f17b4a343e059e` |
| 5 | `theorem` | [coprimeReciprocalSquareSum_two_split](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/FiniteDensityInsertionAudit/Variant3989f68719498cd418e06754f4f598023b4db64010052e5049eac5c7fe11fff8.lean/declarations/coprimereciprocalsquaresum-two-split--8a3384f5362868d6b25d063a.md) | 56 | `result-track:8a3384f5362868d6b25d063aa13440264e5ad13123a3568b0e137f4588ca858b` |
| 6 | `theorem` | [coprimeReciprocalSquareSum_difference](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/FiniteDensityInsertionAudit/Variant3989f68719498cd418e06754f4f598023b4db64010052e5049eac5c7fe11fff8.lean/declarations/coprimereciprocalsquaresum-difference--440c0b7341c126582a84d072.md) | 90 | `result-track:440c0b7341c126582a84d072f96dbfc3878fcb737559bb60f1862b763f65798f` |
| 7 | `theorem` | [finiteSquarefreeDensity_two_error_eq](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/FiniteDensityInsertionAudit/Variant3989f68719498cd418e06754f4f598023b4db64010052e5049eac5c7fe11fff8.lean/declarations/finitesquarefreedensity-two-error-eq--12d024560b220ced42d05da3.md) | 107 | `result-track:12d024560b220ced42d05da3d60df9a9584a8a4b4b7f721a3bbf3d84e62116df` |
| 8 | `theorem` | [coprimeReciprocalSquareSum_tail_abs_le](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/FiniteDensityInsertionAudit/Variant3989f68719498cd418e06754f4f598023b4db64010052e5049eac5c7fe11fff8.lean/declarations/coprimereciprocalsquaresum-tail-abs-le--662b372a6bb22ad0b9ada636.md) | 119 | `result-track:662b372a6bb22ad0b9ada63656c719466a93f501456c1b5d7cba225631bea02f` |
| 9 | `theorem` | [finiteSquarefreeDensity_two_error_le_half_cutoff](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/FiniteDensityInsertionAudit/Variant3989f68719498cd418e06754f4f598023b4db64010052e5049eac5c7fe11fff8.lean/declarations/finitesquarefreedensity-two-error-le-half-cutoff--f5c3437c8f41dbd1cc5a02db.md) | 138 | `result-track:f5c3437c8f41dbd1cc5a02db48e197d0feccd524be19e1548ae93b86ffc21327` |
| 10 | `theorem` | [finiteSquarefreeDensity_two_error_le](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/FiniteDensityInsertionAudit/Variant3989f68719498cd418e06754f4f598023b4db64010052e5049eac5c7fe11fff8.lean/declarations/finitesquarefreedensity-two-error-le--a1cf938d144d2bbe480ccc6e.md) | 153 | `result-track:a1cf938d144d2bbe480ccc6e0012695b0e376d2d1db1bb19d80af3eff8b7c410` |
| 11 | `def` | [twoDensityFactor](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/FiniteDensityInsertionAudit/Variant3989f68719498cd418e06754f4f598023b4db64010052e5049eac5c7fe11fff8.lean/declarations/twodensityfactor--ba02300021f3a09ead957c8c.md) | 163 | `declaration-track:ba02300021f3a09ead957c8ce5bce221f99a5d2256f358690eaa7d3836c981c2` |
| 12 | `theorem` | [twoDensityFactor_eq](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/FiniteDensityInsertionAudit/Variant3989f68719498cd418e06754f4f598023b4db64010052e5049eac5c7fe11fff8.lean/declarations/twodensityfactor-eq--b64f28a598214901f2b0a976.md) | 165 | `result-track:b64f28a598214901f2b0a9769787cf66e8594c799c1e7656b48ae5dc42f600c6` |
| 13 | `theorem` | [twoDensityFactor_bounds](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/FiniteDensityInsertionAudit/Variant3989f68719498cd418e06754f4f598023b4db64010052e5049eac5c7fe11fff8.lean/declarations/twodensityfactor-bounds--d074098fedeee4a186a03e4b.md) | 170 | `result-track:d074098fedeee4a186a03e4b9d7e03c32735910dcf1890a1dcda830d8760ee86` |
| 14 | `theorem` | [signed_two_density_error_le](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/FiniteDensityInsertionAudit/Variant3989f68719498cd418e06754f4f598023b4db64010052e5049eac5c7fe11fff8.lean/declarations/signed-two-density-error-le--87918ff7e149e58e9234ded1.md) | 179 | `result-track:87918ff7e149e58e9234ded16c4e9ad5e2dde0cce9a345b0d19592f8e3b0ce8d` |
| 15 | `theorem` | [signed_two_density_abs_le](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/FiniteDensityInsertionAudit/Variant3989f68719498cd418e06754f4f598023b4db64010052e5049eac5c7fe11fff8.lean/declarations/signed-two-density-abs-le--b184b961556d0cd4f37724d0.md) | 196 | `result-track:b184b961556d0cd4f37724d011c7c9096cc29b82e704f46a45888a6d43ff80db` |
| 16 | `theorem` | [signed_two_density_cutoffs_error_le](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/FiniteDensityInsertionAudit/Variant3989f68719498cd418e06754f4f598023b4db64010052e5049eac5c7fe11fff8.lean/declarations/signed-two-density-cutoffs-error-le--b1c4ff3e007387925dd7cfd3.md) | 219 | `result-track:b1c4ff3e007387925dd7cfd3438c8e123e9fc2b26267d114b5bffb929ed7cd52` |
| 17 | `theorem` | [signed_two_density_natural_cutoffs_error_le](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/FiniteDensityInsertionAudit/Variant3989f68719498cd418e06754f4f598023b4db64010052e5049eac5c7fe11fff8.lean/declarations/signed-two-density-natural-cutoffs-error-le--dc20b2cbcee2f3b44354be78.md) | 252 | `result-track:dc20b2cbcee2f3b44354be78f28e7feefc4e1d5623a50fa6fea707e941e4d35b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
