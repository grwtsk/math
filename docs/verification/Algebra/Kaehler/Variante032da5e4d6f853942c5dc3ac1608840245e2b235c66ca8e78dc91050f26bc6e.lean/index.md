# Verification target: GRWTSK.Algebra.Kaehler.Variante032da5e4d6f853942c5dc3ac1608840245e2b235c66ca8e78dc91050f26bc6e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d18ddd3379148e9a1f7571baceac8cb5e73722dc",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Kaehler/Variante032da5e4d6f853942c5dc3ac1608840245e2b235c66ca8e78dc91050f26bc6e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Kaehler/Variante032da5e4d6f853942c5dc3ac1608840245e2b235c66ca8e78dc91050f26bc6e.lean/index.md) · [Full source](../../../../mathematics/Algebra/Kaehler/Variante032da5e4d6f853942c5dc3ac1608840245e2b235c66ca8e78dc91050f26bc6e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d18ddd3379148e9a1f7571baceac8cb5e73722dc`.

Source path: `GRWTSK/Algebra/Kaehler/Variante032da5e4d6f853942c5dc3ac1608840245e2b235c66ca8e78dc91050f26bc6e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Kaehler/Variante032da5e4d6f853942c5dc3ac1608840245e2b235c66ca8e78dc91050f26bc6e.lean.json)

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
| 1 | `def` | [KaehlerDifferential.tensorKaehlerEquivOfFormallyEtale](../../../../mathematics/Algebra/Kaehler/Variante032da5e4d6f853942c5dc3ac1608840245e2b235c66ca8e78dc91050f26bc6e.lean/declarations/kaehlerdifferential-tensorkaehlerequivofformallyetale--68b9523974090d62220a6a73.md) | 46 | `declaration-track:68b9523974090d62220a6a735d0b782bab300b25e537937942bcb13e78604842` |
| 2 | `lemma` | [KaehlerDifferential.tensorKaehlerEquivOfFormallyEtale_symm_D_algebraMap](../../../../mathematics/Algebra/Kaehler/Variante032da5e4d6f853942c5dc3ac1608840245e2b235c66ca8e78dc91050f26bc6e.lean/declarations/kaehlerdifferential-tensorkaehlerequivofformallyetale-symm-d-algebramap--4fc78a55fcb456f6a843c0c0.md) | 55 | `result-track:4fc78a55fcb456f6a843c0c0f962ba3d26baa37210c1f9ed74ca4e6a6212ceca` |
| 3 | `lemma` | [KaehlerDifferential.isBaseChange_of_formallyEtale](../../../../mathematics/Algebra/Kaehler/Variante032da5e4d6f853942c5dc3ac1608840245e2b235c66ca8e78dc91050f26bc6e.lean/declarations/kaehlerdifferential-isbasechange-of-formallyetale--9921d5cc363f34cda0bb1767.md) | 61 | `result-track:9921d5cc363f34cda0bb1767a05d0eaeb1aa1eb12f5de1faef4ac311ced79d6c` |
| 4 | `instance` | [KaehlerDifferential.isLocalizedModule_map](../../../../mathematics/Algebra/Kaehler/Variante032da5e4d6f853942c5dc3ac1608840245e2b235c66ca8e78dc91050f26bc6e.lean/declarations/kaehlerdifferential-islocalizedmodule-map--85a139a1125e87a59360f697.md) | 71 | `declaration-track:85a139a1125e87a59360f69724714c6368bb1b0e46d7adc12090f8a982abd94d` |
| 5 | `lemma` | [KaehlerDifferential.span_range_map_derivation_of_isLocalization](../../../../mathematics/Algebra/Kaehler/Variante032da5e4d6f853942c5dc3ac1608840245e2b235c66ca8e78dc91050f26bc6e.lean/declarations/kaehlerdifferential-span-range-map-derivation-of-islocalization--6c700a93f7ba5a6aad80bbb7.md) | 76 | `result-track:6c700a93f7ba5a6aad80bbb75360f6a41905bb98db2f82f87fb8c86886f6c844` |
| 6 | `def` | [tensorCotangentSpaceOfFormallyEtale](../../../../mathematics/Algebra/Kaehler/Variante032da5e4d6f853942c5dc3ac1608840245e2b235c66ca8e78dc91050f26bc6e.lean/declarations/tensorcotangentspaceofformallyetale--c1999ce74436acb2d82842d1.md) | 105 | `declaration-track:c1999ce74436acb2d82842d195b0b9225ee72e025dbced3d7e788ee9f802bd84` |
| 7 | `def` | [tensorCotangentInvFun](../../../../mathematics/Algebra/Kaehler/Variante032da5e4d6f853942c5dc3ac1608840245e2b235c66ca8e78dc91050f26bc6e.lean/declarations/tensorcotangentinvfun--1cb27a02c806ea0e9eac7638.md) | 153 | `declaration-track:1cb27a02c806ea0e9eac76381c8080b0daa1e6cbf0b973c54ae6665e0ddecb94` |
| 8 | `lemma` | [tensorCotangentInvFun_smul_mk](../../../../mathematics/Algebra/Kaehler/Variante032da5e4d6f853942c5dc3ac1608840245e2b235c66ca8e78dc91050f26bc6e.lean/declarations/tensorcotangentinvfun-smul-mk--4a2ccf1f51620a9844e11e31.md) | 192 | `result-track:4a2ccf1f51620a9844e11e3134f8f31bba6be82fdf4b7a0d92e3d6628a1b7474` |
| 9 | `def` | [tensorCotangent](../../../../mathematics/Algebra/Kaehler/Variante032da5e4d6f853942c5dc3ac1608840245e2b235c66ca8e78dc91050f26bc6e.lean/declarations/tensorcotangent--399aa4bd3ffda7db90aa8e1a.md) | 211 | `declaration-track:399aa4bd3ffda7db90aa8e1ad70c2df9740aca02124c2b580d0db11e1fca4084` |
| 10 | `def` | [tensorH1CotangentOfFormallyEtale](../../../../mathematics/Algebra/Kaehler/Variante032da5e4d6f853942c5dc3ac1608840245e2b235c66ca8e78dc91050f26bc6e.lean/declarations/tensorh1cotangentofformallyetale--181c5fe98a6a9629d13202ea.md) | 241 | `declaration-track:181c5fe98a6a9629d13202ea60a894239cf110659603364b4b495581d3442f6f` |
| 11 | `def` | [tensorH1CotangentOfIsLocalization](../../../../mathematics/Algebra/Kaehler/Variante032da5e4d6f853942c5dc3ac1608840245e2b235c66ca8e78dc91050f26bc6e.lean/declarations/tensorh1cotangentofislocalization--091aa9406ee82d55b8227967.md) | 285 | `declaration-track:091aa9406ee82d55b82279676edc90d76d248068afb0c7a7811a276606f1a156` |
| 12 | `lemma` | [tensorH1CotangentOfIsLocalization_toLinearMap](../../../../mathematics/Algebra/Kaehler/Variante032da5e4d6f853942c5dc3ac1608840245e2b235c66ca8e78dc91050f26bc6e.lean/declarations/tensorh1cotangentofislocalization-tolinearmap--01ec87b7c11a87cbffe1eeb6.md) | 349 | `result-track:01ec87b7c11a87cbffe1eeb69af56a4774d1a92961bcb57490ca458c3e11afd0` |
| 13 | `instance` | [H1Cotangent.isLocalizedModule](../../../../mathematics/Algebra/Kaehler/Variante032da5e4d6f853942c5dc3ac1608840245e2b235c66ca8e78dc91050f26bc6e.lean/declarations/h1cotangent-islocalizedmodule--76a01c0400c159c00cb7c015.md) | 389 | `declaration-track:76a01c0400c159c00cb7c0159a2f868f838201975183a0b199f7467c7e6716ee` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
