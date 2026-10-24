# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Lifts.Variant0e3b2c2a7a5e400bf122ede53f3fa74c5278f5a636bdede0c524cf125aee6593

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3eecab8543616bd997e1491786c5adb6bdcc6c65",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Lifts/Variant0e3b2c2a7a5e400bf122ede53f3fa74c5278f5a636bdede0c524cf125aee6593.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/Lifts/Variant0e3b2c2a7a5e400bf122ede53f3fa74c5278f5a636bdede0c524cf125aee6593.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/Lifts/Variant0e3b2c2a7a5e400bf122ede53f3fa74c5278f5a636bdede0c524cf125aee6593.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3eecab8543616bd997e1491786c5adb6bdcc6c65`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Lifts/Variant0e3b2c2a7a5e400bf122ede53f3fa74c5278f5a636bdede0c524cf125aee6593.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Lifts/Variant0e3b2c2a7a5e400bf122ede53f3fa74c5278f5a636bdede0c524cf125aee6593.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Polynomial.AlgebraMap` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Polynomial.Monic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [lifts](../../../../../mathematics/Algebra/CommutativeAlgebra/Lifts/Variant0e3b2c2a7a5e400bf122ede53f3fa74c5278f5a636bdede0c524cf125aee6593.lean/declarations/lifts--166e3eeae735ec22fa7c87cb.md) | 65 | `declaration-track:166e3eeae735ec22fa7c87cb28e7c8b9900f05d16df0567a1e2b8a21f40eab2d` |
| 2 | `theorem` | [mem_lifts](../../../../../mathematics/Algebra/CommutativeAlgebra/Lifts/Variant0e3b2c2a7a5e400bf122ede53f3fa74c5278f5a636bdede0c524cf125aee6593.lean/declarations/mem-lifts--d62cd6ea18f5e4f68229c92c.md) | 69 | `result-track:d62cd6ea18f5e4f68229c92c45f5bdc11606e790cb66035f47e8d66f3672078e` |
| 3 | `theorem` | [lifts_iff_set_range](../../../../../mathematics/Algebra/CommutativeAlgebra/Lifts/Variant0e3b2c2a7a5e400bf122ede53f3fa74c5278f5a636bdede0c524cf125aee6593.lean/declarations/lifts-iff-set-range--823e64e5ed6050fec296004e.md) | 73 | `result-track:823e64e5ed6050fec296004eea924aa1d937b67d59cc69f0d34a4a6f30aebd8b` |
| 4 | `theorem` | [lifts_iff_ringHom_rangeS](../../../../../mathematics/Algebra/CommutativeAlgebra/Lifts/Variant0e3b2c2a7a5e400bf122ede53f3fa74c5278f5a636bdede0c524cf125aee6593.lean/declarations/lifts-iff-ringhom-ranges--ca72ae8d19b243ebcc0537d8.md) | 77 | `result-track:ca72ae8d19b243ebcc0537d8d2e65ffa9d69eccaacb8900a37ece40c53a59c3a` |
| 5 | `theorem` | [lifts_iff_coeff_lifts](../../../../../mathematics/Algebra/CommutativeAlgebra/Lifts/Variant0e3b2c2a7a5e400bf122ede53f3fa74c5278f5a636bdede0c524cf125aee6593.lean/declarations/lifts-iff-coeff-lifts--3fd13aed3a4046a70884703d.md) | 81 | `result-track:3fd13aed3a4046a70884703da688690235d7ead414a4f2d6e536344461a3fae1` |
| 6 | `theorem` | [C_mem_lifts](../../../../../mathematics/Algebra/CommutativeAlgebra/Lifts/Variant0e3b2c2a7a5e400bf122ede53f3fa74c5278f5a636bdede0c524cf125aee6593.lean/declarations/c-mem-lifts--4e17385f58a5519fb66c5278.md) | 87 | `result-track:4e17385f58a5519fb66c527848f0e428024f9fc96badf5f4096cea4d3abde216` |
| 7 | `theorem` | [C'_mem_lifts](../../../../../mathematics/Algebra/CommutativeAlgebra/Lifts/Variant0e3b2c2a7a5e400bf122ede53f3fa74c5278f5a636bdede0c524cf125aee6593.lean/declarations/c-mem-lifts--340391ead749767c56eeb8aa.md) | 95 | `result-track:340391ead749767c56eeb8aaf132a6f87f11c59c679099bd070135bf5a3e93e5` |
| 8 | `theorem` | [X_mem_lifts](../../../../../mathematics/Algebra/CommutativeAlgebra/Lifts/Variant0e3b2c2a7a5e400bf122ede53f3fa74c5278f5a636bdede0c524cf125aee6593.lean/declarations/x-mem-lifts--dcef093fb768853b0c524458.md) | 104 | `result-track:dcef093fb768853b0c5244589027ac44fc083c59e37099539928b7efd8f9f0c9` |
| 9 | `theorem` | [X_pow_mem_lifts](../../../../../mathematics/Algebra/CommutativeAlgebra/Lifts/Variant0e3b2c2a7a5e400bf122ede53f3fa74c5278f5a636bdede0c524cf125aee6593.lean/declarations/x-pow-mem-lifts--3a52ab00413360f5bd7d6c31.md) | 112 | `result-track:3a52ab00413360f5bd7d6c31fdb2c54d2baa493a5ca049be750e41f3d5eac201` |
| 10 | `theorem` | [base_mul_mem_lifts](../../../../../mathematics/Algebra/CommutativeAlgebra/Lifts/Variant0e3b2c2a7a5e400bf122ede53f3fa74c5278f5a636bdede0c524cf125aee6593.lean/declarations/base-mul-mem-lifts--38220fb5be9f8f2132a83a14.md) | 120 | `result-track:38220fb5be9f8f2132a83a1440df061c911d9cb4d29619cc8a0afc0f807e86b7` |
| 11 | `theorem` | [monomial_mem_lifts](../../../../../mathematics/Algebra/CommutativeAlgebra/Lifts/Variant0e3b2c2a7a5e400bf122ede53f3fa74c5278f5a636bdede0c524cf125aee6593.lean/declarations/monomial-mem-lifts--78da19dd4ce7ef9c1030a4c1.md) | 128 | `result-track:78da19dd4ce7ef9c1030a4c130bb87b0b06861510f3ac9ed8f0d7acf43f1c354` |
| 12 | `theorem` | [erase_mem_lifts](../../../../../mathematics/Algebra/CommutativeAlgebra/Lifts/Variant0e3b2c2a7a5e400bf122ede53f3fa74c5278f5a636bdede0c524cf125aee6593.lean/declarations/erase-mem-lifts--aea90e50e26d999b1b0b0e0e.md) | 136 | `result-track:aea90e50e26d999b1b0b0e0ebb2627d24b2cd8bfe2bee8db229bcd57c388e676` |
| 13 | `theorem` | [monomial_mem_lifts_and_degree_eq](../../../../../mathematics/Algebra/CommutativeAlgebra/Lifts/Variant0e3b2c2a7a5e400bf122ede53f3fa74c5278f5a636bdede0c524cf125aee6593.lean/declarations/monomial-mem-lifts-and-degree-eq--598edb1b34400b6d63108360.md) | 149 | `result-track:598edb1b34400b6d6310836068712735df48ee42162afe9852e274768c529f27` |
| 14 | `theorem` | [mem_lifts_and_degree_eq](../../../../../mathematics/Algebra/CommutativeAlgebra/Lifts/Variant0e3b2c2a7a5e400bf122ede53f3fa74c5278f5a636bdede0c524cf125aee6593.lean/declarations/mem-lifts-and-degree-eq--bcdcb7415a583d08c0e7e261.md) | 174 | `result-track:bcdcb7415a583d08c0e7e2612a900207c5ab5a371b8aeed4f1a5b8d6077ee1e6` |
| 15 | `theorem` | [lifts_and_degree_eq_and_monic](../../../../../mathematics/Algebra/CommutativeAlgebra/Lifts/Variant0e3b2c2a7a5e400bf122ede53f3fa74c5278f5a636bdede0c524cf125aee6593.lean/declarations/lifts-and-degree-eq-and-monic--ea492f95dd4a71e203ae866c.md) | 219 | `result-track:ea492f95dd4a71e203ae866c65c5295d358749d5e682c396447348911de736e8` |
| 16 | `theorem` | [lifts_and_natDegree_eq_and_monic](../../../../../mathematics/Algebra/CommutativeAlgebra/Lifts/Variant0e3b2c2a7a5e400bf122ede53f3fa74c5278f5a636bdede0c524cf125aee6593.lean/declarations/lifts-and-natdegree-eq-and-monic--90648956f2c8d02450bc9672.md) | 241 | `result-track:90648956f2c8d02450bc967291c3d5d3519d1ab8bc4a19cb2f439a974229ba5e` |
| 17 | `def` | [liftsRing](../../../../../mathematics/Algebra/CommutativeAlgebra/Lifts/Variant0e3b2c2a7a5e400bf122ede53f3fa74c5278f5a636bdede0c524cf125aee6593.lean/declarations/liftsring--42e80485888e1e06053aef2f.md) | 259 | `declaration-track:42e80485888e1e06053aef2fcd8e398732359c20c76868056e83e16e0809760d` |
| 18 | `theorem` | [lifts_iff_liftsRing](../../../../../mathematics/Algebra/CommutativeAlgebra/Lifts/Variant0e3b2c2a7a5e400bf122ede53f3fa74c5278f5a636bdede0c524cf125aee6593.lean/declarations/lifts-iff-liftsring--4285ee91b740458a6024850c.md) | 265 | `result-track:4285ee91b740458a6024850c78e233aa2399f845cb8d9a91dd0587508bf0b2b5` |
| 19 | `def` | [mapAlg](../../../../../mathematics/Algebra/CommutativeAlgebra/Lifts/Variant0e3b2c2a7a5e400bf122ede53f3fa74c5278f5a636bdede0c524cf125aee6593.lean/declarations/mapalg--ecbb0ddd3c5540cd5f72ea0d.md) | 276 | `declaration-track:ecbb0ddd3c5540cd5f72ea0d088b53eebcb1e14861213486c9bf6fb56749f023` |
| 20 | `theorem` | [mapAlg_eq_map](../../../../../mathematics/Algebra/CommutativeAlgebra/Lifts/Variant0e3b2c2a7a5e400bf122ede53f3fa74c5278f5a636bdede0c524cf125aee6593.lean/declarations/mapalg-eq-map--3751260e5d5b4bae8809d4ab.md) | 282 | `result-track:3751260e5d5b4bae8809d4ab5cf93aab81eb7e5a6ed9a3305fd6c850d995e2c7` |
| 21 | `theorem` | [mem_lifts_iff_mem_alg](../../../../../mathematics/Algebra/CommutativeAlgebra/Lifts/Variant0e3b2c2a7a5e400bf122ede53f3fa74c5278f5a636bdede0c524cf125aee6593.lean/declarations/mem-lifts-iff-mem-alg--0f89e246147eb70f88023f91.md) | 288 | `result-track:0f89e246147eb70f88023f91517b6d08d1595d9fbc18a475872660ad40890029` |
| 22 | `theorem` | [smul_mem_lifts](../../../../../mathematics/Algebra/CommutativeAlgebra/Lifts/Variant0e3b2c2a7a5e400bf122ede53f3fa74c5278f5a636bdede0c524cf125aee6593.lean/declarations/smul-mem-lifts--e953e7dcfc297b5feeaa1291.md) | 294 | `result-track:e953e7dcfc297b5feeaa129184b93714bba7d32cc0104165fac9377551e2637c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
