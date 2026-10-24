# Verification target: GRWTSK.Algebra.LinearAlgebra.Constructions.Variant2325e7a824fbe724b37e83e53a51d4648da8596fd39ac728658242ed95d8c5df

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b9ed671dd490040d64b3ead26b97db18599a9900",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Constructions/Variant2325e7a824fbe724b37e83e53a51d4648da8596fd39ac728658242ed95d8c5df.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Constructions/Variant2325e7a824fbe724b37e83e53a51d4648da8596fd39ac728658242ed95d8c5df.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Constructions/Variant2325e7a824fbe724b37e83e53a51d4648da8596fd39ac728658242ed95d8c5df.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b9ed671dd490040d64b3ead26b97db18599a9900`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Constructions/Variant2325e7a824fbe724b37e83e53a51d4648da8596fd39ac728658242ed95d8c5df.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Constructions/Variant2325e7a824fbe724b37e83e53a51d4648da8596fd39ac728658242ed95d8c5df.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.CrossProduct` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.DotProduct` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Projectivization.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [orthogonal](../../../../../mathematics/Algebra/LinearAlgebra/Constructions/Variant2325e7a824fbe724b37e83e53a51d4648da8596fd39ac728658242ed95d8c5df.lean/declarations/orthogonal--e42f3b23c408e6283a6e680f.md) | 41 | `declaration-track:e42f3b23c408e6283a6e680f709dedfaf49a5fbfa373a68a9cc30c287bac98f4` |
| 2 | `lemma` | [orthogonal_mk](../../../../../mathematics/Algebra/LinearAlgebra/Constructions/Variant2325e7a824fbe724b37e83e53a51d4648da8596fd39ac728658242ed95d8c5df.lean/declarations/orthogonal-mk--2085f4203c5fc90af6c05eed.md) | 46 | `result-track:2085f4203c5fc90af6c05eeda00c2a4f94764cfead5eeb5493ed22b839a98fab` |
| 3 | `lemma` | [orthogonal_comm](../../../../../mathematics/Algebra/LinearAlgebra/Constructions/Variant2325e7a824fbe724b37e83e53a51d4648da8596fd39ac728658242ed95d8c5df.lean/declarations/orthogonal-comm--0743210bf45222778168c08a.md) | 50 | `result-track:0743210bf45222778168c08a90b00c201ae4035fc146bca4d39c013aeacd644b` |
| 4 | `lemma` | [exists_not_self_orthogonal](../../../../../mathematics/Algebra/LinearAlgebra/Constructions/Variant2325e7a824fbe724b37e83e53a51d4648da8596fd39ac728658242ed95d8c5df.lean/declarations/exists-not-self-orthogonal--14d4f50951f04da370fdc909.md) | 54 | `result-track:14d4f50951f04da370fdc9094b2d1a76732532cfc0fb4b3c2617c1ad65d79567` |
| 5 | `lemma` | [exists_not_orthogonal_self](../../../../../mathematics/Algebra/LinearAlgebra/Constructions/Variant2325e7a824fbe724b37e83e53a51d4648da8596fd39ac728658242ed95d8c5df.lean/declarations/exists-not-orthogonal-self--3029f1a75c282a9e6d04f4b5.md) | 60 | `result-track:3029f1a75c282a9e6d04f4b55723252bc51466f0cd658a07cc71a779dbb5d9cd` |
| 6 | `lemma` | [mk_eq_mk_iff_crossProduct_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/Constructions/Variant2325e7a824fbe724b37e83e53a51d4648da8596fd39ac728658242ed95d8c5df.lean/declarations/mk-eq-mk-iff-crossproduct-eq-zero--eb84bfd7e61a6b0c59938d3a.md) | 68 | `result-track:eb84bfd7e61a6b0c59938d3a87a970e30e6827e950e8c5314f2c9e65a24953a5` |
| 7 | `def` | [cross](../../../../../mathematics/Algebra/LinearAlgebra/Constructions/Variant2325e7a824fbe724b37e83e53a51d4648da8596fd39ac728658242ed95d8c5df.lean/declarations/cross--350ec764351127c93bc65c02.md) | 76 | `declaration-track:350ec764351127c93bc65c028c567a2e80e4e08d49867c7f7d66bf3a8a7a64fe` |
| 8 | `lemma` | [cross_mk](../../../../../mathematics/Algebra/LinearAlgebra/Constructions/Variant2325e7a824fbe724b37e83e53a51d4648da8596fd39ac728658242ed95d8c5df.lean/declarations/cross-mk--539c57953808dd6064c980fe.md) | 85 | `result-track:539c57953808dd6064c980fe173d8ccb6e30469302ba6ba1481fe15143425769` |
| 9 | `lemma` | [cross_mk_of_cross_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/Constructions/Variant2325e7a824fbe724b37e83e53a51d4648da8596fd39ac728658242ed95d8c5df.lean/declarations/cross-mk-of-cross-eq-zero--22db9880da82185db4bae6bf.md) | 91 | `result-track:22db9880da82185db4bae6bf757e18d058f141fc401e282628a7cdd249715d6d` |
| 10 | `lemma` | [cross_mk_of_cross_ne_zero](../../../../../mathematics/Algebra/LinearAlgebra/Constructions/Variant2325e7a824fbe724b37e83e53a51d4648da8596fd39ac728658242ed95d8c5df.lean/declarations/cross-mk-of-cross-ne-zero--a34ac368d86d39e45952a41a.md) | 96 | `result-track:a34ac368d86d39e45952a41a55cd677e09de50d0bbe9429ce9d89b415299ac14` |
| 11 | `lemma` | [cross_self](../../../../../mathematics/Algebra/LinearAlgebra/Constructions/Variant2325e7a824fbe724b37e83e53a51d4648da8596fd39ac728658242ed95d8c5df.lean/declarations/cross-self--851b7173ed04af71a3f34941.md) | 101 | `result-track:851b7173ed04af71a3f3494121caf66fa984a5d2f88c39ce11907c40b6535f33` |
| 12 | `lemma` | [cross_mk_of_ne](../../../../../mathematics/Algebra/LinearAlgebra/Constructions/Variant2325e7a824fbe724b37e83e53a51d4648da8596fd39ac728658242ed95d8c5df.lean/declarations/cross-mk-of-ne--4e7284578cd0a2892a2e7990.md) | 106 | `result-track:4e7284578cd0a2892a2e79901ea4c4d011b5ed40003f6516a8f7c8d80a1a8289` |
| 13 | `lemma` | [cross_comm](../../../../../mathematics/Algebra/LinearAlgebra/Constructions/Variant2325e7a824fbe724b37e83e53a51d4648da8596fd39ac728658242ed95d8c5df.lean/declarations/cross-comm--c3749051ce12a39ac0545011.md) | 111 | `result-track:c3749051ce12a39ac0545011ee5b1ef99206fd1bf29fea8b0ea31d54f6805f38` |
| 14 | `theorem` | [cross_orthogonal_left](../../../../../mathematics/Algebra/LinearAlgebra/Constructions/Variant2325e7a824fbe724b37e83e53a51d4648da8596fd39ac728658242ed95d8c5df.lean/declarations/cross-orthogonal-left--75b518e471da9e0462025f7d.md) | 119 | `result-track:75b518e471da9e0462025f7de682aceb919a0d3a1ce6734495bbc9c61ded806e` |
| 15 | `theorem` | [cross_orthogonal_right](../../../../../mathematics/Algebra/LinearAlgebra/Constructions/Variant2325e7a824fbe724b37e83e53a51d4648da8596fd39ac728658242ed95d8c5df.lean/declarations/cross-orthogonal-right--62bf8eb12840bf14ae9b3fe0.md) | 125 | `result-track:62bf8eb12840bf14ae9b3fe04f9b07eb9bc5d2642a9eced090cdf18a64982888` |
| 16 | `theorem` | [orthogonal_cross_left](../../../../../mathematics/Algebra/LinearAlgebra/Constructions/Variant2325e7a824fbe724b37e83e53a51d4648da8596fd39ac728658242ed95d8c5df.lean/declarations/orthogonal-cross-left--2e358c7f99b177bf4fb445ed.md) | 130 | `result-track:2e358c7f99b177bf4fb445ede1c8156c4cbd30319121934378fc70f2ab9f4f9e` |
| 17 | `lemma` | [orthogonal_cross_right](../../../../../mathematics/Algebra/LinearAlgebra/Constructions/Variant2325e7a824fbe724b37e83e53a51d4648da8596fd39ac728658242ed95d8c5df.lean/declarations/orthogonal-cross-right--e2875ef19799e7c4bfd6c823.md) | 135 | `result-track:e2875ef19799e7c4bfd6c823f6cb3ba5a565eb4eadeec7c0086f2b82c2c46887` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
