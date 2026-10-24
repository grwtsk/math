# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Ultra.Variant07632b1094de2c1d9ff449756820195f4b8539263187ebd50d0e76d8dd2de925

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "79e9e92787437d980a1bcd4c37724f19a7d98bce",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Ultra/Variant07632b1094de2c1d9ff449756820195f4b8539263187ebd50d0e76d8dd2de925.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Ultra/Variant07632b1094de2c1d9ff449756820195f4b8539263187ebd50d0e76d8dd2de925.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Ultra/Variant07632b1094de2c1d9ff449756820195f4b8539263187ebd50d0e76d8dd2de925.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `79e9e92787437d980a1bcd4c37724f19a7d98bce`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Ultra/Variant07632b1094de2c1d9ff449756820195f4b8539263187ebd50d0e76d8dd2de925.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Ultra/Variant07632b1094de2c1d9ff449756820195f4b8539263187ebd50d0e76d8dd2de925.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Normed.Field.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Ring.Ultra` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Choose.Sum` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [isUltrametricDist_of_forall_norm_add_one_le_max_norm_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Ultra/Variant07632b1094de2c1d9ff449756820195f4b8539263187ebd50d0e76d8dd2de925.lean/declarations/isultrametricdist-of-forall-norm-add-one-le-max-norm-one--210ad27e2c9187494c80f105.md) | 41 | `result-track:210ad27e2c9187494c80f105f6b26d8da2ee5a148b2011c7e4d5764a4de21cbf` |
| 2 | `lemma` | [isUltrametricDist_of_forall_norm_add_one_of_norm_le_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Ultra/Variant07632b1094de2c1d9ff449756820195f4b8539263187ebd50d0e76d8dd2de925.lean/declarations/isultrametricdist-of-forall-norm-add-one-of-norm-le-one--f67ea86b692ddfc7306811cd.md) | 50 | `result-track:f67ea86b692ddfc7306811cd1b8fd2883f62d1bfbc393e82114afc7e77489fc4` |
| 3 | `lemma` | [isUltrametricDist_of_forall_norm_sub_one_of_norm_le_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Ultra/Variant07632b1094de2c1d9ff449756820195f4b8539263187ebd50d0e76d8dd2de925.lean/declarations/isultrametricdist-of-forall-norm-sub-one-of-norm-le-one--207e47ba0570f7b41a027589.md) | 61 | `result-track:207e47ba0570f7b41a02758956aaaf97db388f6449b8c06f6478a1bf73b590e1` |
| 4 | `lemma` | [isUltrametricDist_of_forall_pow_norm_le_nsmul_pow_max_one_norm](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Ultra/Variant07632b1094de2c1d9ff449756820195f4b8539263187ebd50d0e76d8dd2de925.lean/declarations/isultrametricdist-of-forall-pow-norm-le-nsmul-pow-max-one-norm--fc0a8690997971ad327e2e4d.md) | 69 | `result-track:fc0a8690997971ad327e2e4de62c327104bb6e496c93cc7b0db8ac140f24e1c8` |
| 5 | `lemma` | [isUltrametricDist_of_forall_norm_natCast_le_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Ultra/Variant07632b1094de2c1d9ff449756820195f4b8539263187ebd50d0e76d8dd2de925.lean/declarations/isultrametricdist-of-forall-norm-natcast-le-one--f59df3e1bd048f07807c6b7e.md) | 99 | `result-track:f59df3e1bd048f07807c6b7eb6fa7b7b83e96bd7ccd6fb7c528ebddb5c5d6888` |
| 6 | `theorem` | [isUltrametricDist_iff_forall_norm_natCast_le_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Ultra/Variant07632b1094de2c1d9ff449756820195f4b8539263187ebd50d0e76d8dd2de925.lean/declarations/isultrametricdist-iff-forall-norm-natcast-le-one--4cb07ba7c40b4f84b14b7b1e.md) | 136 | `result-track:4cb07ba7c40b4f84b14b7b1e2f415fee0f6c0302e5b59facd12eeb7d12a4b6c9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
