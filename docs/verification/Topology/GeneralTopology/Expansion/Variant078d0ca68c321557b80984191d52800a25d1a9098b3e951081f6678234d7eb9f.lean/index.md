# Verification target: GRWTSK.Topology.GeneralTopology.Expansion.Variant078d0ca68c321557b80984191d52800a25d1a9098b3e951081f6678234d7eb9f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f7bd209c79a14f60617ffde7bfe9a494f24c62c6",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Expansion/Variant078d0ca68c321557b80984191d52800a25d1a9098b3e951081f6678234d7eb9f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Expansion/Variant078d0ca68c321557b80984191d52800a25d1a9098b3e951081f6678234d7eb9f.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Expansion/Variant078d0ca68c321557b80984191d52800a25d1a9098b3e951081f6678234d7eb9f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f7bd209c79a14f60617ffde7bfe9a494f24c62c6`.

Source path: `GRWTSK/Topology/GeneralTopology/Expansion/Variant078d0ca68c321557b80984191d52800a25d1a9098b3e951081f6678234d7eb9f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Expansion/Variant078d0ca68c321557b80984191d52800a25d1a9098b3e951081f6678234d7eb9f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.Laplace.Kernel` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Group.FunctionSeries` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.InfiniteSum.TsumUniformlyOn` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [expandedSummand](../../../../../mathematics/Topology/GeneralTopology/Expansion/Variant078d0ca68c321557b80984191d52800a25d1a9098b3e951081f6678234d7eb9f.lean/declarations/expandedsummand--78f6ac7bf04be3e4427dbdcb.md) | 46 | `declaration-track:78f6ac7bf04be3e4427dbdcbdc26ce4574fe5ce37ebb17b6f9fff0076629b5d2` |
| 2 | `theorem` | [shifted_value_ne_zero](../../../../../mathematics/Topology/GeneralTopology/Expansion/Variant078d0ca68c321557b80984191d52800a25d1a9098b3e951081f6678234d7eb9f.lean/declarations/shifted-value-ne-zero--8342be765c2339526a1a0ca5.md) | 57 | `result-track:8342be765c2339526a1a0ca5ffafd54402b78bdf5a5614fc2ac3ac31a1cf232b` |
| 3 | `theorem` | [actual_scaled_square](../../../../../mathematics/Topology/GeneralTopology/Expansion/Variant078d0ca68c321557b80984191d52800a25d1a9098b3e951081f6678234d7eb9f.lean/declarations/actual-scaled-square--82f5a841dbbd167847079385.md) | 63 | `result-track:82f5a841dbbd16784707938517cdff8f885354428c092fc88f15c34d53100286` |
| 4 | `theorem` | [numerator_square_expansion](../../../../../mathematics/Topology/GeneralTopology/Expansion/Variant078d0ca68c321557b80984191d52800a25d1a9098b3e951081f6678234d7eb9f.lean/declarations/numerator-square-expansion--6552f3846a67a8c903a4f1a1.md) | 88 | `result-track:6552f3846a67a8c903a4f1a12fd8182de2846471e04acc87517fb84b1aa7eb7f` |
| 5 | `theorem` | [expanded_summand_eq](../../../../../mathematics/Topology/GeneralTopology/Expansion/Variant078d0ca68c321557b80984191d52800a25d1a9098b3e951081f6678234d7eb9f.lean/declarations/expanded-summand-eq--9972bf4ffd3674cd9083a391.md) | 115 | `result-track:9972bf4ffd3674cd9083a3916c13b217194895cba7e4b86154c8e3e61c37e063` |
| 6 | `theorem` | [equation17](../../../../../mathematics/Topology/GeneralTopology/Expansion/Variant078d0ca68c321557b80984191d52800a25d1a9098b3e951081f6678234d7eb9f.lean/declarations/equation17--6a85af8576c0c57851736a64.md) | 127 | `result-track:6a85af8576c0c57851736a643d9a3e093f7e4a22e9d689c93572b251fcda63fa` |
| 7 | `theorem` | [transformPolynomial_norm_le_one_add](../../../../../mathematics/Topology/GeneralTopology/Expansion/Variant078d0ca68c321557b80984191d52800a25d1a9098b3e951081f6678234d7eb9f.lean/declarations/transformpolynomial-norm-le-one-add--149554a502f882461f8513c3.md) | 148 | `result-track:149554a502f882461f8513c394a92252f1f5f22bdb583dd4f8b8e8cc7a3264c0` |
| 8 | `theorem` | [transformPolynomial_norm_le_scale](../../../../../mathematics/Topology/GeneralTopology/Expansion/Variant078d0ca68c321557b80984191d52800a25d1a9098b3e951081f6678234d7eb9f.lean/declarations/transformpolynomial-norm-le-scale--c436c24fdab5b6956dde0836.md) | 188 | `result-track:c436c24fdab5b6956dde0836d50b7c322d8ec388e9c76dc31e9f3e5e9a94b26f` |
| 9 | `theorem` | [modeCoefficient_norm_le](../../../../../mathematics/Topology/GeneralTopology/Expansion/Variant078d0ca68c321557b80984191d52800a25d1a9098b3e951081f6678234d7eb9f.lean/declarations/modecoefficient-norm-le--bb1ad59a72819a26ddd4f69c.md) | 213 | `result-track:bb1ad59a72819a26ddd4f69c645064eb61815b003d30686177c2e55b663943a6` |
| 10 | `def` | [modeWeight](../../../../../mathematics/Topology/GeneralTopology/Expansion/Variant078d0ca68c321557b80984191d52800a25d1a9098b3e951081f6678234d7eb9f.lean/declarations/modeweight--6f6641f981d5bd25f1844db3.md) | 240 | `declaration-track:6f6641f981d5bd25f1844db32bc6e98c013058c5e3037c8d1ef499aa503a151a` |
| 11 | `theorem` | [modeWeight_nonneg](../../../../../mathematics/Topology/GeneralTopology/Expansion/Variant078d0ca68c321557b80984191d52800a25d1a9098b3e951081f6678234d7eb9f.lean/declarations/modeweight-nonneg--090ea3d821ba23017043ac81.md) | 244 | `result-track:090ea3d821ba23017043ac818d67ac88bce9c1fbe5fa1ea450a378ffb2b9f57f` |
| 12 | `def` | [modeTailConstant](../../../../../mathematics/Topology/GeneralTopology/Expansion/Variant078d0ca68c321557b80984191d52800a25d1a9098b3e951081f6678234d7eb9f.lean/declarations/modetailconstant--3baedc48d081694d384d77d6.md) | 250 | `declaration-track:3baedc48d081694d384d77d69078e81b0f09ae3f953890a63d3da58456bd4d6a` |
| 13 | `theorem` | [modeWeight_tail_le](../../../../../mathematics/Topology/GeneralTopology/Expansion/Variant078d0ca68c321557b80984191d52800a25d1a9098b3e951081f6678234d7eb9f.lean/declarations/modeweight-tail-le--1049b48d3411b757d9f2e82a.md) | 253 | `result-track:1049b48d3411b757d9f2e82a3c286fde26f262db36969dc5b2a07e114f6227b7` |
| 14 | `theorem` | [eventually_one_le_shifted_norm](../../../../../mathematics/Topology/GeneralTopology/Expansion/Variant078d0ca68c321557b80984191d52800a25d1a9098b3e951081f6678234d7eb9f.lean/declarations/eventually-one-le-shifted-norm--c05be5ffb223780711433473.md) | 302 | `result-track:c05be5ffb22378071143347306a3a663f13e806459e0c6697345869b8b1d2ba7` |
| 15 | `theorem` | [modeWeight_summable](../../../../../mathematics/Topology/GeneralTopology/Expansion/Variant078d0ca68c321557b80984191d52800a25d1a9098b3e951081f6678234d7eb9f.lean/declarations/modeweight-summable--00601a0b60d7c3eee7d9c7ed.md) | 318 | `result-track:00601a0b60d7c3eee7d9c7ed72c8b108a7171c9878dcb7ec50bb034aec7db110` |
| 16 | `def` | [growthFactor](../../../../../mathematics/Topology/GeneralTopology/Expansion/Variant078d0ca68c321557b80984191d52800a25d1a9098b3e951081f6678234d7eb9f.lean/declarations/growthfactor--0a7c347a1f971d6766f9c37e.md) | 327 | `declaration-track:0a7c347a1f971d6766f9c37ea9697dbcd6cb9c904d3d477ffad4a06ba6b7afd8` |
| 17 | `theorem` | [growthFactor_nonneg](../../../../../mathematics/Topology/GeneralTopology/Expansion/Variant078d0ca68c321557b80984191d52800a25d1a9098b3e951081f6678234d7eb9f.lean/declarations/growthfactor-nonneg--e3d971d538d46d6a7828b28b.md) | 330 | `result-track:e3d971d538d46d6a7828b28b189dc798ed1df0ca3e08e0d3bdeebedbd3180578` |
| 18 | `theorem` | [expandedSummand_norm_le](../../../../../mathematics/Topology/GeneralTopology/Expansion/Variant078d0ca68c321557b80984191d52800a25d1a9098b3e951081f6678234d7eb9f.lean/declarations/expandedsummand-norm-le--0dbb1517f9a049a7acfdc1f3.md) | 337 | `result-track:0dbb1517f9a049a7acfdc1f399401601cdef5473235a3f5cb1543d78c8325757` |
| 19 | `theorem` | [expandedSummand_norm_le_on_Icc](../../../../../mathematics/Topology/GeneralTopology/Expansion/Variant078d0ca68c321557b80984191d52800a25d1a9098b3e951081f6678234d7eb9f.lean/declarations/expandedsummand-norm-le-on-icc--6ed3f7d6cf73f60c18889327.md) | 439 | `result-track:6ed3f7d6cf73f60c18889327fa012aa7ac27c42fcf5c3280f097868712f2f63e` |
| 20 | `theorem` | [expanded_hasSumUniformlyOn_Icc](../../../../../mathematics/Topology/GeneralTopology/Expansion/Variant078d0ca68c321557b80984191d52800a25d1a9098b3e951081f6678234d7eb9f.lean/declarations/expanded-hassumuniformlyon-icc--6dec97db221cccadb762a9c2.md) | 463 | `result-track:6dec97db221cccadb762a9c23788ec226537efeb5e80ede67eda5f33eb0cd9e0` |
| 21 | `theorem` | [expandedSummand_continuous](../../../../../mathematics/Topology/GeneralTopology/Expansion/Variant078d0ca68c321557b80984191d52800a25d1a9098b3e951081f6678234d7eb9f.lean/declarations/expandedsummand-continuous--6e3c9942767567292743c54e.md) | 477 | `result-track:6e3c9942767567292743c54ea8624979213cb26fdb3dec38f2abd856b9360154` |
| 22 | `theorem` | [expanded_sum_continuousOn_Icc](../../../../../mathematics/Topology/GeneralTopology/Expansion/Variant078d0ca68c321557b80984191d52800a25d1a9098b3e951081f6678234d7eb9f.lean/declarations/expanded-sum-continuouson-icc--6e8dd71500fe90758a13c3e9.md) | 487 | `result-track:6e8dd71500fe90758a13c3e99728e0810b2d95e595554f793aa4d6e2dec8d739` |
| 23 | `theorem` | [weightedSource_continuousOn_Icc](../../../../../mathematics/Topology/GeneralTopology/Expansion/Variant078d0ca68c321557b80984191d52800a25d1a9098b3e951081f6678234d7eb9f.lean/declarations/weightedsource-continuouson-icc--557d7e30d5b537472603e5fe.md) | 504 | `result-track:557d7e30d5b537472603e5feecf868541da1710d14b73578412f2b78125f5151` |
| 24 | `theorem` | [weightedSource_im](../../../../../mathematics/Topology/GeneralTopology/Expansion/Variant078d0ca68c321557b80984191d52800a25d1a9098b3e951081f6678234d7eb9f.lean/declarations/weightedsource-im--eaef94ed1a50ea0f46b812a5.md) | 514 | `result-track:eaef94ed1a50ea0f46b812a557a5a6e1404a68be472701da170e6bb805dff8f2` |
| 25 | `def` | [growthConstant](../../../../../mathematics/Topology/GeneralTopology/Expansion/Variant078d0ca68c321557b80984191d52800a25d1a9098b3e951081f6678234d7eb9f.lean/declarations/growthconstant--6b9fbdf1226ea1404f4f145a.md) | 520 | `declaration-track:6b9fbdf1226ea1404f4f145ae8310ab0dfc337006a9d7426ebdc020875116d4e` |
| 26 | `theorem` | [growthConstant_nonneg](../../../../../mathematics/Topology/GeneralTopology/Expansion/Variant078d0ca68c321557b80984191d52800a25d1a9098b3e951081f6678234d7eb9f.lean/declarations/growthconstant-nonneg--73c9bb05ed546abec048d20d.md) | 523 | `result-track:73c9bb05ed546abec048d20d501e98dd8d85cf96d32d35b6cb480bde65bb1400` |
| 27 | `theorem` | [expanded_sum_norm_le](../../../../../mathematics/Topology/GeneralTopology/Expansion/Variant078d0ca68c321557b80984191d52800a25d1a9098b3e951081f6678234d7eb9f.lean/declarations/expanded-sum-norm-le--4262226153c79a91dd34c175.md) | 530 | `result-track:4262226153c79a91dd34c1751a86e250ec77717f995e6c137c76bc7a7f62956c` |
| 28 | `theorem` | [weightedSource_growth](../../../../../mathematics/Topology/GeneralTopology/Expansion/Variant078d0ca68c321557b80984191d52800a25d1a9098b3e951081f6678234d7eb9f.lean/declarations/weightedsource-growth--8a69dcc888e1e902b9946382.md) | 570 | `result-track:8a69dcc888e1e902b9946382846a094c017805731cddb6e459897edc771d9721` |
| 29 | `def` | [Equation17GrowthCheckpoint](../../../../../mathematics/Topology/GeneralTopology/Expansion/Variant078d0ca68c321557b80984191d52800a25d1a9098b3e951081f6678234d7eb9f.lean/declarations/equation17growthcheckpoint--2ca2eb6c4262951fa63aa5c2.md) | 578 | `declaration-track:2ca2eb6c4262951fa63aa5c2e18d4d57ab30cc7df7a33c50ab7f265397f04dd7` |
| 30 | `theorem` | [equation17_growth_checkpoint](../../../../../mathematics/Topology/GeneralTopology/Expansion/Variant078d0ca68c321557b80984191d52800a25d1a9098b3e951081f6678234d7eb9f.lean/declarations/equation17-growth-checkpoint--abf6b995176cb65d13d212cf.md) | 603 | `result-track:abf6b995176cb65d13d212cf79ad6f350369c52d173b6f9057a4bd284c8371dc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
