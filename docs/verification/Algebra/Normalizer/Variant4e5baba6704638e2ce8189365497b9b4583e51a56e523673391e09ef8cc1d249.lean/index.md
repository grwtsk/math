# Verification target: GRWTSK.Algebra.Normalizer.Variant4e5baba6704638e2ce8189365497b9b4583e51a56e523673391e09ef8cc1d249

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bb4bd498d00c450f264188c1edda229a4b102bdd",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Normalizer/Variant4e5baba6704638e2ce8189365497b9b4583e51a56e523673391e09ef8cc1d249.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Normalizer/Variant4e5baba6704638e2ce8189365497b9b4583e51a56e523673391e09ef8cc1d249.lean/index.md) · [Full source](../../../../mathematics/Algebra/Normalizer/Variant4e5baba6704638e2ce8189365497b9b4583e51a56e523673391e09ef8cc1d249.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bb4bd498d00c450f264188c1edda229a4b102bdd`.

Source path: `GRWTSK/Algebra/Normalizer/Variant4e5baba6704638e2ce8189365497b9b4583e51a56e523673391e09ef8cc1d249.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Normalizer/Variant4e5baba6704638e2ce8189365497b9b4583e51a56e523673391e09ef8cc1d249.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Lie.Abelian` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Lie.IdealOperations` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Lie.Quotient` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [normalizer](../../../../mathematics/Algebra/Normalizer/Variant4e5baba6704638e2ce8189365497b9b4583e51a56e523673391e09ef8cc1d249.lean/declarations/normalizer--3a3f28a2ebbe3a3ba99f2b54.md) | 59 | `declaration-track:3a3f28a2ebbe3a3ba99f2b54f07ba7b620ead00992411e7695d1f33cc82da5b6` |
| 2 | `theorem` | [mem_normalizer](../../../../mathematics/Algebra/Normalizer/Variant4e5baba6704638e2ce8189365497b9b4583e51a56e523673391e09ef8cc1d249.lean/declarations/mem-normalizer--5ff408393e92f89d22f653b7.md) | 68 | `result-track:5ff408393e92f89d22f653b714e46261aa1f6184577e73aad667796214ed4f69` |
| 3 | `theorem` | [le_normalizer](../../../../mathematics/Algebra/Normalizer/Variant4e5baba6704638e2ce8189365497b9b4583e51a56e523673391e09ef8cc1d249.lean/declarations/le-normalizer--1264dba52418429c97e9afeb.md) | 72 | `result-track:1264dba52418429c97e9afeb0edde0eaac3718cd5911ad8e49e3f538264c0c0e` |
| 4 | `theorem` | [normalizer_inf](../../../../mathematics/Algebra/Normalizer/Variant4e5baba6704638e2ce8189365497b9b4583e51a56e523673391e09ef8cc1d249.lean/declarations/normalizer-inf--881996befbd1ad412a3823b7.md) | 78 | `result-track:881996befbd1ad412a3823b7368eb70b20d47b6bcea71788140de038a336436c` |
| 5 | `theorem` | [monotone_normalizer](../../../../mathematics/Algebra/Normalizer/Variant4e5baba6704638e2ce8189365497b9b4583e51a56e523673391e09ef8cc1d249.lean/declarations/monotone-normalizer--e93da9333c7a8b088f173ddf.md) | 83 | `result-track:e93da9333c7a8b088f173ddf0d8c8cd4c4cc4ec1733388e1953058c1e1b0123b` |
| 6 | `theorem` | [comap_normalizer](../../../../mathematics/Algebra/Normalizer/Variant4e5baba6704638e2ce8189365497b9b4583e51a56e523673391e09ef8cc1d249.lean/declarations/comap-normalizer--aa7194b26292ef6644ccc06a.md) | 90 | `result-track:aa7194b26292ef6644ccc06ad4aa2803aa61a61a5bf5144db48ebac4adb74c1c` |
| 7 | `theorem` | [top_lie_le_iff_le_normalizer](../../../../mathematics/Algebra/Normalizer/Variant4e5baba6704638e2ce8189365497b9b4583e51a56e523673391e09ef8cc1d249.lean/declarations/top-lie-le-iff-le-normalizer--4d4bc2ca16744b6efe32f3b6.md) | 94 | `result-track:4d4bc2ca16744b6efe32f3b61686269266130b0c16a80b7c6cf2f94de7dadaa2` |
| 8 | `theorem` | [gc_top_lie_normalizer](../../../../mathematics/Algebra/Normalizer/Variant4e5baba6704638e2ce8189365497b9b4583e51a56e523673391e09ef8cc1d249.lean/declarations/gc-top-lie-normalizer--451f86939401702a457026a3.md) | 98 | `result-track:451f86939401702a457026a3dbc84fa412471fe374ec0f5ba50fb337351b94e1` |
| 9 | `theorem` | [normalizer_bot_eq_maxTrivSubmodule](../../../../mathematics/Algebra/Normalizer/Variant4e5baba6704638e2ce8189365497b9b4583e51a56e523673391e09ef8cc1d249.lean/declarations/normalizer-bot-eq-maxtrivsubmodule--f3c04cc25c7128eba8daf63a.md) | 105 | `result-track:f3c04cc25c7128eba8daf63a863803bcb14b51551c95a4c608541e5c102881f4` |
| 10 | `def` | [normalizer](../../../../mathematics/Algebra/Normalizer/Variant4e5baba6704638e2ce8189365497b9b4583e51a56e523673391e09ef8cc1d249.lean/declarations/normalizer--a854845d2dbfa7dbae4625d8.md) | 118 | `declaration-track:a854845d2dbfa7dbae4625d888169ca9e79eb0542e4ad1a24b1068150bf5db80` |
| 11 | `theorem` | [mem_normalizer_iff'](../../../../mathematics/Algebra/Normalizer/Variant4e5baba6704638e2ce8189365497b9b4583e51a56e523673391e09ef8cc1d249.lean/declarations/mem-normalizer-iff--0376c64ded4ad7e9e6acae19.md) | 125 | `result-track:0376c64ded4ad7e9e6acae19155d0220fd9beaa03bb412010bd7fdf9daf044e2` |
| 12 | `theorem` | [mem_normalizer_iff](../../../../mathematics/Algebra/Normalizer/Variant4e5baba6704638e2ce8189365497b9b4583e51a56e523673391e09ef8cc1d249.lean/declarations/mem-normalizer-iff--e38745ff19fc22f16edd32f9.md) | 129 | `result-track:e38745ff19fc22f16edd32f9399ad10ab80b111558619b73321c9c6025590e3d` |
| 13 | `theorem` | [le_normalizer](../../../../mathematics/Algebra/Normalizer/Variant4e5baba6704638e2ce8189365497b9b4583e51a56e523673391e09ef8cc1d249.lean/declarations/le-normalizer--ce2943bdec4689fc9214b924.md) | 135 | `result-track:ce2943bdec4689fc9214b9247f66107c72337c9126d60948ea1fa14842d09b81` |
| 14 | `theorem` | [coe_normalizer_eq_normalizer](../../../../mathematics/Algebra/Normalizer/Variant4e5baba6704638e2ce8189365497b9b4583e51a56e523673391e09ef8cc1d249.lean/declarations/coe-normalizer-eq-normalizer--0bce27f28b116207f1a93102.md) | 139 | `result-track:0bce27f28b116207f1a93102e4e52fae7154a8c767d4e51b99c66eda1bb6396d` |
| 15 | `theorem` | [lie_mem_sup_of_mem_normalizer](../../../../mathematics/Algebra/Normalizer/Variant4e5baba6704638e2ce8189365497b9b4583e51a56e523673391e09ef8cc1d249.lean/declarations/lie-mem-sup-of-mem-normalizer--3810ecf03d7b947f886cd202.md) | 146 | `result-track:3810ecf03d7b947f886cd20289a53ca3f55e14de13f75b6cadd3013238b72db6` |
| 16 | `theorem` | [ideal_in_normalizer](../../../../mathematics/Algebra/Normalizer/Variant4e5baba6704638e2ce8189365497b9b4583e51a56e523673391e09ef8cc1d249.lean/declarations/ideal-in-normalizer--67c80d82df3fbc0bcf3a2de4.md) | 161 | `result-track:67c80d82df3fbc0bcf3a2de449f167e4fb29bc653a4c48338d63a9788beba1a5` |
| 17 | `theorem` | [exists_nested_lieIdeal_ofLe_normalizer](../../../../mathematics/Algebra/Normalizer/Variant4e5baba6704638e2ce8189365497b9b4583e51a56e523673391e09ef8cc1d249.lean/declarations/exists-nested-lieideal-ofle-normalizer--772c5884ca807dc5d6568527.md) | 168 | `result-track:772c5884ca807dc5d65685270c4d9781ab113e9dfb060d0235fa2f3eef045628` |
| 18 | `theorem` | [normalizer_eq_self_iff](../../../../mathematics/Algebra/Normalizer/Variant4e5baba6704638e2ce8189365497b9b4583e51a56e523673391e09ef8cc1d249.lean/declarations/normalizer-eq-self-iff--af328466d5dc7275a2152f4e.md) | 176 | `result-track:af328466d5dc7275a2152f4ee4b2d4c9bc07fd1d61de86a2ccfbd4b9c8b07a23` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
