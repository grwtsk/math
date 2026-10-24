# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.ConductorThreePartialSummationBounds.Variant82b490bbcb2297055c63f7b0960e1ce8c77ca5fbad52b8ddb8107881a81fc8e0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e44b70837b1679df88b17ad33bcaf52a574b2b81",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ConductorThreePartialSummationBounds/Variant82b490bbcb2297055c63f7b0960e1ce8c77ca5fbad52b8ddb8107881a81fc8e0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ConductorThreePartialSummationBounds/Variant82b490bbcb2297055c63f7b0960e1ce8c77ca5fbad52b8ddb8107881a81fc8e0.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ConductorThreePartialSummationBounds/Variant82b490bbcb2297055c63f7b0960e1ce8c77ca5fbad52b8ddb8107881a81fc8e0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e44b70837b1679df88b17ad33bcaf52a574b2b81`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/ConductorThreePartialSummationBounds/Variant82b490bbcb2297055c63f7b0960e1ce8c77ca5fbad52b8ddb8107881a81fc8e0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/ConductorThreePartialSummationBounds/Variant82b490bbcb2297055c63f7b0960e1ce8c77ca5fbad52b8ddb8107881a81fc8e0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [log_increment_nonneg](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ConductorThreePartialSummationBounds/Variant82b490bbcb2297055c63f7b0960e1ce8c77ca5fbad52b8ddb8107881a81fc8e0.lean/declarations/log-increment-nonneg--e1a77996eb32e02708f03049.md) | 35 | `result-track:e1a77996eb32e02708f0304917a4639bf291c38a61832c9cb5ba416d323445ab` |
| 2 | `lemma` | [sum_log_increment](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ConductorThreePartialSummationBounds/Variant82b490bbcb2297055c63f7b0960e1ce8c77ca5fbad52b8ddb8107881a81fc8e0.lean/declarations/sum-log-increment--d1949719198a9fa99556a6b0.md) | 45 | `result-track:d1949719198a9fa99556a6b02470969d0572b5959cc451cf0d8ed00594410842` |
| 3 | `lemma` | [residueDifferenceCriticalRate_mono](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ConductorThreePartialSummationBounds/Variant82b490bbcb2297055c63f7b0960e1ce8c77ca5fbad52b8ddb8107881a81fc8e0.lean/declarations/residuedifferencecriticalrate-mono--6c99429b005de5c20cde1b03.md) | 55 | `result-track:6c99429b005de5c20cde1b0315cd992a7e9e7085c0be267542a224d74c81752b` |
| 4 | `lemma` | [twistedPsiCriticalRate_eq_residue_mul_log](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ConductorThreePartialSummationBounds/Variant82b490bbcb2297055c63f7b0960e1ce8c77ca5fbad52b8ddb8107881a81fc8e0.lean/declarations/twistedpsicriticalrate-eq-residue-mul-log--69b0f01475d965b78a037b07.md) | 71 | `result-track:69b0f01475d965b78a037b07883dbca33d089162838be06612beb7cd809374ca` |
| 5 | `def` | [earlyPrimeMass](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ConductorThreePartialSummationBounds/Variant82b490bbcb2297055c63f7b0960e1ce8c77ca5fbad52b8ddb8107881a81fc8e0.lean/declarations/earlyprimemass--099e394a34118ad471229c7f.md) | 77 | `declaration-track:099e394a34118ad471229c7fa59d684a2a60f7b2e67074edb5832d112f849e54` |
| 6 | `lemma` | [earlyPrimeMass_nonneg](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ConductorThreePartialSummationBounds/Variant82b490bbcb2297055c63f7b0960e1ce8c77ca5fbad52b8ddb8107881a81fc8e0.lean/declarations/earlyprimemass-nonneg--bfb8ee8e0a352711fcf51375.md) | 80 | `result-track:bfb8ee8e0a352711fcf5137590b38ece12fa31b75b98b4f9422fe8aec2f076cb` |
| 7 | `lemma` | [abs_primePartial_le_earlyPrimeMass](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ConductorThreePartialSummationBounds/Variant82b490bbcb2297055c63f7b0960e1ce8c77ca5fbad52b8ddb8107881a81fc8e0.lean/declarations/abs-primepartial-le-earlyprimemass--19808f3ef708431ccff72d5b.md) | 84 | `result-track:19808f3ef708431ccff72d5b467db34f905e4408dac6a72c07fb2fbd3116c022` |
| 8 | `theorem` | [theta_bound_of_prime_bound](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ConductorThreePartialSummationBounds/Variant82b490bbcb2297055c63f7b0960e1ce8c77ca5fbad52b8ddb8107881a81fc8e0.lean/declarations/theta-bound-of-prime-bound--378da95c3e4e269fc153ce0c.md) | 93 | `result-track:378da95c3e4e269fc153ce0c677ade4282066ebd8dd0531709636a52959b25a5` |
| 9 | `lemma` | [log_increment_le_inv_nat](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ConductorThreePartialSummationBounds/Variant82b490bbcb2297055c63f7b0960e1ce8c77ca5fbad52b8ddb8107881a81fc8e0.lean/declarations/log-increment-le-inv-nat--31a6f94086c0c9e3c76da4e1.md) | 185 | `result-track:31a6f94086c0c9e3c76da4e152160882e637d98f824be8e9cc3950a32426847b` |
| 10 | `lemma` | [reciprocalLog_sub_nonneg](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ConductorThreePartialSummationBounds/Variant82b490bbcb2297055c63f7b0960e1ce8c77ca5fbad52b8ddb8107881a81fc8e0.lean/declarations/reciprocallog-sub-nonneg--af1fbb310aac0e9c13c1d2aa.md) | 201 | `result-track:af1fbb310aac0e9c13c1d2aa9f1205296cf9c093c20e1853b4284387e86725d2` |
| 11 | `lemma` | [criticalRate_mul_reciprocalKernel_le_invSqrt](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ConductorThreePartialSummationBounds/Variant82b490bbcb2297055c63f7b0960e1ce8c77ca5fbad52b8ddb8107881a81fc8e0.lean/declarations/criticalrate-mul-reciprocalkernel-le-invsqrt--fa833f1010a7279af640f37e.md) | 215 | `result-track:fa833f1010a7279af640f37e7f3a5add5fc3e03894bc31fea7ce43cc9d6d17a2` |
| 12 | `lemma` | [invSqrt_le_three_mul_sqrt_increment](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ConductorThreePartialSummationBounds/Variant82b490bbcb2297055c63f7b0960e1ce8c77ca5fbad52b8ddb8107881a81fc8e0.lean/declarations/invsqrt-le-three-mul-sqrt-increment--bdfe77b90374756d2609b5cf.md) | 266 | `result-track:bdfe77b90374756d2609b5cfb2c6fc1d5ff91f1722efac0467e0873e3dc212f4` |
| 13 | `lemma` | [sum_sqrt_increment_range](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ConductorThreePartialSummationBounds/Variant82b490bbcb2297055c63f7b0960e1ce8c77ca5fbad52b8ddb8107881a81fc8e0.lean/declarations/sum-sqrt-increment-range--19c4713727f28fac65cf3c5f.md) | 300 | `result-track:19c4713727f28fac65cf3c5fe840f463378a4054db0476e178c9b2b610eec704` |
| 14 | `lemma` | [sum_invSqrt_Ico_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ConductorThreePartialSummationBounds/Variant82b490bbcb2297055c63f7b0960e1ce8c77ca5fbad52b8ddb8107881a81fc8e0.lean/declarations/sum-invsqrt-ico-le--846b1b603b9cfa5347637531.md) | 311 | `result-track:846b1b603b9cfa53476375318e32a426c5fd4563ebdba04bcaef55dc0bb2583e` |
| 15 | `def` | [earlyThetaKernelMass](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ConductorThreePartialSummationBounds/Variant82b490bbcb2297055c63f7b0960e1ce8c77ca5fbad52b8ddb8107881a81fc8e0.lean/declarations/earlythetakernelmass--b5abdba0a2432d63d35f998f.md) | 329 | `declaration-track:b5abdba0a2432d63d35f998f983f73d3ac32ce2f2e20e39c401bac222c4ab23d` |
| 16 | `lemma` | [earlyThetaKernelMass_nonneg](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ConductorThreePartialSummationBounds/Variant82b490bbcb2297055c63f7b0960e1ce8c77ca5fbad52b8ddb8107881a81fc8e0.lean/declarations/earlythetakernelmass-nonneg--cc5274f660ddd9394b121a44.md) | 334 | `result-track:cc5274f660ddd9394b121a440e93811b9a208c0e4bebd2634ad64c64a8912d64` |
| 17 | `theorem` | [prime_bound_of_theta_bound](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ConductorThreePartialSummationBounds/Variant82b490bbcb2297055c63f7b0960e1ce8c77ca5fbad52b8ddb8107881a81fc8e0.lean/declarations/prime-bound-of-theta-bound--a7102756eb0d7a48783dc69f.md) | 342 | `result-track:a7102756eb0d7a48783dc69ff5c049d6ea24d4ad94c7c15a3dee922eac1967fe` |
| 18 | `theorem` | [twistedThetaCriticalBound_iff_primeCharacterCriticalBound](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ConductorThreePartialSummationBounds/Variant82b490bbcb2297055c63f7b0960e1ce8c77ca5fbad52b8ddb8107881a81fc8e0.lean/declarations/twistedthetacriticalbound-iff-primecharactercriticalbound--d123939d9f253978c3a28173.md) | 491 | `result-track:d123939d9f253978c3a28173cc803631fa384c081106fbede60bb2971d47a57a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
