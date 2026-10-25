# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Rotate.Variantcb8c0df9f36a4ff6b73cefc84860868d6239e573d133d5b5677289df22d42ee2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1883877d414b98bd7314820927c3c8a72c319748",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Rotate/Variantcb8c0df9f36a4ff6b73cefc84860868d6239e573d133d5b5677289df22d42ee2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Rotate/Variantcb8c0df9f36a4ff6b73cefc84860868d6239e573d133d5b5677289df22d42ee2.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Rotate/Variantcb8c0df9f36a4ff6b73cefc84860868d6239e573d133d5b5677289df22d42ee2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1883877d414b98bd7314820927c3c8a72c319748`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Rotate/Variantcb8c0df9f36a4ff6b73cefc84860868d6239e573d133d5b5677289df22d42ee2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Rotate/Variantcb8c0df9f36a4ff6b73cefc84860868d6239e573d133d5b5677289df22d42ee2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Fin.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Equiv.Fin.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [finRotate](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Rotate/Variantcb8c0df9f36a4ff6b73cefc84860868d6239e573d133d5b5677289df22d42ee2.lean/declarations/finrotate--1aea4d7ef983cf5834d7b26f.md) | 21 | `declaration-track:1aea4d7ef983cf5834d7b26f6328d9a230b4f18f3437423c2a80cf17f7f5d983` |
| 2 | `lemma` | [finRotate_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Rotate/Variantcb8c0df9f36a4ff6b73cefc84860868d6239e573d133d5b5677289df22d42ee2.lean/declarations/finrotate-zero--8e3c874eff053089bd16bb57.md) | 25 | `result-track:8e3c874eff053089bd16bb57ad474a07638527aafacfc5654bf49399964c99c9` |
| 3 | `lemma` | [finRotate_succ](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Rotate/Variantcb8c0df9f36a4ff6b73cefc84860868d6239e573d133d5b5677289df22d42ee2.lean/declarations/finrotate-succ--d90fa29c04f1f9f5269e1a55.md) | 27 | `result-track:d90fa29c04f1f9f5269e1a553a1e42f4f8ad1779ac4695c0f06daae8b8eff59a` |
| 4 | `theorem` | [finRotate_of_lt](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Rotate/Variantcb8c0df9f36a4ff6b73cefc84860868d6239e573d133d5b5677289df22d42ee2.lean/declarations/finrotate-of-lt--841bbb5151f4577284e5498d.md) | 30 | `result-track:841bbb5151f4577284e5498df77641b5eb472e46077d449717a08081dfb04b58` |
| 5 | `theorem` | [finRotate_last'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Rotate/Variantcb8c0df9f36a4ff6b73cefc84860868d6239e573d133d5b5677289df22d42ee2.lean/declarations/finrotate-last--4f095eb9aa91096e023208a7.md) | 36 | `result-track:4f095eb9aa91096e023208a701b35094d0f13498df17b7edf8e7d38f0fac01c7` |
| 6 | `theorem` | [finRotate_last](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Rotate/Variantcb8c0df9f36a4ff6b73cefc84860868d6239e573d133d5b5677289df22d42ee2.lean/declarations/finrotate-last--b9f2a6195869fe510c06741e.md) | 41 | `result-track:b9f2a6195869fe510c06741ed866d3ae5a21f8afb111fc1f8fdfb10af3390d39` |
| 7 | `theorem` | [Fin.snoc_eq_cons_rotate](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Rotate/Variantcb8c0df9f36a4ff6b73cefc84860868d6239e573d133d5b5677289df22d42ee2.lean/declarations/fin-snoc-eq-cons-rotate--6086a6e0f193a61320123a2c.md) | 44 | `result-track:6086a6e0f193a61320123a2ceed90503e387de4a8ca05f7ec8a6964d07b43219` |
| 8 | `theorem` | [finRotate_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Rotate/Variantcb8c0df9f36a4ff6b73cefc84860868d6239e573d133d5b5677289df22d42ee2.lean/declarations/finrotate-one--f24989df14d50242ed700156.md) | 58 | `result-track:f24989df14d50242ed7001560f675bb8d0fafc9b892c00755fab4cf9af97b0f8` |
| 9 | `theorem` | [finRotate_succ_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Rotate/Variantcb8c0df9f36a4ff6b73cefc84860868d6239e573d133d5b5677289df22d42ee2.lean/declarations/finrotate-succ-apply--eec3d1e82857ecd55c9037bc.md) | 61 | `result-track:eec3d1e82857ecd55c9037bc4f80dc583ac0167be74169bad63caa0ef79b14b7` |
| 10 | `theorem` | [finRotate_apply_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Rotate/Variantcb8c0df9f36a4ff6b73cefc84860868d6239e573d133d5b5677289df22d42ee2.lean/declarations/finrotate-apply-zero--f58ecb4009de5f3d7b5fda32.md) | 70 | `result-track:f58ecb4009de5f3d7b5fda32fa2af6677becac07b528fe01d230d37b3f20fa27` |
| 11 | `theorem` | [coe_finRotate_of_ne_last](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Rotate/Variantcb8c0df9f36a4ff6b73cefc84860868d6239e573d133d5b5677289df22d42ee2.lean/declarations/coe-finrotate-of-ne-last--aae6ced52f8ec188db6c4d0a.md) | 73 | `result-track:aae6ced52f8ec188db6c4d0a240770db72b650570d348208202fa669f40bdfa4` |
| 12 | `theorem` | [coe_finRotate](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Rotate/Variantcb8c0df9f36a4ff6b73cefc84860868d6239e573d133d5b5677289df22d42ee2.lean/declarations/coe-finrotate--b3038ecb51220c0cbf46c8d7.md) | 79 | `result-track:b3038ecb51220c0cbf46c8d7f871e1ab537ee38c32cb9c43d401169f0d661933` |
| 13 | `theorem` | [lt_finRotate_iff_ne_last](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Rotate/Variantcb8c0df9f36a4ff6b73cefc84860868d6239e573d133d5b5677289df22d42ee2.lean/declarations/lt-finrotate-iff-ne-last--ac712c9791ed782f180b0f4b.md) | 83 | `result-track:ac712c9791ed782f180b0f4b2450a561026f3a533322e4ac7a78e6bbb676723e` |
| 14 | `theorem` | [lt_finRotate_iff_ne_neg_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Rotate/Variantcb8c0df9f36a4ff6b73cefc84860868d6239e573d133d5b5677289df22d42ee2.lean/declarations/lt-finrotate-iff-ne-neg-one--0e544c2b2624dbe2478b880a.md) | 89 | `result-track:0e544c2b2624dbe2478b880a27831e965f32eabf29b7d215fc379ea9d3d7d779` |
| 15 | `lemma` | [finRotate_succ_symm_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Rotate/Variantcb8c0df9f36a4ff6b73cefc84860868d6239e573d133d5b5677289df22d42ee2.lean/declarations/finrotate-succ-symm-apply--99f7844146bade39c22209d5.md) | 94 | `result-track:99f7844146bade39c22209d5da0dccf668d10f849810a2c20312771b2ed057e9` |
| 16 | `lemma` | [coe_finRotate_symm_of_ne_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Rotate/Variantcb8c0df9f36a4ff6b73cefc84860868d6239e573d133d5b5677289df22d42ee2.lean/declarations/coe-finrotate-symm-of-ne-zero--a712595c7a65e0c416a625b5.md) | 99 | `result-track:a712595c7a65e0c416a625b5a082ee7d07252d950fc9ad353ecfcc8f219120e9` |
| 17 | `theorem` | [finRotate_symm_lt_iff_ne_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Rotate/Variantcb8c0df9f36a4ff6b73cefc84860868d6239e573d133d5b5677289df22d42ee2.lean/declarations/finrotate-symm-lt-iff-ne-zero--13670e8bdc7f215292797912.md) | 104 | `result-track:13670e8bdc7f215292797912cbcae76d86e3278fc40a9f8b24a56381bb015382` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
