# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.HurwitzZetaValues.Variant9514f41bbabb4ee4d5bd16cdabea3df12a2ef5795c4eb1a68328c950c7b1f326

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e8ae9318ae1ca2974f77ab58313d7a1ec50c68f5",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/HurwitzZetaValues/Variant9514f41bbabb4ee4d5bd16cdabea3df12a2ef5795c4eb1a68328c950c7b1f326.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/HurwitzZetaValues/Variant9514f41bbabb4ee4d5bd16cdabea3df12a2ef5795c4eb1a68328c950c7b1f326.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/HurwitzZetaValues/Variant9514f41bbabb4ee4d5bd16cdabea3df12a2ef5795c4eb1a68328c950c7b1f326.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e8ae9318ae1ca2974f77ab58313d7a1ec50c68f5`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/HurwitzZetaValues/Variant9514f41bbabb4ee4d5bd16cdabea3df12a2ef5795c4eb1a68328c950c7b1f326.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/HurwitzZetaValues/Variant9514f41bbabb4ee4d5bd16cdabea3df12a2ef5795c4eb1a68328c950c7b1f326.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.ZetaValues` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.LSeries.RiemannZeta` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [cosZeta_two_mul_nat](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/HurwitzZetaValues/Variant9514f41bbabb4ee4d5bd16cdabea3df12a2ef5795c4eb1a68328c950c7b1f326.lean/declarations/coszeta-two-mul-nat--12701f77a34f0e3edfec1354.md) | 49 | `result-track:12701f77a34f0e3edfec1354b02fc2078a3bff50eb21eeffaeed0e7f52de3a40` |
| 2 | `theorem` | [sinZeta_two_mul_nat_add_one](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/HurwitzZetaValues/Variant9514f41bbabb4ee4d5bd16cdabea3df12a2ef5795c4eb1a68328c950c7b1f326.lean/declarations/sinzeta-two-mul-nat-add-one--397b09545a8be65561c70d83.md) | 75 | `result-track:397b09545a8be65561c70d8304776a3fd7c48027246385b07a09cee4007a10c0` |
| 3 | `theorem` | [cosZeta_two_mul_nat'](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/HurwitzZetaValues/Variant9514f41bbabb4ee4d5bd16cdabea3df12a2ef5795c4eb1a68328c950c7b1f326.lean/declarations/coszeta-two-mul-nat--29a0a456861d0ebfaf8964a7.md) | 95 | `result-track:29a0a456861d0ebfaf8964a79e533b8d142961e9601fe8b29a0672bab36235d6` |
| 4 | `theorem` | [sinZeta_two_mul_nat_add_one'](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/HurwitzZetaValues/Variant9514f41bbabb4ee4d5bd16cdabea3df12a2ef5795c4eb1a68328c950c7b1f326.lean/declarations/sinzeta-two-mul-nat-add-one--dff4a35c8b06876e17e0226e.md) | 108 | `result-track:dff4a35c8b06876e17e0226e5df35b6659d3a4ec611d11908d41e3dcbdb9ec99` |
| 5 | `theorem` | [hurwitzZetaEven_one_sub_two_mul_nat](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/HurwitzZetaValues/Variant9514f41bbabb4ee4d5bd16cdabea3df12a2ef5795c4eb1a68328c950c7b1f326.lean/declarations/hurwitzzetaeven-one-sub-two-mul-nat--5a98163413b2b132a7a00a01.md) | 121 | `result-track:5a98163413b2b132a7a00a01a9fae4314c103c849e11a2b4c72d6945f292db30` |
| 6 | `theorem` | [hurwitzZetaOdd_neg_two_mul_nat](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/HurwitzZetaValues/Variant9514f41bbabb4ee4d5bd16cdabea3df12a2ef5795c4eb1a68328c950c7b1f326.lean/declarations/hurwitzzetaodd-neg-two-mul-nat--f0d0aec8cd00788b56f683f3.md) | 141 | `result-track:f0d0aec8cd00788b56f683f3de0d91ee38e4774372a64606409d95dc6fc0e374` |
| 7 | `lemma` | [hurwitzZeta_one_sub_two_mul_nat](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/HurwitzZetaValues/Variant9514f41bbabb4ee4d5bd16cdabea3df12a2ef5795c4eb1a68328c950c7b1f326.lean/declarations/hurwitzzeta-one-sub-two-mul-nat--9980575c8f0fb8d57be57ce1.md) | 164 | `result-track:9980575c8f0fb8d57be57ce1dea41154c2eb0ca1fead18cc4746f3a5b5cc4a08` |
| 8 | `lemma` | [hurwitzZeta_neg_two_mul_nat](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/HurwitzZetaValues/Variant9514f41bbabb4ee4d5bd16cdabea3df12a2ef5795c4eb1a68328c950c7b1f326.lean/declarations/hurwitzzeta-neg-two-mul-nat--ccf862ebffd257e5d9120ee8.md) | 174 | `result-track:ccf862ebffd257e5d9120ee8129ed583fbf89acbb89ce552c014764679612cc1` |
| 9 | `theorem` | [hurwitzZeta_neg_nat](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/HurwitzZetaValues/Variant9514f41bbabb4ee4d5bd16cdabea3df12a2ef5795c4eb1a68328c950c7b1f326.lean/declarations/hurwitzzeta-neg-nat--189c849c54bd81a2c32820f4.md) | 186 | `result-track:189c849c54bd81a2c32820f429164f54136732fe3694f203a9f2eb7c21dde749` |
| 10 | `theorem` | [riemannZeta_two_mul_nat](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/HurwitzZetaValues/Variant9514f41bbabb4ee4d5bd16cdabea3df12a2ef5795c4eb1a68328c950c7b1f326.lean/declarations/riemannzeta-two-mul-nat--d5de5081d59b2c75f658e49c.md) | 203 | `result-track:d5de5081d59b2c75f658e49c5018445b7cc0b609f02c41ceb8f7c232aa0627e7` |
| 11 | `theorem` | [riemannZeta_two](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/HurwitzZetaValues/Variant9514f41bbabb4ee4d5bd16cdabea3df12a2ef5795c4eb1a68328c950c7b1f326.lean/declarations/riemannzeta-two--8e594b78933b56489d941822.md) | 211 | `result-track:8e594b78933b56489d941822cf349e75a91bfcace597670871386bce573d23d6` |
| 12 | `theorem` | [riemannZeta_four](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/HurwitzZetaValues/Variant9514f41bbabb4ee4d5bd16cdabea3df12a2ef5795c4eb1a68328c950c7b1f326.lean/declarations/riemannzeta-four--d7b4c88c2bab623cd5f468d0.md) | 217 | `result-track:d7b4c88c2bab623cd5f468d073cdd185478c3b8535c4283280f160ba064e14a2` |
| 13 | `theorem` | [riemannZeta_neg_nat_eq_bernoulli'](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/HurwitzZetaValues/Variant9514f41bbabb4ee4d5bd16cdabea3df12a2ef5795c4eb1a68328c950c7b1f326.lean/declarations/riemannzeta-neg-nat-eq-bernoulli--9b55d237e219d0cdc81ee7eb.md) | 225 | `result-track:9b55d237e219d0cdc81ee7eb8b7d4de5b16f2be884d271d40565b2b5c998f955` |
| 14 | `theorem` | [riemannZeta_neg_nat_eq_bernoulli](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/HurwitzZetaValues/Variant9514f41bbabb4ee4d5bd16cdabea3df12a2ef5795c4eb1a68328c950c7b1f326.lean/declarations/riemannzeta-neg-nat-eq-bernoulli--3c6edd1415f86365056b69a1.md) | 236 | `result-track:3c6edd1415f86365056b69a1272b2fd96eb1fd812a0bda7bc43587e3dec86a45` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
