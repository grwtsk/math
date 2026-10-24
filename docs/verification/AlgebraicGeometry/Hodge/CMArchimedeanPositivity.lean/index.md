# Verification target: GRWTSK.AlgebraicGeometry.Hodge.CMArchimedeanPositivity

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7b28a2ea77e43563b25646a5fcacfe4d937fefcb",
  "lexical_observation_count": 42,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/AlgebraicGeometry/Hodge/CMArchimedeanPositivity.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/AlgebraicGeometry/Hodge/CMArchimedeanPositivity.lean/index.md) · [Full source](../../../../mathematics/AlgebraicGeometry/Hodge/CMArchimedeanPositivity.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7b28a2ea77e43563b25646a5fcacfe4d937fefcb`.

Source path: `GRWTSK/AlgebraicGeometry/Hodge/CMArchimedeanPositivity.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/AlgebraicGeometry/Hodge/CMArchimedeanPositivity.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.AlgebraicGeometry.Hodge.CMTracePolarization`](../../../../mathematics/AlgebraicGeometry/Hodge/CMTracePolarization.lean/index.md) — import line 10; pinned internal source present.
- [`GRWTSK.AlgebraicGeometry.Hodge.CMCoordinateHodge`](../../../../mathematics/AlgebraicGeometry/Hodge/CMCoordinateHodge.lean/index.md) — import line 11; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [baseComplexEmbedding](../../../../mathematics/AlgebraicGeometry/Hodge/CMArchimedeanPositivity.lean/declarations/basecomplexembedding--832fd5917107be15060dd6ee.md) | 44 | `declaration-track:832fd5917107be15060dd6eefc5d48d3dcdaccd5c8b5f0d64d05043a29eae226` |
| 2 | `def` | [complexEmbeddingAt](../../../../mathematics/AlgebraicGeometry/Hodge/CMArchimedeanPositivity.lean/declarations/complexembeddingat--229ba085288bfd2102ce6e01.md) | 49 | `declaration-track:229ba085288bfd2102ce6e01d95194552716880854779c12d3286b2cb8b346e9` |
| 3 | `def` | [imagAt](../../../../mathematics/AlgebraicGeometry/Hodge/CMArchimedeanPositivity.lean/declarations/imagat--4480e49f07d2694161958c35.md) | 53 | `declaration-track:4480e49f07d2694161958c35d0293c609355656af3a022f4cb824ee89b858493` |
| 4 | `structure` | [SignControlledXi](../../../../mathematics/AlgebraicGeometry/Hodge/CMArchimedeanPositivity.lean/declarations/signcontrolledxi--217faf2d6fcdea2221dda777.md) | 59 | `declaration-track:217faf2d6fcdea2221dda7774f7597ae33b094ab356bfdd324bdd73a1cc62d78` |
| 5 | `def` | [SignControlledXi.coeff](../../../../mathematics/AlgebraicGeometry/Hodge/CMArchimedeanPositivity.lean/declarations/signcontrolledxi-coeff--80547a7c8403f32e042afc34.md) | 66 | `declaration-track:80547a7c8403f32e042afc34f6bae9fd6220103f389cbc8893fbe4be6ab041b2` |
| 6 | `theorem` | [SignControlledXi.coeff_pos](../../../../mathematics/AlgebraicGeometry/Hodge/CMArchimedeanPositivity.lean/declarations/signcontrolledxi-coeff-pos--318a29578e9809e07a78a53f.md) | 71 | `result-track:318a29578e9809e07a78a53f7ec9a64e87646216905286eaa7fe6d27abc4e364` |
| 7 | `theorem` | [SignControlledXi.xi_ne_zero](../../../../mathematics/AlgebraicGeometry/Hodge/CMArchimedeanPositivity.lean/declarations/signcontrolledxi-xi-ne-zero--7e179f4a3714c33fad594779.md) | 78 | `result-track:7e179f4a3714c33fad59477917a4072133d1c35a8a39e2714575c10c75cdac60` |
| 8 | `def` | [SignControlledXi.toTracePolarizationData](../../../../mathematics/AlgebraicGeometry/Hodge/CMArchimedeanPositivity.lean/declarations/signcontrolledxi-totracepolarizationdata--161d043357345e9759e1f24e.md) | 87 | `declaration-track:161d043357345e9759e1f24e78f04e2e05a3fb0057b265abff010b61a9fdca51` |
| 9 | `theorem` | [SignControlledXi.tracePairing_alternating_nondegenerate](../../../../mathematics/AlgebraicGeometry/Hodge/CMArchimedeanPositivity.lean/declarations/signcontrolledxi-tracepairing-alternating-nondegenerate--a726eb7326135af65017da8e.md) | 97 | `result-track:a726eb7326135af65017da8e4acba1cdb952aef8af6e4d9c47b516e4431fd898` |
| 10 | `theorem` | [complexEmbeddingAt_galoisComplexConj](../../../../mathematics/AlgebraicGeometry/Hodge/CMArchimedeanPositivity.lean/declarations/complexembeddingat-galoiscomplexconj--fffed82a524a7b7b420b8c92.md) | 109 | `result-track:fffed82a524a7b7b420b8c921180ca2f0c25e66f59d2f70b3ed237d1d1efc4a9` |
| 11 | `theorem` | [CMTracePolarization.TracePolarizationData.embedding_re_zero](../../../../mathematics/AlgebraicGeometry/Hodge/CMArchimedeanPositivity.lean/declarations/cmtracepolarization-tracepolarizationdata-embedding-re-zero--b1034a93cdd6eb3ef8425188.md) | 120 | `result-track:b1034a93cdd6eb3ef8425188c40c6ffa042ac2d71b0f3f21e3a9f203adbfca86` |
| 12 | `theorem` | [CMTracePolarization.TracePolarizationData.embedding_im_ne_zero](../../../../mathematics/AlgebraicGeometry/Hodge/CMArchimedeanPositivity.lean/declarations/cmtracepolarization-tracepolarizationdata-embedding-im-ne-zero--ca6ddac0852ccfe337087d18.md) | 134 | `result-track:ca6ddac0852ccfe337087d184f9a7857a432760349a7a5706d549dcba694c5d0` |
| 13 | `def` | [realSign](../../../../mathematics/AlgebraicGeometry/Hodge/CMArchimedeanPositivity.lean/declarations/realsign--158d157903e32fd83b8a7955.md) | 147 | `declaration-track:158d157903e32fd83b8a7955d2ac6270ffda12964811e7e2572f686c0da3bda3` |
| 14 | `theorem` | [realSign_isSign](../../../../mathematics/AlgebraicGeometry/Hodge/CMArchimedeanPositivity.lean/declarations/realsign-issign--0adc4cd26e5f4b9e5b0d36b0.md) | 150 | `result-track:0adc4cd26e5f4b9e5b0d36b01bb9fd0db226c75a6493130520e7e49f043b7e82` |
| 15 | `theorem` | [realSign_neg_of_ne_zero](../../../../mathematics/AlgebraicGeometry/Hodge/CMArchimedeanPositivity.lean/declarations/realsign-neg-of-ne-zero--a8a6051939f49575a936412a.md) | 153 | `result-track:a8a6051939f49575a936412ac5e1e54e2e30ae5ca1e70f0bd5f370c85de7d24e` |
| 16 | `def` | [CMTracePolarization.TracePolarizationData.imagSign](../../../../mathematics/AlgebraicGeometry/Hodge/CMArchimedeanPositivity.lean/declarations/cmtracepolarization-tracepolarizationdata-imagsign--1ae854a91e38e220f1cb04a6.md) | 165 | `declaration-track:1ae854a91e38e220f1cb04a6aad814dd601f423f87b44fd9c005230b6cfffbe7` |
| 17 | `def` | [requiredRescalingSign](../../../../mathematics/AlgebraicGeometry/Hodge/CMArchimedeanPositivity.lean/declarations/requiredrescalingsign--c8eb27275632a3b3fdc06bac.md) | 183 | `declaration-track:c8eb27275632a3b3fdc06bac96713b1a55fbced6233a350124742f185bb8dd19` |
| 18 | `theorem` | [requiredRescalingSign_conj](../../../../mathematics/AlgebraicGeometry/Hodge/CMArchimedeanPositivity.lean/declarations/requiredrescalingsign-conj--b3b67f6ba01e3a3d62355a00.md) | 190 | `result-track:b3b67f6ba01e3a3d62355a000281f0accd3402c123b56980e869ddef16a9be70` |
| 19 | `def` | [FixedElementRealizesRequiredSign](../../../../mathematics/AlgebraicGeometry/Hodge/CMArchimedeanPositivity.lean/declarations/fixedelementrealizesrequiredsign--f40753da26dabfe9c2ef32ff.md) | 201 | `declaration-track:f40753da26dabfe9c2ef32ff5e172a607cce1de84c7759e6ed5b6cc21fe092b9` |
| 20 | `theorem` | [embedding_im_zero_of_conj_fixed](../../../../mathematics/AlgebraicGeometry/Hodge/CMArchimedeanPositivity.lean/declarations/embedding-im-zero-of-conj-fixed--a8588716beffc06ae36a986a.md) | 212 | `result-track:a8588716beffc06ae36a986a88806ad4cebe0944fe39580560787cd8b1a3ba27` |
| 21 | `theorem` | [complexEmbeddingAt_conj_eq_of_fixed](../../../../mathematics/AlgebraicGeometry/Hodge/CMArchimedeanPositivity.lean/declarations/complexembeddingat-conj-eq-of-fixed--1ad06e3aef91dfdbd9dd3f40.md) | 225 | `result-track:1ad06e3aef91dfdbd9dd3f40f951de3b4c0d9a9eedaad750640a776b1d55a695` |
| 22 | `theorem` | [imagAt_mul_of_conj_fixed](../../../../mathematics/AlgebraicGeometry/Hodge/CMArchimedeanPositivity.lean/declarations/imagat-mul-of-conj-fixed--3209bb3db9c8d63bace77cbf.md) | 238 | `result-track:3209bb3db9c8d63bace77cbf2fd0e55b31e9dcb74e94faa63b17ce983ff333d1` |
| 23 | `def` | [FixedRescalingSignCondition](../../../../mathematics/AlgebraicGeometry/Hodge/CMArchimedeanPositivity.lean/declarations/fixedrescalingsigncondition--7ae1357d6da251eb77392f69.md) | 248 | `declaration-track:7ae1357d6da251eb77392f69544cd457d65fc17b56d3c55fc893b496439f760d` |
| 24 | `theorem` | [fixedRescalingSignCondition_of_realizesRequiredSign](../../../../mathematics/AlgebraicGeometry/Hodge/CMArchimedeanPositivity.lean/declarations/fixedrescalingsigncondition-of-realizesrequiredsign--908b1164a19cf00fdf21f297.md) | 258 | `result-track:908b1164a19cf00fdf21f29777a2c4619431fd2e745c9027f6a1f550f73da1aa` |
| 25 | `def` | [signControlledXiOfFixedRescaling](../../../../mathematics/AlgebraicGeometry/Hodge/CMArchimedeanPositivity.lean/declarations/signcontrolledxioffixedrescaling--04c457f40fb19414e19b2c14.md) | 312 | `declaration-track:04c457f40fb19414e19b2c146f6fb97675fe2310e9e61dc62c8a9a89cf671f2e` |
| 26 | `theorem` | [signControlledXiOfFixedRescaling_xi_ne_zero](../../../../mathematics/AlgebraicGeometry/Hodge/CMArchimedeanPositivity.lean/declarations/signcontrolledxioffixedrescaling-xi-ne-zero--9ab0a5e15a26fb75ff837e65.md) | 330 | `result-track:9ab0a5e15a26fb75ff837e650dc980e5ed2e59989c33503c6bc82a48d84bfd13` |
| 27 | `theorem` | [SignControlledXi.embedding_re_zero](../../../../mathematics/AlgebraicGeometry/Hodge/CMArchimedeanPositivity.lean/declarations/signcontrolledxi-embedding-re-zero--9a660699b47092aa7c4b3c42.md) | 340 | `result-track:9a660699b47092aa7c4b3c42ab746dc9ebf09135c87630405b25cd3acccc3234` |
| 28 | `def` | [weilFactor](../../../../mathematics/AlgebraicGeometry/Hodge/CMArchimedeanPositivity.lean/declarations/weilfactor--24c5fb3933ba03cdc18336e2.md) | 347 | `declaration-track:24c5fb3933ba03cdc18336e29b0fc2a85aa95dd02a66a336a8d9c9198b5f977e` |
| 29 | `theorem` | [SignControlledXi.embedding_mul_weilFactor](../../../../mathematics/AlgebraicGeometry/Hodge/CMArchimedeanPositivity.lean/declarations/signcontrolledxi-embedding-mul-weilfactor--3cd011c0685197ba7907ff79.md) | 354 | `result-track:3cd011c0685197ba7907ff79608465bcf1334fe4927839dd21ddb599efda68cc` |
| 30 | `def` | [fieldCoordinates](../../../../mathematics/AlgebraicGeometry/Hodge/CMArchimedeanPositivity.lean/declarations/fieldcoordinates--8afda7c6c279b20cd5c662b4.md) | 369 | `declaration-track:8afda7c6c279b20cd5c662b41d44ec8507d052449930c35f371c613066e2af98` |
| 31 | `theorem` | [fieldCoordinates_conjLabel](../../../../mathematics/AlgebraicGeometry/Hodge/CMArchimedeanPositivity.lean/declarations/fieldcoordinates-conjlabel--1dc65f38c4d1cb2d4809c6d1.md) | 374 | `result-track:1dc65f38c4d1cb2d4809c6d123122d6485026d05023037a5359c8df02922ead7` |
| 32 | `def` | [SignControlledXi.complexifiedTracePairing](../../../../mathematics/AlgebraicGeometry/Hodge/CMArchimedeanPositivity.lean/declarations/signcontrolledxi-complexifiedtracepairing--eadcfa521fd38ee844ea63af.md) | 387 | `declaration-track:eadcfa521fd38ee844ea63af868a6d4e8e1b92210e037e484fedf2d68def43d0` |
| 33 | `theorem` | [SignControlledXi.complexifiedTracePairing_fieldCoordinates](../../../../mathematics/AlgebraicGeometry/Hodge/CMArchimedeanPositivity.lean/declarations/signcontrolledxi-complexifiedtracepairing-fieldcoordinates--24484fe1544e25c430bfd4d1.md) | 399 | `result-track:24484fe1544e25c430bfd4d18f6300fb0159c8afe20075a163bb81b2a13d1f6e` |
| 34 | `theorem` | [fieldCoordinates_realConj](../../../../mathematics/AlgebraicGeometry/Hodge/CMArchimedeanPositivity.lean/declarations/fieldcoordinates-realconj--9b128ccd35b66a4dd57e7d47.md) | 421 | `result-track:9b128ccd35b66a4dd57e7d47dff9fe3f60123c856995558c7ea790d7b8ec2cf3` |
| 35 | `def` | [SignControlledXi.coordinateWeilForm](../../../../mathematics/AlgebraicGeometry/Hodge/CMArchimedeanPositivity.lean/declarations/signcontrolledxi-coordinateweilform--3321620922f0fee3c3742087.md) | 433 | `declaration-track:3321620922f0fee3c374208755f6c63f6638bf2b398ce914f99b2a7ea016b4b7` |
| 36 | `def` | [SignControlledXi.energy](../../../../mathematics/AlgebraicGeometry/Hodge/CMArchimedeanPositivity.lean/declarations/signcontrolledxi-energy--79007f5c70193559ed614691.md) | 442 | `declaration-track:79007f5c70193559ed614691f27a086bd9a4f9b2b9f944e73b271fa25408dbb1` |
| 37 | `theorem` | [SignControlledXi.coordinateWeilForm_eq_energy](../../../../mathematics/AlgebraicGeometry/Hodge/CMArchimedeanPositivity.lean/declarations/signcontrolledxi-coordinateweilform-eq-energy--7dd6968143ea361c84fc921e.md) | 450 | `result-track:7dd6968143ea361c84fc921e45c2764c1c13d8f629c1794d8afbfedf4f391255` |
| 38 | `theorem` | [SignControlledXi.complexifiedTracePairing_weil_realConj](../../../../mathematics/AlgebraicGeometry/Hodge/CMArchimedeanPositivity.lean/declarations/signcontrolledxi-complexifiedtracepairing-weil-realconj--834b91f365a66e24c4b0ef8c.md) | 465 | `result-track:834b91f365a66e24c4b0ef8c65a299a042b15daa36502c0e9f04e5cfed249be9` |
| 39 | `theorem` | [SignControlledXi.complexifiedTracePairing_weil_realConj_eq_energy](../../../../mathematics/AlgebraicGeometry/Hodge/CMArchimedeanPositivity.lean/declarations/signcontrolledxi-complexifiedtracepairing-weil-realconj-eq-energy--7b71e21067bc7663787a9798.md) | 486 | `result-track:7b71e21067bc7663787a9798f41f5678eb0a6b308d7f84493d744cd871c63492` |
| 40 | `theorem` | [SignControlledXi.energy_nonneg](../../../../mathematics/AlgebraicGeometry/Hodge/CMArchimedeanPositivity.lean/declarations/signcontrolledxi-energy-nonneg--ff1755e7bd4e71a447a32a89.md) | 498 | `result-track:ff1755e7bd4e71a447a32a89720eb3b402ad80fe71d2f7da4d954c2f78a6fee0` |
| 41 | `theorem` | [SignControlledXi.energy_pos](../../../../mathematics/AlgebraicGeometry/Hodge/CMArchimedeanPositivity.lean/declarations/signcontrolledxi-energy-pos--196e26b08074e487cdf60e13.md) | 508 | `result-track:196e26b08074e487cdf60e135178263e964d4156e027b716ae7e8c10ce8ee393` |
| 42 | `theorem` | [SignControlledXi.energy_eq_zero_iff](../../../../mathematics/AlgebraicGeometry/Hodge/CMArchimedeanPositivity.lean/declarations/signcontrolledxi-energy-eq-zero-iff--16b190443c21006204fc9d75.md) | 523 | `result-track:16b190443c21006204fc9d75e586db8799325cde32cea3af8e7d8e1ace920435` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
