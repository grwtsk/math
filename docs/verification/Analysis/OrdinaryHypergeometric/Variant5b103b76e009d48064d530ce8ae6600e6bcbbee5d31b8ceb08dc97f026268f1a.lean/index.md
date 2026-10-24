# Verification target: GRWTSK.Analysis.OrdinaryHypergeometric.Variant5b103b76e009d48064d530ce8ae6600e6bcbbee5d31b8ceb08dc97f026268f1a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "706878cb8dfbafe67be113ab5c684b8e559b303a",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/OrdinaryHypergeometric/Variant5b103b76e009d48064d530ce8ae6600e6bcbbee5d31b8ceb08dc97f026268f1a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/OrdinaryHypergeometric/Variant5b103b76e009d48064d530ce8ae6600e6bcbbee5d31b8ceb08dc97f026268f1a.lean/index.md) · [Full source](../../../../mathematics/Analysis/OrdinaryHypergeometric/Variant5b103b76e009d48064d530ce8ae6600e6bcbbee5d31b8ceb08dc97f026268f1a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `706878cb8dfbafe67be113ab5c684b8e559b303a`.

Source path: `GRWTSK/Analysis/OrdinaryHypergeometric/Variant5b103b76e009d48064d530ce8ae6600e6bcbbee5d31b8ceb08dc97f026268f1a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/OrdinaryHypergeometric/Variant5b103b76e009d48064d530ce8ae6600e6bcbbee5d31b8ceb08dc97f026268f1a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Analytic.OfScalars` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecificLimits.RCLike` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [ordinaryHypergeometricCoefficient](../../../../mathematics/Analysis/OrdinaryHypergeometric/Variant5b103b76e009d48064d530ce8ae6600e6bcbbee5d31b8ceb08dc97f026268f1a.lean/declarations/ordinaryhypergeometriccoefficient--9b08d527a8e4e4196071bc46.md) | 60 | `declaration-track:9b08d527a8e4e4196071bc469db11834495111e42be8ba6834d37a77773f23f2` |
| 2 | `def` | [ordinaryHypergeometricSeries](../../../../mathematics/Analysis/OrdinaryHypergeometric/Variant5b103b76e009d48064d530ce8ae6600e6bcbbee5d31b8ceb08dc97f026268f1a.lean/declarations/ordinaryhypergeometricseries--63ef887efa2cdd06140c0b01.md) | 65 | `declaration-track:63ef887efa2cdd06140c0b01e4de3c988a1c4ac620b4bc1472a765c732ad7bf0` |
| 3 | `def` | [ordinaryHypergeometric](../../../../mathematics/Analysis/OrdinaryHypergeometric/Variant5b103b76e009d48064d530ce8ae6600e6bcbbee5d31b8ceb08dc97f026268f1a.lean/declarations/ordinaryhypergeometric--6d1ca0bd32bc6ce68ccb6c1c.md) | 75 | `declaration-track:6d1ca0bd32bc6ce68ccb6c1c0246e973ec77341240c53f1d8bcb755529816e5e` |
| 4 | `theorem` | [ordinaryHypergeometricSeries_apply_eq](../../../../mathematics/Analysis/OrdinaryHypergeometric/Variant5b103b76e009d48064d530ce8ae6600e6bcbbee5d31b8ceb08dc97f026268f1a.lean/declarations/ordinaryhypergeometricseries-apply-eq--7d132c170dd59728416d9dac.md) | 81 | `result-track:7d132c170dd59728416d9dacee596b1201f413a1479cf19fe149b9212464b33f` |
| 5 | `theorem` | [ordinaryHypergeometricSeries_apply_eq'](../../../../mathematics/Analysis/OrdinaryHypergeometric/Variant5b103b76e009d48064d530ce8ae6600e6bcbbee5d31b8ceb08dc97f026268f1a.lean/declarations/ordinaryhypergeometricseries-apply-eq--7627decb9079cb6e759e1995.md) | 88 | `result-track:7627decb9079cb6e759e199533b766b223e36d472930ddcd395cad06b7eb586b` |
| 6 | `theorem` | [ordinaryHypergeometric_sum_eq](../../../../mathematics/Analysis/OrdinaryHypergeometric/Variant5b103b76e009d48064d530ce8ae6600e6bcbbee5d31b8ceb08dc97f026268f1a.lean/declarations/ordinaryhypergeometric-sum-eq--31bb2597022be11ed8abde40.md) | 94 | `result-track:31bb2597022be11ed8abde4062a0aa454d2dbd629f81cb5012fc840246017fee` |
| 7 | `theorem` | [ordinaryHypergeometric_eq_tsum](../../../../mathematics/Analysis/OrdinaryHypergeometric/Variant5b103b76e009d48064d530ce8ae6600e6bcbbee5d31b8ceb08dc97f026268f1a.lean/declarations/ordinaryhypergeometric-eq-tsum--1c68905a1e66f012109e93fc.md) | 99 | `result-track:1c68905a1e66f012109e93fc7f42710cdfe4aae454e8ed025967ece3c0f7d529` |
| 8 | `theorem` | [ordinaryHypergeometricSeries_apply_zero](../../../../mathematics/Analysis/OrdinaryHypergeometric/Variant5b103b76e009d48064d530ce8ae6600e6bcbbee5d31b8ceb08dc97f026268f1a.lean/declarations/ordinaryhypergeometricseries-apply-zero--71ef8ca95cb317e6d9368a8e.md) | 104 | `result-track:71ef8ca95cb317e6d9368a8e84fb9668576bb813192dc508a979fd209364401c` |
| 9 | `theorem` | [ordinaryHypergeometric_zero](../../../../mathematics/Analysis/OrdinaryHypergeometric/Variant5b103b76e009d48064d530ce8ae6600e6bcbbee5d31b8ceb08dc97f026268f1a.lean/declarations/ordinaryhypergeometric-zero--97b983f66ca151715fbc2118.md) | 110 | `result-track:97b983f66ca151715fbc2118dfc854a5424324fc90a2b880ed50051e396ae0bb` |
| 10 | `theorem` | [ordinaryHypergeometricSeries_symm](../../../../mathematics/Analysis/OrdinaryHypergeometric/Variant5b103b76e009d48064d530ce8ae6600e6bcbbee5d31b8ceb08dc97f026268f1a.lean/declarations/ordinaryhypergeometricseries-symm--9f48398a562de5275bfa7667.md) | 114 | `result-track:9f48398a562de5275bfa7667ef80f7a0172834f79f96d2ee05ace69014399c72` |
| 11 | `lemma` | [ordinaryHypergeometricSeries_eq_zero_of_neg_nat](../../../../mathematics/Analysis/OrdinaryHypergeometric/Variant5b103b76e009d48064d530ce8ae6600e6bcbbee5d31b8ceb08dc97f026268f1a.lean/declarations/ordinaryhypergeometricseries-eq-zero-of-neg-nat--1fdaed429da9b0947d63e2ef.md) | 121 | `result-track:1fdaed429da9b0947d63e2efc113b1e852add2887400128d207201da34253739` |
| 12 | `theorem` | [ordinaryHypergeometric_radius_top_of_neg_nat₁](../../../../mathematics/Analysis/OrdinaryHypergeometric/Variant5b103b76e009d48064d530ce8ae6600e6bcbbee5d31b8ceb08dc97f026268f1a.lean/declarations/ordinaryhypergeometric-radius-top-of-neg-nat--bceceafea6f5413ff500ddf1.md) | 140 | `result-track:bceceafea6f5413ff500ddf1ea5ce3db28a2e32918126deae4606309a62842f1` |
| 13 | `theorem` | [ordinaryHypergeometric_radius_top_of_neg_nat₂](../../../../mathematics/Analysis/OrdinaryHypergeometric/Variant5b103b76e009d48064d530ce8ae6600e6bcbbee5d31b8ceb08dc97f026268f1a.lean/declarations/ordinaryhypergeometric-radius-top-of-neg-nat--c057f6405bc1cf4c86f12ec0.md) | 145 | `result-track:c057f6405bc1cf4c86f12ec08bfa53174fc5557dfc19c134babe82f27898e3e8` |
| 14 | `theorem` | [ordinaryHypergeometric_radius_top_of_neg_nat₃](../../../../mathematics/Analysis/OrdinaryHypergeometric/Variant5b103b76e009d48064d530ce8ae6600e6bcbbee5d31b8ceb08dc97f026268f1a.lean/declarations/ordinaryhypergeometric-radius-top-of-neg-nat--2c2e012db3efbb543cdb6905.md) | 150 | `result-track:2c2e012db3efbb543cdb69059529de6c17451f96e2387837f8fac634680633c1` |
| 15 | `lemma` | [ordinaryHypergeometricSeries_eq_zero_iff](../../../../mathematics/Analysis/OrdinaryHypergeometric/Variant5b103b76e009d48064d530ce8ae6600e6bcbbee5d31b8ceb08dc97f026268f1a.lean/declarations/ordinaryhypergeometricseries-eq-zero-iff--ba733d601bc476b195fd90d1.md) | 156 | `result-track:ba733d601bc476b195fd90d18c3db61e5ea3387bbc13866adec8c2294043df3a` |
| 16 | `theorem` | [ordinaryHypergeometricSeries_norm_div_succ_norm](../../../../mathematics/Analysis/OrdinaryHypergeometric/Variant5b103b76e009d48064d530ce8ae6600e6bcbbee5d31b8ceb08dc97f026268f1a.lean/declarations/ordinaryhypergeometricseries-norm-div-succ-norm--16ea5965e93b971d2f392ff4.md) | 169 | `result-track:16ea5965e93b971d2f392ff4d5a34bd3194cce8f24e70b2725de2381d8e82314` |
| 17 | `theorem` | [ordinaryHypergeometricSeries_radius_eq_one](../../../../mathematics/Analysis/OrdinaryHypergeometric/Variant5b103b76e009d48064d530ce8ae6600e6bcbbee5d31b8ceb08dc97f026268f1a.lean/declarations/ordinaryhypergeometricseries-radius-eq-one--534d8c25d1bc62e3362e8173.md) | 194 | `result-track:534d8c25d1bc62e3362e81731ed3ae2ee8bf592f65222af51d337b1900f45129` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
