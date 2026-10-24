# Verification target: GRWTSK.Algebra.SurjectiveOnStalks.Variantedf80480a298f69be52c5151d31f56b4846d7bc7e69933c0c87df8963a22f760

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a52cb1e1a4d7623a21c0012066e90a700a03e934",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/SurjectiveOnStalks/Variantedf80480a298f69be52c5151d31f56b4846d7bc7e69933c0c87df8963a22f760.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/SurjectiveOnStalks/Variantedf80480a298f69be52c5151d31f56b4846d7bc7e69933c0c87df8963a22f760.lean/index.md) · [Full source](../../../../mathematics/Algebra/SurjectiveOnStalks/Variantedf80480a298f69be52c5151d31f56b4846d7bc7e69933c0c87df8963a22f760.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a52cb1e1a4d7623a21c0012066e90a700a03e934`.

Source path: `GRWTSK/Algebra/SurjectiveOnStalks/Variantedf80480a298f69be52c5151d31f56b4846d7bc7e69933c0c87df8963a22f760.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/SurjectiveOnStalks/Variantedf80480a298f69be52c5151d31f56b4846d7bc7e69933c0c87df8963a22f760.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Localization.AtPrime` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.TensorProduct.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [SurjectiveOnStalks](../../../../mathematics/Algebra/SurjectiveOnStalks/Variantedf80480a298f69be52c5151d31f56b4846d7bc7e69933c0c87df8963a22f760.lean/declarations/surjectiveonstalks--81e043fb46b1a2ea44265dca.md) | 39 | `declaration-track:81e043fb46b1a2ea44265dca8a4d94653d0b575adb60f27d55ac9fae6b010871` |
| 2 | `lemma` | [surjective_localRingHom_iff](../../../../mathematics/Algebra/SurjectiveOnStalks/Variantedf80480a298f69be52c5151d31f56b4846d7bc7e69933c0c87df8963a22f760.lean/declarations/surjective-localringhom-iff--972ed8040f8c95c0ff14e133.md) | 47 | `result-track:972ed8040f8c95c0ff14e1330dd43835fb2147e40c06e034ca6d8eb8229f4eb2` |
| 3 | `lemma` | [surjectiveOnStalks_iff_forall_ideal](../../../../mathematics/Algebra/SurjectiveOnStalks/Variantedf80480a298f69be52c5151d31f56b4846d7bc7e69933c0c87df8963a22f760.lean/declarations/surjectiveonstalks-iff-forall-ideal--7f504da16a79a7e67c90e828.md) | 71 | `result-track:7f504da16a79a7e67c90e828876fee7607834485dc4771eeae6326d43e2f6367` |
| 4 | `lemma` | [surjectiveOnStalks_iff_forall_maximal](../../../../mathematics/Algebra/SurjectiveOnStalks/Variantedf80480a298f69be52c5151d31f56b4846d7bc7e69933c0c87df8963a22f760.lean/declarations/surjectiveonstalks-iff-forall-maximal--c6065f8142bd88f60929b1e0.md) | 80 | `result-track:c6065f8142bd88f60929b1e0e916212ace0a427e48350484d63cefa7d0d95eff` |
| 5 | `lemma` | [surjectiveOnStalks_iff_forall_maximal'](../../../../mathematics/Algebra/SurjectiveOnStalks/Variantedf80480a298f69be52c5151d31f56b4846d7bc7e69933c0c87df8963a22f760.lean/declarations/surjectiveonstalks-iff-forall-maximal--20553dee6d1f37173d2cabac.md) | 90 | `result-track:20553dee6d1f37173d2cabac5093a82a97bed3841ffdbc95699ab39e611f1c40` |
| 6 | `lemma` | [surjectiveOnStalks_of_exists_div](../../../../mathematics/Algebra/SurjectiveOnStalks/Variantedf80480a298f69be52c5151d31f56b4846d7bc7e69933c0c87df8963a22f760.lean/declarations/surjectiveonstalks-of-exists-div--366bafc000e6ba7f2fd12257.md) | 95 | `result-track:366bafc000e6ba7f2fd12257a20077e730ad87a4e1b0b909383c543659cb66ab` |
| 7 | `lemma` | [surjectiveOnStalks_of_surjective](../../../../mathematics/Algebra/SurjectiveOnStalks/Variantedf80480a298f69be52c5151d31f56b4846d7bc7e69933c0c87df8963a22f760.lean/declarations/surjectiveonstalks-of-surjective--07b85d6a3564ef15493f6742.md) | 101 | `result-track:07b85d6a3564ef15493f6742f241b13f0a59122972b68a5170551e18dced680a` |
| 8 | `lemma` | [SurjectiveOnStalks.comp](../../../../mathematics/Algebra/SurjectiveOnStalks/Variantedf80480a298f69be52c5151d31f56b4846d7bc7e69933c0c87df8963a22f760.lean/declarations/surjectiveonstalks-comp--24b0f192e34f0b702ad968c5.md) | 107 | `result-track:24b0f192e34f0b702ad968c549feba082e9d47e4c68cddf846e518506ed7c874` |
| 9 | `lemma` | [SurjectiveOnStalks.of_comp](../../../../mathematics/Algebra/SurjectiveOnStalks/Variantedf80480a298f69be52c5151d31f56b4846d7bc7e69933c0c87df8963a22f760.lean/declarations/surjectiveonstalks-of-comp--048236f254110d61b58f62f4.md) | 113 | `result-track:048236f254110d61b58f62f4c1f424dd845e89c0c4f1b9179e75b4158b07c4b2` |
| 10 | `lemma` | [SurjectiveOnStalks.exists_mul_eq_tmul](../../../../mathematics/Algebra/SurjectiveOnStalks/Variantedf80480a298f69be52c5151d31f56b4846d7bc7e69933c0c87df8963a22f760.lean/declarations/surjectiveonstalks-exists-mul-eq-tmul--13a83e152067ef133b505242.md) | 130 | `result-track:13a83e152067ef133b505242e639ee22d212ef4471842d61866bc275e1b3f15e` |
| 11 | `lemma` | [surjectiveOnStalks_of_isLocalization](../../../../mathematics/Algebra/SurjectiveOnStalks/Variantedf80480a298f69be52c5151d31f56b4846d7bc7e69933c0c87df8963a22f760.lean/declarations/surjectiveonstalks-of-islocalization--96c865156530bf8f52d4ee81.md) | 158 | `result-track:96c865156530bf8f52d4ee81b71bc245a48fb514622b37d8583767e8d95dacf0` |
| 12 | `lemma` | [SurjectiveOnStalks.baseChange](../../../../mathematics/Algebra/SurjectiveOnStalks/Variantedf80480a298f69be52c5151d31f56b4846d7bc7e69933c0c87df8963a22f760.lean/declarations/surjectiveonstalks-basechange--fc63e19a4916b1bb6e4f0aea.md) | 165 | `result-track:fc63e19a4916b1bb6e4f0aeafb09d6012c65e6ccea1a7f5588d08b8a177d4657` |
| 13 | `lemma` | [surjectiveOnStalks_iff_of_isLocalHom](../../../../mathematics/Algebra/SurjectiveOnStalks/Variantedf80480a298f69be52c5151d31f56b4846d7bc7e69933c0c87df8963a22f760.lean/declarations/surjectiveonstalks-iff-of-islocalhom--cfea29eee8c02bbd973fc812.md) | 185 | `result-track:cfea29eee8c02bbd973fc8125a2b178b0daf1a6dfa374f6cb73d9bb1f7664845` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
