# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.NoncommProd.Variant551e74acb948c4eedb6863d23c7d5349468dbd924b1a3da54826ac77617065a6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "10bd97808d8f974cf5dea5f9b4db4007d717ba3c",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/NoncommProd/Variant551e74acb948c4eedb6863d23c7d5349468dbd924b1a3da54826ac77617065a6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NoncommProd/Variant551e74acb948c4eedb6863d23c7d5349468dbd924b1a3da54826ac77617065a6.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NoncommProd/Variant551e74acb948c4eedb6863d23c7d5349468dbd924b1a3da54826ac77617065a6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `10bd97808d8f974cf5dea5f9b4db4007d717ba3c`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/NoncommProd/Variant551e74acb948c4eedb6863d23c7d5349468dbd924b1a3da54826ac77617065a6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/NoncommProd/Variant551e74acb948c4eedb6863d23c7d5349468dbd924b1a3da54826ac77617065a6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Fintype.Card` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Hom.Commute` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [noncommFoldr](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NoncommProd/Variant551e74acb948c4eedb6863d23c7d5349468dbd924b1a3da54826ac77617065a6.lean/declarations/noncommfoldr--2703c2d88fa1a9f117c645f4.md) | 42 | `declaration-track:2703c2d88fa1a9f117c645f4fa7e50a67c154a471ae66b1f5aa2eeca8cb33851` |
| 2 | `theorem` | [noncommFoldr_coe](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NoncommProd/Variant551e74acb948c4eedb6863d23c7d5349468dbd924b1a3da54826ac77617065a6.lean/declarations/noncommfoldr-coe--5825b5b868ad101e93cfa31f.md) | 52 | `result-track:5825b5b868ad101e93cfa31fe1ac6d177db027f9cd10a0b9ab0cc1a40128d32a` |
| 3 | `theorem` | [noncommFoldr_empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NoncommProd/Variant551e74acb948c4eedb6863d23c7d5349468dbd924b1a3da54826ac77617065a6.lean/declarations/noncommfoldr-empty--e90c197b518a0e08ab8ed09e.md) | 60 | `result-track:e90c197b518a0e08ab8ed09e35bc24f239d0a873f837c62cc60988b898dcf492` |
| 4 | `theorem` | [noncommFoldr_cons](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NoncommProd/Variant551e74acb948c4eedb6863d23c7d5349468dbd924b1a3da54826ac77617065a6.lean/declarations/noncommfoldr-cons--36509811da7aff7df2d75a78.md) | 64 | `result-track:36509811da7aff7df2d75a78759ae53b6541e7f274492bb2a36ec382224039a1` |
| 5 | `theorem` | [noncommFoldr_eq_foldr](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NoncommProd/Variant551e74acb948c4eedb6863d23c7d5349468dbd924b1a3da54826ac77617065a6.lean/declarations/noncommfoldr-eq-foldr--b022078a7c87f7b554eb3d77.md) | 70 | `result-track:b022078a7c87f7b554eb3d7763b45437afa730eff25c99bf87929ce7b8d9bd5f` |
| 6 | `def` | [noncommFold](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NoncommProd/Variant551e74acb948c4eedb6863d23c7d5349468dbd924b1a3da54826ac77617065a6.lean/declarations/noncommfold--b880ec9c6898df0aaa64360c.md) | 82 | `declaration-track:b880ec9c6898df0aaa64360c39f1d9b73680b9f731a5734365a551cb55b61886` |
| 7 | `theorem` | [noncommFold_coe](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NoncommProd/Variant551e74acb948c4eedb6863d23c7d5349468dbd924b1a3da54826ac77617065a6.lean/declarations/noncommfold-coe--02e9d15c6c085bc2d2f769c0.md) | 88 | `result-track:02e9d15c6c085bc2d2f769c008894fba13fed04c8c1c30e62120730aba5acace` |
| 8 | `theorem` | [noncommFold_empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NoncommProd/Variant551e74acb948c4eedb6863d23c7d5349468dbd924b1a3da54826ac77617065a6.lean/declarations/noncommfold-empty--55eccdb250272c4f3f3e00ce.md) | 93 | `result-track:55eccdb250272c4f3f3e00ce419841f27cc5b7c5702113c657ad7dcf64c55037` |
| 9 | `theorem` | [noncommFold_cons](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NoncommProd/Variant551e74acb948c4eedb6863d23c7d5349468dbd924b1a3da54826ac77617065a6.lean/declarations/noncommfold-cons--3537981077d70a4f283311c2.md) | 97 | `result-track:3537981077d70a4f283311c2986aee12c858183d19a2d47de541ddfcc1538bf1` |
| 10 | `theorem` | [noncommFold_eq_fold](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NoncommProd/Variant551e74acb948c4eedb6863d23c7d5349468dbd924b1a3da54826ac77617065a6.lean/declarations/noncommfold-eq-fold--c36b95d23d216a429740031a.md) | 103 | `result-track:c36b95d23d216a429740031aeb370e13dd2ec409d2344bb92713c26eb00fc731` |
| 11 | `def` | [noncommProd](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NoncommProd/Variant551e74acb948c4eedb6863d23c7d5349468dbd924b1a3da54826ac77617065a6.lean/declarations/noncommprod--8735811e3233e89bbf53655a.md) | 118 | `declaration-track:8735811e3233e89bbf53655a5b28c306ddc320bce2acb0b0afe40cbf76bea0d9` |
| 12 | `theorem` | [noncommProd_coe](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NoncommProd/Variant551e74acb948c4eedb6863d23c7d5349468dbd924b1a3da54826ac77617065a6.lean/declarations/noncommprod-coe--d3e8f8a3706bbf4d464144e0.md) | 124 | `result-track:d3e8f8a3706bbf4d464144e0832a3f8c46b4805b58153aaeb5ee1db5725e700e` |
| 13 | `theorem` | [noncommProd_empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NoncommProd/Variant551e74acb948c4eedb6863d23c7d5349468dbd924b1a3da54826ac77617065a6.lean/declarations/noncommprod-empty--6bbc97d35d0cff1cc30a2ea1.md) | 136 | `result-track:6bbc97d35d0cff1cc30a2ea1c9688d4ecccc1d7ca6a6d65f0cb5c2b86c9402ca` |
| 14 | `theorem` | [noncommProd_cons](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NoncommProd/Variant551e74acb948c4eedb6863d23c7d5349468dbd924b1a3da54826ac77617065a6.lean/declarations/noncommprod-cons--18d4da10f464a45132f1af11.md) | 142 | `result-track:18d4da10f464a45132f1af11a8e06439f10dfa85c61cedf945b98f4af975fc6d` |
| 15 | `theorem` | [noncommProd_cons'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NoncommProd/Variant551e74acb948c4eedb6863d23c7d5349468dbd924b1a3da54826ac77617065a6.lean/declarations/noncommprod-cons--964a751c3068f04692c1d5ba.md) | 150 | `result-track:964a751c3068f04692c1d5ba1b77c5cfd7f911ff3b915bc60658c7d0cd782f42` |
| 16 | `theorem` | [noncommProd_add](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NoncommProd/Variant551e74acb948c4eedb6863d23c7d5349468dbd924b1a3da54826ac77617065a6.lean/declarations/noncommprod-add--7d470e95cb006800576e3d5c.md) | 168 | `result-track:7d470e95cb006800576e3d5c18f186326a6214b1ec040a1cbfa1765f5d5b3e2b` |
| 17 | `theorem` | [noncommProd_map_aux](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NoncommProd/Variant551e74acb948c4eedb6863d23c7d5349468dbd924b1a3da54826ac77617065a6.lean/declarations/noncommprod-map-aux--7cf706a836fbcfa8b9b02cfc.md) | 179 | `result-track:7cf706a836fbcfa8b9b02cfcf19f1d99e24203e1903838fe27ecf5d5a9a956ed` |
| 18 | `theorem` | [noncommProd_map](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NoncommProd/Variant551e74acb948c4eedb6863d23c7d5349468dbd924b1a3da54826ac77617065a6.lean/declarations/noncommprod-map--d57af8e0623dc23d5df6ee5f.md) | 188 | `result-track:d57af8e0623dc23d5df6ee5fa9658706d17aa33014a0195afe09866272e51688` |
| 19 | `theorem` | [noncommProd_eq_pow_card](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NoncommProd/Variant551e74acb948c4eedb6863d23c7d5349468dbd924b1a3da54826ac77617065a6.lean/declarations/noncommprod-eq-pow-card--bf98b006aaaec666ba2d1990.md) | 196 | `result-track:bf98b006aaaec666ba2d199026a0981c4a3eefa93761e0885e10c082fe9cccaa` |
| 20 | `theorem` | [noncommProd_eq_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NoncommProd/Variant551e74acb948c4eedb6863d23c7d5349468dbd924b1a3da54826ac77617065a6.lean/declarations/noncommprod-eq-prod--8f085003931c11eb9ad5020a.md) | 205 | `result-track:8f085003931c11eb9ad5020a78852033b27aaaf25c2f9c0ae6f66f2d88a8b73c` |
| 21 | `theorem` | [noncommProd_commute](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NoncommProd/Variant551e74acb948c4eedb6863d23c7d5349468dbd924b1a3da54826ac77617065a6.lean/declarations/noncommprod-commute--bda55cb75bf2664e8426a398.md) | 213 | `result-track:bda55cb75bf2664e8426a398b7808c2720d97e3904f5044342b1427698ec93b1` |
| 22 | `theorem` | [noncommProd_lemma](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NoncommProd/Variant551e74acb948c4eedb6863d23c7d5349468dbd924b1a3da54826ac77617065a6.lean/declarations/noncommprod-lemma--c12914919363bbcbc17069ff.md) | 230 | `result-track:c12914919363bbcbc17069ff38cd3eee7b8cedf89583e53d1cd9e6c7ebd025c5` |
| 23 | `def` | [noncommProd](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NoncommProd/Variant551e74acb948c4eedb6863d23c7d5349468dbd924b1a3da54826ac77617065a6.lean/declarations/noncommprod--3e2e75d48939186685bca357.md) | 242 | `declaration-track:3e2e75d48939186685bca357fd9dbcafd6d5ead11f236e2a12b221e160f23239` |
| 24 | `theorem` | [noncommProd_congr](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NoncommProd/Variant551e74acb948c4eedb6863d23c7d5349468dbd924b1a3da54826ac77617065a6.lean/declarations/noncommprod-congr--ab56982f6d4696d395172456.md) | 249 | `result-track:ab56982f6d4696d395172456ebfa26e3f879f3d2e0031ba24753ee7da23f0907` |
| 25 | `theorem` | [noncommProd_toFinset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NoncommProd/Variant551e74acb948c4eedb6863d23c7d5349468dbd924b1a3da54826ac77617065a6.lean/declarations/noncommprod-tofinset--48ba8309d3ffac5205afc909.md) | 262 | `result-track:48ba8309d3ffac5205afc909592a98f866922abbb0ff8a3a2b51021eea354aac` |
| 26 | `theorem` | [noncommProd_empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NoncommProd/Variant551e74acb948c4eedb6863d23c7d5349468dbd924b1a3da54826ac77617065a6.lean/declarations/noncommprod-empty--99770450b05df155f09f741d.md) | 270 | `result-track:99770450b05df155f09f741d4254259c226b2f00f70508269a7373f86fd18f6a` |
| 27 | `theorem` | [noncommProd_insert_of_not_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NoncommProd/Variant551e74acb948c4eedb6863d23c7d5349468dbd924b1a3da54826ac77617065a6.lean/declarations/noncommprod-insert-of-not-mem--6767a376aac23d0806a101a8.md) | 276 | `result-track:6767a376aac23d0806a101a835d62e33ace0aefa5f42a7d0811ade31645920de` |
| 28 | `theorem` | [noncommProd_insert_of_not_mem'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NoncommProd/Variant551e74acb948c4eedb6863d23c7d5349468dbd924b1a3da54826ac77617065a6.lean/declarations/noncommprod-insert-of-not-mem--bfc575a5a926036020569e1e.md) | 292 | `result-track:bfc575a5a926036020569e1e1e57d39c3135ab07adcec47103ae3a2b693ec832` |
| 29 | `theorem` | [noncommProd_singleton](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NoncommProd/Variant551e74acb948c4eedb6863d23c7d5349468dbd924b1a3da54826ac77617065a6.lean/declarations/noncommprod-singleton--d01c01bc8357b539942f3fb3.md) | 308 | `result-track:d01c01bc8357b539942f3fb33d116e4913b4db408f46ed37d1ef64d994a5d91f` |
| 30 | `theorem` | [noncommProd_map](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NoncommProd/Variant551e74acb948c4eedb6863d23c7d5349468dbd924b1a3da54826ac77617065a6.lean/declarations/noncommprod-map--876b7dbf0c9834e3507502bc.md) | 318 | `result-track:876b7dbf0c9834e3507502bc005a1b25b30723036a2d6a0c9a8bca883f5540f8` |
| 31 | `theorem` | [noncommProd_eq_pow_card](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NoncommProd/Variant551e74acb948c4eedb6863d23c7d5349468dbd924b1a3da54826ac77617065a6.lean/declarations/noncommprod-eq-pow-card--9ad14622ffa0251d3fdef1db.md) | 326 | `result-track:9ad14622ffa0251d3fdef1db377ca7927b64467f13265563871ea5a425c7c0f8` |
| 32 | `theorem` | [noncommProd_commute](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NoncommProd/Variant551e74acb948c4eedb6863d23c7d5349468dbd924b1a3da54826ac77617065a6.lean/declarations/noncommprod-commute--fa4e31b6d6b9ef578584feca.md) | 335 | `result-track:fa4e31b6d6b9ef578584fecaca238f633408e5561283015f7424a8db846a2453` |
| 33 | `theorem` | [noncommProd_eq_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NoncommProd/Variant551e74acb948c4eedb6863d23c7d5349468dbd924b1a3da54826ac77617065a6.lean/declarations/noncommprod-eq-prod--38c443f2b6035fd4e8a73007.md) | 346 | `result-track:38c443f2b6035fd4e8a73007d11c84b2fddf6a0e4af0d3c67c142d43e765d64a` |
| 34 | `theorem` | [noncommProd_union_of_disjoint](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NoncommProd/Variant551e74acb948c4eedb6863d23c7d5349468dbd924b1a3da54826ac77617065a6.lean/declarations/noncommprod-union-of-disjoint--5ba8e0109835455f7b382160.md) | 357 | `result-track:5ba8e0109835455f7b38216009f33a7893a6abf5b4c19846d3729c51435a9a1b` |
| 35 | `theorem` | [noncommProd_mul_distrib_aux](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NoncommProd/Variant551e74acb948c4eedb6863d23c7d5349468dbd924b1a3da54826ac77617065a6.lean/declarations/noncommprod-mul-distrib-aux--3e0297d4ec070c3da93b83a2.md) | 375 | `result-track:3e0297d4ec070c3da93b83a230e477a5bb9750662b70bbcfeaf6cebc62de3cfc` |
| 36 | `theorem` | [noncommProd_mul_distrib](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NoncommProd/Variant551e74acb948c4eedb6863d23c7d5349468dbd924b1a3da54826ac77617065a6.lean/declarations/noncommprod-mul-distrib--bc0399d98d72a8c8272d4af8.md) | 391 | `result-track:bc0399d98d72a8c8272d4af82721e69dc7212525199b25fad8a37cea2d8e235e` |
| 37 | `theorem` | [noncommProd_mul_single](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NoncommProd/Variant551e74acb948c4eedb6863d23c7d5349468dbd924b1a3da54826ac77617065a6.lean/declarations/noncommprod-mul-single--454a7f3dac728a303f50411b.md) | 416 | `result-track:454a7f3dac728a303f50411b78e78e865f0686a5dae7b110f7245922a35545b0` |
| 38 | `theorem` | [_root_.MonoidHom.pi_ext](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NoncommProd/Variant551e74acb948c4eedb6863d23c7d5349468dbd924b1a3da54826ac77617065a6.lean/declarations/root-monoidhom-pi-ext--48ebf53f0ea3d553e9ac5058.md) | 439 | `result-track:48ebf53f0ea3d553e9ac50584736fa163fb61a8f18d1e88c7094db7371e07108` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
