# Verification target: GRWTSK.Analysis.MeasureTheory.QuasiMeasurePreserving.Variant1bdc6588f9656bd399792e42ab9c4d45707832566137447bb976fe6738cf195a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "160777d96cae18206d5d8335a8fa40441b189bdb",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/QuasiMeasurePreserving/Variant1bdc6588f9656bd399792e42ab9c4d45707832566137447bb976fe6738cf195a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/QuasiMeasurePreserving/Variant1bdc6588f9656bd399792e42ab9c4d45707832566137447bb976fe6738cf195a.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/QuasiMeasurePreserving/Variant1bdc6588f9656bd399792e42ab9c4d45707832566137447bb976fe6738cf195a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `160777d96cae18206d5d8335a8fa40441b189bdb`.

Source path: `GRWTSK/Analysis/MeasureTheory/QuasiMeasurePreserving/Variant1bdc6588f9656bd399792e42ab9c4d45707832566137447bb976fe6738cf195a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/QuasiMeasurePreserving/Variant1bdc6588f9656bd399792e42ab9c4d45707832566137447bb976fe6738cf195a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Measure.AbsolutelyContinuous` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.OuterMeasure.BorelCantelli` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [QuasiMeasurePreserving](../../../../../mathematics/Analysis/MeasureTheory/QuasiMeasurePreserving/Variant1bdc6588f9656bd399792e42ab9c4d45707832566137447bb976fe6738cf195a.lean/declarations/quasimeasurepreserving--1825fea17606a339a3d1616d.md) | 47 | `declaration-track:1825fea17606a339a3d1616d9fceaab17355fc1cf4fa895d29e991eb942845ed` |
| 2 | `theorem` | [id](../../../../../mathematics/Analysis/MeasureTheory/QuasiMeasurePreserving/Variant1bdc6588f9656bd399792e42ab9c4d45707832566137447bb976fe6738cf195a.lean/declarations/id--828b3c9aca8f9f9b3d58f91d.md) | 58 | `result-track:828b3c9aca8f9f9b3d58f91d210d623dc0ecb4942c38732bdc90e1011623d0ac` |
| 3 | `theorem` | [_root_.GRWTSK.Analysis.MeasureTheory.QuasiMeasurePreserving.Variant35456cd336b1dd119e14d2ca0a38799e1a48fddd0d1c6acd85923f82ff38f05a.Measurable.quasiMeasurePreserving](../../../../../mathematics/Analysis/MeasureTheory/QuasiMeasurePreserving/Variant1bdc6588f9656bd399792e42ab9c4d45707832566137447bb976fe6738cf195a.lean/declarations/root-grwtsk-analysis-measuretheory-quasimeasurepreserving-variant35456cd--60aaf4529b15b7bd2a06092d.md) | 63 | `result-track:60aaf4529b15b7bd2a06092dda69086ed9cee2e6c3fb4f6102d418ec4693018d` |
| 4 | `theorem` | [mono_left](../../../../../mathematics/Analysis/MeasureTheory/QuasiMeasurePreserving/Variant1bdc6588f9656bd399792e42ab9c4d45707832566137447bb976fe6738cf195a.lean/declarations/mono-left--ad413510b9943676da358ba2.md) | 68 | `result-track:ad413510b9943676da358ba2c3a5c21b7c93ff5b0964f8a73ecc7304013ce554` |
| 5 | `theorem` | [mono_right](../../../../../mathematics/Analysis/MeasureTheory/QuasiMeasurePreserving/Variant1bdc6588f9656bd399792e42ab9c4d45707832566137447bb976fe6738cf195a.lean/declarations/mono-right--98a071cc0b28685ddbc23a54.md) | 72 | `result-track:98a071cc0b28685ddbc23a54c1f9021a7c6033f4a5ce50f4415c8ff44a3f455f` |
| 6 | `theorem` | [mono](../../../../../mathematics/Analysis/MeasureTheory/QuasiMeasurePreserving/Variant1bdc6588f9656bd399792e42ab9c4d45707832566137447bb976fe6738cf195a.lean/declarations/mono--03d565b9c3d7106209db21ad.md) | 77 | `result-track:03d565b9c3d7106209db21ad6b5ecd9ce2bf8fee4af390540ae25c0c00415dbd` |
| 7 | `theorem` | [comp](../../../../../mathematics/Analysis/MeasureTheory/QuasiMeasurePreserving/Variant1bdc6588f9656bd399792e42ab9c4d45707832566137447bb976fe6738cf195a.lean/declarations/comp--2b8050c53217d4116601cac9.md) | 82 | `result-track:2b8050c53217d4116601cac9e0f07e6f9de4bfa7733acfdc32b0baf516bf2b75` |
| 8 | `theorem` | [iterate](../../../../../mathematics/Analysis/MeasureTheory/QuasiMeasurePreserving/Variant1bdc6588f9656bd399792e42ab9c4d45707832566137447bb976fe6738cf195a.lean/declarations/iterate--3a57c2d9d3f56b2cf9c164a2.md) | 88 | `result-track:3a57c2d9d3f56b2cf9c164a28fe89a697b8901948d70681eb56f524740fb78a1` |
| 9 | `theorem` | [aemeasurable](../../../../../mathematics/Analysis/MeasureTheory/QuasiMeasurePreserving/Variant1bdc6588f9656bd399792e42ab9c4d45707832566137447bb976fe6738cf195a.lean/declarations/aemeasurable--12c4248ee11a2d549bb3bf10.md) | 93 | `result-track:12c4248ee11a2d549bb3bf108cd2310178e32ff0a3506e07ae3ad24d5d6c15ed` |
| 10 | `theorem` | [smul_measure](../../../../../mathematics/Analysis/MeasureTheory/QuasiMeasurePreserving/Variant1bdc6588f9656bd399792e42ab9c4d45707832566137447bb976fe6738cf195a.lean/declarations/smul-measure--5b2bd4afda4fde3eb8bebe6d.md) | 96 | `result-track:5b2bd4afda4fde3eb8bebe6ddef90ac9aefd0547ce094654e681b89464d3c6d5` |
| 11 | `theorem` | [ae_map_le](../../../../../mathematics/Analysis/MeasureTheory/QuasiMeasurePreserving/Variant1bdc6588f9656bd399792e42ab9c4d45707832566137447bb976fe6738cf195a.lean/declarations/ae-map-le--bfc84c423cbc25dfe061b519.md) | 100 | `result-track:bfc84c423cbc25dfe061b519e6c24cf58606f3159c78592e26295f42c02a1ec4` |
| 12 | `theorem` | [tendsto_ae](../../../../../mathematics/Analysis/MeasureTheory/QuasiMeasurePreserving/Variant1bdc6588f9656bd399792e42ab9c4d45707832566137447bb976fe6738cf195a.lean/declarations/tendsto-ae--c585cf27d365453b78cb6fed.md) | 103 | `result-track:c585cf27d365453b78cb6fedabcd35193b9f36058edffade0f9c798d28bac732` |
| 13 | `theorem` | [ae](../../../../../mathematics/Analysis/MeasureTheory/QuasiMeasurePreserving/Variant1bdc6588f9656bd399792e42ab9c4d45707832566137447bb976fe6738cf195a.lean/declarations/ae--473bb652a96f1c80889a2a26.md) | 106 | `result-track:473bb652a96f1c80889a2a269d4b0c70c53afbc4ca55a94ac96500fc4ed6d11d` |
| 14 | `theorem` | [ae_eq](../../../../../mathematics/Analysis/MeasureTheory/QuasiMeasurePreserving/Variant1bdc6588f9656bd399792e42ab9c4d45707832566137447bb976fe6738cf195a.lean/declarations/ae-eq--b5cb13b51b1c7eeff7483b1f.md) | 110 | `result-track:b5cb13b51b1c7eeff7483b1f6a0764e2d041608229bbead1092845d67e83dba7` |
| 15 | `theorem` | [preimage_null](../../../../../mathematics/Analysis/MeasureTheory/QuasiMeasurePreserving/Variant1bdc6588f9656bd399792e42ab9c4d45707832566137447bb976fe6738cf195a.lean/declarations/preimage-null--7203a67acdb734967e547535.md) | 114 | `result-track:7203a67acdb734967e547535e69e45ac4f4df87ce60386501197548fbeacd71f` |
| 16 | `theorem` | [preimage_mono_ae](../../../../../mathematics/Analysis/MeasureTheory/QuasiMeasurePreserving/Variant1bdc6588f9656bd399792e42ab9c4d45707832566137447bb976fe6738cf195a.lean/declarations/preimage-mono-ae--d47018f22d2ae8aa41c72900.md) | 118 | `result-track:d47018f22d2ae8aa41c72900d22386c42eca8d09209276ef619e6a3abb163d21` |
| 17 | `theorem` | [preimage_ae_eq](../../../../../mathematics/Analysis/MeasureTheory/QuasiMeasurePreserving/Variant1bdc6588f9656bd399792e42ab9c4d45707832566137447bb976fe6738cf195a.lean/declarations/preimage-ae-eq--8e24780449b9646cded52acb.md) | 123 | `result-track:8e24780449b9646cded52acb334fac485b158d9e417d1c6030a7fa8e8a17d2a4` |
| 18 | `theorem` | [_root_.GRWTSK.Analysis.MeasureTheory.QuasiMeasurePreserving.Variant35456cd336b1dd119e14d2ca0a38799e1a48fddd0d1c6acd85923f82ff38f05a.MeasureTheory.NullMeasurableSet.preimage](../../../../../mathematics/Analysis/MeasureTheory/QuasiMeasurePreserving/Variant1bdc6588f9656bd399792e42ab9c4d45707832566137447bb976fe6738cf195a.lean/declarations/root-grwtsk-analysis-measuretheory-quasimeasurepreserving-variant35456cd--dc62b36b042f64d72db23187.md) | 129 | `result-track:dc62b36b042f64d72db23187a9b96bb4007555cbd6853837b51cef40166b05f6` |
| 19 | `theorem` | [preimage_iterate_ae_eq](../../../../../mathematics/Analysis/MeasureTheory/QuasiMeasurePreserving/Variant1bdc6588f9656bd399792e42ab9c4d45707832566137447bb976fe6738cf195a.lean/declarations/preimage-iterate-ae-eq--95bbd3761255016927852e8a.md) | 134 | `result-track:95bbd3761255016927852e8a6b18f9115226e813413f26a17f60672990e51c9b` |
| 20 | `theorem` | [image_zpow_ae_eq](../../../../../mathematics/Analysis/MeasureTheory/QuasiMeasurePreserving/Variant1bdc6588f9656bd399792e42ab9c4d45707832566137447bb976fe6738cf195a.lean/declarations/image-zpow-ae-eq--6ad64a7927e9cdb8971a7823.md) | 142 | `result-track:6ad64a7927e9cdb8971a7823302b8068ae80f292a82f59485bd006b9162d2a54` |
| 21 | `theorem` | [limsup_preimage_iterate_ae_eq](../../../../../mathematics/Analysis/MeasureTheory/QuasiMeasurePreserving/Variant1bdc6588f9656bd399792e42ab9c4d45707832566137447bb976fe6738cf195a.lean/declarations/limsup-preimage-iterate-ae-eq--aef69ca4c4190c8b433f26c8.md) | 158 | `result-track:aef69ca4c4190c8b433f26c8bb0beb4cd145c35247ed51b2db79f7171003afdc` |
| 22 | `theorem` | [liminf_preimage_iterate_ae_eq](../../../../../mathematics/Analysis/MeasureTheory/QuasiMeasurePreserving/Variant1bdc6588f9656bd399792e42ab9c4d45707832566137447bb976fe6738cf195a.lean/declarations/liminf-preimage-iterate-ae-eq--6252ce46af3ac64f68eba08e.md) | 164 | `result-track:6252ce46af3ac64f68eba08e84f6db58bf544c65159d849625019c058ad2d49e` |
| 23 | `theorem` | [exists_preimage_eq_of_preimage_ae](../../../../../mathematics/Analysis/MeasureTheory/QuasiMeasurePreserving/Variant1bdc6588f9656bd399792e42ab9c4d45707832566137447bb976fe6738cf195a.lean/declarations/exists-preimage-eq-of-preimage-ae--961b1251240b753a0fcd8073.md) | 172 | `result-track:961b1251240b753a0fcd8073f4d3bce27294ca46281e2cd16142240f0802262c` |
| 24 | `theorem` | [smul_ae_eq_of_ae_eq](../../../../../mathematics/Analysis/MeasureTheory/QuasiMeasurePreserving/Variant1bdc6588f9656bd399792e42ab9c4d45707832566137447bb976fe6738cf195a.lean/declarations/smul-ae-eq-of-ae-eq--8ed8c55e6b99c57c986e05a7.md) | 186 | `result-track:8ed8c55e6b99c57c986e05a7e90daf15b5ed764298c66df42ae8e3dbba9bcc4c` |
| 25 | `theorem` | [pairwise_aedisjoint_of_aedisjoint_forall_ne_one](../../../../../mathematics/Analysis/MeasureTheory/QuasiMeasurePreserving/Variant1bdc6588f9656bd399792e42ab9c4d45707832566137447bb976fe6738cf195a.lean/declarations/pairwise-aedisjoint-of-aedisjoint-forall-ne-one--7432765b3e3dc2d54bec8137.md) | 199 | `result-track:7432765b3e3dc2d54bec813779ed92559c62713eda344d61981df0d7809456af` |
| 26 | `theorem` | [NullMeasurable.comp_quasiMeasurePreserving](../../../../../mathematics/Analysis/MeasureTheory/QuasiMeasurePreserving/Variant1bdc6588f9656bd399792e42ab9c4d45707832566137447bb976fe6738cf195a.lean/declarations/nullmeasurable-comp-quasimeasurepreserving--76b8a4bdafcf2776da9704d3.md) | 221 | `result-track:76b8a4bdafcf2776da9704d3165bc8967d9426c2d9c0a62016bdb0bdae664d32` |
| 27 | `theorem` | [NullMeasurableSet.mono_ac](../../../../../mathematics/Analysis/MeasureTheory/QuasiMeasurePreserving/Variant1bdc6588f9656bd399792e42ab9c4d45707832566137447bb976fe6738cf195a.lean/declarations/nullmeasurableset-mono-ac--e82979a0ca01505aaebd8839.md) | 225 | `result-track:e82979a0ca01505aaebd8839f5631212cf81346d19cd64719cbc01ca6a92b354` |
| 28 | `theorem` | [NullMeasurableSet.mono](../../../../../mathematics/Analysis/MeasureTheory/QuasiMeasurePreserving/Variant1bdc6588f9656bd399792e42ab9c4d45707832566137447bb976fe6738cf195a.lean/declarations/nullmeasurableset-mono--a50b855b1473ebccb994c7c1.md) | 229 | `result-track:a50b855b1473ebccb994c7c149e9b9af4451bf79af12a2813abc9331d9c296e2` |
| 29 | `lemma` | [NullMeasurableSet.smul_measure](../../../../../mathematics/Analysis/MeasureTheory/QuasiMeasurePreserving/Variant1bdc6588f9656bd399792e42ab9c4d45707832566137447bb976fe6738cf195a.lean/declarations/nullmeasurableset-smul-measure--8ccd8385e780868d15c62b3c.md) | 232 | `result-track:8ccd8385e780868d15c62b3c582ed4f89e616882977abdfc071ec42fe20fc985` |
| 30 | `lemma` | [nullMeasurableSet_smul_measure_iff](../../../../../mathematics/Analysis/MeasureTheory/QuasiMeasurePreserving/Variant1bdc6588f9656bd399792e42ab9c4d45707832566137447bb976fe6738cf195a.lean/declarations/nullmeasurableset-smul-measure-iff--65398fefd5b11d295261d700.md) | 236 | `result-track:65398fefd5b11d295261d7006cfbfecce3fefa05484dd1d1d2f753d7191f57a5` |
| 31 | `theorem` | [AEDisjoint.preimage](../../../../../mathematics/Analysis/MeasureTheory/QuasiMeasurePreserving/Variant1bdc6588f9656bd399792e42ab9c4d45707832566137447bb976fe6738cf195a.lean/declarations/aedisjoint-preimage--af2cd066e4788042ff566321.md) | 240 | `result-track:af2cd066e4788042ff56632151955a1b893328f83083d02b2db77a7885429824` |
| 32 | `theorem` | [quasiMeasurePreserving_symm](../../../../../mathematics/Analysis/MeasureTheory/QuasiMeasurePreserving/Variant1bdc6588f9656bd399792e42ab9c4d45707832566137447bb976fe6738cf195a.lean/declarations/quasimeasurepreserving-symm--a032d7ce4a1080ceeb65f28f.md) | 252 | `result-track:a032d7ce4a1080ceeb65f28f1630825b8963dc70813db159e7c31f117ead2b53` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
