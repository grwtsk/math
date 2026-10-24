# Verification target: GRWTSK.Algebra.GroupTheory.Hom.Variantb982200a3802a64a6d06d416290c70d6fdc493e26dfa6e7667f0a7c5256f990b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "01f062b7b4e78d35cf033c09f64eeb0fe3988050",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Hom/Variantb982200a3802a64a6d06d416290c70d6fdc493e26dfa6e7667f0a7c5256f990b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Hom/Variantb982200a3802a64a6d06d416290c70d6fdc493e26dfa6e7667f0a7c5256f990b.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Hom/Variantb982200a3802a64a6d06d416290c70d6fdc493e26dfa6e7667f0a7c5256f990b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `01f062b7b4e78d35cf033c09f64eeb0fe3988050`.

Source path: `GRWTSK/Algebra/GroupTheory/Hom/Variantb982200a3802a64a6d06d416290c70d6fdc493e26dfa6e7667f0a7c5256f990b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Hom/Variantb982200a3802a64a6d06d416290c70d6fdc493e26dfa6e7667f0a7c5256f990b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [ext_nat'](../../../../../mathematics/Algebra/GroupTheory/Hom/Variantb982200a3802a64a6d06d416290c70d6fdc493e26dfa6e7667f0a7c5256f990b.lean/declarations/ext-nat--f07adf0f03da788f001e1b22.md) | 28 | `result-track:f07adf0f03da788f001e1b22accab478c3b68e5561d3af6882b6d801104981cd` |
| 2 | `lemma` | [AddMonoidHom.ext_nat](../../../../../mathematics/Algebra/GroupTheory/Hom/Variantb982200a3802a64a6d06d416290c70d6fdc493e26dfa6e7667f0a7c5256f990b.lean/declarations/addmonoidhom-ext-nat--d87cdf1897acb237ecb23e92.md) | 37 | `result-track:d87cdf1897acb237ecb23e92cf087de58a5ab99c47aaa6cb506ffd3ed596ee6a` |
| 3 | `def` | [multiplesHom](../../../../../mathematics/Algebra/GroupTheory/Hom/Variantb982200a3802a64a6d06d416290c70d6fdc493e26dfa6e7667f0a7c5256f990b.lean/declarations/multipleshom--2f129b0af2c30709eee7cc46.md) | 47 | `declaration-track:2f129b0af2c30709eee7cc46a477b871862a508a70c492160b96f6bc7d558e35` |
| 4 | `lemma` | [multiplesHom_apply](../../../../../mathematics/Algebra/GroupTheory/Hom/Variantb982200a3802a64a6d06d416290c70d6fdc493e26dfa6e7667f0a7c5256f990b.lean/declarations/multipleshom-apply--2ba14c5162ba9c9f93ebdebb.md) | 56 | `result-track:2ba14c5162ba9c9f93ebdebb3dfc3531f70126967ce2484aee3ee588769c953d` |
| 5 | `lemma` | [multiplesHom_symm_apply](../../../../../mathematics/Algebra/GroupTheory/Hom/Variantb982200a3802a64a6d06d416290c70d6fdc493e26dfa6e7667f0a7c5256f990b.lean/declarations/multipleshom-symm-apply--fe162ff5b412a73f54f30637.md) | 58 | `result-track:fe162ff5b412a73f54f30637a0cb77f7dc69b4d0721ea08d4498ec10ac7136df` |
| 6 | `lemma` | [AddMonoidHom.apply_nat](../../../../../mathematics/Algebra/GroupTheory/Hom/Variantb982200a3802a64a6d06d416290c70d6fdc493e26dfa6e7667f0a7c5256f990b.lean/declarations/addmonoidhom-apply-nat--adcc416cbd451d033db9d6b4.md) | 60 | `result-track:adcc416cbd451d033db9d6b48c4f22acc8f1cd1f0a78412edff246370192ecb3` |
| 7 | `def` | [powersHom](../../../../../mathematics/Algebra/GroupTheory/Hom/Variantb982200a3802a64a6d06d416290c70d6fdc493e26dfa6e7667f0a7c5256f990b.lean/declarations/powershom--cdb888c6f47178ab5d8125b6.md) | 71 | `declaration-track:cdb888c6f47178ab5d8125b646931c757252598d505feb523ca1074e5c249ee4` |
| 8 | `lemma` | [powersHom_apply](../../../../../mathematics/Algebra/GroupTheory/Hom/Variantb982200a3802a64a6d06d416290c70d6fdc493e26dfa6e7667f0a7c5256f990b.lean/declarations/powershom-apply--7d6f87879cffd74e25ce1b78.md) | 74 | `result-track:7d6f87879cffd74e25ce1b784cfc0f9315886e4a96905e3c3053c4ac12914df7` |
| 9 | `lemma` | [powersHom_symm_apply](../../../../../mathematics/Algebra/GroupTheory/Hom/Variantb982200a3802a64a6d06d416290c70d6fdc493e26dfa6e7667f0a7c5256f990b.lean/declarations/powershom-symm-apply--d64304cc5bd6c48bd0a8ef98.md) | 77 | `result-track:d64304cc5bd6c48bd0a8ef98d31a079825e882ab0d1e0006c14135f9520eba80` |
| 10 | `lemma` | [MonoidHom.apply_mnat](../../../../../mathematics/Algebra/GroupTheory/Hom/Variantb982200a3802a64a6d06d416290c70d6fdc493e26dfa6e7667f0a7c5256f990b.lean/declarations/monoidhom-apply-mnat--af51ef871daaf42bbd03264d.md) | 80 | `result-track:af51ef871daaf42bbd03264d6c7a75a8980cb4351560dac57b1e6b45e48d74ab` |
| 11 | `lemma` | [MonoidHom.ext_mnat](../../../../../mathematics/Algebra/GroupTheory/Hom/Variantb982200a3802a64a6d06d416290c70d6fdc493e26dfa6e7667f0a7c5256f990b.lean/declarations/monoidhom-ext-mnat--db3a73c49c9ce126befd387a.md) | 85 | `result-track:db3a73c49c9ce126befd387a338a0066bd36048fed38e4a493678e6c834a9c6a` |
| 12 | `def` | [multiplesAddHom](../../../../../mathematics/Algebra/GroupTheory/Hom/Variantb982200a3802a64a6d06d416290c70d6fdc493e26dfa6e7667f0a7c5256f990b.lean/declarations/multiplesaddhom--497d2d3fc58716d3ff0a69e6.md) | 96 | `declaration-track:497d2d3fc58716d3ff0a69e6f9d449850caac0dbd1d6caa5f95bd7436d9aafcd` |
| 13 | `lemma` | [multiplesAddHom_apply](../../../../../mathematics/Algebra/GroupTheory/Hom/Variantb982200a3802a64a6d06d416290c70d6fdc493e26dfa6e7667f0a7c5256f990b.lean/declarations/multiplesaddhom-apply--b294fb52688dc49a6849c66d.md) | 100 | `result-track:b294fb52688dc49a6849c66dd5c19f8f2498f3d55d1f377e3a50d872783f979d` |
| 14 | `lemma` | [multiplesAddHom_symm_apply](../../../../../mathematics/Algebra/GroupTheory/Hom/Variantb982200a3802a64a6d06d416290c70d6fdc493e26dfa6e7667f0a7c5256f990b.lean/declarations/multiplesaddhom-symm-apply--599590c8ff45a0c52e3926bd.md) | 102 | `result-track:599590c8ff45a0c52e3926bd18bf0f2bd8cb64b9018f97b0b55bb22888bb89f4` |
| 15 | `def` | [powersMulHom](../../../../../mathematics/Algebra/GroupTheory/Hom/Variantb982200a3802a64a6d06d416290c70d6fdc493e26dfa6e7667f0a7c5256f990b.lean/declarations/powersmulhom--4d20794537e038e430475a8c.md) | 111 | `declaration-track:4d20794537e038e430475a8c3efb904b327e8ac6d3076178dbc5428a95400f64` |
| 16 | `lemma` | [powersMulHom_apply](../../../../../mathematics/Algebra/GroupTheory/Hom/Variantb982200a3802a64a6d06d416290c70d6fdc493e26dfa6e7667f0a7c5256f990b.lean/declarations/powersmulhom-apply--b573ee7538d6d3c380992966.md) | 116 | `result-track:b573ee7538d6d3c380992966804462c313fee8abd2463bebaa9c00711181cb60` |
| 17 | `lemma` | [powersMulHom_symm_apply](../../../../../mathematics/Algebra/GroupTheory/Hom/Variantb982200a3802a64a6d06d416290c70d6fdc493e26dfa6e7667f0a7c5256f990b.lean/declarations/powersmulhom-symm-apply--443bcd22d231e8925905db58.md) | 119 | `result-track:443bcd22d231e8925905db58d14b95a6172fce6e42a06dfc66514db2be78d2fa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
