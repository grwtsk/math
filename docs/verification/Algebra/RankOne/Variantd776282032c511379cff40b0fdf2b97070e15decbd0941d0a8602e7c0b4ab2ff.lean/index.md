# Verification target: GRWTSK.Algebra.RankOne.Variantd776282032c511379cff40b0fdf2b97070e15decbd0941d0a8602e7c0b4ab2ff

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "50f153b80ac6e33bae3999c946e838e13ab6ad0b",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/RankOne/Variantd776282032c511379cff40b0fdf2b97070e15decbd0941d0a8602e7c0b4ab2ff.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/RankOne/Variantd776282032c511379cff40b0fdf2b97070e15decbd0941d0a8602e7c0b4ab2ff.lean/index.md) · [Full source](../../../../mathematics/Algebra/RankOne/Variantd776282032c511379cff40b0fdf2b97070e15decbd0941d0a8602e7c0b4ab2ff.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `50f153b80ac6e33bae3999c946e838e13ab6ad0b`.

Source path: `GRWTSK/Algebra/RankOne/Variantd776282032c511379cff40b0fdf2b97070e15decbd0941d0a8602e7c0b4ab2ff.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/RankOne/Variantd776282032c511379cff40b0fdf2b97070e15decbd0941d0a8602e7c0b4ab2ff.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.NNReal.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Valuation.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [RankOne](../../../../mathematics/Algebra/RankOne/Variantd776282032c511379cff40b0fdf2b97070e15decbd0941d0a8602e7c0b4ab2ff.lean/declarations/rankone--4d1b8fea612ecb5d1985989d.md) | 43 | `declaration-track:4d1b8fea612ecb5d1985989d036217686c0d2487d05a8bad825cce693795b4c5` |
| 2 | `lemma` | [strictMono](../../../../mathematics/Algebra/RankOne/Variantd776282032c511379cff40b0fdf2b97070e15decbd0941d0a8602e7c0b4ab2ff.lean/declarations/strictmono--bbdc0df9bc96caa25eb9e946.md) | 53 | `result-track:bbdc0df9bc96caa25eb9e9468a5b2b5dde95e944f26c3ea58427bb124de94d55` |
| 3 | `lemma` | [nontrivial](../../../../mathematics/Algebra/RankOne/Variantd776282032c511379cff40b0fdf2b97070e15decbd0941d0a8602e7c0b4ab2ff.lean/declarations/nontrivial--8323eeba36bc76fbcd391ed7.md) | 55 | `result-track:8323eeba36bc76fbcd391ed712f2a447fb63b9e0cdea4383565e1c9b0a0fbb69` |
| 4 | `theorem` | [zero_of_hom_zero](../../../../mathematics/Algebra/RankOne/Variantd776282032c511379cff40b0fdf2b97070e15decbd0941d0a8602e7c0b4ab2ff.lean/declarations/zero-of-hom-zero--5e0d6e84faac3be48404e045.md) | 59 | `result-track:5e0d6e84faac3be48404e0455e7dea594bb205610e0682748cf23e5d301c1a30` |
| 5 | `theorem` | [hom_eq_zero_iff](../../../../mathematics/Algebra/RankOne/Variantd776282032c511379cff40b0fdf2b97070e15decbd0941d0a8602e7c0b4ab2ff.lean/declarations/hom-eq-zero-iff--e0d3536086459c95dea322a8.md) | 67 | `result-track:e0d3536086459c95dea322a82faf92afb8bda8730ea264546fd1da07f29a8616` |
| 6 | `def` | [unit](../../../../mathematics/Algebra/RankOne/Variantd776282032c511379cff40b0fdf2b97070e15decbd0941d0a8602e7c0b4ab2ff.lean/declarations/unit--c2579a3042de3f1f07466c2d.md) | 71 | `declaration-track:c2579a3042de3f1f07466c2de0b8ef3f04390b8e2646ea56869b2e1d7f04ffb0` |
| 7 | `theorem` | [unit_ne_one](../../../../mathematics/Algebra/RankOne/Variantd776282032c511379cff40b0fdf2b97070e15decbd0941d0a8602e7c0b4ab2ff.lean/declarations/unit-ne-one--a50c619a398f294554fdda8a.md) | 75 | `result-track:a50c619a398f294554fdda8a9d7b1fb81a1ce240e24da07bb077a8fe2b2be5b2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
