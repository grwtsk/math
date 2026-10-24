# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Permutation.Variant079273ed8ec3a0ca9ec95977bff13ff655f30b5e64628b55e7db277bd09aca32

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fc7fd9b470104bfa5b3e4a496b7eaea281a0ac38",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Permutation/Variant079273ed8ec3a0ca9ec95977bff13ff655f30b5e64628b55e7db277bd09aca32.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Permutation/Variant079273ed8ec3a0ca9ec95977bff13ff655f30b5e64628b55e7db277bd09aca32.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Permutation/Variant079273ed8ec3a0ca9ec95977bff13ff655f30b5e64628b55e7db277bd09aca32.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fc7fd9b470104bfa5b3e4a496b7eaea281a0ac38`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Permutation/Variant079273ed8ec3a0ca9ec95977bff13ff655f30b5e64628b55e7db277bd09aca32.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Permutation/Variant079273ed8ec3a0ca9ec95977bff13ff655f30b5e64628b55e7db277bd09aca32.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.List.Join` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [permutationsAux2_fst](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Permutation/Variant079273ed8ec3a0ca9ec95977bff13ff655f30b5e64628b55e7db277bd09aca32.lean/declarations/permutationsaux2-fst--98b8d0f8a6ce8d52d882e654.md) | 54 | `result-track:98b8d0f8a6ce8d52d882e654a952d30c3e791bf4cb85f7e227a8935ef1cf77bd` |
| 2 | `theorem` | [permutationsAux2_snd_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Permutation/Variant079273ed8ec3a0ca9ec95977bff13ff655f30b5e64628b55e7db277bd09aca32.lean/declarations/permutationsaux2-snd-nil--e34275eecd8dcf48fb2ec265.md) | 61 | `result-track:e34275eecd8dcf48fb2ec2659c2550f76aa3312bdf4d38e7ec1f3919beac1339` |
| 3 | `theorem` | [permutationsAux2_snd_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Permutation/Variant079273ed8ec3a0ca9ec95977bff13ff655f30b5e64628b55e7db277bd09aca32.lean/declarations/permutationsaux2-snd-cons--9e3d1a6787ed0573844b82f0.md) | 67 | `result-track:9e3d1a6787ed0573844b82f074678bf5caea6f553740a6a0c262482fafa03ac1` |
| 4 | `theorem` | [permutationsAux2_append](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Permutation/Variant079273ed8ec3a0ca9ec95977bff13ff655f30b5e64628b55e7db277bd09aca32.lean/declarations/permutationsaux2-append--f4ff20eaddba2537bb2d8661.md) | 75 | `result-track:f4ff20eaddba2537bb2d8661b34273633312bda3740ed04d8a81c59f40ae82ec` |
| 5 | `theorem` | [permutationsAux2_comp_append](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Permutation/Variant079273ed8ec3a0ca9ec95977bff13ff655f30b5e64628b55e7db277bd09aca32.lean/declarations/permutationsaux2-comp-append--aff4bfa22b8414c8bae5b163.md) | 81 | `result-track:aff4bfa22b8414c8bae5b163796b9429e0a7d0209873291ae3a17d36ca69de64` |
| 6 | `theorem` | [map_permutationsAux2'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Permutation/Variant079273ed8ec3a0ca9ec95977bff13ff655f30b5e64628b55e7db277bd09aca32.lean/declarations/map-permutationsaux2--bece287dcefc4fe526409b4c.md) | 88 | `result-track:bece287dcefc4fe526409b4c259a46be7d8f494181ef2422cc28cf1bd78e8bb6` |
| 7 | `theorem` | [map_permutationsAux2](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Permutation/Variant079273ed8ec3a0ca9ec95977bff13ff655f30b5e64628b55e7db277bd09aca32.lean/declarations/map-permutationsaux2--8a049ed40b0a1807cfac3b65.md) | 102 | `result-track:8a049ed40b0a1807cfac3b65ffdd878278b5daf15f9e757a419e76fa4d2ec19c` |
| 8 | `theorem` | [permutationsAux2_snd_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Permutation/Variant079273ed8ec3a0ca9ec95977bff13ff655f30b5e64628b55e7db277bd09aca32.lean/declarations/permutationsaux2-snd-eq--92eef3a936e51b84a1591950.md) | 118 | `result-track:92eef3a936e51b84a159195092996b10da8978d4fa76804e1808782e8771bec4` |
| 9 | `theorem` | [map_map_permutationsAux2](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Permutation/Variant079273ed8ec3a0ca9ec95977bff13ff655f30b5e64628b55e7db277bd09aca32.lean/declarations/map-map-permutationsaux2--030f5af20e3bafc19f94e58d.md) | 124 | `result-track:030f5af20e3bafc19f94e58d8b36322ffa2c344be2452047f55704dcaee86348` |
| 10 | `theorem` | [map_map_permutations'Aux](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Permutation/Variant079273ed8ec3a0ca9ec95977bff13ff655f30b5e64628b55e7db277bd09aca32.lean/declarations/map-map-permutations-aux--a72f360a857a9082f65bc5ed.md) | 130 | `result-track:a72f360a857a9082f65bc5ed507c9ae7cdd01504dfb6fa6c2b4a847f9da78cc1` |
| 11 | `theorem` | [permutations'Aux_eq_permutationsAux2](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Permutation/Variant079273ed8ec3a0ca9ec95977bff13ff655f30b5e64628b55e7db277bd09aca32.lean/declarations/permutations-aux-eq-permutationsaux2--739e92c1c10076d668f4d470.md) | 135 | `result-track:739e92c1c10076d668f4d470bf2c81d822a595ce82e68d914bb60e8fc6198644` |
| 12 | `theorem` | [mem_permutationsAux2](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Permutation/Variant079273ed8ec3a0ca9ec95977bff13ff655f30b5e64628b55e7db277bd09aca32.lean/declarations/mem-permutationsaux2--706bc88678515fae4fdcd71e.md) | 143 | `result-track:706bc88678515fae4fdcd71e0a70572b616e12fb6c15adcdfef73d2d56c30398` |
| 13 | `theorem` | [mem_permutationsAux2'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Permutation/Variant079273ed8ec3a0ca9ec95977bff13ff655f30b5e64628b55e7db277bd09aca32.lean/declarations/mem-permutationsaux2--5c4ab006a6ea6a36a9f2d541.md) | 161 | `result-track:5c4ab006a6ea6a36a9f2d541826328f70f2520641fddaaeb4c9d0365b69c3e01` |
| 14 | `theorem` | [length_permutationsAux2](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Permutation/Variant079273ed8ec3a0ca9ec95977bff13ff655f30b5e64628b55e7db277bd09aca32.lean/declarations/length-permutationsaux2--65e7ab6543a142a6a82017ce.md) | 167 | `result-track:65e7ab6543a142a6a82017ce771d32915937aa57f3d0f5bc703fb031ee3f9ddc` |
| 15 | `theorem` | [foldr_permutationsAux2](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Permutation/Variant079273ed8ec3a0ca9ec95977bff13ff655f30b5e64628b55e7db277bd09aca32.lean/declarations/foldr-permutationsaux2--1e72823dc2d115c721a3abf1.md) | 172 | `result-track:1e72823dc2d115c721a3abf14dbcef8629a95f0d750fc23ac00c7170a8fab1ee` |
| 16 | `theorem` | [mem_foldr_permutationsAux2](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Permutation/Variant079273ed8ec3a0ca9ec95977bff13ff655f30b5e64628b55e7db277bd09aca32.lean/declarations/mem-foldr-permutationsaux2--28396d5018db22374e263316.md) | 181 | `result-track:28396d5018db22374e2633167e91179e82d19df5af0c9efd36d2e2a68c04e7a5` |
| 17 | `theorem` | [length_foldr_permutationsAux2](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Permutation/Variant079273ed8ec3a0ca9ec95977bff13ff655f30b5e64628b55e7db277bd09aca32.lean/declarations/length-foldr-permutationsaux2--1cf49255e8149c8bf1967609.md) | 195 | `result-track:1cf49255e8149c8bf1967609b9ecd21dfb1e85b61794b888e80474ee01196401` |
| 18 | `theorem` | [length_foldr_permutationsAux2'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Permutation/Variant079273ed8ec3a0ca9ec95977bff13ff655f30b5e64628b55e7db277bd09aca32.lean/declarations/length-foldr-permutationsaux2--b10976d34cf161b111e50f46.md) | 201 | `result-track:b10976d34cf161b111e50f46b3370897b14b4c668dc25cf7660a3a91db42bf49` |
| 19 | `theorem` | [permutationsAux_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Permutation/Variant079273ed8ec3a0ca9ec95977bff13ff655f30b5e64628b55e7db277bd09aca32.lean/declarations/permutationsaux-nil--3a2aaf6d6de72b3b3c981d96.md) | 213 | `result-track:3a2aaf6d6de72b3b3c981d966e3c145ca2d5af279269b05304053f65a9512dc6` |
| 20 | `theorem` | [permutationsAux_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Permutation/Variant079273ed8ec3a0ca9ec95977bff13ff655f30b5e64628b55e7db277bd09aca32.lean/declarations/permutationsaux-cons--276f51ede52000e4b292f5f9.md) | 218 | `result-track:276f51ede52000e4b292f5f940d83ed1bf4068187955aafa347df3fb388dd150` |
| 21 | `theorem` | [permutations_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Permutation/Variant079273ed8ec3a0ca9ec95977bff13ff655f30b5e64628b55e7db277bd09aca32.lean/declarations/permutations-nil--fe389919d2c397673130c981.md) | 226 | `result-track:fe389919d2c397673130c9815ba990571c98dc30dd4b2ecc2ee8e150339b632c` |
| 22 | `theorem` | [map_permutationsAux](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Permutation/Variant079273ed8ec3a0ca9ec95977bff13ff655f30b5e64628b55e7db277bd09aca32.lean/declarations/map-permutationsaux--b31471da6697bf38ea437443.md) | 230 | `result-track:b31471da6697bf38ea43744307b9e5ad5aec2fcbd32a7bdf48208d1126b24f57` |
| 23 | `theorem` | [map_permutations](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Permutation/Variant079273ed8ec3a0ca9ec95977bff13ff655f30b5e64628b55e7db277bd09aca32.lean/declarations/map-permutations--96cce5dad2cc8b424fad9472.md) | 239 | `result-track:96cce5dad2cc8b424fad9472014df5f7514d65176fa9051aa6ac77f8723d5bf1` |
| 24 | `theorem` | [map_permutations'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Permutation/Variant079273ed8ec3a0ca9ec95977bff13ff655f30b5e64628b55e7db277bd09aca32.lean/declarations/map-permutations--c99306c4e030f31e24cbc2c2.md) | 244 | `result-track:c99306c4e030f31e24cbc2c2eb1ec6336ddb54b00750468e139662e4997139ab` |
| 25 | `theorem` | [permutationsAux_append](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Permutation/Variant079273ed8ec3a0ca9ec95977bff13ff655f30b5e64628b55e7db277bd09aca32.lean/declarations/permutationsaux-append--4bb202a57be2352303cffcc4.md) | 249 | `result-track:4bb202a57be2352303cffcc4b0447a30f6bf8aa15490a35c0e2a24591c968852` |
| 26 | `theorem` | [permutations_append](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Permutation/Variant079273ed8ec3a0ca9ec95977bff13ff655f30b5e64628b55e7db277bd09aca32.lean/declarations/permutations-append--de583811c1870e0250039ec6.md) | 262 | `result-track:de583811c1870e0250039ec618cb21bc1b35a12b051ce9251818c0fe6f8da031` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
