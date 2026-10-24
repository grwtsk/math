# Verification target: GRWTSK.Algebra.LinearAlgebra.ThetaJacobiRecurrence.Variant984de101f626c50f76e82dff612082dfecfd60bf7d6675b4e3b36cf95b91e0f3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6ecd5644709417ba33995718873c494d071bc1dc",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/ThetaJacobiRecurrence/Variant984de101f626c50f76e82dff612082dfecfd60bf7d6675b4e3b36cf95b91e0f3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/ThetaJacobiRecurrence/Variant984de101f626c50f76e82dff612082dfecfd60bf7d6675b4e3b36cf95b91e0f3.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/ThetaJacobiRecurrence/Variant984de101f626c50f76e82dff612082dfecfd60bf7d6675b4e3b36cf95b91e0f3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6ecd5644709417ba33995718873c494d071bc1dc`.

Source path: `GRWTSK/Algebra/LinearAlgebra/ThetaJacobiRecurrence/Variant984de101f626c50f76e82dff612082dfecfd60bf7d6675b4e3b36cf95b91e0f3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/ThetaJacobiRecurrence/Variant984de101f626c50f76e82dff612082dfecfd60bf7d6675b4e3b36cf95b91e0f3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ThetaJacobiUnitary` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [multiplicationMap](../../../../../mathematics/Algebra/LinearAlgebra/ThetaJacobiRecurrence/Variant984de101f626c50f76e82dff612082dfecfd60bf7d6675b4e3b36cf95b91e0f3.lean/declarations/multiplicationmap--75efaa1669d1fa73f724077a.md) | 24 | `declaration-track:75efaa1669d1fa73f724077ac096997decef125d17704119dd9c97c2646e14fb` |
| 2 | `theorem` | [multiplicationMap_formalAdjoint](../../../../../mathematics/Algebra/LinearAlgebra/ThetaJacobiRecurrence/Variant984de101f626c50f76e82dff612082dfecfd60bf7d6675b4e3b36cf95b91e0f3.lean/declarations/multiplicationmap-formaladjoint--f3b162d0a01de73614bb64fa.md) | 29 | `result-track:f3b162d0a01de73614bb64fab38361504a379d47b25fd4704a42c07ce9b634a4` |
| 3 | `theorem` | [multiplicationMap_powerVector](../../../../../mathematics/Algebra/LinearAlgebra/ThetaJacobiRecurrence/Variant984de101f626c50f76e82dff612082dfecfd60bf7d6675b4e3b36cf95b91e0f3.lean/declarations/multiplicationmap-powervector--e68604cb424fd7e5a9105be7.md) | 36 | `result-track:e68604cb424fd7e5a9105be7fd22959b7e3de77cb857c294c9043dfff806d962` |
| 4 | `def` | [polynomialFlag](../../../../../mathematics/Algebra/LinearAlgebra/ThetaJacobiRecurrence/Variant984de101f626c50f76e82dff612082dfecfd60bf7d6675b4e3b36cf95b91e0f3.lean/declarations/polynomialflag--97f491988d35e6700a9b9133.md) | 41 | `declaration-track:97f491988d35e6700a9b9133cb61cb8ffd84304f2cc2943b3504056975b6dac1` |
| 5 | `theorem` | [polynomialFlag_le_domain](../../../../../mathematics/Algebra/LinearAlgebra/ThetaJacobiRecurrence/Variant984de101f626c50f76e82dff612082dfecfd60bf7d6675b4e3b36cf95b91e0f3.lean/declarations/polynomialflag-le-domain--75617f23151d8e502d467279.md) | 46 | `result-track:75617f23151d8e502d46727998728cb00eab4515caa22caef03631766ad09d51` |
| 6 | `def` | [monicVector](../../../../../mathematics/Algebra/LinearAlgebra/ThetaJacobiRecurrence/Variant984de101f626c50f76e82dff612082dfecfd60bf7d6675b4e3b36cf95b91e0f3.lean/declarations/monicvector--c702fb38c5935e08f2b62caf.md) | 53 | `declaration-track:c702fb38c5935e08f2b62caf5630d47f4b9032719e150d98bd6152d311661f85` |
| 7 | `theorem` | [monicVector_ne_zero](../../../../../mathematics/Algebra/LinearAlgebra/ThetaJacobiRecurrence/Variant984de101f626c50f76e82dff612082dfecfd60bf7d6675b4e3b36cf95b91e0f3.lean/declarations/monicvector-ne-zero--cadc19a4a0bcf0bb00110050.md) | 57 | `result-track:cadc19a4a0bcf0bb001100504ac27f2d4fcdbb267f7d5a05aea4c456abb9d417` |
| 8 | `theorem` | [monicVector_norm_pos](../../../../../mathematics/Algebra/LinearAlgebra/ThetaJacobiRecurrence/Variant984de101f626c50f76e82dff612082dfecfd60bf7d6675b4e3b36cf95b91e0f3.lean/declarations/monicvector-norm-pos--6c659e3b00e15452f41c0a16.md) | 62 | `result-track:6c659e3b00e15452f41c0a16924d9ee7e8735a501d942c79ebd6d55a9f3b809c` |
| 9 | `theorem` | [monicVector_mem_flag](../../../../../mathematics/Algebra/LinearAlgebra/ThetaJacobiRecurrence/Variant984de101f626c50f76e82dff612082dfecfd60bf7d6675b4e3b36cf95b91e0f3.lean/declarations/monicvector-mem-flag--c8c9b8509c712998f692b36e.md) | 66 | `result-track:c8c9b8509c712998f692b36ecccac644ba28fa7f56f118aebb57f64bc04180b5` |
| 10 | `theorem` | [orthogonalPolynomial_mem_flag](../../../../../mathematics/Algebra/LinearAlgebra/ThetaJacobiRecurrence/Variant984de101f626c50f76e82dff612082dfecfd60bf7d6675b4e3b36cf95b91e0f3.lean/declarations/orthogonalpolynomial-mem-flag--7772725e2e91587e9c952685.md) | 71 | `result-track:7772725e2e91587e9c952685d13df8b17f1555b687dd371f49f632840f0d0a90` |
| 11 | `theorem` | [orthogonalPolynomial_mem_domain](../../../../../mathematics/Algebra/LinearAlgebra/ThetaJacobiRecurrence/Variant984de101f626c50f76e82dff612082dfecfd60bf7d6675b4e3b36cf95b91e0f3.lean/declarations/orthogonalpolynomial-mem-domain--0d6291ee7964706793a268d1.md) | 76 | `result-track:0d6291ee7964706793a268d1b9ed33027b4507e4207d3a9d0528181895ca4d27` |
| 12 | `theorem` | [monicVector_inner_flag_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/ThetaJacobiRecurrence/Variant984de101f626c50f76e82dff612082dfecfd60bf7d6675b4e3b36cf95b91e0f3.lean/declarations/monicvector-inner-flag-eq-zero--0992f5aa247d57a1aaf9a7cd.md) | 81 | `result-track:0992f5aa247d57a1aaf9a7cd8eeef7639242ca844f4ef0a6a32e6debf80521a3` |
| 13 | `theorem` | [orthogonalPolynomial_inner_flag_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/ThetaJacobiRecurrence/Variant984de101f626c50f76e82dff612082dfecfd60bf7d6675b4e3b36cf95b91e0f3.lean/declarations/orthogonalpolynomial-inner-flag-eq-zero--398974cebd6450d22c0c3a0b.md) | 91 | `result-track:398974cebd6450d22c0c3a0b9cb70b312a060236f548abf387b0900b7f3a686b` |
| 14 | `def` | [domainFlag](../../../../../mathematics/Algebra/LinearAlgebra/ThetaJacobiRecurrence/Variant984de101f626c50f76e82dff612082dfecfd60bf7d6675b4e3b36cf95b91e0f3.lean/declarations/domainflag--7408d9b527c307a5ec4d0afb.md) | 98 | `declaration-track:7408d9b527c307a5ec4d0afb1b607548251280d91076b3f4f69b54630ac96260` |
| 15 | `theorem` | [domainFlag_map_subtype](../../../../../mathematics/Algebra/LinearAlgebra/ThetaJacobiRecurrence/Variant984de101f626c50f76e82dff612082dfecfd60bf7d6675b4e3b36cf95b91e0f3.lean/declarations/domainflag-map-subtype--774caa8369d866f6f792fd37.md) | 103 | `result-track:774caa8369d866f6f792fd376cd14f9ad72f4403acb54581c801040a0abe829f` |
| 16 | `theorem` | [multiplication_flag](../../../../../mathematics/Algebra/LinearAlgebra/ThetaJacobiRecurrence/Variant984de101f626c50f76e82dff612082dfecfd60bf7d6675b4e3b36cf95b91e0f3.lean/declarations/multiplication-flag--44c39ea36309ee90f99bbda5.md) | 110 | `result-track:44c39ea36309ee90f99bbda5b4c54b4710579ddc4bafbcdc916ceb773f4437cc` |
| 17 | `def` | [basisDomainVector](../../../../../mathematics/Algebra/LinearAlgebra/ThetaJacobiRecurrence/Variant984de101f626c50f76e82dff612082dfecfd60bf7d6675b4e3b36cf95b91e0f3.lean/declarations/basisdomainvector--5f8c7949431a31363a056e74.md) | 130 | `declaration-track:5f8c7949431a31363a056e74abaaf0bcce3ee61d311fa3810748e24fd1300390` |
| 18 | `theorem` | [upper_band_zero](../../../../../mathematics/Algebra/LinearAlgebra/ThetaJacobiRecurrence/Variant984de101f626c50f76e82dff612082dfecfd60bf7d6675b4e3b36cf95b91e0f3.lean/declarations/upper-band-zero--688e42552f836e4a40e30e73.md) | 134 | `result-track:688e42552f836e4a40e30e7349b35ce77e13ada38066fdb7fa50217200d2556a` |
| 19 | `theorem` | [lower_band_zero](../../../../../mathematics/Algebra/LinearAlgebra/ThetaJacobiRecurrence/Variant984de101f626c50f76e82dff612082dfecfd60bf7d6675b4e3b36cf95b91e0f3.lean/declarations/lower-band-zero--4882b0bac61f58b57853af31.md) | 141 | `result-track:4882b0bac61f58b57853af310ee8ea2f58da2a3c08d89878826af8531dcd4acb` |
| 20 | `def` | [monicDomainVector](../../../../../mathematics/Algebra/LinearAlgebra/ThetaJacobiRecurrence/Variant984de101f626c50f76e82dff612082dfecfd60bf7d6675b4e3b36cf95b91e0f3.lean/declarations/monicdomainvector--cd2b39deb884bb84298078ac.md) | 150 | `declaration-track:cd2b39deb884bb84298078ace28ac9e516f9b1482bb8b9a00b428c91f4ddc973` |
| 21 | `theorem` | [monicVector_inner_power](../../../../../mathematics/Algebra/LinearAlgebra/ThetaJacobiRecurrence/Variant984de101f626c50f76e82dff612082dfecfd60bf7d6675b4e3b36cf95b91e0f3.lean/declarations/monicvector-inner-power--55c00d30ee19c0fdd8c6ddd8.md) | 154 | `result-track:55c00d30ee19c0fdd8c6ddd8f3f26551dfdd79379cb37c3e982ef27bf17f698f` |
| 22 | `theorem` | [powerDomain_monic_decomposition](../../../../../mathematics/Algebra/LinearAlgebra/ThetaJacobiRecurrence/Variant984de101f626c50f76e82dff612082dfecfd60bf7d6675b4e3b36cf95b91e0f3.lean/declarations/powerdomain-monic-decomposition--efcde4250758f76d50180eaa.md) | 179 | `result-track:efcde4250758f76d50180eaab91bdb801149ccd09d83d895bc3953d33ba4804c` |
| 23 | `theorem` | [monicVector_inner_multiplication](../../../../../mathematics/Algebra/LinearAlgebra/ThetaJacobiRecurrence/Variant984de101f626c50f76e82dff612082dfecfd60bf7d6675b4e3b36cf95b91e0f3.lean/declarations/monicvector-inner-multiplication--128ecd079531a2bddabeb587.md) | 190 | `result-track:128ecd079531a2bddabeb5878014c270cfd185008eb55fbb14b27e0499562b73` |
| 24 | `def` | [hopping](../../../../../mathematics/Algebra/LinearAlgebra/ThetaJacobiRecurrence/Variant984de101f626c50f76e82dff612082dfecfd60bf7d6675b4e3b36cf95b91e0f3.lean/declarations/hopping--1755325711262b1ce6fb8933.md) | 212 | `declaration-track:1755325711262b1ce6fb89331bea1ca04922aa989d0efe3b9f50cef31a3fe6d1` |
| 25 | `theorem` | [hopping_positive](../../../../../mathematics/Algebra/LinearAlgebra/ThetaJacobiRecurrence/Variant984de101f626c50f76e82dff612082dfecfd60bf7d6675b4e3b36cf95b91e0f3.lean/declarations/hopping-positive--e2c6250f4e2250cab88061b2.md) | 216 | `result-track:e2c6250f4e2250cab88061b27056e8d513503217ed98548c364b64598e4c24c7` |
| 26 | `theorem` | [upper_hopping_coefficient](../../../../../mathematics/Algebra/LinearAlgebra/ThetaJacobiRecurrence/Variant984de101f626c50f76e82dff612082dfecfd60bf7d6675b4e3b36cf95b91e0f3.lean/declarations/upper-hopping-coefficient--0f94935194d7e6b25d4c7b90.md) | 220 | `result-track:0f94935194d7e6b25d4c7b903bceaf3903dc6ffd101d2648a6fce828ea4e40ab` |
| 27 | `theorem` | [lower_hopping_coefficient](../../../../../mathematics/Algebra/LinearAlgebra/ThetaJacobiRecurrence/Variant984de101f626c50f76e82dff612082dfecfd60bf7d6675b4e3b36cf95b91e0f3.lean/declarations/lower-hopping-coefficient--3133cde991ddc17c28a616e2.md) | 239 | `result-track:3133cde991ddc17c28a616e264da50e2da8685ca8947e7c7793533c51c396455` |
| 28 | `def` | [diagonal](../../../../../mathematics/Algebra/LinearAlgebra/ThetaJacobiRecurrence/Variant984de101f626c50f76e82dff612082dfecfd60bf7d6675b4e3b36cf95b91e0f3.lean/declarations/diagonal--fe2b095c5507e4e063b0b815.md) | 251 | `declaration-track:fe2b095c5507e4e063b0b81514cd559cb353d808a4bd48ab673df45e77a9afbc` |
| 29 | `theorem` | [diagonal_coefficient](../../../../../mathematics/Algebra/LinearAlgebra/ThetaJacobiRecurrence/Variant984de101f626c50f76e82dff612082dfecfd60bf7d6675b4e3b36cf95b91e0f3.lean/declarations/diagonal-coefficient--fcba91e41a091a229b28ab44.md) | 256 | `result-track:fcba91e41a091a229b28ab44c1a3acd9a017e5f702d3692e8b0ce7d7842aba2b` |
| 30 | `theorem` | [multiplication_basis_zero](../../../../../mathematics/Algebra/LinearAlgebra/ThetaJacobiRecurrence/Variant984de101f626c50f76e82dff612082dfecfd60bf7d6675b4e3b36cf95b91e0f3.lean/declarations/multiplication-basis-zero--5d28b471a416a36f91587ccf.md) | 272 | `result-track:5d28b471a416a36f91587ccfd0ef2f4a9496e80e3e5611549b36263acd520ea8` |
| 31 | `theorem` | [multiplication_basis_succ](../../../../../mathematics/Algebra/LinearAlgebra/ThetaJacobiRecurrence/Variant984de101f626c50f76e82dff612082dfecfd60bf7d6675b4e3b36cf95b91e0f3.lean/declarations/multiplication-basis-succ--d7ca37b32293e2dbc14acffe.md) | 294 | `result-track:d7ca37b32293e2dbc14acffe85896448da78b6f08aed2767fcbd7223f0f1fe51` |
| 32 | `theorem` | [standardVector_mem_jacobiDomain](../../../../../mathematics/Algebra/LinearAlgebra/ThetaJacobiRecurrence/Variant984de101f626c50f76e82dff612082dfecfd60bf7d6675b4e3b36cf95b91e0f3.lean/declarations/standardvector-mem-jacobidomain--1e4546ed53195264229c24c6.md) | 324 | `result-track:1e4546ed53195264229c24c6477c068bd269ddbabfd3693e85b58d6a631e5df5` |
| 33 | `def` | [standardDomainVector](../../../../../mathematics/Algebra/LinearAlgebra/ThetaJacobiRecurrence/Variant984de101f626c50f76e82dff612082dfecfd60bf7d6675b4e3b36cf95b91e0f3.lean/declarations/standarddomainvector--d86abf26e7697093b93e696e.md) | 330 | `declaration-track:d86abf26e7697093b93e696e6829a600b85b840d701628662824fc9f1240afb3` |
| 34 | `theorem` | [domainUnitary_standardVector](../../../../../mathematics/Algebra/LinearAlgebra/ThetaJacobiRecurrence/Variant984de101f626c50f76e82dff612082dfecfd60bf7d6675b4e3b36cf95b91e0f3.lean/declarations/domainunitary-standardvector--0e3c566d6d0085957f931f8d.md) | 334 | `result-track:0e3c566d6d0085957f931f8d31c3e8e9de3ba0d5e9e1757d27e7d32e4c9a3572` |
| 35 | `theorem` | [jacobiOperator_standard_zero](../../../../../mathematics/Algebra/LinearAlgebra/ThetaJacobiRecurrence/Variant984de101f626c50f76e82dff612082dfecfd60bf7d6675b4e3b36cf95b91e0f3.lean/declarations/jacobioperator-standard-zero--a659f3e4b4a20fc0730e05fe.md) | 340 | `result-track:a659f3e4b4a20fc0730e05fe2e24f35a4942c2926044933936fe53d1bff4a4b3` |
| 36 | `theorem` | [jacobiOperator_standard_succ](../../../../../mathematics/Algebra/LinearAlgebra/ThetaJacobiRecurrence/Variant984de101f626c50f76e82dff612082dfecfd60bf7d6675b4e3b36cf95b91e0f3.lean/declarations/jacobioperator-standard-succ--5dcf6ba94a4a28f8418c168d.md) | 350 | `result-track:5dcf6ba94a4a28f8418c168d588a35ad4c7fb264ef18dda04f92d7310b76b08c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
