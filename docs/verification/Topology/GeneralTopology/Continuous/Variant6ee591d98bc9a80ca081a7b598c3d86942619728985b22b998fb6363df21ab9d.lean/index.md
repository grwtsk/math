# Verification target: GRWTSK.Topology.GeneralTopology.Continuous.Variant6ee591d98bc9a80ca081a7b598c3d86942619728985b22b998fb6363df21ab9d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a628721e577abcbe972a235940d811fff0e5c35f",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Continuous/Variant6ee591d98bc9a80ca081a7b598c3d86942619728985b22b998fb6363df21ab9d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Continuous/Variant6ee591d98bc9a80ca081a7b598c3d86942619728985b22b998fb6363df21ab9d.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Continuous/Variant6ee591d98bc9a80ca081a7b598c3d86942619728985b22b998fb6363df21ab9d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a628721e577abcbe972a235940d811fff0e5c35f`.

Source path: `GRWTSK/Topology/GeneralTopology/Continuous/Variant6ee591d98bc9a80ca081a7b598c3d86942619728985b22b998fb6363df21ab9d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Continuous/Variant6ee591d98bc9a80ca081a7b598c3d86942619728985b22b998fb6363df21ab9d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FCRS.Topology.Foundations` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Continuous](../../../../../mathematics/Topology/GeneralTopology/Continuous/Variant6ee591d98bc9a80ca081a7b598c3d86942619728985b22b998fb6363df21ab9d.lean/declarations/continuous--e8ed11c9f0f56118f9d11825.md) | 8 | `declaration-track:e8ed11c9f0f56118f9d11825d9b0320a27b5f8901ee268895a127b1c448c8822` |
| 2 | `theorem` | [continuous_id](../../../../../mathematics/Topology/GeneralTopology/Continuous/Variant6ee591d98bc9a80ca081a7b598c3d86942619728985b22b998fb6363df21ab9d.lean/declarations/continuous-id--dc62589546ea37ba7efc55e9.md) | 14 | `result-track:dc62589546ea37ba7efc55e996058c1eb2b57ce5df9901c2e827f34f13e1d865` |
| 3 | `theorem` | [continuous_comp](../../../../../mathematics/Topology/GeneralTopology/Continuous/Variant6ee591d98bc9a80ca081a7b598c3d86942619728985b22b998fb6363df21ab9d.lean/declarations/continuous-comp--a33de6334705c80764e8bbbd.md) | 20 | `result-track:a33de6334705c80764e8bbbdf8924511f6d291e80baf19af6648b711ceb8de53` |
| 4 | `theorem` | [continuous_congr](../../../../../mathematics/Topology/GeneralTopology/Continuous/Variant6ee591d98bc9a80ca081a7b598c3d86942619728985b22b998fb6363df21ab9d.lean/declarations/continuous-congr--5f4f5b6ef9e451831abaf193.md) | 33 | `result-track:5f4f5b6ef9e451831abaf193a60b16934e4d80897a3642093294391c04058bf3` |
| 5 | `theorem` | [continuous_from_discrete](../../../../../mathematics/Topology/GeneralTopology/Continuous/Variant6ee591d98bc9a80ca081a7b598c3d86942619728985b22b998fb6363df21ab9d.lean/declarations/continuous-from-discrete--1330e4e5d332353e9728fd54.md) | 53 | `result-track:1330e4e5d332353e9728fd54d3a5c7b754b98f5851be03f579a84a201bf4dc41` |
| 6 | `theorem` | [continuous_induced](../../../../../mathematics/Topology/GeneralTopology/Continuous/Variant6ee591d98bc9a80ca081a7b598c3d86942619728985b22b998fb6363df21ab9d.lean/declarations/continuous-induced--0be1ce2c989deb7ba93a74fb.md) | 61 | `result-track:0be1ce2c989deb7ba93a74fbec1cbadbd83e611950c7b9b92ceac0188cf5eda1` |
| 7 | `theorem` | [continuous_subtype_val](../../../../../mathematics/Topology/GeneralTopology/Continuous/Variant6ee591d98bc9a80ca081a7b598c3d86942619728985b22b998fb6363df21ab9d.lean/declarations/continuous-subtype-val--c9b003cf5fc422f43f57b479.md) | 69 | `result-track:c9b003cf5fc422f43f57b479456b9139f6c107fba47e761c4d71b7c7855e70f7` |
| 8 | `theorem` | [continuous_product_fst](../../../../../mathematics/Topology/GeneralTopology/Continuous/Variant6ee591d98bc9a80ca081a7b598c3d86942619728985b22b998fb6363df21ab9d.lean/declarations/continuous-product-fst--5ce17799852d09a0940583d3.md) | 75 | `result-track:5ce17799852d09a0940583d3b33fa3225217c956dfc5bce081c45af798e85715` |
| 9 | `theorem` | [continuous_product_snd](../../../../../mathematics/Topology/GeneralTopology/Continuous/Variant6ee591d98bc9a80ca081a7b598c3d86942619728985b22b998fb6363df21ab9d.lean/declarations/continuous-product-snd--bad04055098f0fc2e4a9eeed.md) | 83 | `result-track:bad04055098f0fc2e4a9eeed5441771746f903683f8c6e264f906de25ffa2b05` |
| 10 | `theorem` | [continuous_pi_projection](../../../../../mathematics/Topology/GeneralTopology/Continuous/Variant6ee591d98bc9a80ca081a7b598c3d86942619728985b22b998fb6363df21ab9d.lean/declarations/continuous-pi-projection--beb6d4eb0aa3cb39c27a92a8.md) | 91 | `result-track:beb6d4eb0aa3cb39c27a92a8420c77d3f3a59535e9b509036d74edc49d559520` |
| 11 | `theorem` | [continuous_product_projection](../../../../../mathematics/Topology/GeneralTopology/Continuous/Variant6ee591d98bc9a80ca081a7b598c3d86942619728985b22b998fb6363df21ab9d.lean/declarations/continuous-product-projection--d5df5cc7dd50ce73d30f26dd.md) | 99 | `result-track:d5df5cc7dd50ce73d30f26dd3e546a96b010f064ac8317557aff13210e1ee20e` |
| 12 | `theorem` | [continuous_subspace_pi_projection](../../../../../mathematics/Topology/GeneralTopology/Continuous/Variant6ee591d98bc9a80ca081a7b598c3d86942619728985b22b998fb6363df21ab9d.lean/declarations/continuous-subspace-pi-projection--24ffbaf997bd906a2b6cddfd.md) | 106 | `result-track:24ffbaf997bd906a2b6cddfd95765d959ffcc639c8f827efc0af2fdc50028a68` |
| 13 | `theorem` | [continuous_sum_inl](../../../../../mathematics/Topology/GeneralTopology/Continuous/Variant6ee591d98bc9a80ca081a7b598c3d86942619728985b22b998fb6363df21ab9d.lean/declarations/continuous-sum-inl--d1babbf66611ebd36bcfdd66.md) | 119 | `result-track:d1babbf66611ebd36bcfdd662bd2814062d7a44f2f1321616f3a43d4836de2d8` |
| 14 | `theorem` | [continuous_sum_inr](../../../../../mathematics/Topology/GeneralTopology/Continuous/Variant6ee591d98bc9a80ca081a7b598c3d86942619728985b22b998fb6363df21ab9d.lean/declarations/continuous-sum-inr--50467efdb5c608c45765285b.md) | 126 | `result-track:50467efdb5c608c45765285b3d2a22be2fe6fdc5f8bf2e59451f59e0c62e8179` |
| 15 | `theorem` | [continuous_quotientMap](../../../../../mathematics/Topology/GeneralTopology/Continuous/Variant6ee591d98bc9a80ca081a7b598c3d86942619728985b22b998fb6363df21ab9d.lean/declarations/continuous-quotientmap--864867e8447579def1f9f5ee.md) | 134 | `result-track:864867e8447579def1f9f5ee55ce4dbb2178d68f5e80723a07106ace1288aa9c` |
| 16 | `theorem` | [continuous_from_quotient_iff](../../../../../mathematics/Topology/GeneralTopology/Continuous/Variant6ee591d98bc9a80ca081a7b598c3d86942619728985b22b998fb6363df21ab9d.lean/declarations/continuous-from-quotient-iff--f5e2ff2f9753b53d214ad066.md) | 142 | `result-track:f5e2ff2f9753b53d214ad066f175307f3026569e6d16526965d81e2f412e2bc4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
