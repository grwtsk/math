# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.MVTBounds.Variantc9c8f68a921c30a31fe488fffedcb8da297cbabcdb7cc2f5e27863f403c8b811

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "41f5fb74a45ad2a370db00f21717c481ebe0bfd1",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MVTBounds/Variantc9c8f68a921c30a31fe488fffedcb8da297cbabcdb7cc2f5e27863f403c8b811.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MVTBounds/Variantc9c8f68a921c30a31fe488fffedcb8da297cbabcdb7cc2f5e27863f403c8b811.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MVTBounds/Variantc9c8f68a921c30a31fe488fffedcb8da297cbabcdb7cc2f5e27863f403c8b811.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `41f5fb74a45ad2a370db00f21717c481ebe0bfd1`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MVTBounds/Variantc9c8f68a921c30a31fe488fffedcb8da297cbabcdb7cc2f5e27863f403c8b811.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/MVTBounds/Variantc9c8f68a921c30a31fe488fffedcb8da297cbabcdb7cc2f5e27863f403c8b811.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `LeanCert.Engine.RootFinding.Newton` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [mvt_lower_bound](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MVTBounds/Variantc9c8f68a921c30a31fe488fffedcb8da297cbabcdb7cc2f5e27863f403c8b811.lean/declarations/mvt-lower-bound--c49e4b837ecaa0193d3b3ea9.md) | 43 | `result-track:c49e4b837ecaa0193d3b3ea9dde1c2a1bed1d2b6df4c5402d48b909704b6ef54` |
| 2 | `lemma` | [mvt_upper_bound](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MVTBounds/Variantc9c8f68a921c30a31fe488fffedcb8da297cbabcdb7cc2f5e27863f403c8b811.lean/declarations/mvt-upper-bound--dac57a68d1c505ef6b69935c.md) | 73 | `result-track:dac57a68d1c505ef6b69935cc0335f1059b8278fa40fa5983cf41d298b4144ae` |
| 3 | `lemma` | [newton_positive_increasing_contradicts_contraction](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MVTBounds/Variantc9c8f68a921c30a31fe488fffedcb8da297cbabcdb7cc2f5e27863f403c8b811.lean/declarations/newton-positive-increasing-contradicts-contraction--cb5c30051acf20bbb235ae6a.md) | 111 | `result-track:cb5c30051acf20bbb235ae6ac3f58f03fc438640c7966a367fdac9f3188b3cd7` |
| 4 | `lemma` | [newton_negative_increasing_contradicts_contraction](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MVTBounds/Variantc9c8f68a921c30a31fe488fffedcb8da297cbabcdb7cc2f5e27863f403c8b811.lean/declarations/newton-negative-increasing-contradicts-contraction--e5343877feade4040ac4618a.md) | 186 | `result-track:e5343877feade4040ac4618abf4d52784987b0585592418e997c035ddbc036ff` |
| 5 | `lemma` | [quotient_hi_lower_bound](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MVTBounds/Variantc9c8f68a921c30a31fe488fffedcb8da297cbabcdb7cc2f5e27863f403c8b811.lean/declarations/quotient-hi-lower-bound--58738bbb0daeab279a0097ab.md) | 251 | `result-track:58738bbb0daeab279a0097ab29b861329bd34b5e18a4d9a68cbddfa4905b7ad0` |
| 6 | `lemma` | [quotient_lo_upper_bound](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MVTBounds/Variantc9c8f68a921c30a31fe488fffedcb8da297cbabcdb7cc2f5e27863f403c8b811.lean/declarations/quotient-lo-upper-bound--40b70293691f0fe79dc59515.md) | 273 | `result-track:40b70293691f0fe79dc595158760cbabf339502c58b9daef99202abc35f93d8a` |
| 7 | `lemma` | [quotient_hi_ge_neg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MVTBounds/Variantc9c8f68a921c30a31fe488fffedcb8da297cbabcdb7cc2f5e27863f403c8b811.lean/declarations/quotient-hi-ge-neg--06287f7bb8e3bfed736b4999.md) | 295 | `result-track:06287f7bb8e3bfed736b499971bca6bc3aec818c5152aeec23edfc42e0d2377d` |
| 8 | `lemma` | [quotient_lo_le_neg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MVTBounds/Variantc9c8f68a921c30a31fe488fffedcb8da297cbabcdb7cc2f5e27863f403c8b811.lean/declarations/quotient-lo-le-neg--2d537ba38000a1082503987d.md) | 320 | `result-track:2d537ba38000a1082503987d921f7cc1970bea2810ddc641c3bd437a267c5b9b` |
| 9 | `lemma` | [generic_contraction_absurd_hi](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MVTBounds/Variantc9c8f68a921c30a31fe488fffedcb8da297cbabcdb7cc2f5e27863f403c8b811.lean/declarations/generic-contraction-absurd-hi--e772e48b24ad0008d6f08d53.md) | 356 | `result-track:e772e48b24ad0008d6f08d53dfa893987ce51a44534d10c6b340d80ce997cd41` |
| 10 | `lemma` | [generic_contraction_absurd_lo](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MVTBounds/Variantc9c8f68a921c30a31fe488fffedcb8da297cbabcdb7cc2f5e27863f403c8b811.lean/declarations/generic-contraction-absurd-lo--93e0197b03adfc428b016308.md) | 395 | `result-track:93e0197b03adfc428b016308b7c6aeee894754fb9992d91af565a8728d1740c8` |
| 11 | `lemma` | [generic_contraction_absurd_hi_neg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MVTBounds/Variantc9c8f68a921c30a31fe488fffedcb8da297cbabcdb7cc2f5e27863f403c8b811.lean/declarations/generic-contraction-absurd-hi-neg--2e4423c5d38c060fbd21ab9f.md) | 434 | `result-track:2e4423c5d38c060fbd21ab9ff0daa836adf2f1c1447f8a0824e7720fb7a4849e` |
| 12 | `lemma` | [generic_contraction_absurd_lo_neg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MVTBounds/Variantc9c8f68a921c30a31fe488fffedcb8da297cbabcdb7cc2f5e27863f403c8b811.lean/declarations/generic-contraction-absurd-lo-neg--57520e280cc77ca7890762a0.md) | 477 | `result-track:57520e280cc77ca7890762a0ab93b500ed221ae8d45f106c6c023866ab02a6cc` |
| 13 | `lemma` | [newtonStepSimple_contraction_absurd_hi](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MVTBounds/Variantc9c8f68a921c30a31fe488fffedcb8da297cbabcdb7cc2f5e27863f403c8b811.lean/declarations/newtonstepsimple-contraction-absurd-hi--996c5fa7f0910a64daa79563.md) | 522 | `result-track:996c5fa7f0910a64daa795632faa33e92c09b44f80765ae660a1f4e25d1fad42` |
| 14 | `lemma` | [newtonStepSimple_contraction_absurd_lo](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MVTBounds/Variantc9c8f68a921c30a31fe488fffedcb8da297cbabcdb7cc2f5e27863f403c8b811.lean/declarations/newtonstepsimple-contraction-absurd-lo--4ddee1d9413452a76f0ed773.md) | 562 | `result-track:4ddee1d9413452a76f0ed7733e329c2d962bfa0886a5103e2c0cf8e499f1f863` |
| 15 | `lemma` | [newton_positive_decreasing_contradicts_contraction](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MVTBounds/Variantc9c8f68a921c30a31fe488fffedcb8da297cbabcdb7cc2f5e27863f403c8b811.lean/declarations/newton-positive-decreasing-contradicts-contraction--bfaa2e4d22e845069cbc82e2.md) | 605 | `result-track:bfaa2e4d22e845069cbc82e297fd217bc800b0c045442cf90d966d86066e7270` |
| 16 | `lemma` | [newton_negative_decreasing_contradicts_contraction](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MVTBounds/Variantc9c8f68a921c30a31fe488fffedcb8da297cbabcdb7cc2f5e27863f403c8b811.lean/declarations/newton-negative-decreasing-contradicts-contraction--61ee77533cdd06e06773edfa.md) | 668 | `result-track:61ee77533cdd06e06773edfa17c33925468e3bc2b516811a2bb64f8dd6524e45` |
| 17 | `lemma` | [mvt_fc_lower_bound_pos_increasing](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MVTBounds/Variantc9c8f68a921c30a31fe488fffedcb8da297cbabcdb7cc2f5e27863f403c8b811.lean/declarations/mvt-fc-lower-bound-pos-increasing--f515a726b1c48785fb43ae82.md) | 741 | `result-track:f515a726b1c48785fb43ae825e0d6fddc557746f9ac26a3a4a658ed0557e703f` |
| 18 | `lemma` | [mvt_fc_upper_bound_pos_increasing](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MVTBounds/Variantc9c8f68a921c30a31fe488fffedcb8da297cbabcdb7cc2f5e27863f403c8b811.lean/declarations/mvt-fc-upper-bound-pos-increasing--b491bc2c450d74055792e971.md) | 781 | `result-track:b491bc2c450d74055792e971b25468e5d5f57e042c84c7023280a2930294d2c4` |
| 19 | `lemma` | [mvt_fc_upper_bound_neg_decreasing](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MVTBounds/Variantc9c8f68a921c30a31fe488fffedcb8da297cbabcdb7cc2f5e27863f403c8b811.lean/declarations/mvt-fc-upper-bound-neg-decreasing--4ee1579bdd93cecc4307edab.md) | 822 | `result-track:4ee1579bdd93cecc4307edab6f747465461bc1b3453735be0c35e47d2db70c59` |
| 20 | `lemma` | [mvt_fc_lower_bound_neg_decreasing](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MVTBounds/Variantc9c8f68a921c30a31fe488fffedcb8da297cbabcdb7cc2f5e27863f403c8b811.lean/declarations/mvt-fc-lower-bound-neg-decreasing--bfc8acd04158b207b494ca0d.md) | 864 | `result-track:bfc8acd04158b207b494ca0d1857e01d4769b5395d2c76289ff4f98e1b762321` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
