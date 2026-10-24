# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.PropertyTransport.Variantd96bfe916d7ec0f22e22758d93339e03bbc4710467af269843d741afd5e3a5f2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d2e224d3658b4ec514d88f827eafa07e3cf40b3f",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/PropertyTransport/Variantd96bfe916d7ec0f22e22758d93339e03bbc4710467af269843d741afd5e3a5f2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PropertyTransport/Variantd96bfe916d7ec0f22e22758d93339e03bbc4710467af269843d741afd5e3a5f2.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PropertyTransport/Variantd96bfe916d7ec0f22e22758d93339e03bbc4710467af269843d741afd5e3a5f2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d2e224d3658b4ec514d88f827eafa07e3cf40b3f`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/PropertyTransport/Variantd96bfe916d7ec0f22e22758d93339e03bbc4710467af269843d741afd5e3a5f2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/PropertyTransport/Variantd96bfe916d7ec0f22e22758d93339e03bbc4710467af269843d741afd5e3a5f2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Concept.Relation` — import line 1; external provider; requires a separately pinned dependency.
- `Mathematics.Projection.SnapshotAuthority` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [weakensToBottom](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PropertyTransport/Variantd96bfe916d7ec0f22e22758d93339e03bbc4710467af269843d741afd5e3a5f2.lean/declarations/weakenstobottom--3e1f44f2b194bc6fde420da7.md) | 18 | `declaration-track:3e1f44f2b194bc6fde420da786d5d950bd2bf738e8ac0374dddad39f1ae934da` |
| 2 | `theorem` | [weakensToBottom_trans](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PropertyTransport/Variantd96bfe916d7ec0f22e22758d93339e03bbc4710467af269843d741afd5e3a5f2.lean/declarations/weakenstobottom-trans--b31e554b25a8a3f2bf4f24a9.md) | 23 | `result-track:b31e554b25a8a3f2bf4f24a90e91c16c5f4fd3550604f2602b8b0c57d01ad080` |
| 3 | `def` | [Profile.NoStrongerThan](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PropertyTransport/Variantd96bfe916d7ec0f22e22758d93339e03bbc4710467af269843d741afd5e3a5f2.lean/declarations/profile-nostrongerthan--94e4e84ad7f42c010394c340.md) | 37 | `declaration-track:94e4e84ad7f42c010394c340a12ddc4c0a94196bac111be2d0d2b11b4e0e19e1` |
| 4 | `theorem` | [Profile.noStrongerThan_refl](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PropertyTransport/Variantd96bfe916d7ec0f22e22758d93339e03bbc4710467af269843d741afd5e3a5f2.lean/declarations/profile-nostrongerthan-refl--1ce6313328a27098a2ee757a.md) | 54 | `result-track:1ce6313328a27098a2ee757ac8952cc75b972557d870efba703f48232bb57631` |
| 5 | `theorem` | [Profile.NoStrongerThan.trans](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PropertyTransport/Variantd96bfe916d7ec0f22e22758d93339e03bbc4710467af269843d741afd5e3a5f2.lean/declarations/profile-nostrongerthan-trans--c197911962c711f5f90739aa.md) | 60 | `result-track:c197911962c711f5f90739aa2a81215fd596e395d776c8130371e2cf1f38c566` |
| 6 | `inductive` | [TransportAdmission](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PropertyTransport/Variantd96bfe916d7ec0f22e22758d93339e03bbc4710467af269843d741afd5e3a5f2.lean/declarations/transportadmission--855ea1bf3b9e805564853bf0.md) | 83 | `declaration-track:855ea1bf3b9e805564853bf0312e796a9a1911586fd630ad1a886d439818bc1d` |
| 7 | `def` | [comp](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PropertyTransport/Variantd96bfe916d7ec0f22e22758d93339e03bbc4710467af269843d741afd5e3a5f2.lean/declarations/comp--a7020d34ed2997d208f0169c.md) | 91 | `declaration-track:a7020d34ed2997d208f0169cbb01c136ad7d422f43543a9112938e4bab7356fb` |
| 8 | `theorem` | [denied_comp](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PropertyTransport/Variantd96bfe916d7ec0f22e22758d93339e03bbc4710467af269843d741afd5e3a5f2.lean/declarations/denied-comp--3bcf697d417bb1114292a4e8.md) | 98 | `result-track:3bcf697d417bb1114292a4e82d564a52b7d4730513223a24be61befe2fe9400e` |
| 9 | `theorem` | [comp_denied](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PropertyTransport/Variantd96bfe916d7ec0f22e22758d93339e03bbc4710467af269843d741afd5e3a5f2.lean/declarations/comp-denied--bf4d20428b92c8faa79ae156.md) | 103 | `result-track:bf4d20428b92c8faa79ae1561459ec76e7d9b123de622c21eae85d198677fa08` |
| 10 | `inductive` | [TransportEvidenceKind](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PropertyTransport/Variantd96bfe916d7ec0f22e22758d93339e03bbc4710467af269843d741afd5e3a5f2.lean/declarations/transportevidencekind--035d0fb80dc2863c2308f4fa.md) | 111 | `declaration-track:035d0fb80dc2863c2308f4fa8674c9afec97c2bd2ac339c8b3ad17195d3b93c7` |
| 11 | `structure` | [PathAction](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PropertyTransport/Variantd96bfe916d7ec0f22e22758d93339e03bbc4710467af269843d741afd5e3a5f2.lean/declarations/pathaction--6e2e0f36619a0860c8aa66af.md) | 119 | `declaration-track:6e2e0f36619a0860c8aa66af61eb03e7b7ac503e584add34f945f2462a432a10` |
| 12 | `theorem` | [map_identity](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PropertyTransport/Variantd96bfe916d7ec0f22e22758d93339e03bbc4710467af269843d741afd5e3a5f2.lean/declarations/map-identity--43b715bcd21a02ef74ff4d7f.md) | 152 | `result-track:43b715bcd21a02ef74ff4d7f9d5d3bd02d8741049367a010226848b93f9efdc2` |
| 13 | `theorem` | [map_composite](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PropertyTransport/Variantd96bfe916d7ec0f22e22758d93339e03bbc4710467af269843d741afd5e3a5f2.lean/declarations/map-composite--1f9968d9bf7dd55d1fefe326.md) | 158 | `result-track:1f9968d9bf7dd55d1fefe3262d43746fbd48a2ac4870a7eaf30e5ad07f58472d` |
| 14 | `structure` | [PathGroupoidAction](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PropertyTransport/Variantd96bfe916d7ec0f22e22758d93339e03bbc4710467af269843d741afd5e3a5f2.lean/declarations/pathgroupoidaction--beb830187a58d584cf4d6c56.md) | 170 | `declaration-track:beb830187a58d584cf4d6c560a503eeda8177442ea976caa1c554fa9b47b5b82` |
| 15 | `def` | [holonomy](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PropertyTransport/Variantd96bfe916d7ec0f22e22758d93339e03bbc4710467af269843d741afd5e3a5f2.lean/declarations/holonomy--26a1fe5da9cfe28eab53b974.md) | 194 | `declaration-track:26a1fe5da9cfe28eab53b9741cba36924053753884d900fcc4f1e1ce78b8246a` |
| 16 | `theorem` | [inverse_transport](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PropertyTransport/Variantd96bfe916d7ec0f22e22758d93339e03bbc4710467af269843d741afd5e3a5f2.lean/declarations/inverse-transport--bd3267c85a12bed1f35f1b38.md) | 201 | `result-track:bd3267c85a12bed1f35f1b38cbd653bc4863bad0d9df34f39bb60076602cb6b8` |
| 17 | `structure` | [FiberProperty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PropertyTransport/Variantd96bfe916d7ec0f22e22758d93339e03bbc4710467af269843d741afd5e3a5f2.lean/declarations/fiberproperty--cd417a33639cb8a2dc54ca66.md) | 213 | `declaration-track:cd417a33639cb8a2dc54ca66e998b8dbd9a09c55477290b1326c5ba404227c57` |
| 18 | `structure` | [PropertyNaturality](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PropertyTransport/Variantd96bfe916d7ec0f22e22758d93339e03bbc4710467af269843d741afd5e3a5f2.lean/declarations/propertynaturality--1b50a5c425214cfb87a223f0.md) | 221 | `declaration-track:1b50a5c425214cfb87a223f07fd39e960fd7ebafe139097fbe4c0a0c1f62b82e` |
| 19 | `theorem` | [transport](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PropertyTransport/Variantd96bfe916d7ec0f22e22758d93339e03bbc4710467af269843d741afd5e3a5f2.lean/declarations/transport--9801fa8fddf1d365c2b508d7.md) | 242 | `result-track:9801fa8fddf1d365c2b508d7dade5ee1a9a30540b5270f357fc7d8e6ee788f63` |
| 20 | `theorem` | [along_composite](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PropertyTransport/Variantd96bfe916d7ec0f22e22758d93339e03bbc4710467af269843d741afd5e3a5f2.lean/declarations/along-composite--12a7e30a55c388c626a382b8.md) | 255 | `result-track:12a7e30a55c388c626a382b88aa7cdd310a263e62d35d9b20c738e0396b48636` |
| 21 | `structure` | [CertifiedPreservedProperty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PropertyTransport/Variantd96bfe916d7ec0f22e22758d93339e03bbc4710467af269843d741afd5e3a5f2.lean/declarations/certifiedpreservedproperty--600dfe04cfaf118f25a39fb7.md) | 274 | `declaration-track:600dfe04cfaf118f25a39fb7a405826ba511d92d9d541947467b810b3bcb2ef2` |
| 22 | `theorem` | [transports](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PropertyTransport/Variantd96bfe916d7ec0f22e22758d93339e03bbc4710467af269843d741afd5e3a5f2.lean/declarations/transports--55e09952a8778300af653fdd.md) | 303 | `result-track:55e09952a8778300af653fdd78a7a932ca561f5e1a7314f365ad4758b9104dae` |
| 23 | `theorem` | [admittedTransports](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PropertyTransport/Variantd96bfe916d7ec0f22e22758d93339e03bbc4710467af269843d741afd5e3a5f2.lean/declarations/admittedtransports--4159ed36caf8c2e170f64e07.md) | 315 | `result-track:4159ed36caf8c2e170f64e07f33ab144401d721d3a8c6d004f0574767ade4426` |
| 24 | `theorem` | [heuristic_has_no_theorem_authority](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PropertyTransport/Variantd96bfe916d7ec0f22e22758d93339e03bbc4710467af269843d741afd5e3a5f2.lean/declarations/heuristic-has-no-theorem-authority--58f5533324fcaec086753886.md) | 326 | `result-track:58f5533324fcaec086753886c9e4a8d3c18b6afc14bdb1ca653d443de1a09f6d` |
| 25 | `structure` | [CertifiedAnalogyTransport](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PropertyTransport/Variantd96bfe916d7ec0f22e22758d93339e03bbc4710467af269843d741afd5e3a5f2.lean/declarations/certifiedanalogytransport--04fb029cdf3c3d740bc2a8f3.md) | 338 | `declaration-track:04fb029cdf3c3d740bc2a8f35352f7a2dc48590ba8721779a69c284c5cf82b6f` |
| 26 | `def` | [rhetoricalOnly](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PropertyTransport/Variantd96bfe916d7ec0f22e22758d93339e03bbc4710467af269843d741afd5e3a5f2.lean/declarations/rhetoricalonly--b247a62e97bd92a2ac9ada71.md) | 367 | `declaration-track:b247a62e97bd92a2ac9ada713f7a452f47843773f99e519fc2076bb251b46345` |
| 27 | `theorem` | [rhetoricalOnly_preserved](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PropertyTransport/Variantd96bfe916d7ec0f22e22758d93339e03bbc4710467af269843d741afd5e3a5f2.lean/declarations/rhetoricalonly-preserved--9aaa5c85b7bd3701cafb8494.md) | 392 | `result-track:9aaa5c85b7bd3701cafb8494e261b85013742b681b39cb3fa50535b32b21d3c5` |
| 28 | `theorem` | [rhetoricalOnly_denied](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PropertyTransport/Variantd96bfe916d7ec0f22e22758d93339e03bbc4710467af269843d741afd5e3a5f2.lean/declarations/rhetoricalonly-denied--7ef496deead16593bf9ff40c.md) | 403 | `result-track:7ef496deead16593bf9ff40c09244b04ed6a5c80a18e2048e80c26cd4fbf6fa8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
