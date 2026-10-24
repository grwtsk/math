# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Rev.Variant5aaf64196b34476e3a8fb1ae39eae9b2ab933ef49563a3e215b8fc6ff78b9cc3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f14dfe5da1df732bc1f4e427f6c523f81a9f318c",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Rev/Variant5aaf64196b34476e3a8fb1ae39eae9b2ab933ef49563a3e215b8fc6ff78b9cc3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Rev/Variant5aaf64196b34476e3a8fb1ae39eae9b2ab933ef49563a3e215b8fc6ff78b9cc3.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Rev/Variant5aaf64196b34476e3a8fb1ae39eae9b2ab933ef49563a3e215b8fc6ff78b9cc3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f14dfe5da1df732bc1f4e427f6c523f81a9f318c`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Rev/Variant5aaf64196b34476e3a8fb1ae39eae9b2ab933ef49563a3e215b8fc6ff78b9cc3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Rev/Variant5aaf64196b34476e3a8fb1ae39eae9b2ab933ef49563a3e215b8fc6ff78b9cc3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Fin.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [rev_involutive](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Rev/Variant5aaf64196b34476e3a8fb1ae39eae9b2ab933ef49563a3e215b8fc6ff78b9cc3.lean/declarations/rev-involutive--817c9ac46a075b885379151a.md) | 26 | `result-track:817c9ac46a075b885379151aa2a71749b36edbd7c5eec6456c17caab341461f3` |
| 2 | `def` | [revPerm](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Rev/Variant5aaf64196b34476e3a8fb1ae39eae9b2ab933ef49563a3e215b8fc6ff78b9cc3.lean/declarations/revperm--f5bba9542c859e15af94834d.md) | 31 | `declaration-track:f5bba9542c859e15af94834d0c59f700975ee0c3f28cc6adfa71765ef809d718` |
| 3 | `theorem` | [rev_injective](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Rev/Variant5aaf64196b34476e3a8fb1ae39eae9b2ab933ef49563a3e215b8fc6ff78b9cc3.lean/declarations/rev-injective--fa9ff69803c9bf95a1aa7f5d.md) | 34 | `result-track:fa9ff69803c9bf95a1aa7f5d5a3a094995187e1614427f2570b9621266c31ec5` |
| 4 | `theorem` | [rev_surjective](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Rev/Variant5aaf64196b34476e3a8fb1ae39eae9b2ab933ef49563a3e215b8fc6ff78b9cc3.lean/declarations/rev-surjective--afe7d3c4468de39c1803692b.md) | 37 | `result-track:afe7d3c4468de39c1803692b8ee259897f88b21e1db3028fa6cabbf53ef6e964` |
| 5 | `theorem` | [rev_bijective](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Rev/Variant5aaf64196b34476e3a8fb1ae39eae9b2ab933ef49563a3e215b8fc6ff78b9cc3.lean/declarations/rev-bijective--ade404647edb362f8bc65599.md) | 40 | `result-track:ade404647edb362f8bc6559940e525a273d850a48f45cac0c7f8808913c792ea` |
| 6 | `theorem` | [revPerm_symm](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Rev/Variant5aaf64196b34476e3a8fb1ae39eae9b2ab933ef49563a3e215b8fc6ff78b9cc3.lean/declarations/revperm-symm--56a6f64bfdf110c261f437f5.md) | 44 | `result-track:56a6f64bfdf110c261f437f578b603cc60b8c14031e129bfd9931b2c7be76205` |
| 7 | `theorem` | [cast_rev](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Rev/Variant5aaf64196b34476e3a8fb1ae39eae9b2ab933ef49563a3e215b8fc6ff78b9cc3.lean/declarations/cast-rev--c3245b38b0dc8580bbc52855.md) | 47 | `result-track:c3245b38b0dc8580bbc52855124862d6b3ff729a7e8a8c074a5769a097ae5dc0` |
| 8 | `theorem` | [rev_eq_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Rev/Variant5aaf64196b34476e3a8fb1ae39eae9b2ab933ef49563a3e215b8fc6ff78b9cc3.lean/declarations/rev-eq-iff--db732483e4db4e1dd601ebd2.md) | 51 | `result-track:db732483e4db4e1dd601ebd24c10afdfba4bc2dffd43de1a7363aaf8c630eca2` |
| 9 | `theorem` | [rev_ne_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Rev/Variant5aaf64196b34476e3a8fb1ae39eae9b2ab933ef49563a3e215b8fc6ff78b9cc3.lean/declarations/rev-ne-iff--338c075e5f3470217e0d534b.md) | 54 | `result-track:338c075e5f3470217e0d534b34afd535425ab128596f7a9aee48cb24f17a894e` |
| 10 | `theorem` | [rev_lt_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Rev/Variant5aaf64196b34476e3a8fb1ae39eae9b2ab933ef49563a3e215b8fc6ff78b9cc3.lean/declarations/rev-lt-iff--299963a6c30073dba2ebfc82.md) | 56 | `result-track:299963a6c30073dba2ebfc8296090b1155626fadec69d675e5f7ffe65b243c08` |
| 11 | `theorem` | [rev_le_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Rev/Variant5aaf64196b34476e3a8fb1ae39eae9b2ab933ef49563a3e215b8fc6ff78b9cc3.lean/declarations/rev-le-iff--66c76bd99030c5636ad25811.md) | 59 | `result-track:66c76bd99030c5636ad25811ab9c90ff7b12012899f01bf7f828c1c848c1835b` |
| 12 | `theorem` | [lt_rev_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Rev/Variant5aaf64196b34476e3a8fb1ae39eae9b2ab933ef49563a3e215b8fc6ff78b9cc3.lean/declarations/lt-rev-iff--c3683146588fe338d50660d1.md) | 62 | `result-track:c3683146588fe338d50660d164fc08ddd79211b6e9f7918ec1439e669f192953` |
| 13 | `theorem` | [le_rev_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Rev/Variant5aaf64196b34476e3a8fb1ae39eae9b2ab933ef49563a3e215b8fc6ff78b9cc3.lean/declarations/le-rev-iff--82b7bca0558bb264dc2043de.md) | 65 | `result-track:82b7bca0558bb264dc2043de73e4283807401f5b15c7b71d0083e35506194d09` |
| 14 | `theorem` | [val_rev_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Rev/Variant5aaf64196b34476e3a8fb1ae39eae9b2ab933ef49563a3e215b8fc6ff78b9cc3.lean/declarations/val-rev-zero--1a7d66fe2ce2a759dfa1995f.md) | 68 | `result-track:1a7d66fe2ce2a759dfa1995fc6091c6ed2faedc0f085067a2613ff259ae6d398` |
| 15 | `theorem` | [rev_pred](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Rev/Variant5aaf64196b34476e3a8fb1ae39eae9b2ab933ef49563a3e215b8fc6ff78b9cc3.lean/declarations/rev-pred--108d3b8f040309b68736613b.md) | 70 | `result-track:108d3b8f040309b68736613b621667a156797726174dddd6af75b1c115ee291e` |
| 16 | `theorem` | [rev_castPred](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Rev/Variant5aaf64196b34476e3a8fb1ae39eae9b2ab933ef49563a3e215b8fc6ff78b9cc3.lean/declarations/rev-castpred--a31d18c039cafef8723ae7ac.md) | 74 | `result-track:a31d18c039cafef8723ae7ac3bdf5d6fa169b63071222d0d3065c7f16a6950d4` |
| 17 | `lemma` | [succAbove_rev_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Rev/Variant5aaf64196b34476e3a8fb1ae39eae9b2ab933ef49563a3e215b8fc6ff78b9cc3.lean/declarations/succabove-rev-left--64c713ccbb58027d1809cf0a.md) | 79 | `result-track:64c713ccbb58027d1809cf0ab9f65bc8d3c32bab9a5bbf35c7d5f20e3a7a2a3b` |
| 18 | `lemma` | [succAbove_rev_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Rev/Variant5aaf64196b34476e3a8fb1ae39eae9b2ab933ef49563a3e215b8fc6ff78b9cc3.lean/declarations/succabove-rev-right--b469b16029ebce9b10346d4f.md) | 87 | `result-track:b469b16029ebce9b10346d4f23eb510a23c0eb2194ee9878b77f7d486c23bba0` |
| 19 | `lemma` | [rev_succAbove](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Rev/Variant5aaf64196b34476e3a8fb1ae39eae9b2ab933ef49563a3e215b8fc6ff78b9cc3.lean/declarations/rev-succabove--c6afde4b765a0debd3ba3ffb.md) | 91 | `result-track:c6afde4b765a0debd3ba3ffb9c8e6a1296177f151d47273e59960050a2db21e2` |
| 20 | `lemma` | [predAbove_rev_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Rev/Variant5aaf64196b34476e3a8fb1ae39eae9b2ab933ef49563a3e215b8fc6ff78b9cc3.lean/declarations/predabove-rev-left--43958a56fa557d3ab8d6aefc.md) | 95 | `result-track:43958a56fa557d3ab8d6aefc74980007bf15e40577e63a0c07181c2bcf0bdcce` |
| 21 | `lemma` | [predAbove_rev_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Rev/Variant5aaf64196b34476e3a8fb1ae39eae9b2ab933ef49563a3e215b8fc6ff78b9cc3.lean/declarations/predabove-rev-right--445c00f95793e478c6b53bb1.md) | 103 | `result-track:445c00f95793e478c6b53bb1945e78d47e09c9a85a069f0f4c92083871b8ec14` |
| 22 | `lemma` | [rev_predAbove](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Rev/Variant5aaf64196b34476e3a8fb1ae39eae9b2ab933ef49563a3e215b8fc6ff78b9cc3.lean/declarations/rev-predabove--73ef95567f3b33ac06dbd17f.md) | 107 | `result-track:73ef95567f3b33ac06dbd17f620aa290913dc5eec24d304bc811639ae9a4ee88` |
| 23 | `lemma` | [add_rev_cast](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Rev/Variant5aaf64196b34476e3a8fb1ae39eae9b2ab933ef49563a3e215b8fc6ff78b9cc3.lean/declarations/add-rev-cast--033527496924e21e6a600e5f.md) | 110 | `result-track:033527496924e21e6a600e5fb293f97e127b4a42ea261e316b3a7116a198b5ce` |
| 24 | `lemma` | [rev_add_cast](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Rev/Variant5aaf64196b34476e3a8fb1ae39eae9b2ab933ef49563a3e215b8fc6ff78b9cc3.lean/declarations/rev-add-cast--75230f93f20a9eced25ba23d.md) | 114 | `result-track:75230f93f20a9eced25ba23d0eb8a3f5e4b6fee617291c943eb896cb86442421` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
