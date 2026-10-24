# Verification target: GRWTSK.NumberTheory.Farey.GaussianModularDirichletWalk

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6edc00822427e075a557128666aef5a875c7b401",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Farey/GaussianModularDirichletWalk.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Farey/GaussianModularDirichletWalk.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Farey/GaussianModularDirichletWalk.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6edc00822427e075a557128666aef5a875c7b401`.

Source path: `GRWTSK/NumberTheory/Farey/GaussianModularDirichletWalk.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Farey/GaussianModularDirichletWalk.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Farey.GaussianModularDirichletBridge`](../../../../mathematics/NumberTheory/Farey/GaussianModularDirichletBridge.lean/index.md) — import line 9; pinned internal source present.
- [`GRWTSK.NumberTheory.Farey.GroupSuperwalk`](../../../../mathematics/NumberTheory/Farey/GroupSuperwalk.lean/index.md) — import line 10; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [gaussian_cross_im_eq_frame_det](../../../../mathematics/NumberTheory/Farey/GaussianModularDirichletWalk.lean/declarations/gaussian-cross-im-eq-frame-det--758678674d5b8fdebf0118e8.md) | 37 | `result-track:758678674d5b8fdebf0118e81f324679b4c9a743795b5f3d6a959c2dc81c595a` |
| 2 | `theorem` | [gaussian_cross_im_eq_word_frame_det](../../../../mathematics/NumberTheory/Farey/GaussianModularDirichletWalk.lean/declarations/gaussian-cross-im-eq-word-frame-det--f599fef0d443021655b3226b.md) | 43 | `result-track:f599fef0d443021655b3226bd4390ac669c04a2cac43903436d59396bf3a54b5` |
| 3 | `theorem` | [gaussian_modular_walk_certificates](../../../../mathematics/NumberTheory/Farey/GaussianModularDirichletWalk.lean/declarations/gaussian-modular-walk-certificates--9a867a76897340362883db7d.md) | 55 | `result-track:9a867a76897340362883db7d133e4811c532a8245ac527b79ff4843b487e4f96` |
| 4 | `theorem` | [walk_mediant_projectors](../../../../mathematics/NumberTheory/Farey/GaussianModularDirichletWalk.lean/declarations/walk-mediant-projectors--c10f801249ed0c726b8c9a7b.md) | 65 | `result-track:c10f801249ed0c726b8c9a7b23ce7b206aaf92c65254b53809ba11ab910b739a` |
| 5 | `theorem` | [gaussianModularEye_mul_iff_of_endpoint_pos_on_walk](../../../../mathematics/NumberTheory/Farey/GaussianModularDirichletWalk.lean/declarations/gaussianmodulareye-mul-iff-of-endpoint-pos-on-walk--209fa692775c232ab20191e1.md) | 75 | `result-track:209fa692775c232ab20191e1d7fcb2e8526862c2122006df170404d7cb88daf9` |
| 6 | `def` | [PureDirichletRightSelectorRepresentation](../../../../mathematics/NumberTheory/Farey/GaussianModularDirichletWalk.lean/declarations/puredirichletrightselectorrepresentation--1a55ae31326c023e76bdab5f.md) | 94 | `declaration-track:1a55ae31326c023e76bdab5f8238c935e15c88ca9818b8151dd41c4ef2eb71d3` |
| 7 | `theorem` | [nonunit_right_dirichlet_zero](../../../../mathematics/NumberTheory/Farey/GaussianModularDirichletWalk.lean/declarations/nonunit-right-dirichlet-zero--afcf4b78be73af4762b5a07e.md) | 103 | `result-track:afcf4b78be73af4762b5a07e9bb752cd1ab4c64eaaf870c348ab9a74c0d29824` |
| 8 | `theorem` | [nonunit_right_pure_dirichlet_sum_zero](../../../../mathematics/NumberTheory/Farey/GaussianModularDirichletWalk.lean/declarations/nonunit-right-pure-dirichlet-sum-zero--893da364b21724620e526593.md) | 110 | `result-track:893da364b21724620e52659348cc5fd528aba0cf79fc3cbccbf3928978226b55` |
| 9 | `theorem` | [right_additive_selector](../../../../mathematics/NumberTheory/Farey/GaussianModularDirichletWalk.lean/declarations/right-additive-selector--2c42e85dcead28bc7d90863a.md) | 122 | `result-track:2c42e85dcead28bc7d90863a7f51b8c4a0c0a9fd062ae8a3feb0d69053d15c7b` |
| 10 | `theorem` | [nonunit_right_pure_dirichlet_indicator_impossible](../../../../mathematics/NumberTheory/Farey/GaussianModularDirichletWalk.lean/declarations/nonunit-right-pure-dirichlet-indicator-impossible--4933c89abdda628d8bfef9ec.md) | 129 | `result-track:4933c89abdda628d8bfef9eccbf440223f28117b58cd9d4377cf7643d9ba6aae` |
| 11 | `theorem` | [gaussianModularEye_nonunit_obstruction_on_walk](../../../../mathematics/NumberTheory/Farey/GaussianModularDirichletWalk.lean/declarations/gaussianmodulareye-nonunit-obstruction-on-walk--d2944d321dd1399f579bade3.md) | 143 | `result-track:d2944d321dd1399f579bade3d220b7c4815e1a67ae35501704f85bd303010872` |
| 12 | `theorem` | [nonunitEye_no_pure_dirichlet_right_selector](../../../../mathematics/NumberTheory/Farey/GaussianModularDirichletWalk.lean/declarations/nonuniteye-no-pure-dirichlet-right-selector--8f263c7e15aa0cfe9ea8128e.md) | 160 | `result-track:8f263c7e15aa0cfe9ea8128e2af807b90e2422a4717256cd8c819f07fcfd6554` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
