# Verification target: GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.Expectation.Tilted.Variant8b6bc64bf6dfe3d55295d96bd677d7717ccf77b26270e592eaa30fa113c2f56d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "976fbb290e49552030e2c21cfd16c8b672e24482",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Tilted/Variant8b6bc64bf6dfe3d55295d96bd677d7717ccf77b26270e592eaa30fa113c2f56d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Tilted/Variant8b6bc64bf6dfe3d55295d96bd677d7717ccf77b26270e592eaa30fa113c2f56d.lean/index.md) · [Full source](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Tilted/Variant8b6bc64bf6dfe3d55295d96bd677d7717ccf77b26270e592eaa30fa113c2f56d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `976fbb290e49552030e2c21cfd16c8b672e24482`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Tilted/Variant8b6bc64bf6dfe3d55295d96bd677d7717ccf77b26270e592eaa30fa113c2f56d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Tilted/Variant8b6bc64bf6dfe3d55295d96bd677d7717ccf77b26270e592eaa30fa113c2f56d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Measure.Tilted` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Probability.Moments.MGFAnalytic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [tilted_mul_apply_mgf'](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Tilted/Variant8b6bc64bf6dfe3d55295d96bd677d7717ccf77b26270e592eaa30fa113c2f56d.lean/declarations/tilted-mul-apply-mgf--07da250dda49e2a28bd90740.md) | 48 | `result-track:07da250dda49e2a28bd90740d179172748d1636d4d32042b9e5d66a2470809f5` |
| 2 | `lemma` | [tilted_mul_apply_mgf](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Tilted/Variant8b6bc64bf6dfe3d55295d96bd677d7717ccf77b26270e592eaa30fa113c2f56d.lean/declarations/tilted-mul-apply-mgf--ddb86689edffdae08fcbe2d3.md) | 52 | `result-track:ddb86689edffdae08fcbe2d3500acd61be2ad6f374c23089da5f34d935992826` |
| 3 | `lemma` | [tilted_mul_apply_cgf'](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Tilted/Variant8b6bc64bf6dfe3d55295d96bd677d7717ccf77b26270e592eaa30fa113c2f56d.lean/declarations/tilted-mul-apply-cgf--81835336d24abe926584b814.md) | 56 | `result-track:81835336d24abe926584b8145b2b383655b0d3da4ae545f9a0d81c9b0b6e1467` |
| 4 | `lemma` | [tilted_mul_apply_cgf](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Tilted/Variant8b6bc64bf6dfe3d55295d96bd677d7717ccf77b26270e592eaa30fa113c2f56d.lean/declarations/tilted-mul-apply-cgf--b82d5ce9bde9b4bdbf0f75cb.md) | 63 | `result-track:b82d5ce9bde9b4bdbf0f75cba97a9fad6a6adaa1fec55f38bf4033e1cf027846` |
| 5 | `lemma` | [tilted_mul_apply_eq_ofReal_integral_mgf'](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Tilted/Variant8b6bc64bf6dfe3d55295d96bd677d7717ccf77b26270e592eaa30fa113c2f56d.lean/declarations/tilted-mul-apply-eq-ofreal-integral-mgf--d6e7cb336048e862c4c17328.md) | 69 | `result-track:d6e7cb336048e862c4c17328f807e7eee90272a488d1f3a973d7ee9d4685967d` |
| 6 | `lemma` | [tilted_mul_apply_eq_ofReal_integral_mgf](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Tilted/Variant8b6bc64bf6dfe3d55295d96bd677d7717ccf77b26270e592eaa30fa113c2f56d.lean/declarations/tilted-mul-apply-eq-ofreal-integral-mgf--fe67dca160d3066dc8861ab6.md) | 73 | `result-track:fe67dca160d3066dc8861ab62c33547e99ad17c8cbee0ad5999c323f70de6b9f` |
| 7 | `lemma` | [tilted_mul_apply_eq_ofReal_integral_cgf'](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Tilted/Variant8b6bc64bf6dfe3d55295d96bd677d7717ccf77b26270e592eaa30fa113c2f56d.lean/declarations/tilted-mul-apply-eq-ofreal-integral-cgf--9dd16121509a9a10459fb186.md) | 77 | `result-track:9dd16121509a9a10459fb1865baef61c832666e8393f8bb5d52420312a5e4c57` |
| 8 | `lemma` | [tilted_mul_apply_eq_ofReal_integral_cgf](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Tilted/Variant8b6bc64bf6dfe3d55295d96bd677d7717ccf77b26270e592eaa30fa113c2f56d.lean/declarations/tilted-mul-apply-eq-ofreal-integral-cgf--d51bdcd774de108efe912c55.md) | 85 | `result-track:d51bdcd774de108efe912c55e95002fcdd3a2ea41cac4912e8737fb47bb3ee3e` |
| 9 | `lemma` | [setIntegral_tilted_mul_eq_mgf'](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Tilted/Variant8b6bc64bf6dfe3d55295d96bd677d7717ccf77b26270e592eaa30fa113c2f56d.lean/declarations/setintegral-tilted-mul-eq-mgf--fea15db15ebb182d240d147a.md) | 101 | `result-track:fea15db15ebb182d240d147aed61b83c8d10581863096aff3252979481b4ab30` |
| 10 | `lemma` | [setIntegral_tilted_mul_eq_mgf](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Tilted/Variant8b6bc64bf6dfe3d55295d96bd677d7717ccf77b26270e592eaa30fa113c2f56d.lean/declarations/setintegral-tilted-mul-eq-mgf--c305f7452b78bda24080b173.md) | 105 | `result-track:c305f7452b78bda24080b17388d964b73224319e56d021e1401050d61cd5c852` |
| 11 | `lemma` | [setIntegral_tilted_mul_eq_cgf'](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Tilted/Variant8b6bc64bf6dfe3d55295d96bd677d7717ccf77b26270e592eaa30fa113c2f56d.lean/declarations/setintegral-tilted-mul-eq-cgf--680ff1cc1b53c5d482aee0b3.md) | 109 | `result-track:680ff1cc1b53c5d482aee0b37bed4cb5ad2a6eb7053ccbd48aebe77817150274` |
| 12 | `lemma` | [setIntegral_tilted_mul_eq_cgf](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Tilted/Variant8b6bc64bf6dfe3d55295d96bd677d7717ccf77b26270e592eaa30fa113c2f56d.lean/declarations/setintegral-tilted-mul-eq-cgf--eb88a5390602912ae3df49d1.md) | 116 | `result-track:eb88a5390602912ae3df49d15dbc35a2a428cd76d97826f4a7ade319ce09db08` |
| 13 | `lemma` | [integral_tilted_mul_eq_mgf](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Tilted/Variant8b6bc64bf6dfe3d55295d96bd677d7717ccf77b26270e592eaa30fa113c2f56d.lean/declarations/integral-tilted-mul-eq-mgf--659f16f7190030afaae87f87.md) | 123 | `result-track:659f16f7190030afaae87f8799ce534061774353f6a00b27dd2539cffbf939ea` |
| 14 | `lemma` | [integral_tilted_mul_eq_cgf](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Tilted/Variant8b6bc64bf6dfe3d55295d96bd677d7717ccf77b26270e592eaa30fa113c2f56d.lean/declarations/integral-tilted-mul-eq-cgf--13e4531823f47439cd847ea8.md) | 127 | `result-track:13e4531823f47439cd847ea8bd08d9b12ca9dae658e3c5a53cf7cdc6b9ac4d70` |
| 15 | `lemma` | [integral_tilted_mul_self](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Tilted/Variant8b6bc64bf6dfe3d55295d96bd677d7717ccf77b26270e592eaa30fa113c2f56d.lean/declarations/integral-tilted-mul-self--d864fcffb428486fec9f2342.md) | 136 | `result-track:d864fcffb428486fec9f23426ff2568cba35b714584e60fc85562560c7bad6af` |
| 16 | `lemma` | [memLp_tilted_mul](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Tilted/Variant8b6bc64bf6dfe3d55295d96bd677d7717ccf77b26270e592eaa30fa113c2f56d.lean/declarations/memlp-tilted-mul--d900acc8f19825870241e9c7.md) | 144 | `result-track:d900acc8f19825870241e9c74018b908860d96b006d8f26f0ee4fecc931e92ff` |
| 17 | `lemma` | [variance_tilted_mul](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Tilted/Variant8b6bc64bf6dfe3d55295d96bd677d7717ccf77b26270e592eaa30fa113c2f56d.lean/declarations/variance-tilted-mul--f26d20e11f431d6f78a713c2.md) | 163 | `result-track:f26d20e11f431d6f78a713c2367cd0e954f194da1ef2d110309ee29113232baa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
