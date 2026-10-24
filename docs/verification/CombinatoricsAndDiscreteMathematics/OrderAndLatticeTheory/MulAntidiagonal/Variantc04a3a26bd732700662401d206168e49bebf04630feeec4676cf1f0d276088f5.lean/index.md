# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.MulAntidiagonal.Variantc04a3a26bd732700662401d206168e49bebf04630feeec4676cf1f0d276088f5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a2395bc25d0230d1d8e0a07c77ffd69ff63f9273",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MulAntidiagonal/Variantc04a3a26bd732700662401d206168e49bebf04630feeec4676cf1f0d276088f5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MulAntidiagonal/Variantc04a3a26bd732700662401d206168e49bebf04630feeec4676cf1f0d276088f5.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MulAntidiagonal/Variantc04a3a26bd732700662401d206168e49bebf04630feeec4676cf1f0d276088f5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a2395bc25d0230d1d8e0a07c77ffd69ff63f9273`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MulAntidiagonal/Variantc04a3a26bd732700662401d206168e49bebf04630feeec4676cf1f0d276088f5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MulAntidiagonal/Variantc04a3a26bd732700662401d206168e49bebf04630feeec4676cf1f0d276088f5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.WellFoundedSet` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mulAntidiagonal](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MulAntidiagonal/Variantc04a3a26bd732700662401d206168e49bebf04630feeec4676cf1f0d276088f5.lean/declarations/mulantidiagonal--b697c60886b127de2a521021.md) | 24 | `declaration-track:b697c60886b127de2a521021346e07d12df4f445363039f5b80c43d7478555d0` |
| 2 | `theorem` | [mem_mulAntidiagonal](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MulAntidiagonal/Variantc04a3a26bd732700662401d206168e49bebf04630feeec4676cf1f0d276088f5.lean/declarations/mem-mulantidiagonal--678d99cde1ae58a4016700ba.md) | 28 | `result-track:678d99cde1ae58a4016700babf019cdc5e97cdb0156b7a2b2a0b2edab9f39159` |
| 3 | `theorem` | [mulAntidiagonal_mono_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MulAntidiagonal/Variantc04a3a26bd732700662401d206168e49bebf04630feeec4676cf1f0d276088f5.lean/declarations/mulantidiagonal-mono-left--b30c3d3d1ac94bf8783cf38a.md) | 32 | `result-track:b30c3d3d1ac94bf8783cf38a3da4abaa59e427dfef2b3c60670990e33fdfacab` |
| 4 | `theorem` | [mulAntidiagonal_mono_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MulAntidiagonal/Variantc04a3a26bd732700662401d206168e49bebf04630feeec4676cf1f0d276088f5.lean/declarations/mulantidiagonal-mono-right--f5157a74cdc56b7d4647bc54.md) | 36 | `result-track:f5157a74cdc56b7d4647bc54370003795462b613056730693c6f6009f86554b1` |
| 5 | `theorem` | [swap_mem_mulAntidiagonal](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MulAntidiagonal/Variantc04a3a26bd732700662401d206168e49bebf04630feeec4676cf1f0d276088f5.lean/declarations/swap-mem-mulantidiagonal--04d98c4180f8c9f7eea74cf5.md) | 43 | `result-track:04d98c4180f8c9f7eea74cf586ed445a47042304685b82b5f52d97a6c7b3b26f` |
| 6 | `theorem` | [swap_mem_mulAntidiagonal_aux](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MulAntidiagonal/Variantc04a3a26bd732700662401d206168e49bebf04630feeec4676cf1f0d276088f5.lean/declarations/swap-mem-mulantidiagonal-aux--83c533adb19064c84af0bd04.md) | 48 | `result-track:83c533adb19064c84af0bd0472fb281b15a54c935f1b165accab7e0aef38012f` |
| 7 | `theorem` | [fst_eq_fst_iff_snd_eq_snd](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MulAntidiagonal/Variantc04a3a26bd732700662401d206168e49bebf04630feeec4676cf1f0d276088f5.lean/declarations/fst-eq-fst-iff-snd-eq-snd--3bcb99dbc3490c41e90bb85b.md) | 63 | `result-track:3bcb99dbc3490c41e90bb85bb8449773d4648b7469d144ca4bd6c502daf476c7` |
| 8 | `theorem` | [eq_of_fst_eq_fst](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MulAntidiagonal/Variantc04a3a26bd732700662401d206168e49bebf04630feeec4676cf1f0d276088f5.lean/declarations/eq-of-fst-eq-fst--ca402a06c3ace0dba179b667.md) | 76 | `result-track:ca402a06c3ace0dba179b667529831bab55ff9b9613c135e2ab5f8029a30e558` |
| 9 | `theorem` | [eq_of_snd_eq_snd](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MulAntidiagonal/Variantc04a3a26bd732700662401d206168e49bebf04630feeec4676cf1f0d276088f5.lean/declarations/eq-of-snd-eq-snd--0484b555304de6743e673a91.md) | 80 | `result-track:0484b555304de6743e673a91bd8f60e4e5f0e6180a72e16fb98ec092cb6c4654` |
| 10 | `theorem` | [eq_of_fst_le_fst_of_snd_le_snd](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MulAntidiagonal/Variantc04a3a26bd732700662401d206168e49bebf04630feeec4676cf1f0d276088f5.lean/declarations/eq-of-fst-le-fst-of-snd-le-snd--c5193fce7a0f35656b445f33.md) | 91 | `result-track:c5193fce7a0f35656b445f338a5a4553e2bfc84801267706f1b2408b59d504f5` |
| 11 | `theorem` | [finite_of_isPWO](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MulAntidiagonal/Variantc04a3a26bd732700662401d206168e49bebf04630feeec4676cf1f0d276088f5.lean/declarations/finite-of-ispwo--726228bdbcb1fc99de9ca118.md) | 101 | `result-track:726228bdbcb1fc99de9ca118027eda3113d5d63b16094a11d2af11fed20113a7` |
| 12 | `theorem` | [finite_of_isWF](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MulAntidiagonal/Variantc04a3a26bd732700662401d206168e49bebf04630feeec4676cf1f0d276088f5.lean/declarations/finite-of-iswf--e93200b9e06fa3ecf9089192.md) | 118 | `result-track:e93200b9e06fa3ecf908919232ea14aa7a4a05f9b2276307a5aa330ee05fc06f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
