# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.Assembly.Variant761ca741f9fc7cee97930cff5960ddf335e5fe1481bc93e7d637dd4e5c75b000

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "48f192ac51d33c4dd49f21a3ece15426538bd026",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Assembly/Variant761ca741f9fc7cee97930cff5960ddf335e5fe1481bc93e7d637dd4e5c75b000.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Assembly/Variant761ca741f9fc7cee97930cff5960ddf335e5fe1481bc93e7d637dd4e5c75b000.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Assembly/Variant761ca741f9fc7cee97930cff5960ddf335e5fe1481bc93e7d637dd4e5c75b000.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `48f192ac51d33c4dd49f21a3ece15426538bd026`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Assembly/Variant761ca741f9fc7cee97930cff5960ddf335e5fe1481bc93e7d637dd4e5c75b000.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Assembly/Variant761ca741f9fc7cee97930cff5960ddf335e5fe1481bc93e7d637dd4e5c75b000.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.XiPrime.Statement` — import line 22; external provider; requires a separately pinned dependency.
- `Zeta23.XiPrime.CertificateFn` — import line 23; external provider; requires a separately pinned dependency.
- `Zeta23.FinalMult` — import line 24; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [gzMoments_of_transfer](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Assembly/Variant761ca741f9fc7cee97930cff5960ddf335e5fe1481bc93e7d637dd4e5c75b000.lean/declarations/gzmoments-of-transfer--3e15ed3e3e9690db7329459e.md) | 37 | `result-track:3e15ed3e3e9690db7329459ecde99a8abf1857d23a41c31054db431d3257186e` |
| 2 | `theorem` | [kappa_nonneg_of_coeffMoments](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Assembly/Variant761ca741f9fc7cee97930cff5960ddf335e5fe1481bc93e7d637dd4e5c75b000.lean/declarations/kappa-nonneg-of-coeffmoments--e2620adb1748dbaa3f67a036.md) | 70 | `result-track:e2620adb1748dbaa3f67a036341cee07a426f6b0da1ea1d778bb25fce0c02e6e` |
| 3 | `theorem` | [kappa_nonneg_of_gzMoments](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Assembly/Variant761ca741f9fc7cee97930cff5960ddf335e5fe1481bc93e7d637dd4e5c75b000.lean/declarations/kappa-nonneg-of-gzmoments--c500a62d474a751847ff79de.md) | 86 | `result-track:c500a62d474a751847ff79ded495b7a552603e27d66338cb47be007da483afce` |
| 4 | `theorem` | [eventually_tailPackage_of_rvm](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Assembly/Variant761ca741f9fc7cee97930cff5960ddf335e5fe1481bc93e7d637dd4e5c75b000.lean/declarations/eventually-tailpackage-of-rvm--57932c1fff0a8e6b2b4dea94.md) | 110 | `result-track:57932c1fff0a8e6b2b4dea94587be1892f7cc52629f570e38cc0a7147a6c1b5a` |
| 5 | `theorem` | [eventually_side_conditions_of_rvm](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Assembly/Variant761ca741f9fc7cee97930cff5960ddf335e5fe1481bc93e7d637dd4e5c75b000.lean/declarations/eventually-side-conditions-of-rvm--a6d832429146c7f83ecd3a2b.md) | 128 | `result-track:a6d832429146c7f83ecd3a2bfddf3a774bed1be7d3daa08ff2b70a16f50e0f23` |
| 6 | `theorem` | [simple_bound_of_gzMoments](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Assembly/Variant761ca741f9fc7cee97930cff5960ddf335e5fe1481bc93e7d637dd4e5c75b000.lean/declarations/simple-bound-of-gzmoments--a0dc4c024650dedd0ba5e628.md) | 140 | `result-track:a0dc4c024650dedd0ba5e628b3226bfd1c4f2c3b15114bd6fda7fa1ae6cd44c2` |
| 7 | `theorem` | [dist_bound_of_gzMoments](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Assembly/Variant761ca741f9fc7cee97930cff5960ddf335e5fe1481bc93e7d637dd4e5c75b000.lean/declarations/dist-bound-of-gzmoments--18a3e44ef9ba2df28c16f203.md) | 201 | `result-track:18a3e44ef9ba2df28c16f2030ccff071ae96029c3c71d46cbafd49fd73b5bb7e` |
| 8 | `structure` | [WindowZeroSide](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Assembly/Variant761ca741f9fc7cee97930cff5960ddf335e5fe1481bc93e7d637dd4e5c75b000.lean/declarations/windowzeroside--6d4f166a0c2f1e281cc10265.md) | 277 | `declaration-track:6d4f166a0c2f1e281cc102650a839fc709f10a7b18be4a4b2fa8a8117af98b04` |
| 9 | `theorem` | [windowZeroSide_flat](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Assembly/Variant761ca741f9fc7cee97930cff5960ddf335e5fe1481bc93e7d637dd4e5c75b000.lean/declarations/windowzeroside-flat--8978898be1ca72b5e6a6765d.md) | 286 | `result-track:8978898be1ca72b5e6a6765d4be4be4c6de174322eb10a8810bb62c3b555640e` |
| 10 | `theorem` | [family_tail_package](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Assembly/Variant761ca741f9fc7cee97930cff5960ddf335e5fe1481bc93e7d637dd4e5c75b000.lean/declarations/family-tail-package--e5a3c824a9d1d30511894f97.md) | 307 | `result-track:e5a3c824a9d1d30511894f97147741b83bd73a0aefa526d31d18cb883f2b8631` |
| 11 | `theorem` | [simple_bound_of_gzMoments_family](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Assembly/Variant761ca741f9fc7cee97930cff5960ddf335e5fe1481bc93e7d637dd4e5c75b000.lean/declarations/simple-bound-of-gzmoments-family--e10d5fa16002986e1151c7fc.md) | 343 | `result-track:e10d5fa16002986e1151c7fc88460a437b1a0acde57e4e5f1a5195fb1e4ff711` |
| 12 | `theorem` | [dist_bound_of_gzMoments_family](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Assembly/Variant761ca741f9fc7cee97930cff5960ddf335e5fe1481bc93e7d637dd4e5c75b000.lean/declarations/dist-bound-of-gzmoments-family--05d986125ae3764c4b8b822d.md) | 379 | `result-track:05d986125ae3764c4b8b822d037d95fb96edb804c822b63ba7014ab249f27861` |
| 13 | `theorem` | [fixedLam_flat](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Assembly/Variant761ca741f9fc7cee97930cff5960ddf335e5fe1481bc93e7d637dd4e5c75b000.lean/declarations/fixedlam-flat--e5cadfbcf82a85273c3199e2.md) | 420 | `result-track:e5cadfbcf82a85273c3199e2ef105c1240d08d98bd695f5a513562af0989f9a5` |
| 14 | `theorem` | [fixedLam_family](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Assembly/Variant761ca741f9fc7cee97930cff5960ddf335e5fe1481bc93e7d637dd4e5c75b000.lean/declarations/fixedlam-family--390ef884f1151e74c2912bc8.md) | 443 | `result-track:390ef884f1151e74c2912bc860b16d307603ec40839e5c99d64e739c09cb76fc` |
| 15 | `theorem` | [headline_of_strict](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Assembly/Variant761ca741f9fc7cee97930cff5960ddf335e5fe1481bc93e7d637dd4e5c75b000.lean/declarations/headline-of-strict--233b676ed4f02336153e827e.md) | 467 | `result-track:233b676ed4f02336153e827ef8acd41470af063a5d41be8d6d1990f6455ced9e` |
| 16 | `lemma` | [Ncount_add](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Assembly/Variant761ca741f9fc7cee97930cff5960ddf335e5fe1481bc93e7d637dd4e5c75b000.lean/declarations/ncount-add--d4ee474a908241c04d0781fc.md) | 488 | `result-track:d4ee474a908241c04d0781fcb9c2ec5b624ef49b3eeb789f8dbf304d881628f1` |
| 17 | `lemma` | [N0simple_add](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Assembly/Variant761ca741f9fc7cee97930cff5960ddf335e5fe1481bc93e7d637dd4e5c75b000.lean/declarations/n0simple-add--51ff3b88e4ee4dac6c48cac9.md) | 493 | `result-track:51ff3b88e4ee4dac6c48cac99b4aee217c9c3f940d0bdc846e4d19766964a651` |
| 18 | `lemma` | [Ndist_add](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Assembly/Variant761ca741f9fc7cee97930cff5960ddf335e5fe1481bc93e7d637dd4e5c75b000.lean/declarations/ndist-add--d44415110296a0685bad2680.md) | 498 | `result-track:d44415110296a0685bad26804f90868ebd08448fc9aa6b313873a02517d6328d` |
| 19 | `lemma` | [tendsto_Ncount_zero_atTop](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Assembly/Variant761ca741f9fc7cee97930cff5960ddf335e5fe1481bc93e7d637dd4e5c75b000.lean/declarations/tendsto-ncount-zero-attop--dfb4ec9891c186ecb05fe565.md) | 503 | `result-track:dfb4ec9891c186ecb05fe565e09bce538b6f00f54c1ada40201a9c03e2cdb9da` |
| 20 | `theorem` | [cumulative_of_dyadic](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Assembly/Variant761ca741f9fc7cee97930cff5960ddf335e5fe1481bc93e7d637dd4e5c75b000.lean/declarations/cumulative-of-dyadic--0d494539585872603c719ca9.md) | 517 | `result-track:0d494539585872603c719ca944b78b6f5e107d67f816c030c22a737ba1f4e0ef` |
| 21 | `theorem` | [cumulative_of_fixedLam](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Assembly/Variant761ca741f9fc7cee97930cff5960ddf335e5fe1481bc93e7d637dd4e5c75b000.lean/declarations/cumulative-of-fixedlam--292c4db037d19af28c451013.md) | 530 | `result-track:292c4db037d19af28c45101346a4e9387b3ac8419d295cc0205b53041e7cafff` |
| 22 | `theorem` | [fixedLam_family_W](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Assembly/Variant761ca741f9fc7cee97930cff5960ddf335e5fe1481bc93e7d637dd4e5c75b000.lean/declarations/fixedlam-family-w--00886f2e540bdd99b192a8d5.md) | 559 | `result-track:00886f2e540bdd99b192a8d56f95639b96d841694acdfcbe41755acce9bad4c9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
