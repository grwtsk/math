# Verification target: GRWTSK.Analysis.Orthogonality.Variant9f6216865b814bfd0f6d237675bcbd8b24be67d96c215f518a44018f95bc361d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2d9affceb7d04e3df6da6bfccfccda81324a65dd",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Orthogonality/Variant9f6216865b814bfd0f6d237675bcbd8b24be67d96c215f518a44018f95bc361d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/Orthogonality/Variant9f6216865b814bfd0f6d237675bcbd8b24be67d96c215f518a44018f95bc361d.lean/index.md) · [Full source](../../../../mathematics/Analysis/Orthogonality/Variant9f6216865b814bfd0f6d237675bcbd8b24be67d96c215f518a44018f95bc361d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2d9affceb7d04e3df6da6bfccfccda81324a65dd`.

Source path: `GRWTSK/Analysis/Orthogonality/Variant9f6216865b814bfd0f6d237675bcbd8b24be67d96c215f518a44018f95bc361d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Orthogonality/Variant9f6216865b814bfd0f6d237675bcbd8b24be67d96c215f518a44018f95bc361d.lean.json)

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
| 1 | `lemma` | [expect_eq_ite](../../../../mathematics/Analysis/Orthogonality/Variant9f6216865b814bfd0f6d237675bcbd8b24be67d96c215f518a44018f95bc361d.lean/declarations/expect-eq-ite--62f8ec86d5a6ec3147c69456.md) | 35 | `result-track:62f8ec86d5a6ec3147c6945662d8c78ea9911c6e69a1efb82209f44567610881` |
| 2 | `lemma` | [expect_eq_zero_iff_ne_zero](../../../../mathematics/Analysis/Orthogonality/Variant9f6216865b814bfd0f6d237675bcbd8b24be67d96c215f518a44018f95bc361d.lean/declarations/expect-eq-zero-iff-ne-zero--2d35163635b75e1d1c1975bb.md) | 38 | `result-track:2d35163635b75e1d1c1975bbfa8af62f347a459fb5ff426e258a2c24c0b53270` |
| 3 | `lemma` | [expect_ne_zero_iff_eq_zero](../../../../mathematics/Analysis/Orthogonality/Variant9f6216865b814bfd0f6d237675bcbd8b24be67d96c215f518a44018f95bc361d.lean/declarations/expect-ne-zero-iff-eq-zero--575dc1b02f3dffdf0dddeee3.md) | 41 | `result-track:575dc1b02f3dffdf0dddeee31586e391b44b0ae834a3ea924929725c4b9c2966` |
| 4 | `lemma` | [wInner_cWeight_self](../../../../mathematics/Analysis/Orthogonality/Variant9f6216865b814bfd0f6d237675bcbd8b24be67d96c215f518a44018f95bc361d.lean/declarations/winner-cweight-self--0ac14cbf1358224300b7a2df.md) | 48 | `result-track:0ac14cbf1358224300b7a2df3be474bae14f9f7a390d55644f6710aac23bd05b` |
| 5 | `lemma` | [wInner_cWeight_eq_boole](../../../../mathematics/Analysis/Orthogonality/Variant9f6216865b814bfd0f6d237675bcbd8b24be67d96c215f518a44018f95bc361d.lean/declarations/winner-cweight-eq-boole--8498608c47a661b11881e11d.md) | 60 | `result-track:8498608c47a661b11881e11d6021dfdd39f1e02d81201b496ee546ed76e8ca51` |
| 6 | `lemma` | [wInner_cWeight_eq_zero_iff_ne](../../../../mathematics/Analysis/Orthogonality/Variant9f6216865b814bfd0f6d237675bcbd8b24be67d96c215f518a44018f95bc361d.lean/declarations/winner-cweight-eq-zero-iff-ne--a3fc55cac51bdc844b86c599.md) | 68 | `result-track:a3fc55cac51bdc844b86c59936060df6ff32830b8dd44a8fbd8dbc2cb5536ece` |
| 7 | `lemma` | [wInner_cWeight_eq_one_iff_eq](../../../../mathematics/Analysis/Orthogonality/Variant9f6216865b814bfd0f6d237675bcbd8b24be67d96c215f518a44018f95bc361d.lean/declarations/winner-cweight-eq-one-iff-eq--c49c1f85b733e68399f93b1a.md) | 71 | `result-track:c49c1f85b733e68399f93b1afa5ca95b9111e6200d90df867ff1c337bc19275f` |
| 8 | `lemma` | [linearIndependent](../../../../mathematics/Analysis/Orthogonality/Variant9f6216865b814bfd0f6d237675bcbd8b24be67d96c215f518a44018f95bc361d.lean/declarations/linearindependent--9039917467244198572c44bc.md) | 76 | `result-track:9039917467244198572c44bc8ff948b52aca7dc7fccf0d7c50c6d4108362b268` |
| 9 | `instance` | [instFintype](../../../../mathematics/Analysis/Orthogonality/Variant9f6216865b814bfd0f6d237675bcbd8b24be67d96c215f518a44018f95bc361d.lean/declarations/instfintype--44e6850a004001d5ed0188be.md) | 81 | `declaration-track:44e6850a004001d5ed0188bed7ccf3f857974bc1bd703ffb0740edd7681e414a` |
| 10 | `lemma` | [card_addChar_le](../../../../mathematics/Analysis/Orthogonality/Variant9f6216865b814bfd0f6d237675bcbd8b24be67d96c215f518a44018f95bc361d.lean/declarations/card-addchar-le--378c3453fa66363f26ee0c30.md) | 84 | `result-track:378c3453fa66363f26ee0c3068068ae44784a43955cb46225aba40eb28fec6db` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
