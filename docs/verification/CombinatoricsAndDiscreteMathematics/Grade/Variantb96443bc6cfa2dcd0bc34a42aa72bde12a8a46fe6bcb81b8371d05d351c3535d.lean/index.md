# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Grade.Variantb96443bc6cfa2dcd0bc34a42aa72bde12a8a46fe6bcb81b8371d05d351c3535d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "19f1bcb6bd8e155c20f120686acc746af1c989bf",
  "lexical_observation_count": 35,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Grade/Variantb96443bc6cfa2dcd0bc34a42aa72bde12a8a46fe6bcb81b8371d05d351c3535d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Grade/Variantb96443bc6cfa2dcd0bc34a42aa72bde12a8a46fe6bcb81b8371d05d351c3535d.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Grade/Variantb96443bc6cfa2dcd0bc34a42aa72bde12a8a46fe6bcb81b8371d05d351c3535d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `19f1bcb6bd8e155c20f120686acc746af1c989bf`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Grade/Variantb96443bc6cfa2dcd0bc34a42aa72bde12a8a46fe6bcb81b8371d05d351c3535d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Grade/Variantb96443bc6cfa2dcd0bc34a42aa72bde12a8a46fe6bcb81b8371d05d351c3535d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Set.Finite.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Atoms` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Grade` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Nat` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [covBy_cons](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Grade/Variantb96443bc6cfa2dcd0bc34a42aa72bde12a8a46fe6bcb81b8371d05d351c3535d.lean/declarations/covby-cons--97f84ffc17ccf1bcb82d9a4b.md) | 30 | `result-track:97f84ffc17ccf1bcb82d9a4bffa12aa0615ac2866c2f2774543c271b7f00b18c` |
| 2 | `lemma` | [_root_.CovBy.exists_multiset_cons](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Grade/Variantb96443bc6cfa2dcd0bc34a42aa72bde12a8a46fe6bcb81b8371d05d351c3535d.lean/declarations/root-covby-exists-multiset-cons--ea6e1592a39df98f4e1a97fb.md) | 34 | `result-track:ea6e1592a39df98f4e1a97fb59ec8ddb4a32f552f5a3f51321a5ca14e22a02f1` |
| 3 | `lemma` | [covBy_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Grade/Variantb96443bc6cfa2dcd0bc34a42aa72bde12a8a46fe6bcb81b8371d05d351c3535d.lean/declarations/covby-iff--48d2dac14e2f05bba725c957.md) | 37 | `result-track:48d2dac14e2f05bba725c9578c017dae11f3ea61ad9e11c2108a7f3491eb832b` |
| 4 | `lemma` | [_root_.CovBy.card_multiset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Grade/Variantb96443bc6cfa2dcd0bc34a42aa72bde12a8a46fe6bcb81b8371d05d351c3535d.lean/declarations/root-covby-card-multiset--e015bf12d192b4fd2db1da0d.md) | 40 | `result-track:e015bf12d192b4fd2db1da0db9afd6af01634e22d008f5d61291de835dec9d5e` |
| 5 | `lemma` | [isAtom_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Grade/Variantb96443bc6cfa2dcd0bc34a42aa72bde12a8a46fe6bcb81b8371d05d351c3535d.lean/declarations/isatom-iff--05e7d156a14fe6522fad22b3.md) | 43 | `result-track:05e7d156a14fe6522fad22b3571bb3814f84ff697e17a698cc3bb7a92b55a762` |
| 6 | `lemma` | [isAtom_singleton](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Grade/Variantb96443bc6cfa2dcd0bc34a42aa72bde12a8a46fe6bcb81b8371d05d351c3535d.lean/declarations/isatom-singleton--18dc232ea0f09725c83c18ed.md) | 45 | `result-track:18dc232ea0f09725c83c18edba558aa4ed0963965252d21d325508a7cc8afcaa` |
| 7 | `instance` | [instGradeMinOrder](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Grade/Variantb96443bc6cfa2dcd0bc34a42aa72bde12a8a46fe6bcb81b8371d05d351c3535d.lean/declarations/instgrademinorder--795eb09c92acb401359500c7.md) | 47 | `declaration-track:795eb09c92acb401359500c7aa3287be96fb610aa0e9f8bca650d3ad249ea28b` |
| 8 | `lemma` | [grade_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Grade/Variantb96443bc6cfa2dcd0bc34a42aa72bde12a8a46fe6bcb81b8371d05d351c3535d.lean/declarations/grade-eq--9c1cc4a3fcdd783eea2dc9fa.md) | 53 | `result-track:9c1cc4a3fcdd783eea2dc9fa15d5077e63a10cdac2b662686174fb478c71410f` |
| 9 | `lemma` | [ordConnected_range_val](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Grade/Variantb96443bc6cfa2dcd0bc34a42aa72bde12a8a46fe6bcb81b8371d05d351c3535d.lean/declarations/ordconnected-range-val--13af70786070b49aaf6847a7.md) | 61 | `result-track:13af70786070b49aaf6847a7fbe2a60c9329cc04534ff0b53d685aa5892e0265` |
| 10 | `lemma` | [ordConnected_range_coe](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Grade/Variantb96443bc6cfa2dcd0bc34a42aa72bde12a8a46fe6bcb81b8371d05d351c3535d.lean/declarations/ordconnected-range-coe--0fb7cc54582f423b3d76799d.md) | 65 | `result-track:0fb7cc54582f423b3d76799dc0841c2f935ee1b1dbbb338b135abe6a8fc69c96` |
| 11 | `lemma` | [val_wcovBy_val](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Grade/Variantb96443bc6cfa2dcd0bc34a42aa72bde12a8a46fe6bcb81b8371d05d351c3535d.lean/declarations/val-wcovby-val--651eac1ac9e10028f16015af.md) | 68 | `result-track:651eac1ac9e10028f16015af52bdb97a3025c0c75b21552f66a7127bb00a744c` |
| 12 | `lemma` | [val_covBy_val](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Grade/Variantb96443bc6cfa2dcd0bc34a42aa72bde12a8a46fe6bcb81b8371d05d351c3535d.lean/declarations/val-covby-val--9bf624dbe5ff71ffde934edf.md) | 71 | `result-track:9bf624dbe5ff71ffde934edf5a4de1e2094e935c620d6fcdbe1df095b7c84123` |
| 13 | `lemma` | [coe_wcovBy_coe](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Grade/Variantb96443bc6cfa2dcd0bc34a42aa72bde12a8a46fe6bcb81b8371d05d351c3535d.lean/declarations/coe-wcovby-coe--c83ae76ec81c9396236ed0c3.md) | 74 | `result-track:c83ae76ec81c9396236ed0c361a631b0244efdd40f32058c6a52257cfc8c5a9b` |
| 14 | `lemma` | [coe_covBy_coe](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Grade/Variantb96443bc6cfa2dcd0bc34a42aa72bde12a8a46fe6bcb81b8371d05d351c3535d.lean/declarations/coe-covby-coe--d333ef27b6c2d942a8a783f2.md) | 77 | `result-track:d333ef27b6c2d942a8a783f2d8791fe10e2628bf15ba0e9669e9ee11adb99d08` |
| 15 | `lemma` | [covBy_cons](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Grade/Variantb96443bc6cfa2dcd0bc34a42aa72bde12a8a46fe6bcb81b8371d05d351c3535d.lean/declarations/covby-cons--c3e270c61294381a02aa8296.md) | 85 | `result-track:c3e270c61294381a02aa829609994c10228a20903677a8bbf139e40284d8d19b` |
| 16 | `lemma` | [_root_.CovBy.exists_finset_cons](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Grade/Variantb96443bc6cfa2dcd0bc34a42aa72bde12a8a46fe6bcb81b8371d05d351c3535d.lean/declarations/root-covby-exists-finset-cons--4aa7458077241aaef8999043.md) | 87 | `result-track:4aa7458077241aaef899904333f4e6a57157ae6a0b95ce069e32e870965537f0` |
| 17 | `lemma` | [covBy_iff_exists_cons](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Grade/Variantb96443bc6cfa2dcd0bc34a42aa72bde12a8a46fe6bcb81b8371d05d351c3535d.lean/declarations/covby-iff-exists-cons--3a3071ff46a7c166f2839d81.md) | 91 | `result-track:3a3071ff46a7c166f2839d81818c09faec542df7b913eee0d583f8ffa1e27e07` |
| 18 | `lemma` | [_root_.CovBy.card_finset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Grade/Variantb96443bc6cfa2dcd0bc34a42aa72bde12a8a46fe6bcb81b8371d05d351c3535d.lean/declarations/root-covby-card-finset--dda88f26455c94447cf96cbb.md) | 94 | `result-track:dda88f26455c94447cf96cbba9acd374e05c7110f6fc3ce060fd6bf99b10c796` |
| 19 | `lemma` | [wcovBy_insert](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Grade/Variantb96443bc6cfa2dcd0bc34a42aa72bde12a8a46fe6bcb81b8371d05d351c3535d.lean/declarations/wcovby-insert--a1503cf7bc287d62bb15d1c5.md) | 99 | `result-track:a1503cf7bc287d62bb15d1c54444e039be29522a3dede8a79666d16c8ebba838` |
| 20 | `lemma` | [erase_wcovBy](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Grade/Variantb96443bc6cfa2dcd0bc34a42aa72bde12a8a46fe6bcb81b8371d05d351c3535d.lean/declarations/erase-wcovby--f209f36e606c6f5f2fded65d.md) | 100 | `result-track:f209f36e606c6f5f2fded65da19cb756d93aebace73a11edbe91d7d31f843e67` |
| 21 | `lemma` | [covBy_insert](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Grade/Variantb96443bc6cfa2dcd0bc34a42aa72bde12a8a46fe6bcb81b8371d05d351c3535d.lean/declarations/covby-insert--e4ae081e87868ac0898c3038.md) | 102 | `result-track:e4ae081e87868ac0898c3038d6c16d0a659b6f6eabec5c4d029fd0ebfbd476ad` |
| 22 | `lemma` | [erase_covBy](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Grade/Variantb96443bc6cfa2dcd0bc34a42aa72bde12a8a46fe6bcb81b8371d05d351c3535d.lean/declarations/erase-covby--60a45519272c57dfccca2b8a.md) | 105 | `result-track:60a45519272c57dfccca2b8aa59bc867d9c2c01e03a2874b13ebe856f5e9bcba` |
| 23 | `lemma` | [_root_.CovBy.exists_finset_insert](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Grade/Variantb96443bc6cfa2dcd0bc34a42aa72bde12a8a46fe6bcb81b8371d05d351c3535d.lean/declarations/root-covby-exists-finset-insert--49b07df568c4b121677cac62.md) | 107 | `result-track:49b07df568c4b121677cac62e0f0e9d384e7dedf6c83272a97a0922717fd7d53` |
| 24 | `lemma` | [_root_.CovBy.exists_finset_erase](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Grade/Variantb96443bc6cfa2dcd0bc34a42aa72bde12a8a46fe6bcb81b8371d05d351c3535d.lean/declarations/root-covby-exists-finset-erase--2703f57632b17394a2ebe195.md) | 110 | `result-track:2703f57632b17394a2ebe1955036fa27a5d34a6bfc235051db4badb074dbb3f3` |
| 25 | `lemma` | [covBy_iff_exists_insert](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Grade/Variantb96443bc6cfa2dcd0bc34a42aa72bde12a8a46fe6bcb81b8371d05d351c3535d.lean/declarations/covby-iff-exists-insert--dc2b7a9f86c8646f3365b28c.md) | 113 | `result-track:dc2b7a9f86c8646f3365b28cf3d01d877d728d5e54f8fc14be4d51e3b7cc382a` |
| 26 | `lemma` | [covBy_iff_card_sdiff_eq_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Grade/Variantb96443bc6cfa2dcd0bc34a42aa72bde12a8a46fe6bcb81b8371d05d351c3535d.lean/declarations/covby-iff-card-sdiff-eq-one--ca37ed661ac83cc20ce3e6c0.md) | 116 | `result-track:ca37ed661ac83cc20ce3e6c00ba4f7d73076dc7294fd3259d330bf4b9a2180e7` |
| 27 | `lemma` | [covBy_iff_exists_erase](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Grade/Variantb96443bc6cfa2dcd0bc34a42aa72bde12a8a46fe6bcb81b8371d05d351c3535d.lean/declarations/covby-iff-exists-erase--5e5496c34bc7f0ce67e96a1f.md) | 126 | `result-track:5e5496c34bc7f0ce67e96a1f3efbe963921a711a52c33b5a6424f54cbf0c550f` |
| 28 | `lemma` | [isAtom_singleton](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Grade/Variantb96443bc6cfa2dcd0bc34a42aa72bde12a8a46fe6bcb81b8371d05d351c3535d.lean/declarations/isatom-singleton--4ec95d493260a8227e3995cd.md) | 131 | `result-track:4ec95d493260a8227e3995cdde74b06a97f702431b076c208967df821e2d09b5` |
| 29 | `lemma` | [isAtom_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Grade/Variantb96443bc6cfa2dcd0bc34a42aa72bde12a8a46fe6bcb81b8371d05d351c3535d.lean/declarations/isatom-iff--101f17ef2e82c99fa22d2894.md) | 134 | `result-track:101f17ef2e82c99fa22d2894fa17b2b1c27b638c40c2498588d5d60227e418c5` |
| 30 | `lemma` | [isCoatom_compl_singleton](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Grade/Variantb96443bc6cfa2dcd0bc34a42aa72bde12a8a46fe6bcb81b8371d05d351c3535d.lean/declarations/iscoatom-compl-singleton--b5e086b7edfd9a6c01413cb0.md) | 140 | `result-track:b5e086b7edfd9a6c01413cb0c4f7e7e4a98bf1144a5548d3496d2f11dd6a3714` |
| 31 | `lemma` | [isCoatom_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Grade/Variantb96443bc6cfa2dcd0bc34a42aa72bde12a8a46fe6bcb81b8371d05d351c3535d.lean/declarations/iscoatom-iff--fda60121c2343e50266fd27a.md) | 142 | `result-track:fda60121c2343e50266fd27a02623bcbbfc905399b675995426bd9dfb55c63de` |
| 32 | `instance` | [instGradeMinOrder_multiset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Grade/Variantb96443bc6cfa2dcd0bc34a42aa72bde12a8a46fe6bcb81b8371d05d351c3535d.lean/declarations/instgrademinorder-multiset--bd588dc24b4644b93995a041.md) | 149 | `declaration-track:bd588dc24b4644b93995a04145b2ca8b5f1bbb30d91bbcda16882c574d11303f` |
| 33 | `lemma` | [grade_multiset_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Grade/Variantb96443bc6cfa2dcd0bc34a42aa72bde12a8a46fe6bcb81b8371d05d351c3535d.lean/declarations/grade-multiset-eq--cc7fcb168cc53538871d087d.md) | 155 | `result-track:cc7fcb168cc53538871d087d149ff463b182b37318d2c8523bf95cbdec96770e` |
| 34 | `instance` | [instGradeMinOrder_nat](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Grade/Variantb96443bc6cfa2dcd0bc34a42aa72bde12a8a46fe6bcb81b8371d05d351c3535d.lean/declarations/instgrademinorder-nat--d2d7be18371dfa76271185bd.md) | 157 | `declaration-track:d2d7be18371dfa76271185bda9172d3de8a19a137c54b3a502687de8e980c570` |
| 35 | `lemma` | [grade_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Grade/Variantb96443bc6cfa2dcd0bc34a42aa72bde12a8a46fe6bcb81b8371d05d351c3535d.lean/declarations/grade-eq--7e2244ab2a9142f9de79301a.md) | 163 | `result-track:7e2244ab2a9142f9de79301a28e06eb645011b09c385a1bcdd0872b3232e450b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
