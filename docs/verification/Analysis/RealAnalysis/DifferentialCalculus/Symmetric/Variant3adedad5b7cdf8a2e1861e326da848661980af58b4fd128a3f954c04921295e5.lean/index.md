# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Symmetric.Variant3adedad5b7cdf8a2e1861e326da848661980af58b4fd128a3f954c04921295e5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0ffa96c5444b290667206d339dda1cfa7a22d25d",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Symmetric/Variant3adedad5b7cdf8a2e1861e326da848661980af58b4fd128a3f954c04921295e5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Symmetric/Variant3adedad5b7cdf8a2e1861e326da848661980af58b4fd128a3f954c04921295e5.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Symmetric/Variant3adedad5b7cdf8a2e1861e326da848661980af58b4fd128a3f954c04921295e5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0ffa96c5444b290667206d339dda1cfa7a22d25d`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Symmetric/Variant3adedad5b7cdf8a2e1861e326da848661980af58b4fd128a3f954c04921295e5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Symmetric/Variant3adedad5b7cdf8a2e1861e326da848661980af58b4fd128a3f954c04921295e5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Analytic.IteratedFDeriv` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Pow` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.MeanValue` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.ContDiff.Basic` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsSymmSndFDerivWithinAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Symmetric/Variant3adedad5b7cdf8a2e1861e326da848661980af58b4fd128a3f954c04921295e5.lean/declarations/issymmsndfderivwithinat--a8a84be8905efb5fa6eefa3f.md) | 87 | `declaration-track:a8a84be8905efb5fa6eefa3f1b513992bdb4dd51f35ea57a7056a1139e44500f` |
| 2 | `def` | [IsSymmSndFDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Symmetric/Variant3adedad5b7cdf8a2e1861e326da848661980af58b4fd128a3f954c04921295e5.lean/declarations/issymmsndfderivat--28cbf8caf932e7fdb59d1772.md) | 95 | `declaration-track:28cbf8caf932e7fdb59d1772162b84b0126a3c92cd2465124ff72c0746ad414e` |
| 3 | `lemma` | [IsSymmSndFDerivWithinAt.eq](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Symmetric/Variant3adedad5b7cdf8a2e1861e326da848661980af58b4fd128a3f954c04921295e5.lean/declarations/issymmsndfderivwithinat-eq--a9c9dd65fb968581d34b818c.md) | 98 | `result-track:a9c9dd65fb968581d34b818cc724807582eaf30f0a0f5f0aa9817f61bcb95c62` |
| 4 | `lemma` | [IsSymmSndFDerivAt.eq](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Symmetric/Variant3adedad5b7cdf8a2e1861e326da848661980af58b4fd128a3f954c04921295e5.lean/declarations/issymmsndfderivat-eq--57e5e6321bd48884a8b08f7e.md) | 102 | `result-track:57e5e6321bd48884a8b08f7ebcf222ab464df9db344017ddf5f8358b612d54cc` |
| 5 | `lemma` | [fderivWithin_fderivWithin_eq_of_mem_nhdsWithin](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Symmetric/Variant3adedad5b7cdf8a2e1861e326da848661980af58b4fd128a3f954c04921295e5.lean/declarations/fderivwithin-fderivwithin-eq-of-mem-nhdswithin--473fff0af6df698809117a44.md) | 107 | `result-track:473fff0af6df698809117a442fe05cfead228b409a20295813eda8efe0a66a47` |
| 6 | `lemma` | [fderivWithin_fderivWithin_eq_of_eventuallyEq](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Symmetric/Variant3adedad5b7cdf8a2e1861e326da848661980af58b4fd128a3f954c04921295e5.lean/declarations/fderivwithin-fderivwithin-eq-of-eventuallyeq--c2234292c79c88da1833381e.md) | 124 | `result-track:c2234292c79c88da1833381e22f88c71ee6291d6f542419d803fcab154d5e45d` |
| 7 | `lemma` | [fderivWithin_fderivWithin_eq_of_mem_nhds](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Symmetric/Variant3adedad5b7cdf8a2e1861e326da848661980af58b4fd128a3f954c04921295e5.lean/declarations/fderivwithin-fderivwithin-eq-of-mem-nhds--186c59f7a014199e02f8c045.md) | 131 | `result-track:186c59f7a014199e02f8c04593a78630585470f1a4da99f2109fef8591512613` |
| 8 | `lemma` | [isSymmSndFDerivWithinAt_univ](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Symmetric/Variant3adedad5b7cdf8a2e1861e326da848661980af58b4fd128a3f954c04921295e5.lean/declarations/issymmsndfderivwithinat-univ--21d086ed456c9218ec9c85e3.md) | 138 | `result-track:21d086ed456c9218ec9c85e3733d490237022d8cb60d915ed647ddcc9146eb28` |
| 9 | `theorem` | [IsSymmSndFDerivWithinAt.mono_of_mem_nhdsWithin](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Symmetric/Variant3adedad5b7cdf8a2e1861e326da848661980af58b4fd128a3f954c04921295e5.lean/declarations/issymmsndfderivwithinat-mono-of-mem-nhdswithin--017a5950bb60ae96f93c20fa.md) | 142 | `result-track:017a5950bb60ae96f93c20fa4f182acbbac86c7acf49a762990eb90fc3180bdf` |
| 10 | `theorem` | [IsSymmSndFDerivWithinAt.congr_set](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Symmetric/Variant3adedad5b7cdf8a2e1861e326da848661980af58b4fd128a3f954c04921295e5.lean/declarations/issymmsndfderivwithinat-congr-set--6195c727752ed0150e84d7a6.md) | 150 | `result-track:6195c727752ed0150e84d7a6282aadca8b147ae0efb57a57506fa4e4f1271f00` |
| 11 | `theorem` | [isSymmSndFDerivWithinAt_congr_set](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Symmetric/Variant3adedad5b7cdf8a2e1861e326da848661980af58b4fd128a3f954c04921295e5.lean/declarations/issymmsndfderivwithinat-congr-set--fc19c5a355837631aa564544.md) | 156 | `result-track:fc19c5a355837631aa564544e5351716a0c68bf9ee2cfbf64d59a4c397daf7d4` |
| 12 | `theorem` | [IsSymmSndFDerivAt.isSymmSndFDerivWithinAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Symmetric/Variant3adedad5b7cdf8a2e1861e326da848661980af58b4fd128a3f954c04921295e5.lean/declarations/issymmsndfderivat-issymmsndfderivwithinat--03cc7c4cf5aa5f6c7b9bcc7d.md) | 160 | `result-track:03cc7c4cf5aa5f6c7b9bcc7d8bdc3a59b9a3d631b6f0626f3d45f261c7127bf7` |
| 13 | `theorem` | [ContDiffWithinAt.isSymmSndFDerivWithinAt_of_omega](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Symmetric/Variant3adedad5b7cdf8a2e1861e326da848661980af58b4fd128a3f954c04921295e5.lean/declarations/contdiffwithinat-issymmsndfderivwithinat-of-omega--780b714d694a49cddb9413b9.md) | 167 | `result-track:780b714d694a49cddb9413b97638106eefc9cad410ddfe82889a41c47e356cf7` |
| 14 | `theorem` | [ContDiffAt.isSymmSndFDerivAt_of_omega](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Symmetric/Variant3adedad5b7cdf8a2e1861e326da848661980af58b4fd128a3f954c04921295e5.lean/declarations/contdiffat-issymmsndfderivat-of-omega--96b78505752141a66586c080.md) | 178 | `result-track:96b78505752141a66586c0808552ee1680b28556f417b72923525f166470c7b8` |
| 15 | `theorem` | [Convex.taylor_approx_two_segment](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Symmetric/Variant3adedad5b7cdf8a2e1861e326da848661980af58b4fd128a3f954c04921295e5.lean/declarations/convex-taylor-approx-two-segment--893c1b26dc41ccc32b55497b.md) | 202 | `result-track:893c1b26dc41ccc32b55497ba0898fb7b95f144addf2da9e213016f36a78c4a2` |
| 16 | `theorem` | [Convex.isLittleO_alternate_sum_square](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Symmetric/Variant3adedad5b7cdf8a2e1861e326da848661980af58b4fd128a3f954c04921295e5.lean/declarations/convex-islittleo-alternate-sum-square--6ede689195185be758ae9fbd.md) | 311 | `result-track:6ede689195185be758ae9fbd35972141fbe31f877c73b883a7be94c761ac0e21` |
| 17 | `theorem` | [Convex.second_derivative_within_at_symmetric_of_mem_interior](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Symmetric/Variant3adedad5b7cdf8a2e1861e326da848661980af58b4fd128a3f954c04921295e5.lean/declarations/convex-second-derivative-within-at-symmetric-of-mem-interior--f2ac93fc073c109c7d871446.md) | 352 | `result-track:f2ac93fc073c109c7d871446c70400be1c829f18bd1a0236801c73ffe8f50537` |
| 18 | `theorem` | [Convex.second_derivative_within_at_symmetric](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Symmetric/Variant3adedad5b7cdf8a2e1861e326da848661980af58b4fd128a3f954c04921295e5.lean/declarations/convex-second-derivative-within-at-symmetric--54da480c0c88d9f9d4bc0b19.md) | 376 | `result-track:54da480c0c88d9f9d4bc0b191def652f142e2808413363948d9593ac634b2b23` |
| 19 | `theorem` | [second_derivative_symmetric_of_eventually_of_real](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Symmetric/Variant3adedad5b7cdf8a2e1861e326da848661980af58b4fd128a3f954c04921295e5.lean/declarations/second-derivative-symmetric-of-eventually-of-real--e1df74a9e1273c1c597a3dde.md) | 426 | `result-track:e1df74a9e1273c1c597a3dde83321731f2a879c614d08d036725b0202168cc0a` |
| 20 | `theorem` | [second_derivative_symmetric_of_eventually](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Symmetric/Variant3adedad5b7cdf8a2e1861e326da848661980af58b4fd128a3f954c04921295e5.lean/declarations/second-derivative-symmetric-of-eventually--b9499c6427825b99f589b0f3.md) | 444 | `result-track:b9499c6427825b99f589b0f30287f7a051c2f50e01e95823c959b462d8ccc701` |
| 21 | `theorem` | [second_derivative_symmetric](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Symmetric/Variant3adedad5b7cdf8a2e1861e326da848661980af58b4fd128a3f954c04921295e5.lean/declarations/second-derivative-symmetric--30fbfa24c5de48492b123a60.md) | 475 | `result-track:30fbfa24c5de48492b123a601eec3b6bcb345dc86ae88838e48cd14ff04452d2` |
| 22 | `lemma` | [minSmoothness_of_isRCLikeNormedField](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Symmetric/Variant3adedad5b7cdf8a2e1861e326da848661980af58b4fd128a3f954c04921295e5.lean/declarations/minsmoothness-of-isrclikenormedfield--5be74301cf5f073efe3dc319.md) | 488 | `result-track:5be74301cf5f073efe3dc319af05388f4d5bdbb8b4f14156f196a00d025cdb4d` |
| 23 | `lemma` | [le_minSmoothness](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Symmetric/Variant3adedad5b7cdf8a2e1861e326da848661980af58b4fd128a3f954c04921295e5.lean/declarations/le-minsmoothness--a59748e364814c6eea91404c.md) | 492 | `result-track:a59748e364814c6eea91404cf6fdde5777dae3a1179bc8160929606310f5b19b` |
| 24 | `lemma` | [minSmoothness_add](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Symmetric/Variant3adedad5b7cdf8a2e1861e326da848661980af58b4fd128a3f954c04921295e5.lean/declarations/minsmoothness-add--fb8bbc458cfee8cdab68c139.md) | 496 | `result-track:fb8bbc458cfee8cdab68c13908f5c620a7bf93d2a7eaa0d006a7eef46059534b` |
| 25 | `lemma` | [minSmoothness_monotone](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Symmetric/Variant3adedad5b7cdf8a2e1861e326da848661980af58b4fd128a3f954c04921295e5.lean/declarations/minsmoothness-monotone--eb7a109860ed10462c3a2650.md) | 500 | `result-track:eb7a109860ed10462c3a26500ffaef39e0044ea3eaa1156265cb63062de34374` |
| 26 | `lemma` | [minSmoothness_eq_infty](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Symmetric/Variant3adedad5b7cdf8a2e1861e326da848661980af58b4fd128a3f954c04921295e5.lean/declarations/minsmoothness-eq-infty--80ec4a4595293bc87cfd06af.md) | 505 | `result-track:80ec4a4595293bc87cfd06af70bdd5e133f185574325de6d9c3e3451c4a2b46f` |
| 27 | `lemma` | [exist_minSmoothness_le_ne_infty](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Symmetric/Variant3adedad5b7cdf8a2e1861e326da848661980af58b4fd128a3f954c04921295e5.lean/declarations/exist-minsmoothness-le-ne-infty--9069e281126e63e0708cdb16.md) | 515 | `result-track:9069e281126e63e0708cdb16b95a2c079e36f06775054fc0630d27dc5de1f8d9` |
| 28 | `theorem` | [ContDiffAt.isSymmSndFDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Symmetric/Variant3adedad5b7cdf8a2e1861e326da848661980af58b4fd128a3f954c04921295e5.lean/declarations/contdiffat-issymmsndfderivat--936cf832766b4d6fa45e696d.md) | 526 | `result-track:936cf832766b4d6fa45e696dc94d8a0b83168bd52e34d59aed3eb77da83084ed` |
| 29 | `theorem` | [ContDiffWithinAt.isSymmSndFDerivWithinAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Symmetric/Variant3adedad5b7cdf8a2e1861e326da848661980af58b4fd128a3f954c04921295e5.lean/declarations/contdiffwithinat-issymmsndfderivwithinat--449f93a2e78c58eff7714228.md) | 552 | `result-track:449f93a2e78c58eff77142286042b3324116a3bdb7e97201089d351d92b914ff` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
