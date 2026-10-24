# Verification target: GRWTSK.Algebra.GroupTheory.Quaternion.Variant85f2f037e8f4f8dc72eec233932d734ade28bf8f5e99e3553bb2542b48bb8e26

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6bec925b9a2a3d0350b7c9263a651c0290bf74e0",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Quaternion/Variant85f2f037e8f4f8dc72eec233932d734ade28bf8f5e99e3553bb2542b48bb8e26.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Quaternion/Variant85f2f037e8f4f8dc72eec233932d734ade28bf8f5e99e3553bb2542b48bb8e26.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Quaternion/Variant85f2f037e8f4f8dc72eec233932d734ade28bf8f5e99e3553bb2542b48bb8e26.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6bec925b9a2a3d0350b7c9263a651c0290bf74e0`.

Source path: `GRWTSK/Algebra/GroupTheory/Quaternion/Variant85f2f037e8f4f8dc72eec233932d734ade28bf8f5e99e3553bb2542b48bb8e26.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Quaternion/Variant85f2f037e8f4f8dc72eec233932d734ade28bf8f5e99e3553bb2542b48bb8e26.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.GroupTheory.SpecificGroups.Cyclic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.SpecificGroups.Dihedral` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [QuaternionGroup](../../../../../mathematics/Algebra/GroupTheory/Quaternion/Variant85f2f037e8f4f8dc72eec233932d734ade28bf8f5e99e3553bb2542b48bb8e26.lean/declarations/quaterniongroup--5393849157e0e86007e78143.md) | 56 | `declaration-track:5393849157e0e86007e78143aae5f0620571f49eaf40495069e60b76b61663ee` |
| 2 | `def` | [mul](../../../../../mathematics/Algebra/GroupTheory/Quaternion/Variant85f2f037e8f4f8dc72eec233932d734ade28bf8f5e99e3553bb2542b48bb8e26.lean/declarations/mul--244149abdeeae96f3ff794c6.md) | 67 | `declaration-track:244149abdeeae96f3ff794c69db804e343f7abaad819654e18d924f2215bf6f5` |
| 3 | `def` | [one](../../../../../mathematics/Algebra/GroupTheory/Quaternion/Variant85f2f037e8f4f8dc72eec233932d734ade28bf8f5e99e3553bb2542b48bb8e26.lean/declarations/one--a6bb41735691af4130284959.md) | 75 | `declaration-track:a6bb41735691af41302849593027f20bda864d4376d27168dcac1d2ede1b5b60` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Quaternion/Variant85f2f037e8f4f8dc72eec233932d734ade28bf8f5e99e3553bb2542b48bb8e26.lean/declarations/instance--8564f9b11022237f6f37d40b.md) | 78 | `declaration-track:8564f9b11022237f6f37d40b5c1e116411b1e05700deb33954a3e89f9260a24a` |
| 5 | `def` | [inv](../../../../../mathematics/Algebra/GroupTheory/Quaternion/Variant85f2f037e8f4f8dc72eec233932d734ade28bf8f5e99e3553bb2542b48bb8e26.lean/declarations/inv--f1b35bd1040f78bed30c6bb0.md) | 83 | `declaration-track:f1b35bd1040f78bed30c6bb02b7f07e97510d216a6dc0db5d9403a69371c84a6` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Quaternion/Variant85f2f037e8f4f8dc72eec233932d734ade28bf8f5e99e3553bb2542b48bb8e26.lean/declarations/instance--06575b42bdf8600d0b13d56d.md) | 89 | `declaration-track:06575b42bdf8600d0b13d56d4d96a1880b62b6287f9b83e2aaa6d793bc6a79ee` |
| 7 | `theorem` | [a_mul_a](../../../../../mathematics/Algebra/GroupTheory/Quaternion/Variant85f2f037e8f4f8dc72eec233932d734ade28bf8f5e99e3553bb2542b48bb8e26.lean/declarations/a-mul-a--9fc8c4ca9805a4f00f262aa6.md) | 114 | `result-track:9fc8c4ca9805a4f00f262aa66724595e0868245e2e0d1891440247b1e4cf9ad4` |
| 8 | `theorem` | [a_mul_xa](../../../../../mathematics/Algebra/GroupTheory/Quaternion/Variant85f2f037e8f4f8dc72eec233932d734ade28bf8f5e99e3553bb2542b48bb8e26.lean/declarations/a-mul-xa--35abd28e2f9f7ef564a1e0fa.md) | 118 | `result-track:35abd28e2f9f7ef564a1e0fa9e0b5988628cb56aa14276db9ea996010cf19b33` |
| 9 | `theorem` | [xa_mul_a](../../../../../mathematics/Algebra/GroupTheory/Quaternion/Variant85f2f037e8f4f8dc72eec233932d734ade28bf8f5e99e3553bb2542b48bb8e26.lean/declarations/xa-mul-a--b122c95d03af2a10129a7261.md) | 122 | `result-track:b122c95d03af2a10129a7261bdaa368e1ea182e02357a4b05c45c1cbb7a4fe2d` |
| 10 | `theorem` | [xa_mul_xa](../../../../../mathematics/Algebra/GroupTheory/Quaternion/Variant85f2f037e8f4f8dc72eec233932d734ade28bf8f5e99e3553bb2542b48bb8e26.lean/declarations/xa-mul-xa--3eaffa9e1b70027dcbc600cf.md) | 126 | `result-track:3eaffa9e1b70027dcbc600cf8b7912bf43b76712719018ae9bba4051f64e32bd` |
| 11 | `theorem` | [a_zero](../../../../../mathematics/Algebra/GroupTheory/Quaternion/Variant85f2f037e8f4f8dc72eec233932d734ade28bf8f5e99e3553bb2542b48bb8e26.lean/declarations/a-zero--9d6e49a89e019d5f8a0aebf6.md) | 130 | `result-track:9d6e49a89e019d5f8a0aebf6c18c0dbe8207b35a8bc7d35c4a92da89770828a6` |
| 12 | `theorem` | [one_def](../../../../../mathematics/Algebra/GroupTheory/Quaternion/Variant85f2f037e8f4f8dc72eec233932d734ade28bf8f5e99e3553bb2542b48bb8e26.lean/declarations/one-def--fbda09e09224dfc6dfc2d6b4.md) | 133 | `result-track:fbda09e09224dfc6dfc2d6b43a8cebbbeed6818ed9a62e6f608df88234904081` |
| 13 | `def` | [fintypeHelper](../../../../../mathematics/Algebra/GroupTheory/Quaternion/Variant85f2f037e8f4f8dc72eec233932d734ade28bf8f5e99e3553bb2542b48bb8e26.lean/declarations/fintypehelper--71c38154e294ba9ef4d39b07.md) | 136 | `declaration-track:71c38154e294ba9ef4d39b072c992b7b3d4b623b0fd7b14b9f67b978a2745ffd` |
| 14 | `def` | [quaternionGroupZeroEquivDihedralGroupZero](../../../../../mathematics/Algebra/GroupTheory/Quaternion/Variant85f2f037e8f4f8dc72eec233932d734ade28bf8f5e99e3553bb2542b48bb8e26.lean/declarations/quaterniongroupzeroequivdihedralgroupzero--9c0a3b00eae8d4ce625c928f.md) | 150 | `declaration-track:9c0a3b00eae8d4ce625c928fd0ccd68f057e6d2290629e4985b63bc6228f1a1d` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Quaternion/Variant85f2f037e8f4f8dc72eec233932d734ade28bf8f5e99e3553bb2542b48bb8e26.lean/declarations/instance--b7bd65615f59d87d462b3cf5.md) | 163 | `declaration-track:b7bd65615f59d87d462b3cf574b473fd18f7ff28e0e5ce2a7f45d56f612c3ef5` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Quaternion/Variant85f2f037e8f4f8dc72eec233932d734ade28bf8f5e99e3553bb2542b48bb8e26.lean/declarations/instance--b88b7d7a4154f469be8cd8da.md) | 166 | `declaration-track:b88b7d7a4154f469be8cd8da8741d2daafa9bcf91579aabba1b2cf9299a9a1c8` |
| 17 | `theorem` | [card](../../../../../mathematics/Algebra/GroupTheory/Quaternion/Variant85f2f037e8f4f8dc72eec233932d734ade28bf8f5e99e3553bb2542b48bb8e26.lean/declarations/card--9f7f062673dfea8ebe96f1d1.md) | 171 | `result-track:9f7f062673dfea8ebe96f1d1cf555ceecde169cb047c2eab008ec1cbcaf1b23c` |
| 18 | `theorem` | [a_one_pow](../../../../../mathematics/Algebra/GroupTheory/Quaternion/Variant85f2f037e8f4f8dc72eec233932d734ade28bf8f5e99e3553bb2542b48bb8e26.lean/declarations/a-one-pow--9d527a0041481bbdc0773613.md) | 176 | `result-track:9d527a0041481bbdc077361393e52e288ea1c698f8dcf082802a4eacea6d24fb` |
| 19 | `theorem` | [a_one_pow_n](../../../../../mathematics/Algebra/GroupTheory/Quaternion/Variant85f2f037e8f4f8dc72eec233932d734ade28bf8f5e99e3553bb2542b48bb8e26.lean/declarations/a-one-pow-n--5a744c23e8066f940afa28ce.md) | 183 | `result-track:5a744c23e8066f940afa28ce3bc21d211245101cb71e6d189aab5fb97e548065` |
| 20 | `theorem` | [xa_sq](../../../../../mathematics/Algebra/GroupTheory/Quaternion/Variant85f2f037e8f4f8dc72eec233932d734ade28bf8f5e99e3553bb2542b48bb8e26.lean/declarations/xa-sq--d848fd65111c762c00bc0e91.md) | 187 | `result-track:d848fd65111c762c00bc0e9133db0a4182a77900e6f3375ff51c6632d9171123` |
| 21 | `theorem` | [xa_pow_four](../../../../../mathematics/Algebra/GroupTheory/Quaternion/Variant85f2f037e8f4f8dc72eec233932d734ade28bf8f5e99e3553bb2542b48bb8e26.lean/declarations/xa-pow-four--29594213753dd9f51b0249ac.md) | 190 | `result-track:29594213753dd9f51b0249acf7184ca8132095f38cb1a99752d85a334218fa91` |
| 22 | `theorem` | [orderOf_xa](../../../../../mathematics/Algebra/GroupTheory/Quaternion/Variant85f2f037e8f4f8dc72eec233932d734ade28bf8f5e99e3553bb2542b48bb8e26.lean/declarations/orderof-xa--770bea6bd841f01697cec5b9.md) | 199 | `result-track:770bea6bd841f01697cec5b9d32aa5750d8db75b8a10d77e1681b49bfa745313` |
| 23 | `theorem` | [quaternionGroup_one_isCyclic](../../../../../mathematics/Algebra/GroupTheory/Quaternion/Variant85f2f037e8f4f8dc72eec233932d734ade28bf8f5e99e3553bb2542b48bb8e26.lean/declarations/quaterniongroup-one-iscyclic--e938ab802d5705422ed32c50.md) | 213 | `result-track:e938ab802d5705422ed32c50a7aa5381c9d20179591c98b9f45bc89a1872f01c` |
| 24 | `theorem` | [orderOf_a_one](../../../../../mathematics/Algebra/GroupTheory/Quaternion/Variant85f2f037e8f4f8dc72eec233932d734ade28bf8f5e99e3553bb2542b48bb8e26.lean/declarations/orderof-a-one--b739db804b0080ee9891f6b3.md) | 221 | `result-track:b739db804b0080ee9891f6b366de31ed5bda7f062a77efd46aca3fa430410fd8` |
| 25 | `theorem` | [orderOf_a](../../../../../mathematics/Algebra/GroupTheory/Quaternion/Variant85f2f037e8f4f8dc72eec233932d734ade28bf8f5e99e3553bb2542b48bb8e26.lean/declarations/orderof-a--6ab204e18007bd980111a9a9.md) | 241 | `result-track:6ab204e18007bd980111a9a96de39df44e02beb0d786fba78cf20b5cdbc4b4e5` |
| 26 | `theorem` | [exponent](../../../../../mathematics/Algebra/GroupTheory/Quaternion/Variant85f2f037e8f4f8dc72eec233932d734ade28bf8f5e99e3553bb2542b48bb8e26.lean/declarations/exponent--25e8d24a88cc3bd29517ff62.md) | 246 | `result-track:25e8d24a88cc3bd29517ff6209bc4ef30c0096fad2d493fcf7ac4cd8b51e798e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
