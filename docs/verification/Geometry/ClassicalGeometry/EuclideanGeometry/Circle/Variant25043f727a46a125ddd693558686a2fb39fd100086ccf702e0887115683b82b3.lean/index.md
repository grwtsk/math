# Verification target: GRWTSK.Geometry.ClassicalGeometry.EuclideanGeometry.Circle.Variant25043f727a46a125ddd693558686a2fb39fd100086ccf702e0887115683b82b3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "94467ec0661e894f5dddbd837c6779ca1cc51fdd",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Circle/Variant25043f727a46a125ddd693558686a2fb39fd100086ccf702e0887115683b82b3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Circle/Variant25043f727a46a125ddd693558686a2fb39fd100086ccf702e0887115683b82b3.lean/index.md) · [Full source](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Circle/Variant25043f727a46a125ddd693558686a2fb39fd100086ccf702e0887115683b82b3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `94467ec0661e894f5dddbd837c6779ca1cc51fdd`.

Source path: `GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Circle/Variant25043f727a46a125ddd693558686a2fb39fd100086ccf702e0887115683b82b3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/ClassicalGeometry/EuclideanGeometry/Circle/Variant25043f727a46a125ddd693558686a2fb39fd100086ccf702e0887115683b82b3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Complex.Circle` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Complex.Log` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [injective_arg](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Circle/Variant25043f727a46a125ddd693558686a2fb39fd100086ccf702e0887115683b82b3.lean/declarations/injective-arg--9506108858e0882971404e13.md) | 26 | `result-track:9506108858e0882971404e1336a12e2d4f326ba401a8c62b7d5ccd8dd8fd5532` |
| 2 | `theorem` | [arg_eq_arg](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Circle/Variant25043f727a46a125ddd693558686a2fb39fd100086ccf702e0887115683b82b3.lean/declarations/arg-eq-arg--549df8d30d1f809b0f94330d.md) | 31 | `result-track:549df8d30d1f809b0f94330d664faf921c732f13ee4dd1492a44792cdb6e9733` |
| 3 | `theorem` | [arg_expMapCircle](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Circle/Variant25043f727a46a125ddd693558686a2fb39fd100086ccf702e0887115683b82b3.lean/declarations/arg-expmapcircle--6ff69877d2df1ee94577c143.md) | 37 | `result-track:6ff69877d2df1ee94577c143dcb5d5f3672fa88a813a206b260f83b1df48f5ac` |
| 4 | `theorem` | [expMapCircle_arg](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Circle/Variant25043f727a46a125ddd693558686a2fb39fd100086ccf702e0887115683b82b3.lean/declarations/expmapcircle-arg--df82de1a8cfa10ea1403af17.md) | 42 | `result-track:df82de1a8cfa10ea1403af175140d9c6951ead4a8392a5d32c98172e4f8d712e` |
| 5 | `def` | [argLocalEquiv](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Circle/Variant25043f727a46a125ddd693558686a2fb39fd100086ccf702e0887115683b82b3.lean/declarations/arglocalequiv--5c167085adf77e16cba768b3.md) | 51 | `declaration-track:5c167085adf77e16cba768b3ce7d75dcb2de874952f19b7522363f3837fb1d17` |
| 6 | `def` | [argEquiv](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Circle/Variant25043f727a46a125ddd693558686a2fb39fd100086ccf702e0887115683b82b3.lean/declarations/argequiv--4035e8efd482b0df9258912c.md) | 64 | `declaration-track:4035e8efd482b0df9258912c949459f1110512c7106ba2168a591c6fef85ce07` |
| 7 | `theorem` | [leftInverse_expMapCircle_arg](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Circle/Variant25043f727a46a125ddd693558686a2fb39fd100086ccf702e0887115683b82b3.lean/declarations/leftinverse-expmapcircle-arg--67086b181df884c5717829da.md) | 73 | `result-track:67086b181df884c5717829da20dea45a6c81b8dc030ed8797b86f6d54920a3ca` |
| 8 | `theorem` | [invOn_arg_expMapCircle](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Circle/Variant25043f727a46a125ddd693558686a2fb39fd100086ccf702e0887115683b82b3.lean/declarations/invon-arg-expmapcircle--695bc1306389e8cdbf1b3d71.md) | 77 | `result-track:695bc1306389e8cdbf1b3d7100a90e005484f920312817e267d80d821a063f94` |
| 9 | `theorem` | [surjOn_expMapCircle_neg_pi_pi](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Circle/Variant25043f727a46a125ddd693558686a2fb39fd100086ccf702e0887115683b82b3.lean/declarations/surjon-expmapcircle-neg-pi-pi--e6d3000560eb286e0fc2a314.md) | 81 | `result-track:e6d3000560eb286e0fc2a3143f59aaaac9d4a69ca2157d3dd603e54589f1fbcf` |
| 10 | `theorem` | [expMapCircle_eq_expMapCircle](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Circle/Variant25043f727a46a125ddd693558686a2fb39fd100086ccf702e0887115683b82b3.lean/declarations/expmapcircle-eq-expmapcircle--d7ca7f7a4e1b1f75b2ca2921.md) | 85 | `result-track:d7ca7f7a4e1b1f75b2ca2921d1f03bc4a48a94ca42c978a0bf1753c425694424` |
| 11 | `theorem` | [periodic_expMapCircle](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Circle/Variant25043f727a46a125ddd693558686a2fb39fd100086ccf702e0887115683b82b3.lean/declarations/periodic-expmapcircle--b12c4bf16c3fd90d3cf6727f.md) | 93 | `result-track:b12c4bf16c3fd90d3cf6727f553680e7eaeeacbd7d13aff4aa4c82bb56445fef` |
| 12 | `theorem` | [expMapCircle_two_pi](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Circle/Variant25043f727a46a125ddd693558686a2fb39fd100086ccf702e0887115683b82b3.lean/declarations/expmapcircle-two-pi--ac2498b0b7766395b2314c2b.md) | 98 | `result-track:ac2498b0b7766395b2314c2b3eca2f4c7a8af0aa1b4cdc90e6f2b3ae64f563c1` |
| 13 | `theorem` | [expMapCircle_sub_two_pi](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Circle/Variant25043f727a46a125ddd693558686a2fb39fd100086ccf702e0887115683b82b3.lean/declarations/expmapcircle-sub-two-pi--6eb68deaf679b0f73adf6adb.md) | 102 | `result-track:6eb68deaf679b0f73adf6adbb0f269267cd34af7aeeb91cf9ffbadea364fd36e` |
| 14 | `theorem` | [expMapCircle_add_two_pi](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Circle/Variant25043f727a46a125ddd693558686a2fb39fd100086ccf702e0887115683b82b3.lean/declarations/expmapcircle-add-two-pi--258b0ff408e2749db4a56906.md) | 106 | `result-track:258b0ff408e2749db4a56906dca8d9882d7b4603523ac6826ee350b7dc95d12f` |
| 15 | `def` | [Real.Angle.expMapCircle](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Circle/Variant25043f727a46a125ddd693558686a2fb39fd100086ccf702e0887115683b82b3.lean/declarations/real-angle-expmapcircle--483c161eee5a3099b523a250.md) | 111 | `declaration-track:483c161eee5a3099b523a250ca5306f937a0ac842f9cac6d6bb9c570434d742d` |
| 16 | `theorem` | [Real.Angle.expMapCircle_coe](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Circle/Variant25043f727a46a125ddd693558686a2fb39fd100086ccf702e0887115683b82b3.lean/declarations/real-angle-expmapcircle-coe--6e0b6eb4174367849b8ee76e.md) | 116 | `result-track:6e0b6eb4174367849b8ee76e22a9edbd96a0fbf87ace7f67593856960d576230` |
| 17 | `theorem` | [Real.Angle.coe_expMapCircle](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Circle/Variant25043f727a46a125ddd693558686a2fb39fd100086ccf702e0887115683b82b3.lean/declarations/real-angle-coe-expmapcircle--64c3bc07ba078b3ac800b47d.md) | 120 | `result-track:64c3bc07ba078b3ac800b47d2a212cf6e593c2c39074a6526ce978c5d1ebf53f` |
| 18 | `theorem` | [Real.Angle.expMapCircle_zero](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Circle/Variant25043f727a46a125ddd693558686a2fb39fd100086ccf702e0887115683b82b3.lean/declarations/real-angle-expmapcircle-zero--10edee1a1322ec2e7de116d5.md) | 127 | `result-track:10edee1a1322ec2e7de116d5a31921ce9e696e7350eabef87ed177857c074607` |
| 19 | `theorem` | [Real.Angle.expMapCircle_neg](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Circle/Variant25043f727a46a125ddd693558686a2fb39fd100086ccf702e0887115683b82b3.lean/declarations/real-angle-expmapcircle-neg--86ad32b8c676f2a0362c1923.md) | 132 | `result-track:86ad32b8c676f2a0362c192367634be2f0f682ca4a1519257051bf3164bc4bcc` |
| 20 | `theorem` | [Real.Angle.expMapCircle_add](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Circle/Variant25043f727a46a125ddd693558686a2fb39fd100086ccf702e0887115683b82b3.lean/declarations/real-angle-expmapcircle-add--755578238a74f4c8746ab6a5.md) | 139 | `result-track:755578238a74f4c8746ab6a5fd6ea2285148527870fcbcb05cfa3de45a0cdb6e` |
| 21 | `theorem` | [Real.Angle.arg_expMapCircle](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Circle/Variant25043f727a46a125ddd693558686a2fb39fd100086ccf702e0887115683b82b3.lean/declarations/real-angle-arg-expmapcircle--0739c90649b099eced9893c5.md) | 147 | `result-track:0739c90649b099eced9893c5b13b1963d65dcc9eecaa8bcf7142d5df56907ed4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
