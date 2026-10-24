# Verification target: GRWTSK.Topology.GeneralTopology.Basic.Variant384eda8b2c9fc7c91ebeb4447ae0b3fa4d045949080adbe1577c0eb21f8a72c7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "05a6847518c9a5b414e4b715b8c551dd443090a8",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Basic/Variant384eda8b2c9fc7c91ebeb4447ae0b3fa4d045949080adbe1577c0eb21f8a72c7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant384eda8b2c9fc7c91ebeb4447ae0b3fa4d045949080adbe1577c0eb21f8a72c7.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant384eda8b2c9fc7c91ebeb4447ae0b3fa4d045949080adbe1577c0eb21f8a72c7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `05a6847518c9a5b414e4b715b8c551dd443090a8`.

Source path: `GRWTSK/Topology/GeneralTopology/Basic/Variant384eda8b2c9fc7c91ebeb4447ae0b3fa4d045949080adbe1577c0eb21f8a72c7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Basic/Variant384eda8b2c9fc7c91ebeb4447ae0b3fa4d045949080adbe1577c0eb21f8a72c7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Polynomial.Roots` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Asymptotics.AsymptoticEquivalent` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Asymptotics.SpecificAsymptotics` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [eventually_no_roots](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant384eda8b2c9fc7c91ebeb4447ae0b3fa4d045949080adbe1577c0eb21f8a72c7.lean/declarations/eventually-no-roots--6dc7acfae641b4d30ed3117e.md) | 32 | `result-track:6dc7acfae641b4d30ed3117e41f740618b0c032b36770acc8c1c1d74ff2ea832` |
| 2 | `theorem` | [isEquivalent_atTop_lead](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant384eda8b2c9fc7c91ebeb4447ae0b3fa4d045949080adbe1577c0eb21f8a72c7.lean/declarations/isequivalent-attop-lead--67484de1a7077f625357d836.md) | 39 | `result-track:67484de1a7077f625357d83621351aee1d7e2b48dbaa8229f6481311f1e1bc85` |
| 3 | `theorem` | [tendsto_atTop_of_leadingCoeff_nonneg](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant384eda8b2c9fc7c91ebeb4447ae0b3fa4d045949080adbe1577c0eb21f8a72c7.lean/declarations/tendsto-attop-of-leadingcoeff-nonneg--1ab47a837b06b2b73453bbb3.md) | 53 | `result-track:1ab47a837b06b2b73453bbb3b3dfc0ac46a4dcc5151a4236ced7b4a3032fe653` |
| 4 | `theorem` | [tendsto_atTop_iff_leadingCoeff_nonneg](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant384eda8b2c9fc7c91ebeb4447ae0b3fa4d045949080adbe1577c0eb21f8a72c7.lean/declarations/tendsto-attop-iff-leadingcoeff-nonneg--de19fae307055698b62d766d.md) | 59 | `result-track:de19fae307055698b62d766d494509a2c365f8d20387fe4d926830d5f690e57c` |
| 5 | `theorem` | [tendsto_atBot_iff_leadingCoeff_nonpos](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant384eda8b2c9fc7c91ebeb4447ae0b3fa4d045949080adbe1577c0eb21f8a72c7.lean/declarations/tendsto-atbot-iff-leadingcoeff-nonpos--1b9e9dc4fac4f022eb6367ae.md) | 67 | `result-track:1b9e9dc4fac4f022eb6367ae15f1322a9d2a262138c289bdbb94f3bc31ea05a4` |
| 6 | `theorem` | [tendsto_atBot_of_leadingCoeff_nonpos](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant384eda8b2c9fc7c91ebeb4447ae0b3fa4d045949080adbe1577c0eb21f8a72c7.lean/declarations/tendsto-atbot-of-leadingcoeff-nonpos--bdd22b465d76fad19791f8ce.md) | 72 | `result-track:bdd22b465d76fad19791f8ce0f51a73ac7d710f81fba35c0565cb57d00e522a1` |
| 7 | `theorem` | [abs_tendsto_atTop](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant384eda8b2c9fc7c91ebeb4447ae0b3fa4d045949080adbe1577c0eb21f8a72c7.lean/declarations/abs-tendsto-attop--ce51ef20683f58558f2925d0.md) | 76 | `result-track:ce51ef20683f58558f2925d076e172155d316263ddc7709e2de7d4d202bef24f` |
| 8 | `theorem` | [abs_isBoundedUnder_iff](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant384eda8b2c9fc7c91ebeb4447ae0b3fa4d045949080adbe1577c0eb21f8a72c7.lean/declarations/abs-isboundedunder-iff--0a48a763221eb2e3b7801f1d.md) | 82 | `result-track:0a48a763221eb2e3b7801f1d3cd01aa339332acda9a8aa6b479556608bfe21ce` |
| 9 | `theorem` | [abs_tendsto_atTop_iff](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant384eda8b2c9fc7c91ebeb4447ae0b3fa4d045949080adbe1577c0eb21f8a72c7.lean/declarations/abs-tendsto-attop-iff--472d27b8cc57fc75bffc8304.md) | 90 | `result-track:472d27b8cc57fc75bffc83048cacf228cfcbd39a6e0da0893084fa559fad2b7a` |
| 10 | `theorem` | [tendsto_nhds_iff](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant384eda8b2c9fc7c91ebeb4447ae0b3fa4d045949080adbe1577c0eb21f8a72c7.lean/declarations/tendsto-nhds-iff--88ba5277a158df2df8bcb0f0.md) | 94 | `result-track:88ba5277a158df2df8bcb0f026ef5098b055acdcf915d9aa299f32c1a985684e` |
| 11 | `theorem` | [isEquivalent_atTop_div](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant384eda8b2c9fc7c91ebeb4447ae0b3fa4d045949080adbe1577c0eb21f8a72c7.lean/declarations/isequivalent-attop-div--a2e8dd4071fd1a9f38bdf304.md) | 112 | `result-track:a2e8dd4071fd1a9f38bdf304779f285baf91ab83991ada1740a54c809d5ee86f` |
| 12 | `theorem` | [div_tendsto_zero_of_degree_lt](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant384eda8b2c9fc7c91ebeb4447ae0b3fa4d045949080adbe1577c0eb21f8a72c7.lean/declarations/div-tendsto-zero-of-degree-lt--7e181a85fee0f10e4707d5aa.md) | 124 | `result-track:7e181a85fee0f10e4707d5aa5e431cd0e25bf12f8a4092089d8a3e2c0995b10f` |
| 13 | `theorem` | [div_tendsto_zero_iff_degree_lt](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant384eda8b2c9fc7c91ebeb4447ae0b3fa4d045949080adbe1577c0eb21f8a72c7.lean/declarations/div-tendsto-zero-iff-degree-lt--311db20f435113e41bdccc26.md) | 134 | `result-track:311db20f435113e41bdccc26f8540364bdc0f322ad0986762bf42fc9732f0065` |
| 14 | `theorem` | [div_tendsto_leadingCoeff_div_of_degree_eq](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant384eda8b2c9fc7c91ebeb4447ae0b3fa4d045949080adbe1577c0eb21f8a72c7.lean/declarations/div-tendsto-leadingcoeff-div-of-degree-eq--7ed44958273d8d3767169596.md) | 150 | `result-track:7ed44958273d8d37671695969ef5f7895d527c4ba02c5502ebba8f88096a7a60` |
| 15 | `theorem` | [div_tendsto_atTop_of_degree_gt'](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant384eda8b2c9fc7c91ebeb4447ae0b3fa4d045949080adbe1577c0eb21f8a72c7.lean/declarations/div-tendsto-attop-of-degree-gt--f7f539656233ea51962f02f8.md) | 156 | `result-track:f7f539656233ea51962f02f863053fa1657fcba1eb163b820453b82b587c66f9` |
| 16 | `theorem` | [div_tendsto_atTop_of_degree_gt](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant384eda8b2c9fc7c91ebeb4447ae0b3fa4d045949080adbe1577c0eb21f8a72c7.lean/declarations/div-tendsto-attop-of-degree-gt--bf4416c63190af5d14540b50.md) | 168 | `result-track:bf4416c63190af5d14540b50857e3afbf29f6ff2125da8134d53a2c9c1006c5d` |
| 17 | `theorem` | [div_tendsto_atBot_of_degree_gt'](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant384eda8b2c9fc7c91ebeb4447ae0b3fa4d045949080adbe1577c0eb21f8a72c7.lean/declarations/div-tendsto-atbot-of-degree-gt--f74dbe5755f3f44db7698ee7.md) | 177 | `result-track:f74dbe5755f3f44db7698ee72624a432711538e87ded0ab07b9fc5bc54f86533` |
| 18 | `theorem` | [div_tendsto_atBot_of_degree_gt](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant384eda8b2c9fc7c91ebeb4447ae0b3fa4d045949080adbe1577c0eb21f8a72c7.lean/declarations/div-tendsto-atbot-of-degree-gt--5ce1e5b8806ac78f2e08f3e3.md) | 189 | `result-track:5ce1e5b8806ac78f2e08f3e3f87c6870a80deb2d4a2b24d8a6ac83ac4c06d095` |
| 19 | `theorem` | [abs_div_tendsto_atTop_of_degree_gt](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant384eda8b2c9fc7c91ebeb4447ae0b3fa4d045949080adbe1577c0eb21f8a72c7.lean/declarations/abs-div-tendsto-attop-of-degree-gt--3e58deb8fc1a380989976b69.md) | 198 | `result-track:3e58deb8fc1a380989976b699eb84f8b6eaafb778ac4cd4fa71d5db966568d56` |
| 20 | `theorem` | [isBigO_of_degree_le](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant384eda8b2c9fc7c91ebeb4447ae0b3fa4d045949080adbe1577c0eb21f8a72c7.lean/declarations/isbigo-of-degree-le--17cb6e10f533739954ef8a05.md) | 207 | `result-track:17cb6e10f533739954ef8a057d49da5851eaebeb2b5e5265c324c46218e683c0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
