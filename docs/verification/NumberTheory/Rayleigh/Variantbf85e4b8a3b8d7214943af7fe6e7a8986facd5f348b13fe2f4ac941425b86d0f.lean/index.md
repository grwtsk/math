# Verification target: GRWTSK.NumberTheory.Rayleigh.Variantbf85e4b8a3b8d7214943af7fe6e7a8986facd5f348b13fe2f4ac941425b86d0f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "97c43476159c0e34968b5b230f14da50f8a02608",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Rayleigh/Variantbf85e4b8a3b8d7214943af7fe6e7a8986facd5f348b13fe2f4ac941425b86d0f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Rayleigh/Variantbf85e4b8a3b8d7214943af7fe6e7a8986facd5f348b13fe2f4ac941425b86d0f.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Rayleigh/Variantbf85e4b8a3b8d7214943af7fe6e7a8986facd5f348b13fe2f4ac941425b86d0f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `97c43476159c0e34968b5b230f14da50f8a02608`.

Source path: `GRWTSK/NumberTheory/Rayleigh/Variantbf85e4b8a3b8d7214943af7fe6e7a8986facd5f348b13fe2f4ac941425b86d0f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Rayleigh/Variantbf85e4b8a3b8d7214943af7fe6e7a8986facd5f348b13fe2f4ac941425b86d0f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Real.ConjExponents` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Real.Irrational` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [beattySeq](../../../../mathematics/NumberTheory/Rayleigh/Variantbf85e4b8a3b8d7214943af7fe6e7a8986facd5f348b13fe2f4ac941425b86d0f.lean/declarations/beattyseq--4b3e5a3baa7c977994b0cc84.md) | 57 | `declaration-track:4b3e5a3baa7c977994b0cc84de2ecfc2e86adf694c3d8f2f020d85863e80fdb9` |
| 2 | `def` | [beattySeq'](../../../../mathematics/NumberTheory/Rayleigh/Variantbf85e4b8a3b8d7214943af7fe6e7a8986facd5f348b13fe2f4ac941425b86d0f.lean/declarations/beattyseq--732638db27a1f62a7fbaf58b.md) | 61 | `declaration-track:732638db27a1f62a7fbaf58bf4ececa2673a1dd185c0ee91d59069cd8680a8e8` |
| 3 | `theorem` | [no_collision](../../../../mathematics/NumberTheory/Rayleigh/Variantbf85e4b8a3b8d7214943af7fe6e7a8986facd5f348b13fe2f4ac941425b86d0f.lean/declarations/no-collision--9c6485a729e158146e36510b.md) | 70 | `result-track:9c6485a729e158146e36510b48dce68873db42130141ba324248c55b7dd5ea47` |
| 4 | `theorem` | [no_anticollision](../../../../mathematics/NumberTheory/Rayleigh/Variantbf85e4b8a3b8d7214943af7fe6e7a8986facd5f348b13fe2f4ac941425b86d0f.lean/declarations/no-anticollision--5500bf8c9ff37b203329c9bf.md) | 86 | `result-track:5500bf8c9ff37b203329c9bf46f92812a6d70513844a3ab1aa512c73c751dcb0` |
| 5 | `theorem` | [hit_or_miss](../../../../mathematics/NumberTheory/Rayleigh/Variantbf85e4b8a3b8d7214943af7fe6e7a8986facd5f348b13fe2f4ac941425b86d0f.lean/declarations/hit-or-miss--978be29950755de2e6578be7.md) | 97 | `result-track:978be29950755de2e6578be7a43a4b896a364edc4d553c7fbdb597aeba377aa4` |
| 6 | `theorem` | [hit_or_miss'](../../../../mathematics/NumberTheory/Rayleigh/Variantbf85e4b8a3b8d7214943af7fe6e7a8986facd5f348b13fe2f4ac941425b86d0f.lean/declarations/hit-or-miss--b1f506329cb9ac160c6d4444.md) | 109 | `result-track:b1f506329cb9ac160c6d4444074566ce508c0f909dc1af02a36d963b45bb3fa3` |
| 7 | `theorem` | [compl_beattySeq](../../../../mathematics/NumberTheory/Rayleigh/Variantbf85e4b8a3b8d7214943af7fe6e7a8986facd5f348b13fe2f4ac941425b86d0f.lean/declarations/compl-beattyseq--bf5b3f3bc5fb369651eecd35.md) | 124 | `result-track:bf5b3f3bc5fb369651eecd3563dfec7c470962c32e647b855fee2e8cff083bbc` |
| 8 | `theorem` | [compl_beattySeq'](../../../../mathematics/NumberTheory/Rayleigh/Variantbf85e4b8a3b8d7214943af7fe6e7a8986facd5f348b13fe2f4ac941425b86d0f.lean/declarations/compl-beattyseq--c93ccf497e45fe8a7b415e36.md) | 135 | `result-track:c93ccf497e45fe8a7b415e366834994db71f3990d69bdb5e665a5b1b52fc9553` |
| 9 | `theorem` | [beattySeq_symmDiff_beattySeq'_pos](../../../../mathematics/NumberTheory/Rayleigh/Variantbf85e4b8a3b8d7214943af7fe6e7a8986facd5f348b13fe2f4ac941425b86d0f.lean/declarations/beattyseq-symmdiff-beattyseq-pos--58d60f180f1d757523d21b7c.md) | 143 | `result-track:58d60f180f1d757523d21b7c39f74eca6af8fb525c9de387ebd5d69433b5b5b3` |
| 10 | `theorem` | [beattySeq'_symmDiff_beattySeq_pos](../../../../mathematics/NumberTheory/Rayleigh/Variantbf85e4b8a3b8d7214943af7fe6e7a8986facd5f348b13fe2f4ac941425b86d0f.lean/declarations/beattyseq-symmdiff-beattyseq-pos--cde56fccd1c1b41775757899.md) | 166 | `result-track:cde56fccd1c1b417757578993db9e8e4875c863a056669b0c15bba5488d32711` |
| 11 | `theorem` | [Irrational.beattySeq'_pos_eq](../../../../mathematics/NumberTheory/Rayleigh/Variantbf85e4b8a3b8d7214943af7fe6e7a8986facd5f348b13fe2f4ac941425b86d0f.lean/declarations/irrational-beattyseq-pos-eq--589863bdae659e3978c5e1fa.md) | 171 | `result-track:589863bdae659e3978c5e1fa1664641c5c34d8d48b89474c44d5bc380615e01e` |
| 12 | `theorem` | [Irrational.beattySeq_symmDiff_beattySeq_pos](../../../../mathematics/NumberTheory/Rayleigh/Variantbf85e4b8a3b8d7214943af7fe6e7a8986facd5f348b13fe2f4ac941425b86d0f.lean/declarations/irrational-beattyseq-symmdiff-beattyseq-pos--83f9b19c60908ebfba1ed3e5.md) | 181 | `result-track:83f9b19c60908ebfba1ed3e584429e469c53b75153ac8ed34484ae26800154d4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
