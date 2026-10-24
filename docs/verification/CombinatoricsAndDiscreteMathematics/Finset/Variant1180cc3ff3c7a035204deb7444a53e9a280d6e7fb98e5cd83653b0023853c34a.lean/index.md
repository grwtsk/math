# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Finset.Variant1180cc3ff3c7a035204deb7444a53e9a280d6e7fb98e5cd83653b0023853c34a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ece58cf7de520528be47f882c58e3454779f32f8",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Finset/Variant1180cc3ff3c7a035204deb7444a53e9a280d6e7fb98e5cd83653b0023853c34a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant1180cc3ff3c7a035204deb7444a53e9a280d6e7fb98e5cd83653b0023853c34a.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant1180cc3ff3c7a035204deb7444a53e9a280d6e7fb98e5cd83653b0023853c34a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ece58cf7de520528be47f882c58e3454779f32f8`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Finset/Variant1180cc3ff3c7a035204deb7444a53e9a280d6e7fb98e5cd83653b0023853c34a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Finset/Variant1180cc3ff3c7a035204deb7444a53e9a280d6e7fb98e5cd83653b0023853c34a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [prod_eq_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant1180cc3ff3c7a035204deb7444a53e9a280d6e7fb98e5cd83653b0023853c34a.lean/declarations/prod-eq-zero--800cafd3ae4f4a4dad0b13e6.md) | 30 | `result-track:800cafd3ae4f4a4dad0b13e6e7073518e0234e71f41c3456c05fe552e0608101` |
| 2 | `lemma` | [prod_ite_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant1180cc3ff3c7a035204deb7444a53e9a280d6e7fb98e5cd83653b0023853c34a.lean/declarations/prod-ite-zero--b2fbbec2d5e96fe071a15543.md) | 33 | `result-track:b2fbbec2d5e96fe071a155438b668572b01339720139420f3e819d1380d4bcba` |
| 3 | `lemma` | [prod_boole](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant1180cc3ff3c7a035204deb7444a53e9a280d6e7fb98e5cd83653b0023853c34a.lean/declarations/prod-boole--8c1b8ab0a8fd67a39d9889fb.md) | 41 | `result-track:8c1b8ab0a8fd67a39d9889fbc29634f26fa7606a7ca28b5afc58a5e606f4a6d2` |
| 4 | `lemma` | [support_prod_subset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant1180cc3ff3c7a035204deb7444a53e9a280d6e7fb98e5cd83653b0023853c34a.lean/declarations/support-prod-subset--c7b6e04d916a1072897c0ddf.md) | 44 | `result-track:c7b6e04d916a1072897c0ddf427bab2978643e7dd1ba6c9b58c1a80f1cd27822` |
| 5 | `lemma` | [_root_.Set.indicator_pi_one_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant1180cc3ff3c7a035204deb7444a53e9a280d6e7fb98e5cd83653b0023853c34a.lean/declarations/root-set-indicator-pi-one-apply--d9a068b78cc26b8fb3be9fc7.md) | 48 | `result-track:d9a068b78cc26b8fb3be9fc7be4fd8f37ecab197d150ab5e9f762c9a7626253e` |
| 6 | `lemma` | [prod_eq_zero_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant1180cc3ff3c7a035204deb7444a53e9a280d6e7fb98e5cd83653b0023853c34a.lean/declarations/prod-eq-zero-iff--4fa8c635925952ee09559053.md) | 54 | `result-track:4fa8c635925952ee0955905324c3e369301841e29c7fa56d381988b78e8a87cc` |
| 7 | `lemma` | [prod_ne_zero_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant1180cc3ff3c7a035204deb7444a53e9a280d6e7fb98e5cd83653b0023853c34a.lean/declarations/prod-ne-zero-iff--4d426d9bac3bd9b7197afee6.md) | 60 | `result-track:4d426d9bac3bd9b7197afee69402abe04b849011db91793aadba1b8b083c12da` |
| 8 | `lemma` | [support_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant1180cc3ff3c7a035204deb7444a53e9a280d6e7fb98e5cd83653b0023853c34a.lean/declarations/support-prod--00e5028ae606c213487e7acb.md) | 64 | `result-track:00e5028ae606c213487e7acb6d5c2dbcb0ca4f92f2a7ed502698da34119a1379` |
| 9 | `lemma` | [prod_ite_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant1180cc3ff3c7a035204deb7444a53e9a280d6e7fb98e5cd83653b0023853c34a.lean/declarations/prod-ite-zero--979131a65356fda4e6d85a9f.md) | 73 | `result-track:979131a65356fda4e6d85a9f8de39663bf880486a7c15ecbcca5f1a8fdd02777` |
| 10 | `lemma` | [prod_boole](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant1180cc3ff3c7a035204deb7444a53e9a280d6e7fb98e5cd83653b0023853c34a.lean/declarations/prod-boole--25148a5b92822afe296c5138.md) | 76 | `result-track:25148a5b92822afe296c513870761cdd08dc024e22f07a53b95e8e61e7827a62` |
| 11 | `lemma` | [Units.mk0_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant1180cc3ff3c7a035204deb7444a53e9a280d6e7fb98e5cd83653b0023853c34a.lean/declarations/units-mk0-prod--a6dff9925b1854c5e4f67746.md) | 81 | `result-track:a6dff9925b1854c5e4f677463a47247ad53e12491d18992b0c90f89a76c40847` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
