# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.PsiBinomialBridge.Variant62bbf20530e807cc0f25a4f006442f4c333a39118e71800bc0eb1f18f5ecdc5c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "69557f1efa3009e3eb94a24d967e4be1e0a37d93",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/PsiBinomialBridge/Variant62bbf20530e807cc0f25a4f006442f4c333a39118e71800bc0eb1f18f5ecdc5c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PsiBinomialBridge/Variant62bbf20530e807cc0f25a4f006442f4c333a39118e71800bc0eb1f18f5ecdc5c.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PsiBinomialBridge/Variant62bbf20530e807cc0f25a4f006442f4c333a39118e71800bc0eb1f18f5ecdc5c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `69557f1efa3009e3eb94a24d967e4be1e0a37d93`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/PsiBinomialBridge/Variant62bbf20530e807cc0f25a4f006442f4c333a39118e71800bc0eb1f18f5ecdc5c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/PsiBinomialBridge/Variant62bbf20530e807cc0f25a4f006442f4c333a39118e71800bc0eb1f18f5ecdc5c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Rebuild.AnalyticNumberTheory.BinomialChebyshevBounds` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Choose.Dvd` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Choose.Factorization` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [primePowerPairsInOpenClosedInterval](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PsiBinomialBridge/Variant62bbf20530e807cc0f25a4f006442f4c333a39118e71800bc0eb1f18f5ecdc5c.lean/declarations/primepowerpairsinopenclosedinterval--257991f520eb47703e898af2.md) | 18 | `declaration-track:257991f520eb47703e898af28feacc12961810e7370bb81a66e1b2deefa3da08` |
| 2 | `def` | [primePowerPairsDyadicStrip](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PsiBinomialBridge/Variant62bbf20530e807cc0f25a4f006442f4c333a39118e71800bc0eb1f18f5ecdc5c.lean/declarations/primepowerpairsdyadicstrip--2a5b696485a148c0a3a7db26.md) | 23 | `declaration-track:2a5b696485a148c0a3a7db26de6d86b2662fb7bbfed5fcc3890098c8472ecc8b` |
| 3 | `def` | [chebyshevPsiStrip](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PsiBinomialBridge/Variant62bbf20530e807cc0f25a4f006442f4c333a39118e71800bc0eb1f18f5ecdc5c.lean/declarations/chebyshevpsistrip--066cce2293922723211e3a47.md) | 27 | `declaration-track:066cce2293922723211e3a4797f795a2a2e4fc9c940e39b2634f02d335ddbe9e` |
| 4 | `def` | [chebyshevPsiDyadicStrip](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PsiBinomialBridge/Variant62bbf20530e807cc0f25a4f006442f4c333a39118e71800bc0eb1f18f5ecdc5c.lean/declarations/chebyshevpsidyadicstrip--e37fb7f5ce9d791d8b790891.md) | 31 | `declaration-track:e37fb7f5ce9d791d8b7908914d689143e9787d8d5ad8c1695883085c1d53f1f3` |
| 5 | `def` | [primesDyadicStrip](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PsiBinomialBridge/Variant62bbf20530e807cc0f25a4f006442f4c333a39118e71800bc0eb1f18f5ecdc5c.lean/declarations/primesdyadicstrip--f803ac4afb19783df5b07563.md) | 35 | `declaration-track:f803ac4afb19783df5b0756301426655a46acdaf2e5f4cff62ce3565f2d77846` |
| 6 | `theorem` | [mem_primesDyadicStrip_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PsiBinomialBridge/Variant62bbf20530e807cc0f25a4f006442f4c333a39118e71800bc0eb1f18f5ecdc5c.lean/declarations/mem-primesdyadicstrip-iff--9a15d81ef4c13d88255ead27.md) | 39 | `result-track:9a15d81ef4c13d88255ead278fb840cdd4cea615ad2f0c23ee3cbf45e2ec18b4` |
| 7 | `theorem` | [prime_dyadic_strip_dvd_centralBinomial](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PsiBinomialBridge/Variant62bbf20530e807cc0f25a4f006442f4c333a39118e71800bc0eb1f18f5ecdc5c.lean/declarations/prime-dyadic-strip-dvd-centralbinomial--0f8e37e68c9f28acaba7d635.md) | 51 | `result-track:0f8e37e68c9f28acaba7d63569ded53c73e8a416420bfbafff874a9b439ccfde` |
| 8 | `theorem` | [one_le_factorization_centralBinomial_of_mem_strip](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PsiBinomialBridge/Variant62bbf20530e807cc0f25a4f006442f4c333a39118e71800bc0eb1f18f5ecdc5c.lean/declarations/one-le-factorization-centralbinomial-of-mem-strip--ee9858eac83e812bdf90d3d6.md) | 61 | `result-track:ee9858eac83e812bdf90d3d60705706b05badae8a68a90b87b6fd05d39351f2d` |
| 9 | `theorem` | [log_centralBinomial_eq_sum_factorization](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PsiBinomialBridge/Variant62bbf20530e807cc0f25a4f006442f4c333a39118e71800bc0eb1f18f5ecdc5c.lean/declarations/log-centralbinomial-eq-sum-factorization--04a366c209f2302939b116cd.md) | 69 | `result-track:04a366c209f2302939b116cd3ae1701c357d4197e55d933d2b6416256baac00e` |
| 10 | `theorem` | [chebyshevTheta_two_mul_eq_theta_add_strip](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PsiBinomialBridge/Variant62bbf20530e807cc0f25a4f006442f4c333a39118e71800bc0eb1f18f5ecdc5c.lean/declarations/chebyshevtheta-two-mul-eq-theta-add-strip--ad3ed0b5af1214750675544b.md) | 99 | `result-track:ad3ed0b5af1214750675544beb39c5973d6c2ab34d781e88b3084ef84c383ea4` |
| 11 | `theorem` | [primesDyadicStrip_log_sum_le_log_centralBinomial](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PsiBinomialBridge/Variant62bbf20530e807cc0f25a4f006442f4c333a39118e71800bc0eb1f18f5ecdc5c.lean/declarations/primesdyadicstrip-log-sum-le-log-centralbinomial--e6761644e50ab386327930f5.md) | 122 | `result-track:e6761644e50ab386327930f543c087d9b14acf7a438716ea2e67128da992e75e` |
| 12 | `theorem` | [chebyshevTheta_two_mul_sub_theta_le_log_centralBinomial](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PsiBinomialBridge/Variant62bbf20530e807cc0f25a4f006442f4c333a39118e71800bc0eb1f18f5ecdc5c.lean/declarations/chebyshevtheta-two-mul-sub-theta-le-log-centralbinomial--ec182c77bf5f73ef05034241.md) | 157 | `result-track:ec182c77bf5f73ef050342416e9b73b6415414292383d8fee34f5f608d3266c0` |
| 13 | `theorem` | [chebyshevTheta_two_mul_sub_theta_le_n_log_four](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PsiBinomialBridge/Variant62bbf20530e807cc0f25a4f006442f4c333a39118e71800bc0eb1f18f5ecdc5c.lean/declarations/chebyshevtheta-two-mul-sub-theta-le-n-log-four--f8421ddc2f7581cc440bd2c1.md) | 165 | `result-track:f8421ddc2f7581cc440bd2c192dbb160de735a6c6f63cc15b624eab99f7d294f` |
| 14 | `def` | [ChebyshevPsiDyadicBinomialBridgeTarget](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PsiBinomialBridge/Variant62bbf20530e807cc0f25a4f006442f4c333a39118e71800bc0eb1f18f5ecdc5c.lean/declarations/chebyshevpsidyadicbinomialbridgetarget--096a189545d5461514873774.md) | 174 | `declaration-track:096a189545d5461514873774de6c9ba1d4b4580e2d5b38f0fda7f6c5d59135ce` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
