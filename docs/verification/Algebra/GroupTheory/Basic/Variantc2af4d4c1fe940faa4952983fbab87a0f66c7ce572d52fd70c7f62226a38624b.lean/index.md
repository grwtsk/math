# Verification target: GRWTSK.Algebra.GroupTheory.Basic.Variantc2af4d4c1fe940faa4952983fbab87a0f66c7ce572d52fd70c7f62226a38624b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d85f2ddaf80287ce7eb5aadc1aa740424c96c8cd",
  "lexical_observation_count": 45,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Basic/Variantc2af4d4c1fe940faa4952983fbab87a0f66c7ce572d52fd70c7f62226a38624b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantc2af4d4c1fe940faa4952983fbab87a0f66c7ce572d52fd70c7f62226a38624b.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantc2af4d4c1fe940faa4952983fbab87a0f66c7ce572d52fd70c7f62226a38624b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d85f2ddaf80287ce7eb5aadc1aa740424c96c8cd`.

Source path: `GRWTSK/Algebra/GroupTheory/Basic/Variantc2af4d4c1fe940faa4952983fbab87a0f66c7ce572d52fd70c7f62226a38624b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Basic/Variantc2af4d4c1fe940faa4952983fbab87a0f66c7ce572d52fd70c7f62226a38624b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Fintype.Card` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.GroupAction.Defs` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.GroupAction.Group` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Setoid.Basic` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Pointwise.SMul` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Subgroup.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [orbit](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantc2af4d4c1fe940faa4952983fbab87a0f66c7ce572d52fd70c7f62226a38624b.lean/declarations/orbit--65b351e833eb54f50f1248f0.md) | 44 | `declaration-track:65b351e833eb54f50f1248f08f9bf08da4004ec587675cf6b1440bfcfc6e7146` |
| 2 | `theorem` | [mem_orbit_iff](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantc2af4d4c1fe940faa4952983fbab87a0f66c7ce572d52fd70c7f62226a38624b.lean/declarations/mem-orbit-iff--7e53e566c97f4a3825b42b28.md) | 52 | `result-track:7e53e566c97f4a3825b42b287f3fafac828b237d270b7ccadf1a64e0ddb8aeba` |
| 3 | `theorem` | [mem_orbit](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantc2af4d4c1fe940faa4952983fbab87a0f66c7ce572d52fd70c7f62226a38624b.lean/declarations/mem-orbit--6f2e26d4e6f6962546f422af.md) | 58 | `result-track:6f2e26d4e6f6962546f422afdfd4565c908928137469cd9c64671abcdc0be198` |
| 4 | `theorem` | [mem_orbit_self](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantc2af4d4c1fe940faa4952983fbab87a0f66c7ce572d52fd70c7f62226a38624b.lean/declarations/mem-orbit-self--bb10f41f88d3768b4502bace.md) | 64 | `result-track:bb10f41f88d3768b4502bacee0906070e42a7023f464e045014f7ece634deade` |
| 5 | `theorem` | [orbit_nonempty](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantc2af4d4c1fe940faa4952983fbab87a0f66c7ce572d52fd70c7f62226a38624b.lean/declarations/orbit-nonempty--89f7b60a63841571fa80fabb.md) | 70 | `result-track:89f7b60a63841571fa80fabb431ce25b799dfad17fc02f083668b32fc8fab66b` |
| 6 | `theorem` | [mapsTo_smul_orbit](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantc2af4d4c1fe940faa4952983fbab87a0f66c7ce572d52fd70c7f62226a38624b.lean/declarations/mapsto-smul-orbit--0402aa73d51022ba38a160dd.md) | 76 | `result-track:0402aa73d51022ba38a160dd067d7ac76ba07792e14151bc0a39c144a8d6e8b1` |
| 7 | `theorem` | [smul_orbit_subset](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantc2af4d4c1fe940faa4952983fbab87a0f66c7ce572d52fd70c7f62226a38624b.lean/declarations/smul-orbit-subset--6f4d43860d011dff8a2104bc.md) | 82 | `result-track:6f4d43860d011dff8a2104bc135af40b3d80771bdd257bb826889617403dd450` |
| 8 | `theorem` | [orbit_smul_subset](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantc2af4d4c1fe940faa4952983fbab87a0f66c7ce572d52fd70c7f62226a38624b.lean/declarations/orbit-smul-subset--78ab59b38d919659ee0e1398.md) | 88 | `result-track:78ab59b38d919659ee0e13987705f6a466f5e4f95cb14e857b42f7785a9141e3` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantc2af4d4c1fe940faa4952983fbab87a0f66c7ce572d52fd70c7f62226a38624b.lean/declarations/instance--f2ef0413a1d04a05f242e553.md) | 94 | `declaration-track:f2ef0413a1d04a05f242e5535abd4dcbd5eafc942874dc80fe318bd0ffc3eebb` |
| 10 | `theorem` | [orbit.coe_smul](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantc2af4d4c1fe940faa4952983fbab87a0f66c7ce572d52fd70c7f62226a38624b.lean/declarations/orbit-coe-smul--b962af890d4790cb2ffa6830.md) | 100 | `result-track:b962af890d4790cb2ffa6830f971de27cc18dd92f215b20697062172da2ccfcc` |
| 11 | `def` | [fixedPoints](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantc2af4d4c1fe940faa4952983fbab87a0f66c7ce572d52fd70c7f62226a38624b.lean/declarations/fixedpoints--bef1b00285e4659805f65ac0.md) | 109 | `declaration-track:bef1b00285e4659805f65ac069c799421e6aee9d55ad981a9dd8ff553a71eb04` |
| 12 | `def` | [fixedBy](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantc2af4d4c1fe940faa4952983fbab87a0f66c7ce572d52fd70c7f62226a38624b.lean/declarations/fixedby--9a3a3d3fd8c3c3b9ac03f1f8.md) | 116 | `declaration-track:9a3a3d3fd8c3c3b9ac03f1f88a1bc77292aa0b32e9c8bd45c904ba7f813ed90a` |
| 13 | `theorem` | [fixed_eq_iInter_fixedBy](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantc2af4d4c1fe940faa4952983fbab87a0f66c7ce572d52fd70c7f62226a38624b.lean/declarations/fixed-eq-iinter-fixedby--3f42ae06cb8ab5559a3dc788.md) | 122 | `result-track:3f42ae06cb8ab5559a3dc78879c5d3a29ea0c90fc954b748e1bd7c030ebe4685` |
| 14 | `theorem` | [mem_fixedPoints](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantc2af4d4c1fe940faa4952983fbab87a0f66c7ce572d52fd70c7f62226a38624b.lean/declarations/mem-fixedpoints--704ac5009e7c498d1e54b6d4.md) | 131 | `result-track:704ac5009e7c498d1e54b6d449ce8bfe9e4fae13ca90ce0e1d2330cbdc3611b9` |
| 15 | `theorem` | [mem_fixedBy](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantc2af4d4c1fe940faa4952983fbab87a0f66c7ce572d52fd70c7f62226a38624b.lean/declarations/mem-fixedby--c12bd24fd2d6353af4679ad0.md) | 137 | `result-track:c12bd24fd2d6353af4679ad0fc73e2f95b61f04f75aa94ad57cd423748d0b4c8` |
| 16 | `theorem` | [mem_fixedPoints'](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantc2af4d4c1fe940faa4952983fbab87a0f66c7ce572d52fd70c7f62226a38624b.lean/declarations/mem-fixedpoints--bc33c258d4bf4cba5709ea87.md) | 143 | `result-track:bc33c258d4bf4cba5709ea875eddfe572033926e264d362e3cbac9d0df03c118` |
| 17 | `def` | [Stabilizer.submonoid](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantc2af4d4c1fe940faa4952983fbab87a0f66c7ce572d52fd70c7f62226a38624b.lean/declarations/stabilizer-submonoid--81cbb96b67818b74695c873f.md) | 155 | `declaration-track:81cbb96b67818b74695c873ff6e5e00153623c5e0f27cff84400257827ac16d5` |
| 18 | `theorem` | [mem_stabilizer_submonoid_iff](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantc2af4d4c1fe940faa4952983fbab87a0f66c7ce572d52fd70c7f62226a38624b.lean/declarations/mem-stabilizer-submonoid-iff--e08bfeab33218a450022fdab.md) | 164 | `result-track:e08bfeab33218a450022fdabead0dd97e7d5a76921e7e82188785192a047a5a1` |
| 19 | `theorem` | [orbit_eq_univ](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantc2af4d4c1fe940faa4952983fbab87a0f66c7ce572d52fd70c7f62226a38624b.lean/declarations/orbit-eq-univ--eef979b378b0023b0407f459.md) | 170 | `result-track:eef979b378b0023b0407f459c90fe9a0ee1467c1d85169018772b5d88f4e4ba6` |
| 20 | `theorem` | [mem_fixedPoints_iff_card_orbit_eq_one](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantc2af4d4c1fe940faa4952983fbab87a0f66c7ce572d52fd70c7f62226a38624b.lean/declarations/mem-fixedpoints-iff-card-orbit-eq-one--8ea87e77d985094fe4c47116.md) | 178 | `result-track:8ea87e77d985094fe4c47116caa0174058bdd42c26ad3bcf628d15d3c6837ec5` |
| 21 | `def` | [stabilizer](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantc2af4d4c1fe940faa4952983fbab87a0f66c7ce572d52fd70c7f62226a38624b.lean/declarations/stabilizer--cb61560f0a73ee78e3abfa0f.md) | 202 | `declaration-track:cb61560f0a73ee78e3abfa0f18e7f3f08df81b754c3773728b5adfd57d6f3682` |
| 22 | `theorem` | [mem_stabilizer_iff](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantc2af4d4c1fe940faa4952983fbab87a0f66c7ce572d52fd70c7f62226a38624b.lean/declarations/mem-stabilizer-iff--be785aecf14b26586785cd64.md) | 211 | `result-track:be785aecf14b26586785cd64826fb38baabea24ebe87b5e2fb7cd746833dce02` |
| 23 | `theorem` | [smul_orbit](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantc2af4d4c1fe940faa4952983fbab87a0f66c7ce572d52fd70c7f62226a38624b.lean/declarations/smul-orbit--f1f40ce831c266a5232eaac5.md) | 217 | `result-track:f1f40ce831c266a5232eaac54abffa9a101ec9a1fee90971d091d2087855a704` |
| 24 | `theorem` | [orbit_smul](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantc2af4d4c1fe940faa4952983fbab87a0f66c7ce572d52fd70c7f62226a38624b.lean/declarations/orbit-smul--f88a2c7b09a3dce0730579fd.md) | 226 | `result-track:f88a2c7b09a3dce0730579fd847c47780627d48e7b3cf16ba3c74863e1cba550` |
| 25 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantc2af4d4c1fe940faa4952983fbab87a0f66c7ce572d52fd70c7f62226a38624b.lean/declarations/instance--a233ab892b86dc0a10fcef26.md) | 236 | `declaration-track:a233ab892b86dc0a10fcef2677c6c4cce9cd1b89dad3427266abf999d054fccc` |
| 26 | `theorem` | [orbit_eq_iff](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantc2af4d4c1fe940faa4952983fbab87a0f66c7ce572d52fd70c7f62226a38624b.lean/declarations/orbit-eq-iff--a8e0c74302c3cb9f32f65b28.md) | 244 | `result-track:a8e0c74302c3cb9f32f65b28e1e1369cd21c9c901db5aad1d3008a515ae49f4b` |
| 27 | `theorem` | [mem_orbit_smul](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantc2af4d4c1fe940faa4952983fbab87a0f66c7ce572d52fd70c7f62226a38624b.lean/declarations/mem-orbit-smul--93ace1c3e298259dc1ec1114.md) | 252 | `result-track:93ace1c3e298259dc1ec1114b0829081242c79939b9cc1bd11f02e87d9744d1c` |
| 28 | `theorem` | [smul_mem_orbit_smul](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantc2af4d4c1fe940faa4952983fbab87a0f66c7ce572d52fd70c7f62226a38624b.lean/declarations/smul-mem-orbit-smul--176c05d5a70f3a850067a6b9.md) | 258 | `result-track:176c05d5a70f3a850067a6b9d8fc6e2d2c32404192290e57b9df040d250d6f5d` |
| 29 | `def` | [orbitRel](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantc2af4d4c1fe940faa4952983fbab87a0f66c7ce572d52fd70c7f62226a38624b.lean/declarations/orbitrel--e9a81d8ff94b652f9e5fa932.md) | 267 | `declaration-track:e9a81d8ff94b652f9e5fa932ed20a1e3f6f2dfea5492ba357d0eb5143509ff80` |
| 30 | `theorem` | [orbitRel_apply](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantc2af4d4c1fe940faa4952983fbab87a0f66c7ce572d52fd70c7f62226a38624b.lean/declarations/orbitrel-apply--b3595e9e06091e03eadaf228.md) | 278 | `result-track:b3595e9e06091e03eadaf228dc4ced0568aaafa9e046e696e9613c79c9ffd6e0` |
| 31 | `theorem` | [quotient_preimage_image_eq_union_mul](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantc2af4d4c1fe940faa4952983fbab87a0f66c7ce572d52fd70c7f62226a38624b.lean/declarations/quotient-preimage-image-eq-union-mul--0b6a3f346be8c288a935b51b.md) | 288 | `result-track:0b6a3f346be8c288a935b51b94350ea1d538a6a130337ba0becf0ac26e4673d9` |
| 32 | `theorem` | [disjoint_image_image_iff](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantc2af4d4c1fe940faa4952983fbab87a0f66c7ce572d52fd70c7f62226a38624b.lean/declarations/disjoint-image-image-iff--76cd9e0989981f3113ecba1f.md) | 311 | `result-track:76cd9e0989981f3113ecba1f2d430016809e580127a273afb84cc95a0745f083` |
| 33 | `theorem` | [image_inter_image_iff](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantc2af4d4c1fe940faa4952983fbab87a0f66c7ce572d52fd70c7f62226a38624b.lean/declarations/image-inter-image-iff--31b7fa7d069047e74441eacf.md) | 329 | `result-track:31b7fa7d069047e74441eacf3f44ccb544f4532e3209f9ba771cff6f8eaf3cba` |
| 34 | `def` | [orbitRel.Quotient](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantc2af4d4c1fe940faa4952983fbab87a0f66c7ce572d52fd70c7f62226a38624b.lean/declarations/orbitrel-quotient--c86b97ac36a9592273ddfee9.md) | 341 | `declaration-track:c86b97ac36a9592273ddfee9960e2ac297284eab554f44cc2ef1a094fa70a089` |
| 35 | `def` | [orbitRel.Quotient.orbit](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantc2af4d4c1fe940faa4952983fbab87a0f66c7ce572d52fd70c7f62226a38624b.lean/declarations/orbitrel-quotient-orbit--9076edecb619b98a8b7e3f9c.md) | 350 | `declaration-track:9076edecb619b98a8b7e3f9c0864cebdb7d4868f1d2f58cbb767e1b7ca2d2292` |
| 36 | `theorem` | [orbitRel.Quotient.orbit_mk](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantc2af4d4c1fe940faa4952983fbab87a0f66c7ce572d52fd70c7f62226a38624b.lean/declarations/orbitrel-quotient-orbit-mk--987e04e20a49d3d0870516e7.md) | 356 | `result-track:987e04e20a49d3d0870516e749b9d12e45bfd31eb8c9f19329d009d655f4d1a5` |
| 37 | `theorem` | [orbitRel.Quotient.mem_orbit](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantc2af4d4c1fe940faa4952983fbab87a0f66c7ce572d52fd70c7f62226a38624b.lean/declarations/orbitrel-quotient-mem-orbit--d60b26ae754df18848e4aaca.md) | 363 | `result-track:d60b26ae754df18848e4aaca5fe3e966195346a5a7655498d7294ab7998a7676` |
| 38 | `theorem` | [orbitRel.Quotient.orbit_eq_orbit_out](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantc2af4d4c1fe940faa4952983fbab87a0f66c7ce572d52fd70c7f62226a38624b.lean/declarations/orbitrel-quotient-orbit-eq-orbit-out--21a939a985c504f58ea6f2e4.md) | 373 | `result-track:21a939a985c504f58ea6f2e418a5892e9a66a5256b1621cfeb40fc7d2b291607` |
| 39 | `def` | [selfEquivSigmaOrbits'](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantc2af4d4c1fe940faa4952983fbab87a0f66c7ce572d52fd70c7f62226a38624b.lean/declarations/selfequivsigmaorbits--b6f496bbfd0fc4c74e9051d3.md) | 394 | `declaration-track:b6f496bbfd0fc4c74e9051d3bc3339c607cded66781d985bce262649c87906e3` |
| 40 | `def` | [selfEquivSigmaOrbits](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantc2af4d4c1fe940faa4952983fbab87a0f66c7ce572d52fd70c7f62226a38624b.lean/declarations/selfequivsigmaorbits--eda53d76303085b74f9c49c1.md) | 408 | `declaration-track:eda53d76303085b74f9c49c1573f3a2851759438070d9c86194a764adeff3e86` |
| 41 | `theorem` | [stabilizer_smul_eq_stabilizer_map_conj](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantc2af4d4c1fe940faa4952983fbab87a0f66c7ce572d52fd70c7f62226a38624b.lean/declarations/stabilizer-smul-eq-stabilizer-map-conj--6bab79ff98061b99e8da29dd.md) | 418 | `result-track:6bab79ff98061b99e8da29dd4c54f0dc2334494d0dd33c2adc1d13772e8f02eb` |
| 42 | `def` | [stabilizerEquivStabilizerOfOrbitRel](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantc2af4d4c1fe940faa4952983fbab87a0f66c7ce572d52fd70c7f62226a38624b.lean/declarations/stabilizerequivstabilizeroforbitrel--7f17e67fd52c6615d2fe2e04.md) | 426 | `declaration-track:7f17e67fd52c6615d2fe2e0450e9613700ed39de6baac183d3f3fde988c36eac` |
| 43 | `theorem` | [stabilizer_vadd_eq_stabilizer_map_conj](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantc2af4d4c1fe940faa4952983fbab87a0f66c7ce572d52fd70c7f62226a38624b.lean/declarations/stabilizer-vadd-eq-stabilizer-map-conj--472d85a4cf0e73b2df31e8fd.md) | 442 | `result-track:472d85a4cf0e73b2df31e8fd67df0b4bc1dc183979d57273a1210885bb2532e1` |
| 44 | `def` | [stabilizerEquivStabilizerOfOrbitRel](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantc2af4d4c1fe940faa4952983fbab87a0f66c7ce572d52fd70c7f62226a38624b.lean/declarations/stabilizerequivstabilizeroforbitrel--9d4dd7b16f51c71ec700d245.md) | 451 | `declaration-track:9d4dd7b16f51c71ec700d245c131065390251a0042d46a77cc18d9c04b2785a8` |
| 45 | `theorem` | [smul_cancel_of_non_zero_divisor](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantc2af4d4c1fe940faa4952983fbab87a0f66c7ce572d52fd70c7f62226a38624b.lean/declarations/smul-cancel-of-non-zero-divisor--68346c347d0d41a914d59209.md) | 465 | `result-track:68346c347d0d41a914d592098938526513f3e5fe0003296d767a48d2b8ad6d11` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
