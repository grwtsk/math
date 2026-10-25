# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.ToNat.Variant011f68d9336ac87d11236e9dc3b9a82f6329246c05455fe38193a8d3d60f0e9f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6d55f33ad26f9027d592cc71005a4fabad4d2f4f",
  "lexical_observation_count": 37,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/ToNat/Variant011f68d9336ac87d11236e9dc3b9a82f6329246c05455fe38193a8d3d60f0e9f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/ToNat/Variant011f68d9336ac87d11236e9dc3b9a82f6329246c05455fe38193a8d3d60f0e9f.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/ToNat/Variant011f68d9336ac87d11236e9dc3b9a82f6329246c05455fe38193a8d3d60f0e9f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6d55f33ad26f9027d592cc71005a4fabad4d2f4f`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/ToNat/Variant011f68d9336ac87d11236e9dc3b9a82f6329246c05455fe38193a8d3d60f0e9f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/SetTheory/ToNat/Variant011f68d9336ac87d11236e9dc3b9a82f6329246c05455fe38193a8d3d60f0e9f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.SetTheory.Cardinal.ENat` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [toNat](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/ToNat/Variant011f68d9336ac87d11236e9dc3b9a82f6329246c05455fe38193a8d3d60f0e9f.lean/declarations/tonat--351d68befb653074c57b8b65.md) | 35 | `declaration-track:351d68befb653074c57b8b653ffba16f296172f34f26ca7c3ee88024bc8622b1` |
| 2 | `lemma` | [toNat_toENat](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/ToNat/Variant011f68d9336ac87d11236e9dc3b9a82f6329246c05455fe38193a8d3d60f0e9f.lean/declarations/tonat-toenat--27f6ef09b389785fb9951541.md) | 38 | `result-track:27f6ef09b389785fb995154153cbb828e4347bf9c88bc633e27224abf7ecccd8` |
| 3 | `theorem` | [toNat_ofENat](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/ToNat/Variant011f68d9336ac87d11236e9dc3b9a82f6329246c05455fe38193a8d3d60f0e9f.lean/declarations/tonat-ofenat--bb71ad9e9b4c58035cd73bda.md) | 41 | `result-track:bb71ad9e9b4c58035cd73bda6cb57147b09ce8917694007acff80ef3bf7a3fe9` |
| 4 | `theorem` | [toNat_natCast](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/ToNat/Variant011f68d9336ac87d11236e9dc3b9a82f6329246c05455fe38193a8d3d60f0e9f.lean/declarations/tonat-natcast--4ac73932fb050e91b0bac2ce.md) | 44 | `result-track:4ac73932fb050e91b0bac2ce5fc2def4ba28cd0499aa6db2cd753d5d4401bc3e` |
| 5 | `lemma` | [toNat_eq_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/ToNat/Variant011f68d9336ac87d11236e9dc3b9a82f6329246c05455fe38193a8d3d60f0e9f.lean/declarations/tonat-eq-zero--6075c1c3346bfea31fb4d1c9.md) | 47 | `result-track:6075c1c3346bfea31fb4d1c90bf94d8138703f76c202f8b2d3648d81b29103d6` |
| 6 | `lemma` | [toNat_ne_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/ToNat/Variant011f68d9336ac87d11236e9dc3b9a82f6329246c05455fe38193a8d3d60f0e9f.lean/declarations/tonat-ne-zero--1dd989708c81a0a263e2f0d4.md) | 50 | `result-track:1dd989708c81a0a263e2f0d4f7a4aa7cd438498926552c5e3d492497bbaa3f7d` |
| 7 | `lemma` | [toNat_pos](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/ToNat/Variant011f68d9336ac87d11236e9dc3b9a82f6329246c05455fe38193a8d3d60f0e9f.lean/declarations/tonat-pos--21bc84e9a10fd49fc13ab462.md) | 51 | `result-track:21bc84e9a10fd49fc13ab46237d871074a938c43bac2fe29d715a69d4356cf06` |
| 8 | `theorem` | [cast_toNat_of_lt_aleph0](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/ToNat/Variant011f68d9336ac87d11236e9dc3b9a82f6329246c05455fe38193a8d3d60f0e9f.lean/declarations/cast-tonat-of-lt-aleph0--8e95f64e067d949c3a85150f.md) | 53 | `result-track:8e95f64e067d949c3a85150f5d99952af61c9a77320d0a59e200e7bb4c1a0448` |
| 9 | `theorem` | [toNat_apply_of_lt_aleph0](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/ToNat/Variant011f68d9336ac87d11236e9dc3b9a82f6329246c05455fe38193a8d3d60f0e9f.lean/declarations/tonat-apply-of-lt-aleph0--1253a11fb7eb8b2c811d915a.md) | 57 | `result-track:1253a11fb7eb8b2c811d915a4d48db0baa0d01093c2bdc4115d6ccd2a5c27a20` |
| 10 | `theorem` | [toNat_apply_of_aleph0_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/ToNat/Variant011f68d9336ac87d11236e9dc3b9a82f6329246c05455fe38193a8d3d60f0e9f.lean/declarations/tonat-apply-of-aleph0-le--b558e283617921231eb38717.md) | 62 | `result-track:b558e283617921231eb38717be485b288eeaa9daf9f7f70d8721c56ba04513b5` |
| 11 | `theorem` | [cast_toNat_of_aleph0_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/ToNat/Variant011f68d9336ac87d11236e9dc3b9a82f6329246c05455fe38193a8d3d60f0e9f.lean/declarations/cast-tonat-of-aleph0-le--056e1ed80f095294af77e8c5.md) | 64 | `result-track:056e1ed80f095294af77e8c519dc883f8862c74aaed2e67147529a14174596c2` |
| 12 | `theorem` | [cast_toNat_eq_iff_lt_aleph0](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/ToNat/Variant011f68d9336ac87d11236e9dc3b9a82f6329246c05455fe38193a8d3d60f0e9f.lean/declarations/cast-tonat-eq-iff-lt-aleph0--eda5e000dcd2b7480269a31c.md) | 67 | `result-track:eda5e000dcd2b7480269a31cf119707ea83a63f6bfdb825967e2292c77a48df8` |
| 13 | `theorem` | [toNat_strictMonoOn](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/ToNat/Variant011f68d9336ac87d11236e9dc3b9a82f6329246c05455fe38193a8d3d60f0e9f.lean/declarations/tonat-strictmonoon--7694db316fad66cd2981a69e.md) | 74 | `result-track:7694db316fad66cd2981a69ec0f099b652d7511dd3f6cb195e040d7b6f8b9a71` |
| 14 | `theorem` | [toNat_monotoneOn](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/ToNat/Variant011f68d9336ac87d11236e9dc3b9a82f6329246c05455fe38193a8d3d60f0e9f.lean/declarations/tonat-monotoneon--93109f980974132c2e1fdab2.md) | 78 | `result-track:93109f980974132c2e1fdab2232d17ec050516670a40b51990c281ee2cc04959` |
| 15 | `theorem` | [toNat_injOn](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/ToNat/Variant011f68d9336ac87d11236e9dc3b9a82f6329246c05455fe38193a8d3d60f0e9f.lean/declarations/tonat-injon--47e4dce13662d64e3b9a3c46.md) | 80 | `result-track:47e4dce13662d64e3b9a3c46ca1fa1ee83e2d663654eeaf833e637c9da9c490f` |
| 16 | `theorem` | [toNat_inj_of_lt_aleph0](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/ToNat/Variant011f68d9336ac87d11236e9dc3b9a82f6329246c05455fe38193a8d3d60f0e9f.lean/declarations/tonat-inj-of-lt-aleph0--0416ced994cc513776bd17ce.md) | 84 | `result-track:0416ced994cc513776bd17cef2b280dfdbfb8fcf46934b07732f461008f28d79` |
| 17 | `theorem` | [toNat_le_iff_le_of_lt_aleph0](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/ToNat/Variant011f68d9336ac87d11236e9dc3b9a82f6329246c05455fe38193a8d3d60f0e9f.lean/declarations/tonat-le-iff-le-of-lt-aleph0--5e98ce47017e1cb11cb6f349.md) | 90 | `result-track:5e98ce47017e1cb11cb6f349edfde82c6406c5f8759deb79685f6aa9bad8b0da` |
| 18 | `theorem` | [toNat_lt_iff_lt_of_lt_aleph0](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/ToNat/Variant011f68d9336ac87d11236e9dc3b9a82f6329246c05455fe38193a8d3d60f0e9f.lean/declarations/tonat-lt-iff-lt-of-lt-aleph0--ffe83e61f356269dfe509f86.md) | 94 | `result-track:ffe83e61f356269dfe509f86d9df8aca3a262065e85b076c4cba8b665c9c68b7` |
| 19 | `theorem` | [toNat_le_toNat](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/ToNat/Variant011f68d9336ac87d11236e9dc3b9a82f6329246c05455fe38193a8d3d60f0e9f.lean/declarations/tonat-le-tonat--1cc81323931e72928fa31dcc.md) | 99 | `result-track:1cc81323931e72928fa31dcc7818c015f15150c79ca9f58af8d74827df217023` |
| 20 | `theorem` | [toNat_lt_toNat](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/ToNat/Variant011f68d9336ac87d11236e9dc3b9a82f6329246c05455fe38193a8d3d60f0e9f.lean/declarations/tonat-lt-tonat--c0a7732a9f7ad35435d92a57.md) | 102 | `result-track:c0a7732a9f7ad35435d92a572429fd930b8bbc6ef85a0fb5b5468ce92dc1f8e4` |
| 21 | `theorem` | [toNat_ofNat](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/ToNat/Variant011f68d9336ac87d11236e9dc3b9a82f6329246c05455fe38193a8d3d60f0e9f.lean/declarations/tonat-ofnat--9e452a8c188f30aedabd108a.md) | 106 | `result-track:9e452a8c188f30aedabd108a460df7255539f27ca99edefd6c4a1aa098381d6e` |
| 22 | `theorem` | [toNat_rightInverse](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/ToNat/Variant011f68d9336ac87d11236e9dc3b9a82f6329246c05455fe38193a8d3d60f0e9f.lean/declarations/tonat-rightinverse--bc1ef6a7c373f042fa38917d.md) | 111 | `result-track:bc1ef6a7c373f042fa38917de3e1813cb4966114b9933aa2429d240e2fc8e1d8` |
| 23 | `theorem` | [toNat_surjective](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/ToNat/Variant011f68d9336ac87d11236e9dc3b9a82f6329246c05455fe38193a8d3d60f0e9f.lean/declarations/tonat-surjective--e5eb878946fef51567b24141.md) | 114 | `result-track:e5eb878946fef51567b2414114b0a104874029732a7d26abcb2a40426afb21c4` |
| 24 | `theorem` | [mk_toNat_of_infinite](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/ToNat/Variant011f68d9336ac87d11236e9dc3b9a82f6329246c05455fe38193a8d3d60f0e9f.lean/declarations/mk-tonat-of-infinite--3ed55114c9cf074961a9b987.md) | 118 | `result-track:3ed55114c9cf074961a9b9874c3f49bcac030ecb40b0f8c1092be9aba56d2a16` |
| 25 | `theorem` | [aleph0_toNat](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/ToNat/Variant011f68d9336ac87d11236e9dc3b9a82f6329246c05455fe38193a8d3d60f0e9f.lean/declarations/aleph0-tonat--e6ca2e808ed225694e1cbc4b.md) | 121 | `result-track:e6ca2e808ed225694e1cbc4b45e0d6ee303e1d0253bbf757f302803550b3049e` |
| 26 | `theorem` | [mk_toNat_eq_card](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/ToNat/Variant011f68d9336ac87d11236e9dc3b9a82f6329246c05455fe38193a8d3d60f0e9f.lean/declarations/mk-tonat-eq-card--5270ced8088ba966335b804e.md) | 124 | `result-track:5270ced8088ba966335b804e6cd970a59e328ef95a55da0dabb2f0942bb801f3` |
| 27 | `theorem` | [zero_toNat](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/ToNat/Variant011f68d9336ac87d11236e9dc3b9a82f6329246c05455fe38193a8d3d60f0e9f.lean/declarations/zero-tonat--00e6160f084b54047f5d247a.md) | 127 | `result-track:00e6160f084b54047f5d247ad06c0fcfda1b6dbc78751d7f57e6c6a3b1a43f8c` |
| 28 | `theorem` | [one_toNat](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/ToNat/Variant011f68d9336ac87d11236e9dc3b9a82f6329246c05455fe38193a8d3d60f0e9f.lean/declarations/one-tonat--97925bca985ad2aa4775d71a.md) | 129 | `result-track:97925bca985ad2aa4775d71a0f576a5252e84c6193db566fb5ba911abed8329b` |
| 29 | `theorem` | [toNat_eq_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/ToNat/Variant011f68d9336ac87d11236e9dc3b9a82f6329246c05455fe38193a8d3d60f0e9f.lean/declarations/tonat-eq-iff--bbe2162192438f83f351a422.md) | 131 | `result-track:bbe2162192438f83f351a4224cf26bc003318c85085f696d0c89f462f0528f4a` |
| 30 | `theorem` | [toNat_eq_ofNat](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/ToNat/Variant011f68d9336ac87d11236e9dc3b9a82f6329246c05455fe38193a8d3d60f0e9f.lean/declarations/tonat-eq-ofnat--0044e499d30b7c991dadc03d.md) | 135 | `result-track:0044e499d30b7c991dadc03db6ef908dfc42e301aef61dd22ea9a84ca0ebc43d` |
| 31 | `theorem` | [toNat_eq_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/ToNat/Variant011f68d9336ac87d11236e9dc3b9a82f6329246c05455fe38193a8d3d60f0e9f.lean/declarations/tonat-eq-one--5a39543b945e19f3efa65ed2.md) | 140 | `result-track:5a39543b945e19f3efa65ed22745013a18c9ca5bf309392c6165c38cfd2252b7` |
| 32 | `theorem` | [toNat_eq_one_iff_unique](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/ToNat/Variant011f68d9336ac87d11236e9dc3b9a82f6329246c05455fe38193a8d3d60f0e9f.lean/declarations/tonat-eq-one-iff-unique--3f8c7967d55e15fc6bfdf935.md) | 143 | `result-track:3f8c7967d55e15fc6bfdf935f22a9e901acf628973e839699f6cb537eb90db98` |
| 33 | `theorem` | [toNat_lift](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/ToNat/Variant011f68d9336ac87d11236e9dc3b9a82f6329246c05455fe38193a8d3d60f0e9f.lean/declarations/tonat-lift--277bf2cb5f9b85596a59a17d.md) | 147 | `result-track:277bf2cb5f9b85596a59a17d5e4984c62f0e225fa35d139884529bfa9483a4ea` |
| 34 | `theorem` | [toNat_congr](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/ToNat/Variant011f68d9336ac87d11236e9dc3b9a82f6329246c05455fe38193a8d3d60f0e9f.lean/declarations/tonat-congr--5c20c587b4da8f6d53abd0a8.md) | 150 | `result-track:5c20c587b4da8f6d53abd0a8763320d38266d29f9da61aa961c674b40f0d8eaa` |
| 35 | `theorem` | [toNat_mul](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/ToNat/Variant011f68d9336ac87d11236e9dc3b9a82f6329246c05455fe38193a8d3d60f0e9f.lean/declarations/tonat-mul--6122af5deb51f4ded157bc96.md) | 154 | `result-track:6122af5deb51f4ded157bc96c83ff034ad094762115c1a17601c5af99139c009` |
| 36 | `theorem` | [toNat_add](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/ToNat/Variant011f68d9336ac87d11236e9dc3b9a82f6329246c05455fe38193a8d3d60f0e9f.lean/declarations/tonat-add--fe1a39cedf4d41fa5e303b3c.md) | 157 | `result-track:fe1a39cedf4d41fa5e303b3cf872a3103fe4a7fec2c16dce571695f97ac48e74` |
| 37 | `theorem` | [toNat_lift_add_lift](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/ToNat/Variant011f68d9336ac87d11236e9dc3b9a82f6329246c05455fe38193a8d3d60f0e9f.lean/declarations/tonat-lift-add-lift--490292ec88cb3db366d3ef37.md) | 162 | `result-track:490292ec88cb3db366d3ef372634057c2eb2201540679758492c26aec0fe23d4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
