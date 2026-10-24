# Verification target: GRWTSK.Algebra.RingTheory.Dickson.Variant869d1794ba8be629f8de7ac1f4950dce8e066c4b6b68a1176d284b309ae0544f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "aee0c850d5b64f09725bda3c041300767deefc52",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/RingTheory/Dickson/Variant869d1794ba8be629f8de7ac1f4950dce8e066c4b6b68a1176d284b309ae0544f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/RingTheory/Dickson/Variant869d1794ba8be629f8de7ac1f4950dce8e066c4b6b68a1176d284b309ae0544f.lean/index.md) · [Full source](../../../../../mathematics/Algebra/RingTheory/Dickson/Variant869d1794ba8be629f8de7ac1f4950dce8e066c4b6b68a1176d284b309ae0544f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `aee0c850d5b64f09725bda3c041300767deefc52`.

Source path: `GRWTSK/Algebra/RingTheory/Dickson/Variant869d1794ba8be629f8de7ac1f4950dce8e066c4b6b68a1176d284b309ae0544f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/RingTheory/Dickson/Variant869d1794ba8be629f8de7ac1f4950dce8e066c4b6b68a1176d284b309ae0544f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.CharP.Algebra` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.CharP.Invertible` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.CharP.Lemmas` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.EuclideanDomain.Field` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Field.ZMod` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Polynomial.Roots` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Polynomial.Chebyshev` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [dickson](../../../../../mathematics/Algebra/RingTheory/Dickson/Variant869d1794ba8be629f8de7ac1f4950dce8e066c4b6b68a1176d284b309ae0544f.lean/declarations/dickson--1dad5b0d1b91ad779884f795.md) | 59 | `declaration-track:1dad5b0d1b91ad779884f79500a3cda5425002b2bc60d62030657d5dee2b2bc7` |
| 2 | `theorem` | [dickson_zero](../../../../../mathematics/Algebra/RingTheory/Dickson/Variant869d1794ba8be629f8de7ac1f4950dce8e066c4b6b68a1176d284b309ae0544f.lean/declarations/dickson-zero--2c06ed6aa7fd02830e6b0b9f.md) | 65 | `result-track:2c06ed6aa7fd02830e6b0b9fd1af473290301b1af5c4e6b6780b64418b7fdc0a` |
| 3 | `theorem` | [dickson_one](../../../../../mathematics/Algebra/RingTheory/Dickson/Variant869d1794ba8be629f8de7ac1f4950dce8e066c4b6b68a1176d284b309ae0544f.lean/declarations/dickson-one--fd90f5310d672d8be73f14d8.md) | 69 | `result-track:fd90f5310d672d8be73f14d86bc4eb8ee1225750e7e0f01fb62afd8a0aeb8a6c` |
| 4 | `theorem` | [dickson_two](../../../../../mathematics/Algebra/RingTheory/Dickson/Variant869d1794ba8be629f8de7ac1f4950dce8e066c4b6b68a1176d284b309ae0544f.lean/declarations/dickson-two--6a34af19941acb7b96eb4ade.md) | 72 | `result-track:6a34af19941acb7b96eb4ade7e51b619138f386c693da36d62c327f2eeab7d92` |
| 5 | `theorem` | [dickson_add_two](../../../../../mathematics/Algebra/RingTheory/Dickson/Variant869d1794ba8be629f8de7ac1f4950dce8e066c4b6b68a1176d284b309ae0544f.lean/declarations/dickson-add-two--c08e13efa6d5615325da15d4.md) | 76 | `result-track:c08e13efa6d5615325da15d432cac93a7b6fe275b8c58479e3d69c79e4b9a018` |
| 6 | `theorem` | [dickson_of_two_le](../../../../../mathematics/Algebra/RingTheory/Dickson/Variant869d1794ba8be629f8de7ac1f4950dce8e066c4b6b68a1176d284b309ae0544f.lean/declarations/dickson-of-two-le--35eed176ca44b8be817c99c9.md) | 79 | `result-track:35eed176ca44b8be817c99c910b2703ea5174923d5b0138771dd814a6dd04e6b` |
| 7 | `theorem` | [map_dickson](../../../../../mathematics/Algebra/RingTheory/Dickson/Variant869d1794ba8be629f8de7ac1f4950dce8e066c4b6b68a1176d284b309ae0544f.lean/declarations/map-dickson--862b73d0e2f96ca25860fb17.md) | 87 | `result-track:862b73d0e2f96ca25860fb1759a26c82a8e213ade248a39393f2a2427f10a59a` |
| 8 | `theorem` | [dickson_two_zero](../../../../../mathematics/Algebra/RingTheory/Dickson/Variant869d1794ba8be629f8de7ac1f4950dce8e066c4b6b68a1176d284b309ae0544f.lean/declarations/dickson-two-zero--10f3a2a932f18f26582ddabe.md) | 96 | `result-track:10f3a2a932f18f26582ddabed0adb79c4f841a462454ee12ae2e7e8ef1f7f2a5` |
| 9 | `theorem` | [dickson_one_one_eval_add_inv](../../../../../mathematics/Algebra/RingTheory/Dickson/Variant869d1794ba8be629f8de7ac1f4950dce8e066c4b6b68a1176d284b309ae0544f.lean/declarations/dickson-one-one-eval-add-inv--de59685276bbf1751c9402c5.md) | 118 | `result-track:de59685276bbf1751c9402c50dbf181dcca690df3083b3397d29e239233534e2` |
| 10 | `theorem` | [two_mul_C_half_eq_one](../../../../../mathematics/Algebra/RingTheory/Dickson/Variant869d1794ba8be629f8de7ac1f4950dce8e066c4b6b68a1176d284b309ae0544f.lean/declarations/two-mul-c-half-eq-one--d9227fcb86aaf85083c87b29.md) | 132 | `result-track:d9227fcb86aaf85083c87b29e6e73737751cda991755f35afc295f1243291729` |
| 11 | `theorem` | [C_half_mul_two_eq_one](../../../../../mathematics/Algebra/RingTheory/Dickson/Variant869d1794ba8be629f8de7ac1f4950dce8e066c4b6b68a1176d284b309ae0544f.lean/declarations/c-half-mul-two-eq-one--7a4368cb544971177e1e1e52.md) | 135 | `result-track:7a4368cb544971177e1e1e520d379a7f039b8b58d2d755e3661a3be3676edfd5` |
| 12 | `theorem` | [dickson_one_one_eq_chebyshev_C](../../../../../mathematics/Algebra/RingTheory/Dickson/Variant869d1794ba8be629f8de7ac1f4950dce8e066c4b6b68a1176d284b309ae0544f.lean/declarations/dickson-one-one-eq-chebyshev-c--14539fdf21c872dbd4e0f284.md) | 138 | `result-track:14539fdf21c872dbd4e0f284c1faf5fcd123deda947bdf8fd1c8952b93721e2a` |
| 13 | `theorem` | [dickson_one_one_eq_chebyshev_T](../../../../../mathematics/Algebra/RingTheory/Dickson/Variant869d1794ba8be629f8de7ac1f4950dce8e066c4b6b68a1176d284b309ae0544f.lean/declarations/dickson-one-one-eq-chebyshev-t--520089e370e711882ec26b38.md) | 150 | `result-track:520089e370e711882ec26b38c5046a8cdf5642ee5e6219a59f791273b7902517` |
| 14 | `theorem` | [chebyshev_T_eq_dickson_one_one](../../../../../mathematics/Algebra/RingTheory/Dickson/Variant869d1794ba8be629f8de7ac1f4950dce8e066c4b6b68a1176d284b309ae0544f.lean/declarations/chebyshev-t-eq-dickson-one-one--fb8257f97988bad35fb0c1e7.md) | 154 | `result-track:fb8257f97988bad35fb0c1e70a70500c63279c43b540c54d48074ca6a02a5566` |
| 15 | `theorem` | [dickson_two_one_eq_chebyshev_S](../../../../../mathematics/Algebra/RingTheory/Dickson/Variant869d1794ba8be629f8de7ac1f4950dce8e066c4b6b68a1176d284b309ae0544f.lean/declarations/dickson-two-one-eq-chebyshev-s--e3cd7e4549ac3ff7c5018b70.md) | 158 | `result-track:e3cd7e4549ac3ff7c5018b70ddac5238f5335a612047dfeba33cf8be5107f36d` |
| 16 | `theorem` | [dickson_two_one_eq_chebyshev_U](../../../../../mathematics/Algebra/RingTheory/Dickson/Variant869d1794ba8be629f8de7ac1f4950dce8e066c4b6b68a1176d284b309ae0544f.lean/declarations/dickson-two-one-eq-chebyshev-u--ba666a216de6d8bb8b74025e.md) | 170 | `result-track:ba666a216de6d8bb8b74025e7f0a502138910fbbf373dd85a17723928d4a5793` |
| 17 | `theorem` | [chebyshev_U_eq_dickson_two_one](../../../../../mathematics/Algebra/RingTheory/Dickson/Variant869d1794ba8be629f8de7ac1f4950dce8e066c4b6b68a1176d284b309ae0544f.lean/declarations/chebyshev-u-eq-dickson-two-one--a3a05181024ae367d4197a84.md) | 174 | `result-track:a3a05181024ae367d4197a841b0182176d4ee73af4988d9b6952d079930389cf` |
| 18 | `theorem` | [dickson_one_one_mul](../../../../../mathematics/Algebra/RingTheory/Dickson/Variant869d1794ba8be629f8de7ac1f4950dce8e066c4b6b68a1176d284b309ae0544f.lean/declarations/dickson-one-one-mul--308ca22ab37081431c3547c9.md) | 180 | `result-track:308ca22ab37081431c3547c9665496526fb75074ae270a336b1dc51c883acb19` |
| 19 | `theorem` | [dickson_one_one_comp_comm](../../../../../mathematics/Algebra/RingTheory/Dickson/Variant869d1794ba8be629f8de7ac1f4950dce8e066c4b6b68a1176d284b309ae0544f.lean/declarations/dickson-one-one-comp-comm--877cb67c100d1c8c50a5d59d.md) | 195 | `result-track:877cb67c100d1c8c50a5d59d6ce3ba1753f91e285bd268c72a6b317370a43cbe` |
| 20 | `theorem` | [dickson_one_one_zmod_p](../../../../../mathematics/Algebra/RingTheory/Dickson/Variant869d1794ba8be629f8de7ac1f4950dce8e066c4b6b68a1176d284b309ae0544f.lean/declarations/dickson-one-one-zmod-p--348d6e3b4396480866a66692.md) | 199 | `result-track:348d6e3b4396480866a66692fa6db3b329b06423de95039ded1cce20c88a0ff0` |
| 21 | `theorem` | [dickson_one_one_charP](../../../../../mathematics/Algebra/RingTheory/Dickson/Variant869d1794ba8be629f8de7ac1f4950dce8e066c4b6b68a1176d284b309ae0544f.lean/declarations/dickson-one-one-charp--ace671a7824decf83f6aa5a0.md) | 266 | `result-track:ace671a7824decf83f6aa5a0d92450aa96d257b3f0e3be26934345c6d5426e5b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
