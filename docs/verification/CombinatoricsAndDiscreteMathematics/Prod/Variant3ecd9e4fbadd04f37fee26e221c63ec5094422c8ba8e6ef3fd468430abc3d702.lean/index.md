# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Prod.Variant3ecd9e4fbadd04f37fee26e221c63ec5094422c8ba8e6ef3fd468430abc3d702

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6e164198017a1cf1fa98584737c31c900ee960c7",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Prod/Variant3ecd9e4fbadd04f37fee26e221c63ec5094422c8ba8e6ef3fd468430abc3d702.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Prod/Variant3ecd9e4fbadd04f37fee26e221c63ec5094422c8ba8e6ef3fd468430abc3d702.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Prod/Variant3ecd9e4fbadd04f37fee26e221c63ec5094422c8ba8e6ef3fd468430abc3d702.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6e164198017a1cf1fa98584737c31c900ee960c7`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Prod/Variant3ecd9e4fbadd04f37fee26e221c63ec5094422c8ba8e6ef3fd468430abc3d702.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Prod/Variant3ecd9e4fbadd04f37fee26e221c63ec5094422c8ba8e6ef3fd468430abc3d702.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Lattice.Fold` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Prod` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [sup_product_left](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Prod/Variant3ecd9e4fbadd04f37fee26e221c63ec5094422c8ba8e6ef3fd468430abc3d702.lean/declarations/sup-product-left--e8d415fcef872be5bbd0ec31.md) | 32 | `result-track:e8d415fcef872be5bbd0ec314f678ee9c7ccfd26a59e178c926c27fc6a3f38d4` |
| 2 | `theorem` | [sup_product_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Prod/Variant3ecd9e4fbadd04f37fee26e221c63ec5094422c8ba8e6ef3fd468430abc3d702.lean/declarations/sup-product-right--5dd8e3ec1463addfb219eb92.md) | 36 | `result-track:5dd8e3ec1463addfb219eb920898e1fbbababa6bfd8021e1ce60a31a75905a3e` |
| 3 | `lemma` | [sup_prodMap](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Prod/Variant3ecd9e4fbadd04f37fee26e221c63ec5094422c8ba8e6ef3fd468430abc3d702.lean/declarations/sup-prodmap--9188d5af6e5b03e205c496d9.md) | 44 | `result-track:9188d5af6e5b03e205c496d9afe3d87550f430aa645d5e9a832e7e18e9e40234` |
| 4 | `theorem` | [inf_product_left](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Prod/Variant3ecd9e4fbadd04f37fee26e221c63ec5094422c8ba8e6ef3fd468430abc3d702.lean/declarations/inf-product-left--b87f11d1eb8ea42fd4222774.md) | 64 | `result-track:b87f11d1eb8ea42fd422277448cadcda3aae88b39610e58eb3689578d787808d` |
| 5 | `theorem` | [inf_product_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Prod/Variant3ecd9e4fbadd04f37fee26e221c63ec5094422c8ba8e6ef3fd468430abc3d702.lean/declarations/inf-product-right--53c6d9b18a499a33c2345c51.md) | 68 | `result-track:53c6d9b18a499a33c2345c5180fc0ff912ee57e5b5cb54d3c151428172fdf41a` |
| 6 | `lemma` | [inf_prodMap](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Prod/Variant3ecd9e4fbadd04f37fee26e221c63ec5094422c8ba8e6ef3fd468430abc3d702.lean/declarations/inf-prodmap--e5cacde08a381ebb16a5ebad.md) | 76 | `result-track:e5cacde08a381ebb16a5ebad432bee75fabf25a281824a36901c541d21644e88` |
| 7 | `theorem` | [sup_inf_sup](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Prod/Variant3ecd9e4fbadd04f37fee26e221c63ec5094422c8ba8e6ef3fd468430abc3d702.lean/declarations/sup-inf-sup--791c8912433e3ea79f4881ae.md) | 92 | `result-track:791c8912433e3ea79f4881aeb1f85bc4a83701fc3881940867aaedc016533f84` |
| 8 | `theorem` | [inf_sup_inf](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Prod/Variant3ecd9e4fbadd04f37fee26e221c63ec5094422c8ba8e6ef3fd468430abc3d702.lean/declarations/inf-sup-inf--c9febfd243a5eba9e2ac5efa.md) | 102 | `result-track:c9febfd243a5eba9e2ac5efa769f5757ce190a6cf36b5d19a3567abb785d419a` |
| 9 | `theorem` | [sup'_product_left](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Prod/Variant3ecd9e4fbadd04f37fee26e221c63ec5094422c8ba8e6ef3fd468430abc3d702.lean/declarations/sup-product-left--85bc9141edd3414d2078162f.md) | 116 | `result-track:85bc9141edd3414d2078162f4e8963296ad4147556710d36db25f8d9b7f0f099` |
| 10 | `theorem` | [sup'_product_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Prod/Variant3ecd9e4fbadd04f37fee26e221c63ec5094422c8ba8e6ef3fd468430abc3d702.lean/declarations/sup-product-right--da9dfaeb758081e7d33f318b.md) | 120 | `result-track:da9dfaeb758081e7d33f318bb6f99dd11664d6e51d0c8c1ea46288e15aae0384` |
| 11 | `lemma` | [prodMk_sup'_sup'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Prod/Variant3ecd9e4fbadd04f37fee26e221c63ec5094422c8ba8e6ef3fd468430abc3d702.lean/declarations/prodmk-sup-sup--0d6876d2d00a1a177d1e0735.md) | 128 | `result-track:0d6876d2d00a1a177d1e0735b6a201f3fcff107935670bafe35ff5270973b440` |
| 12 | `lemma` | [sup'_prodMap](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Prod/Variant3ecd9e4fbadd04f37fee26e221c63ec5094422c8ba8e6ef3fd468430abc3d702.lean/declarations/sup-prodmap--4a270ab086672f500dd94980.md) | 138 | `result-track:4a270ab086672f500dd94980bc9f06f9249b3e231c302d844f5d385614c7fcc1` |
| 13 | `theorem` | [inf'_product_left](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Prod/Variant3ecd9e4fbadd04f37fee26e221c63ec5094422c8ba8e6ef3fd468430abc3d702.lean/declarations/inf-product-left--dfa6a54ec6474cebb73938c2.md) | 152 | `result-track:dfa6a54ec6474cebb73938c2f502ba4aa69fc98206573a68282f2c7f12d50584` |
| 14 | `theorem` | [inf'_product_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Prod/Variant3ecd9e4fbadd04f37fee26e221c63ec5094422c8ba8e6ef3fd468430abc3d702.lean/declarations/inf-product-right--3c09874648d757352f959417.md) | 156 | `result-track:3c09874648d757352f959417c95308b18730b00d7baa282604c89481cb4e042d` |
| 15 | `lemma` | [prodMk_inf'_inf'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Prod/Variant3ecd9e4fbadd04f37fee26e221c63ec5094422c8ba8e6ef3fd468430abc3d702.lean/declarations/prodmk-inf-inf--ed5467b2e50ae5736b31587c.md) | 164 | `result-track:ed5467b2e50ae5736b31587ce8605acd2674f12735f8a73beb47649fdb050a95` |
| 16 | `lemma` | [inf'_prodMap](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Prod/Variant3ecd9e4fbadd04f37fee26e221c63ec5094422c8ba8e6ef3fd468430abc3d702.lean/declarations/inf-prodmap--6418e4511f08fb3565419077.md) | 170 | `result-track:6418e4511f08fb3565419077c5726e39a4a8d8c31213e384e68f905b696b6ff8` |
| 17 | `theorem` | [sup'_inf_sup'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Prod/Variant3ecd9e4fbadd04f37fee26e221c63ec5094422c8ba8e6ef3fd468430abc3d702.lean/declarations/sup-inf-sup--7344f22451349ac325fbba67.md) | 182 | `result-track:7344f22451349ac325fbba671cf42d13c74a5152077c73c5260f4faa2f887c8d` |
| 18 | `theorem` | [inf'_sup_inf'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Prod/Variant3ecd9e4fbadd04f37fee26e221c63ec5094422c8ba8e6ef3fd468430abc3d702.lean/declarations/inf-sup-inf--e53252fd90062e476f09ac48.md) | 186 | `result-track:e53252fd90062e476f09ac484bf2d50183a39f6c2371b655dbff50eecfdddf57` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
