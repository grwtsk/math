# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Lemmas.Variantb7a454f2f8e11b98fd31a6f22c63214fc655be6e5e1e2986a1c86179034b2780

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5a471fa3bb5c713a0f88a68fe44046c75eb5829c",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Lemmas/Variantb7a454f2f8e11b98fd31a6f22c63214fc655be6e5e1e2986a1c86179034b2780.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lemmas/Variantb7a454f2f8e11b98fd31a6f22c63214fc655be6e5e1e2986a1c86179034b2780.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lemmas/Variantb7a454f2f8e11b98fd31a6f22c63214fc655be6e5e1e2986a1c86179034b2780.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5a471fa3bb5c713a0f88a68fe44046c75eb5829c`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Lemmas/Variantb7a454f2f8e11b98fd31a6f22c63214fc655be6e5e1e2986a1c86179034b2780.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Lemmas/Variantb7a454f2f8e11b98fd31a6f22c63214fc655be6e5e1e2986a1c86179034b2780.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Insert` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Lattice.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [disjoint_iff_inter_eq_empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lemmas/Variantb7a454f2f8e11b98fd31a6f22c63214fc655be6e5e1e2986a1c86179034b2780.lean/declarations/disjoint-iff-inter-eq-empty--567b46fdf76828629f74d639.md) | 51 | `result-track:567b46fdf76828629f74d639cce7ed8f8fe7de871b37c25ec015ce0ac80b4dbf` |
| 2 | `theorem` | [union_empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lemmas/Variantb7a454f2f8e11b98fd31a6f22c63214fc655be6e5e1e2986a1c86179034b2780.lean/declarations/union-empty--e452202902ee0fb1cb6994d1.md) | 57 | `result-track:e452202902ee0fb1cb6994d18531264506f4d795cab760ecb33f07e0504397f8` |
| 3 | `theorem` | [empty_union](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lemmas/Variantb7a454f2f8e11b98fd31a6f22c63214fc655be6e5e1e2986a1c86179034b2780.lean/declarations/empty-union--f8b41e49c95d6bc663ead63f.md) | 61 | `result-track:f8b41e49c95d6bc663ead63f2156692c836ead0211d9cea0e190699a41d763ee` |
| 4 | `theorem` | [Nonempty.inl](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lemmas/Variantb7a454f2f8e11b98fd31a6f22c63214fc655be6e5e1e2986a1c86179034b2780.lean/declarations/nonempty-inl--53be18510fd1ad74eee6fc76.md) | 65 | `result-track:53be18510fd1ad74eee6fc762d1f5553e83404506b2d2d0c29171990a4ca1602` |
| 5 | `theorem` | [Nonempty.inr](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lemmas/Variantb7a454f2f8e11b98fd31a6f22c63214fc655be6e5e1e2986a1c86179034b2780.lean/declarations/nonempty-inr--497151f2a4d785a073f28979.md) | 69 | `result-track:497151f2a4d785a073f289798d78049a68f3e7238b5dd5b4e4adb1e6578996a4` |
| 6 | `theorem` | [insert_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lemmas/Variantb7a454f2f8e11b98fd31a6f22c63214fc655be6e5e1e2986a1c86179034b2780.lean/declarations/insert-eq--571db047809d44e0e545410e.md) | 72 | `result-track:571db047809d44e0e545410e669d5b94b25e4b4d3ea9dcbe8b69353af856926c` |
| 7 | `theorem` | [insert_union](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lemmas/Variantb7a454f2f8e11b98fd31a6f22c63214fc655be6e5e1e2986a1c86179034b2780.lean/declarations/insert-union--a22716749e30008de737377b.md) | 76 | `result-track:a22716749e30008de737377b643d80c1ff0883637e0ea91075f3600609584be0` |
| 8 | `theorem` | [union_insert](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lemmas/Variantb7a454f2f8e11b98fd31a6f22c63214fc655be6e5e1e2986a1c86179034b2780.lean/declarations/union-insert--31e3ddc9870e082b25fa0834.md) | 80 | `result-track:31e3ddc9870e082b25fa083436ef5b51e8dbdca19711c6173df58a0ce058433b` |
| 9 | `theorem` | [insert_union_distrib](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lemmas/Variantb7a454f2f8e11b98fd31a6f22c63214fc655be6e5e1e2986a1c86179034b2780.lean/declarations/insert-union-distrib--32decddcef846ac4ae396cc2.md) | 83 | `result-track:32decddcef846ac4ae396cc2ec7df6cd49cc1b06ca537c7712d8fa589f3efe54` |
| 10 | `theorem` | [induction_on_union](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lemmas/Variantb7a454f2f8e11b98fd31a6f22c63214fc655be6e5e1e2986a1c86179034b2780.lean/declarations/induction-on-union--5f2de00b49c4dcefd9b51476.md) | 93 | `result-track:5f2de00b49c4dcefd9b514768c853734051887d341f3bb0f722183971c4a3c86` |
| 11 | `theorem` | [inter_empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lemmas/Variantb7a454f2f8e11b98fd31a6f22c63214fc655be6e5e1e2986a1c86179034b2780.lean/declarations/inter-empty--e6604ca06c176091fc492417.md) | 107 | `result-track:e6604ca06c176091fc492417b0b9a63ef02d43e576f4f9f8cf98dcff576717ff` |
| 12 | `theorem` | [empty_inter](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lemmas/Variantb7a454f2f8e11b98fd31a6f22c63214fc655be6e5e1e2986a1c86179034b2780.lean/declarations/empty-inter--cdaca5d125657b2750a67dcb.md) | 111 | `result-track:cdaca5d125657b2750a67dcba3cb2da81f41331b29089e825d1c4579c7e574ad` |
| 13 | `theorem` | [insert_inter_of_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lemmas/Variantb7a454f2f8e11b98fd31a6f22c63214fc655be6e5e1e2986a1c86179034b2780.lean/declarations/insert-inter-of-mem--69573f212bf578c75a5c7d03.md) | 115 | `result-track:69573f212bf578c75a5c7d03c49204ff43cf1e28396b21446533089b5ee56a22` |
| 14 | `theorem` | [inter_insert_of_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lemmas/Variantb7a454f2f8e11b98fd31a6f22c63214fc655be6e5e1e2986a1c86179034b2780.lean/declarations/inter-insert-of-mem--bf0833c64a2ca6e590c0a3c1.md) | 122 | `result-track:bf0833c64a2ca6e590c0a3c18e59c56d7a23d2ab0d669d083f606781656e8fe7` |
| 15 | `theorem` | [insert_inter_of_notMem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lemmas/Variantb7a454f2f8e11b98fd31a6f22c63214fc655be6e5e1e2986a1c86179034b2780.lean/declarations/insert-inter-of-notmem--ebabda3a38871a61fa613f1c.md) | 126 | `result-track:ebabda3a38871a61fa613f1c728106f4edb0846bc2b86d2f818911938acaeba4` |
| 16 | `theorem` | [inter_insert_of_notMem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lemmas/Variantb7a454f2f8e11b98fd31a6f22c63214fc655be6e5e1e2986a1c86179034b2780.lean/declarations/inter-insert-of-notmem--bbedfc68e42ad5e432aeff21.md) | 135 | `result-track:bbedfc68e42ad5e432aeff219c61d174b0c6f99bdec118200ce521200a456390` |
| 17 | `theorem` | [singleton_inter_of_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lemmas/Variantb7a454f2f8e11b98fd31a6f22c63214fc655be6e5e1e2986a1c86179034b2780.lean/declarations/singleton-inter-of-mem--c07a34dfb4b04a55dc6b1380.md) | 141 | `result-track:c07a34dfb4b04a55dc6b13809bd2758b18f9723c2e2fda437e792039acc3977c` |
| 18 | `theorem` | [singleton_inter_of_notMem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lemmas/Variantb7a454f2f8e11b98fd31a6f22c63214fc655be6e5e1e2986a1c86179034b2780.lean/declarations/singleton-inter-of-notmem--52498faf107b8f014ed06d73.md) | 145 | `result-track:52498faf107b8f014ed06d73e260a2090b6f27371c184a1588fc2d3c75a1d241` |
| 19 | `lemma` | [singleton_inter](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lemmas/Variantb7a454f2f8e11b98fd31a6f22c63214fc655be6e5e1e2986a1c86179034b2780.lean/declarations/singleton-inter--4cfe087fc5a7469dd32dfb3c.md) | 151 | `result-track:4cfe087fc5a7469dd32dfb3c5921abb4e63bf282d4302411e8d0ef637a50e967` |
| 20 | `theorem` | [inter_singleton_of_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lemmas/Variantb7a454f2f8e11b98fd31a6f22c63214fc655be6e5e1e2986a1c86179034b2780.lean/declarations/inter-singleton-of-mem--670177ae49008bc9c7e8e487.md) | 156 | `result-track:670177ae49008bc9c7e8e4874d6d25859795d718524162877934249da96baadf` |
| 21 | `theorem` | [inter_singleton_of_notMem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lemmas/Variantb7a454f2f8e11b98fd31a6f22c63214fc655be6e5e1e2986a1c86179034b2780.lean/declarations/inter-singleton-of-notmem--ac33299de85bcbd9193baa67.md) | 160 | `result-track:ac33299de85bcbd9193baa67c0fa82e68bd275a10567e5bedbe502319ffb648c` |
| 22 | `lemma` | [inter_singleton](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lemmas/Variantb7a454f2f8e11b98fd31a6f22c63214fc655be6e5e1e2986a1c86179034b2780.lean/declarations/inter-singleton--9d05f11bf5a92f5e1cd7287d.md) | 165 | `result-track:9d05f11bf5a92f5e1cd7287d046c518404c6cdc22679a82bf03746d9438295e1` |
| 23 | `lemma` | [union_eq_empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lemmas/Variantb7a454f2f8e11b98fd31a6f22c63214fc655be6e5e1e2986a1c86179034b2780.lean/declarations/union-eq-empty--b6ff219be1981fc57415a00c.md) | 169 | `result-track:b6ff219be1981fc57415a00c53f98de1b9cd5bd7bb297b00351c42270c42bba3` |
| 24 | `lemma` | [union_nonempty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lemmas/Variantb7a454f2f8e11b98fd31a6f22c63214fc655be6e5e1e2986a1c86179034b2780.lean/declarations/union-nonempty--678cc753f8fa3386d174c378.md) | 170 | `result-track:678cc753f8fa3386d174c378e69160c2a2f4d45214868c48bdb287b819e67bdf` |
| 25 | `theorem` | [insert_union_comm](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lemmas/Variantb7a454f2f8e11b98fd31a6f22c63214fc655be6e5e1e2986a1c86179034b2780.lean/declarations/insert-union-comm--6255515c49dfe2fb309030a5.md) | 173 | `result-track:6255515c49dfe2fb309030a544db5e8788ce414b8eea0c9a9f06c35c4613e4a9` |
| 26 | `theorem` | [toFinset_append](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lemmas/Variantb7a454f2f8e11b98fd31a6f22c63214fc655be6e5e1e2986a1c86179034b2780.lean/declarations/tofinset-append--17b4146ae1f0a6dad0e0cbd0.md) | 185 | `result-track:17b4146ae1f0a6dad0e0cbd0b209b05fd5a4a0657009001dc6eb356bd38b4394` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
