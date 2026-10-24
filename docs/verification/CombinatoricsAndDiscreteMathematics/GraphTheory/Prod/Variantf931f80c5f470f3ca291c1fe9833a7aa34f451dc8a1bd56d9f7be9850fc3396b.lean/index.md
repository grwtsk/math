# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.Prod.Variantf931f80c5f470f3ca291c1fe9833a7aa34f451dc8a1bd56d9f7be9850fc3396b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "12b2c84447356740af6b70ed4eac96d6a769074b",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Prod/Variantf931f80c5f470f3ca291c1fe9833a7aa34f451dc8a1bd56d9f7be9850fc3396b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Prod/Variantf931f80c5f470f3ca291c1fe9833a7aa34f451dc8a1bd56d9f7be9850fc3396b.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Prod/Variantf931f80c5f470f3ca291c1fe9833a7aa34f451dc8a1bd56d9f7be9850fc3396b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `12b2c84447356740af6b70ed4eac96d6a769074b`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Prod/Variantf931f80c5f470f3ca291c1fe9833a7aa34f451dc8a1bd56d9f7be9850fc3396b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/GraphTheory/Prod/Variantf931f80c5f470f3ca291c1fe9833a7aa34f451dc8a1bd56d9f7be9850fc3396b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Combinatorics.SimpleGraph.Connectivity` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [boxProd](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Prod/Variantf931f80c5f470f3ca291c1fe9833a7aa34f451dc8a1bd56d9f7be9850fc3396b.lean/declarations/boxprod--cf85242ded6c553d6938eea0.md) | 52 | `declaration-track:cf85242ded6c553d6938eea0abc0e9b2e6a8d00f31867c79654b95134cc49630` |
| 2 | `theorem` | [boxProd_adj](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Prod/Variantf931f80c5f470f3ca291c1fe9833a7aa34f451dc8a1bd56d9f7be9850fc3396b.lean/declarations/boxprod-adj--eed732398e3b92e1eb207fc9.md) | 64 | `result-track:eed732398e3b92e1eb207fc975085e18c5531215d65ec3ee04c62b1dfad8e3b0` |
| 3 | `theorem` | [boxProd_adj_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Prod/Variantf931f80c5f470f3ca291c1fe9833a7aa34f451dc8a1bd56d9f7be9850fc3396b.lean/declarations/boxprod-adj-left--8cb45c691b91a291c9c9bd4b.md) | 69 | `result-track:8cb45c691b91a291c9c9bd4b6a2bde2cfa71c45629ed456ee264979b497fe294` |
| 4 | `theorem` | [boxProd_adj_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Prod/Variantf931f80c5f470f3ca291c1fe9833a7aa34f451dc8a1bd56d9f7be9850fc3396b.lean/declarations/boxprod-adj-right--0ca517ae957aa855c9ee35fb.md) | 74 | `result-track:0ca517ae957aa855c9ee35fb0693726e8306311ebc7664080dd57fd156676980` |
| 5 | `theorem` | [boxProd_neighborSet](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Prod/Variantf931f80c5f470f3ca291c1fe9833a7aa34f451dc8a1bd56d9f7be9850fc3396b.lean/declarations/boxprod-neighborset--a6e5f3ba2c44cb42c7e0f322.md) | 78 | `result-track:a6e5f3ba2c44cb42c7e0f322d7168b90c780da1392501bb8c1ea2b0cf0f37be3` |
| 6 | `def` | [boxProdComm](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Prod/Variantf931f80c5f470f3ca291c1fe9833a7aa34f451dc8a1bd56d9f7be9850fc3396b.lean/declarations/boxprodcomm--19c20176a03d81c7c09550ab.md) | 89 | `declaration-track:19c20176a03d81c7c09550ab9b1cbd72608ab5d00d2db6d5c74e69e593600f24` |
| 7 | `def` | [boxProdAssoc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Prod/Variantf931f80c5f470f3ca291c1fe9833a7aa34f451dc8a1bd56d9f7be9850fc3396b.lean/declarations/boxprodassoc--46bfb5d037160026a5dc07b8.md) | 94 | `declaration-track:46bfb5d037160026a5dc07b8cb4e280a7a82ea90b212ed26aeab5de009dc7ccf` |
| 8 | `def` | [boxProdLeft](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Prod/Variantf931f80c5f470f3ca291c1fe9833a7aa34f451dc8a1bd56d9f7be9850fc3396b.lean/declarations/boxprodleft--1cbb0f3c52fe1211eed81395.md) | 102 | `declaration-track:1cbb0f3c52fe1211eed81395829c397ac9f44b5b2ccc2b52170a55af20c4b677` |
| 9 | `def` | [boxProdRight](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Prod/Variantf931f80c5f470f3ca291c1fe9833a7aa34f451dc8a1bd56d9f7be9850fc3396b.lean/declarations/boxprodright--2eae4215f7f9eddc2648a510.md) | 110 | `declaration-track:2eae4215f7f9eddc2648a5105f8701265ad04731fa6c9c9bdc0dac4fe27297ae` |
| 10 | `def` | [boxProdLeft](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Prod/Variantf931f80c5f470f3ca291c1fe9833a7aa34f451dc8a1bd56d9f7be9850fc3396b.lean/declarations/boxprodleft--f7ee75bdf0ef60d71a764bb0.md) | 121 | `declaration-track:f7ee75bdf0ef60d71a764bb0a0d31899db6a5cee82ca98aaaa6bed1132566035` |
| 11 | `def` | [boxProdRight](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Prod/Variantf931f80c5f470f3ca291c1fe9833a7aa34f451dc8a1bd56d9f7be9850fc3396b.lean/declarations/boxprodright--9b3fdc41c6f4f5d104b4fe1e.md) | 128 | `declaration-track:9b3fdc41c6f4f5d104b4fe1ea777992e819639305ddee39bd59bbc74b5715f27` |
| 12 | `def` | [ofBoxProdLeft](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Prod/Variantf931f80c5f470f3ca291c1fe9833a7aa34f451dc8a1bd56d9f7be9850fc3396b.lean/declarations/ofboxprodleft--3cb190a3a93d4eedeb6f9d9b.md) | 135 | `declaration-track:3cb190a3a93d4eedeb6f9d9b707e439bd00144a950a0dd620c2574b482c574c7` |
| 13 | `def` | [ofBoxProdRight](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Prod/Variantf931f80c5f470f3ca291c1fe9833a7aa34f451dc8a1bd56d9f7be9850fc3396b.lean/declarations/ofboxprodright--cb9984182bd7f8bfe67af276.md) | 145 | `declaration-track:cb9984182bd7f8bfe67af276bcfab4d7143eff2a0176720ff82b011c0cefd368` |
| 14 | `theorem` | [ofBoxProdLeft_boxProdLeft](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Prod/Variantf931f80c5f470f3ca291c1fe9833a7aa34f451dc8a1bd56d9f7be9850fc3396b.lean/declarations/ofboxprodleft-boxprodleft--bf65511dc9ec9891293d42af.md) | 155 | `result-track:bf65511dc9ec9891293d42af737004cbc8ad682ca8d71995d4cbb79eb83de2b8` |
| 15 | `theorem` | [ofBoxProdLeft_boxProdRight](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Prod/Variantf931f80c5f470f3ca291c1fe9833a7aa34f451dc8a1bd56d9f7be9850fc3396b.lean/declarations/ofboxprodleft-boxprodright--90a9fc04ce87c7eedd14277d.md) | 165 | `result-track:90a9fc04ce87c7eedd14277dd2a1d7dd1d4e457b72024e5de375f61e3d09ae4c` |
| 16 | `theorem` | [Preconnected.boxProd](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Prod/Variantf931f80c5f470f3ca291c1fe9833a7aa34f451dc8a1bd56d9f7be9850fc3396b.lean/declarations/preconnected-boxprod--d8492cb3f41c6fe373b67871.md) | 179 | `result-track:d8492cb3f41c6fe373b6787142fbf97de88e66c4bba6522f2b58608a19b89cb2` |
| 17 | `theorem` | [Preconnected.ofBoxProdLeft](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Prod/Variantf931f80c5f470f3ca291c1fe9833a7aa34f451dc8a1bd56d9f7be9850fc3396b.lean/declarations/preconnected-ofboxprodleft--befe51ee3728fad13aad6f59.md) | 188 | `result-track:befe51ee3728fad13aad6f59e31734850af94437d9307a784f3ccac43819503f` |
| 18 | `theorem` | [Preconnected.ofBoxProdRight](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Prod/Variantf931f80c5f470f3ca291c1fe9833a7aa34f451dc8a1bd56d9f7be9850fc3396b.lean/declarations/preconnected-ofboxprodright--aecc5c53fae7c56db21b261e.md) | 196 | `result-track:aecc5c53fae7c56db21b261e0c8a1baca04e3d5ce4fdbb63642f8b9708ed31af` |
| 19 | `theorem` | [Connected.boxProd](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Prod/Variantf931f80c5f470f3ca291c1fe9833a7aa34f451dc8a1bd56d9f7be9850fc3396b.lean/declarations/connected-boxprod--f41fcd1b3a98292a995b18d5.md) | 204 | `result-track:f41fcd1b3a98292a995b18d574ebf263a59fb4aef723bee0d964d1e30bd0b329` |
| 20 | `theorem` | [Connected.ofBoxProdLeft](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Prod/Variantf931f80c5f470f3ca291c1fe9833a7aa34f451dc8a1bd56d9f7be9850fc3396b.lean/declarations/connected-ofboxprodleft--0708b97c8621dd5075d8f5f3.md) | 210 | `result-track:0708b97c8621dd5075d8f5f3cb32eccf8a454a6c73dfce440ebfa6c9d4f09bea` |
| 21 | `theorem` | [Connected.ofBoxProdRight](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Prod/Variantf931f80c5f470f3ca291c1fe9833a7aa34f451dc8a1bd56d9f7be9850fc3396b.lean/declarations/connected-ofboxprodright--b9abdf9f09ff12b1ad352936.md) | 216 | `result-track:b9abdf9f09ff12b1ad352936c311a6fe566322159c830af555a205164b1a1275` |
| 22 | `theorem` | [boxProd_connected](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Prod/Variantf931f80c5f470f3ca291c1fe9833a7aa34f451dc8a1bd56d9f7be9850fc3396b.lean/declarations/boxprod-connected--e9106cbae7913f67350067a3.md) | 223 | `result-track:e9106cbae7913f67350067a398275a653d7f385acc205c37cdec16df85981d66` |
| 23 | `instance` | [boxProdFintypeNeighborSet](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Prod/Variantf931f80c5f470f3ca291c1fe9833a7aa34f451dc8a1bd56d9f7be9850fc3396b.lean/declarations/boxprodfintypeneighborset--28959e0f9ee1930ffba30e51.md) | 227 | `declaration-track:28959e0f9ee1930ffba30e51d4fde475167fba8f5a8a33f96b52b25bf3259e20` |
| 24 | `theorem` | [boxProd_neighborFinset](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Prod/Variantf931f80c5f470f3ca291c1fe9833a7aa34f451dc8a1bd56d9f7be9850fc3396b.lean/declarations/boxprod-neighborfinset--ba5effedc234d0687db1330c.md) | 239 | `result-track:ba5effedc234d0687db1330c472ddf3b06d57aad6cc1def95b71549ae27cea93` |
| 25 | `theorem` | [boxProd_degree](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Prod/Variantf931f80c5f470f3ca291c1fe9833a7aa34f451dc8a1bd56d9f7be9850fc3396b.lean/declarations/boxprod-degree--81b1f3013670eef601ceee69.md) | 250 | `result-track:81b1f3013670eef601ceee692945c186bc6052c072efdc586110e451345f9ab6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
