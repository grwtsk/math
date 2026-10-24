# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.LocallyUniformLimit.Variantf755ac3f7ae549595169fa40c1fd134a5e21a18f7db7b0f3cc7a865e5a5b9d2f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b6e8df704946911ddef9dac231d43c06de47fb83",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/LocallyUniformLimit/Variantf755ac3f7ae549595169fa40c1fd134a5e21a18f7db7b0f3cc7a865e5a5b9d2f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LocallyUniformLimit/Variantf755ac3f7ae549595169fa40c1fd134a5e21a18f7db7b0f3cc7a865e5a5b9d2f.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LocallyUniformLimit/Variantf755ac3f7ae549595169fa40c1fd134a5e21a18f7db7b0f3cc7a865e5a5b9d2f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b6e8df704946911ddef9dac231d43c06de47fb83`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/LocallyUniformLimit/Variantf755ac3f7ae549595169fa40c1fd134a5e21a18f7db7b0f3cc7a865e5a5b9d2f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/LocallyUniformLimit/Variantf755ac3f7ae549595169fa40c1fd134a5e21a18f7db7b0f3cc7a865e5a5b9d2f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Complex.RemovableSingularity` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.UniformLimitsDeriv` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.NormedSpace.FunctionSeries` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [cderiv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LocallyUniformLimit/Variantf755ac3f7ae549595169fa40c1fd134a5e21a18f7db7b0f3cc7a865e5a5b9d2f.lean/declarations/cderiv--951c93c4a94cb244b58c56a8.md) | 47 | `declaration-track:951c93c4a94cb244b58c56a80acf4b027cca3bea5ebcbef77ba49bf7fc51b447` |
| 2 | `theorem` | [cderiv_eq_deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LocallyUniformLimit/Variantf755ac3f7ae549595169fa40c1fd134a5e21a18f7db7b0f3cc7a865e5a5b9d2f.lean/declarations/cderiv-eq-deriv--db22d7ad04f79974fd5d2353.md) | 50 | `result-track:db22d7ad04f79974fd5d23531864b5abac9e57fd0e0707ffd7a5ecb901fc3379` |
| 3 | `theorem` | [norm_cderiv_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LocallyUniformLimit/Variantf755ac3f7ae549595169fa40c1fd134a5e21a18f7db7b0f3cc7a865e5a5b9d2f.lean/declarations/norm-cderiv-le--23bcacfd31b397fdb2267b84.md) | 54 | `result-track:23bcacfd31b397fdb2267b842e40607f726307b130e12835fc03b3348e17832d` |
| 4 | `theorem` | [cderiv_sub](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LocallyUniformLimit/Variantf755ac3f7ae549595169fa40c1fd134a5e21a18f7db7b0f3cc7a865e5a5b9d2f.lean/declarations/cderiv-sub--a83ba091367791f251e5feda.md) | 70 | `result-track:a83ba091367791f251e5feda2db99c676e9bd9acc5f97d9e6f80c17c7b5dd63b` |
| 5 | `theorem` | [norm_cderiv_lt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LocallyUniformLimit/Variantf755ac3f7ae549595169fa40c1fd134a5e21a18f7db7b0f3cc7a865e5a5b9d2f.lean/declarations/norm-cderiv-lt--d71890fec55f4df8b9a209fd.md) | 81 | `result-track:d71890fec55f4df8b9a209fdb49462e683776dd2855dfe3116e9ccda80c206db` |
| 6 | `theorem` | [norm_cderiv_sub_lt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LocallyUniformLimit/Variantf755ac3f7ae549595169fa40c1fd134a5e21a18f7db7b0f3cc7a865e5a5b9d2f.lean/declarations/norm-cderiv-sub-lt--95e067341d47f5fd89f821c8.md) | 90 | `result-track:95e067341d47f5fd89f821c864a9a7ae82e298f38380e84b60d7d58729ee4dad` |
| 7 | `theorem` | [_root_.GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Cderiv.Variant37441e3338ec2de0a321d2648c0f1592d0dfd6d7e6af8b244689a6ce1b8c4c25.TendstoUniformlyOn.cderiv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LocallyUniformLimit/Variantf755ac3f7ae549595169fa40c1fd134a5e21a18f7db7b0f3cc7a865e5a5b9d2f.lean/declarations/root-grwtsk-analysis-realanalysis-differentialcalculus-cderiv-variant374--f1e047dbc0168dd6a560b3a6.md) | 95 | `result-track:f1e047dbc0168dd6a560b3a60392878d728f1b84f05fdf28db3fbf879f9f5219` |
| 8 | `theorem` | [tendstoUniformlyOn_deriv_of_cthickening_subset](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LocallyUniformLimit/Variantf755ac3f7ae549595169fa40c1fd134a5e21a18f7db7b0f3cc7a865e5a5b9d2f.lean/declarations/tendstouniformlyon-deriv-of-cthickening-subset--8414b7dab33a080bae2d50eb.md) | 118 | `result-track:8414b7dab33a080bae2d50ebc0af56275bfbf9309ced9febd555a1941b3f6970` |
| 9 | `theorem` | [exists_cthickening_tendstoUniformlyOn](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LocallyUniformLimit/Variantf755ac3f7ae549595169fa40c1fd134a5e21a18f7db7b0f3cc7a865e5a5b9d2f.lean/declarations/exists-cthickening-tendstouniformlyon--57c00f49f0a95b6f11b3abef.md) | 131 | `result-track:57c00f49f0a95b6f11b3abefbdbf3cab9d14044e7e2f26f2539b9cb5af3e3bb2` |
| 10 | `theorem` | [_root_.GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Cderiv.Variant37441e3338ec2de0a321d2648c0f1592d0dfd6d7e6af8b244689a6ce1b8c4c25.TendstoLocallyUniformlyOn.differentiableOn](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LocallyUniformLimit/Variantf755ac3f7ae549595169fa40c1fd134a5e21a18f7db7b0f3cc7a865e5a5b9d2f.lean/declarations/root-grwtsk-analysis-realanalysis-differentialcalculus-cderiv-variant374--fbba4113c809e30581aaeb75.md) | 140 | `result-track:fbba4113c809e30581aaeb75c5924da751e244138b22b84a4d33b6a0aaef5429` |
| 11 | `theorem` | [_root_.GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Cderiv.Variant37441e3338ec2de0a321d2648c0f1592d0dfd6d7e6af8b244689a6ce1b8c4c25.TendstoLocallyUniformlyOn.deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LocallyUniformLimit/Variantf755ac3f7ae549595169fa40c1fd134a5e21a18f7db7b0f3cc7a865e5a5b9d2f.lean/declarations/root-grwtsk-analysis-realanalysis-differentialcalculus-cderiv-variant374--d13627e331f96ff5c32ab308.md) | 158 | `result-track:d13627e331f96ff5c32ab3081f0ec81b3b8f358f36d4bc2fd4cf929b7713fafe` |
| 12 | `theorem` | [differentiableOn_tsum_of_summable_norm](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LocallyUniformLimit/Variantf755ac3f7ae549595169fa40c1fd134a5e21a18f7db7b0f3cc7a865e5a5b9d2f.lean/declarations/differentiableon-tsum-of-summable-norm--8d793e2e73e704c084c6eb38.md) | 175 | `result-track:8d793e2e73e704c084c6eb38bc4ca98fc055b65e13cdba8375030eafafbd33cf` |
| 13 | `theorem` | [hasSum_deriv_of_summable_norm](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LocallyUniformLimit/Variantf755ac3f7ae549595169fa40c1fd134a5e21a18f7db7b0f3cc7a865e5a5b9d2f.lean/declarations/hassum-deriv-of-summable-norm--174c8a3eacf1f33cbca73a88.md) | 187 | `result-track:174c8a3eacf1f33cbca73a889e563c7673f63cfc652c8c4fb3bac077ce7e6156` |
| 14 | `theorem` | [logDeriv_tendsto](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LocallyUniformLimit/Variantf755ac3f7ae549595169fa40c1fd134a5e21a18f7db7b0f3cc7a865e5a5b9d2f.lean/declarations/logderiv-tendsto--cf37394096c8c84d565ab05e.md) | 204 | `result-track:cf37394096c8c84d565ab05e015708a49f84e2030c878ee176da4c3de58222fd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
