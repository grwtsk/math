# Verification target: GRWTSK.Algebra.LinearAlgebra.Rank.Variant966fc8729d473eb71f1cd548279525231d0e46220af93801b15033c578cfc161

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "17330a5d6a6f0ed1ce8b747a5fc95256d95f5e3b",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Rank/Variant966fc8729d473eb71f1cd548279525231d0e46220af93801b15033c578cfc161.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Variant966fc8729d473eb71f1cd548279525231d0e46220af93801b15033c578cfc161.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Variant966fc8729d473eb71f1cd548279525231d0e46220af93801b15033c578cfc161.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `17330a5d6a6f0ed1ce8b747a5fc95256d95f5e3b`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Rank/Variant966fc8729d473eb71f1cd548279525231d0e46220af93801b15033c578cfc161.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Rank/Variant966fc8729d473eb71f1cd548279525231d0e46220af93801b15033c578cfc161.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [PrimeSpectrum.rankAtStalk_pos_iff_mem_range_comap](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Variant966fc8729d473eb71f1cd548279525231d0e46220af93801b15033c578cfc161.lean/declarations/primespectrum-rankatstalk-pos-iff-mem-range-comap--f871be4af0b987c81beb5bcf.md) | 44 | `result-track:f871be4af0b987c81beb5bcf4dacea4995ccc7cf2db734dd598de9ca0d2496eb` |
| 2 | `lemma` | [PrimeSpectrum.rankAtStalk_pos_iff_comap_surjective](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Variant966fc8729d473eb71f1cd548279525231d0e46220af93801b15033c578cfc161.lean/declarations/primespectrum-rankatstalk-pos-iff-comap-surjective--c339bfa288fee0bafc8fc375.md) | 50 | `result-track:c339bfa288fee0bafc8fc3758773fac9ada914245e9b4d3dd18396b5f32e6ed7` |
| 3 | `lemma` | [PrimeSpectrum.comap_surjective_iff_injective_of_finite](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Variant966fc8729d473eb71f1cd548279525231d0e46220af93801b15033c578cfc161.lean/declarations/primespectrum-comap-surjective-iff-injective-of-finite--3ab501a091e183b9ed494269.md) | 57 | `result-track:3ab501a091e183b9ed49426908336ba1c01a0b03dd588025a90f4999146a9b52` |
| 4 | `lemma` | [Module.rankAtStalk_pos_iff_algebraMap_injective](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Variant966fc8729d473eb71f1cd548279525231d0e46220af93801b15033c578cfc161.lean/declarations/module-rankatstalk-pos-iff-algebramap-injective--96507e8345bdcff0ed61cb6f.md) | 76 | `result-track:96507e8345bdcff0ed61cb6fe8fade35cf72af61a7c8cf5b07e11bd38f1d0f76` |
| 5 | `lemma` | [Module.algebraMap_surjective_of_rankAtStalk_le_one](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Variant966fc8729d473eb71f1cd548279525231d0e46220af93801b15033c578cfc161.lean/declarations/module-algebramap-surjective-of-rankatstalk-le-one--bb1dda5416d9ce8d10e06cbb.md) | 82 | `result-track:bb1dda5416d9ce8d10e06cbba8e9f25271073bb78777d7565081a0985127d7bd` |
| 6 | `lemma` | [Module.Flat.tfae_algebraMap_surjective](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Variant966fc8729d473eb71f1cd548279525231d0e46220af93801b15033c578cfc161.lean/declarations/module-flat-tfae-algebramap-surjective--60597a6f2ba009c607851916.md) | 99 | `result-track:60597a6f2ba009c607851916d393b24a52a685e79f2babec56fc61cb983b5c34` |
| 7 | `lemma` | [Module.rankAtStalk_le_one_iff_surjective](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Variant966fc8729d473eb71f1cd548279525231d0e46220af93801b15033c578cfc161.lean/declarations/module-rankatstalk-le-one-iff-surjective--91e506344b263abf4b3b0874.md) | 114 | `result-track:91e506344b263abf4b3b087488443381362877f4acfa102c994854a0206774b6` |
| 8 | `lemma` | [Module.algebraMap_bijective_iff_rankAtStalk](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Variant966fc8729d473eb71f1cd548279525231d0e46220af93801b15033c578cfc161.lean/declarations/module-algebramap-bijective-iff-rankatstalk--8ca7ae0fb6be5b2f4a1b6b90.md) | 120 | `result-track:8ca7ae0fb6be5b2f4a1b6b9089508738f4db2b880a18d50c83f5a3d281a09dc0` |
| 9 | `def` | [RingHom.finrank](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Variant966fc8729d473eb71f1cd548279525231d0e46220af93801b15033c578cfc161.lean/declarations/ringhom-finrank--1a17a195beba176ff7e331ac.md) | 138 | `declaration-track:1a17a195beba176ff7e331ac5ec14df283339a1f1a08b6dea3d503d4d0d01036` |
| 10 | `lemma` | [RingHom.finrank_algebraMap](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Variant966fc8729d473eb71f1cd548279525231d0e46220af93801b15033c578cfc161.lean/declarations/ringhom-finrank-algebramap--3c5bffaa418c92bbc06b4e7e.md) | 144 | `result-track:3c5bffaa418c92bbc06b4e7ee9eed3bd8465fd048456d7a00ee5bf1560f37cb7` |
| 11 | `lemma` | [Algebra.rankAtStalk_eq_of_isPushout](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Variant966fc8729d473eb71f1cd548279525231d0e46220af93801b15033c578cfc161.lean/declarations/algebra-rankatstalk-eq-of-ispushout--5bedc3e38e4d2af439bbdc9d.md) | 149 | `result-track:5bedc3e38e4d2af439bbdc9d265d6257e491892f91083b9af97c5d73d59b0373` |
| 12 | `lemma` | [RingHom.finrank_comp_left_of_bijective](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Variant966fc8729d473eb71f1cd548279525231d0e46220af93801b15033c578cfc161.lean/declarations/ringhom-finrank-comp-left-of-bijective--39a9b781699eddc896bab643.md) | 159 | `result-track:39a9b781699eddc896bab6430d8645c6a7df93bb7c955482c921d181b9cf037f` |
| 13 | `lemma` | [RingHom.finrank_comp_right_of_bijective](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Variant966fc8729d473eb71f1cd548279525231d0e46220af93801b15033c578cfc161.lean/declarations/ringhom-finrank-comp-right-of-bijective--5e3e21e4a226c19323ac015c.md) | 167 | `result-track:5e3e21e4a226c19323ac015cf776d41670b02d12533c901ae81503f0e705a8e5` |
| 14 | `lemma` | [CommRingCat.finrank_eq_of_isPushout](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Variant966fc8729d473eb71f1cd548279525231d0e46220af93801b15033c578cfc161.lean/declarations/commringcat-finrank-eq-of-ispushout--f11340c117ed266f886ccb27.md) | 179 | `result-track:f11340c117ed266f886ccb276cefc319307ec09f51eaa91dffddfe216c126616` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
