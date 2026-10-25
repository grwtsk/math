# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MinMaxOn.Variant4eca2b086936cb2ef8f270254f5278499f6780f81d6540969371c3af3cef6a34

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "07e8b425bc4f4da5fe440585fe36ada95785d862",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MinMaxOn/Variant4eca2b086936cb2ef8f270254f5278499f6780f81d6540969371c3af3cef6a34.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MinMaxOn/Variant4eca2b086936cb2ef8f270254f5278499f6780f81d6540969371c3af3cef6a34.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MinMaxOn/Variant4eca2b086936cb2ef8f270254f5278499f6780f81d6540969371c3af3cef6a34.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `07e8b425bc4f4da5fe440585fe36ada95785d862`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MinMaxOn/Variant4eca2b086936cb2ef8f270254f5278499f6780f81d6540969371c3af3cef6a34.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MinMaxOn/Variant4eca2b086936cb2ef8f270254f5278499f6780f81d6540969371c3af3cef6a34.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Order.Lemmas` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [minOn](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MinMaxOn/Variant4eca2b086936cb2ef8f270254f5278499f6780f81d6540969371c3af3cef6a34.lean/declarations/minon--3187e21f7aa2259076be1377.md) | 30 | `declaration-track:3187e21f7aa2259076be137707124fdef0defab0c2409fbbf0653ba03209c839` |
| 2 | `def` | [maxOn](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MinMaxOn/Variant4eca2b086936cb2ef8f270254f5278499f6780f81d6540969371c3af3cef6a34.lean/declarations/maxon--4f2de98b598ffaa9585b208e.md) | 38 | `declaration-track:4f2de98b598ffaa9585b208eaf45d468d50a1e6dfcbe38c711377c72e19c4cf5` |
| 3 | `theorem` | [minOn_id](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MinMaxOn/Variant4eca2b086936cb2ef8f270254f5278499f6780f81d6540969371c3af3cef6a34.lean/declarations/minon-id--bee0fd743d77c7716c576ad4.md) | 44 | `result-track:bee0fd743d77c7716c576ad4246a77ad6fb371f7d3d07a1ebea52813cbba6908` |
| 4 | `theorem` | [maxOn_id](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MinMaxOn/Variant4eca2b086936cb2ef8f270254f5278499f6780f81d6540969371c3af3cef6a34.lean/declarations/maxon-id--c70cf4b71c0e64382b8c04e2.md) | 48 | `result-track:c70cf4b71c0e64382b8c04e250aa77f485e7f74ebdad63051b1b00045ae05de5` |
| 5 | `theorem` | [minOn_eq_or](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MinMaxOn/Variant4eca2b086936cb2ef8f270254f5278499f6780f81d6540969371c3af3cef6a34.lean/declarations/minon-eq-or--97e44428ec7addacc5368f6e.md) | 54 | `result-track:97e44428ec7addacc5368f6ed04f30f8274b69bc54420d56fdaedb4488ccd684` |
| 6 | `theorem` | [minOn_self](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MinMaxOn/Variant4eca2b086936cb2ef8f270254f5278499f6780f81d6540969371c3af3cef6a34.lean/declarations/minon-self--ea025899b4ad7247e8db9097.md) | 62 | `result-track:ea025899b4ad7247e8db90972b48f3aabb893b42747cf9dc6de4c2c62d6b5402` |
| 7 | `theorem` | [minOn_eq_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MinMaxOn/Variant4eca2b086936cb2ef8f270254f5278499f6780f81d6540969371c3af3cef6a34.lean/declarations/minon-eq-left--439c46165c10b48ef74f7a43.md) | 66 | `result-track:439c46165c10b48ef74f7a43d8544c409d3e0e74fad65428ca391071b24743aa` |
| 8 | `theorem` | [minOn_eq_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MinMaxOn/Variant4eca2b086936cb2ef8f270254f5278499f6780f81d6540969371c3af3cef6a34.lean/declarations/minon-eq-right--49d6276ce186bc6788bf4793.md) | 70 | `result-track:49d6276ce186bc6788bf4793df088ac152182cd43f5c7474791593fa5f6217b4` |
| 9 | `theorem` | [minOn_eq_right_of_lt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MinMaxOn/Variant4eca2b086936cb2ef8f270254f5278499f6780f81d6540969371c3af3cef6a34.lean/declarations/minon-eq-right-of-lt--4f9e93e6e4ebac66562c30de.md) | 74 | `result-track:4f9e93e6e4ebac66562c30de1a4d72b9b11ed068e89ed881f6d69b2ca8a577ea` |
| 10 | `theorem` | [apply_minOn_le_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MinMaxOn/Variant4eca2b086936cb2ef8f270254f5278499f6780f81d6540969371c3af3cef6a34.lean/declarations/apply-minon-le-left--479349158d58e907752f7bca.md) | 81 | `result-track:479349158d58e907752f7bcab9c45cc2c17d15c3f756cb26381fdddc43c32a18` |
| 11 | `theorem` | [apply_minOn_le_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MinMaxOn/Variant4eca2b086936cb2ef8f270254f5278499f6780f81d6540969371c3af3cef6a34.lean/declarations/apply-minon-le-right--77a6429fcfea0628ab6c78fa.md) | 88 | `result-track:77a6429fcfea0628ab6c78fa775904108d230f1cccb09711d860dfed59544693` |
| 12 | `theorem` | [le_apply_minOn_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MinMaxOn/Variant4eca2b086936cb2ef8f270254f5278499f6780f81d6540969371c3af3cef6a34.lean/declarations/le-apply-minon-iff--697f0c11deef71f9840187a7.md) | 95 | `result-track:697f0c11deef71f9840187a7a4525e6b8eecd851a496b320146e66032649bc0d` |
| 13 | `theorem` | [minOn_assoc](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MinMaxOn/Variant4eca2b086936cb2ef8f270254f5278499f6780f81d6540969371c3af3cef6a34.lean/declarations/minon-assoc--6e96acffa310e853d962b3e6.md) | 104 | `result-track:6e96acffa310e853d962b3e6d85a2b6cefdc42a14fce2db392337187bff8c4e8` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MinMaxOn/Variant4eca2b086936cb2ef8f270254f5278499f6780f81d6540969371c3af3cef6a34.lean/declarations/instance--545a50f8887890ae75deed03.md) | 126 | `declaration-track:545a50f8887890ae75deed03c0eb16fd5db2e12b5795587046804bd7ec4bacbd` |
| 15 | `theorem` | [min_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MinMaxOn/Variant4eca2b086936cb2ef8f270254f5278499f6780f81d6540969371c3af3cef6a34.lean/declarations/min-apply--b04f0549eccd142f99d62837.md) | 130 | `result-track:b04f0549eccd142f99d6283738ec17bf838a923bf8f284211aa8af0d8137f5c2` |
| 16 | `theorem` | [minOn_eq_if](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MinMaxOn/Variant4eca2b086936cb2ef8f270254f5278499f6780f81d6540969371c3af3cef6a34.lean/declarations/minon-eq-if--df6e7a22b4cb505058273718.md) | 135 | `result-track:df6e7a22b4cb50505827371849fed4337f72dbda724e3b15d750b0bdbbf9b689` |
| 17 | `theorem` | [minOn_eq_min](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MinMaxOn/Variant4eca2b086936cb2ef8f270254f5278499f6780f81d6540969371c3af3cef6a34.lean/declarations/minon-eq-min--e0d5ad908aa8ade11793b5ee.md) | 139 | `result-track:e0d5ad908aa8ade11793b5eec406bcf2474b719ec265743ad5a82eac1aecfd22` |
| 18 | `theorem` | [min_apply_eq_min](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MinMaxOn/Variant4eca2b086936cb2ef8f270254f5278499f6780f81d6540969371c3af3cef6a34.lean/declarations/min-apply-eq-min--cc42e7d365524f1716db37c3.md) | 144 | `result-track:cc42e7d365524f1716db37c3a50e28cc01f55b5fd3e7d0134002677937b58fd3` |
| 19 | `theorem` | [maxOn_eq_minOn](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MinMaxOn/Variant4eca2b086936cb2ef8f270254f5278499f6780f81d6540969371c3af3cef6a34.lean/declarations/maxon-eq-minon--65dcc26f2f18855dbe888c3b.md) | 152 | `result-track:65dcc26f2f18855dbe888c3b73157bd867e922cf43fc0594692ff7540207d918` |
| 20 | `theorem` | [maxOn_eq_or](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MinMaxOn/Variant4eca2b086936cb2ef8f270254f5278499f6780f81d6540969371c3af3cef6a34.lean/declarations/maxon-eq-or--73f1c81f291261fe1ce9bc99.md) | 156 | `result-track:73f1c81f291261fe1ce9bc99c552501e4e80195b2dc98fe118ae96f923671b57` |
| 21 | `theorem` | [maxOn_self](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MinMaxOn/Variant4eca2b086936cb2ef8f270254f5278499f6780f81d6540969371c3af3cef6a34.lean/declarations/maxon-self--6305ec2ddf064996417f5c77.md) | 161 | `result-track:6305ec2ddf064996417f5c77dd58b397f21d24e87eb047083169546b01484c9e` |
| 22 | `theorem` | [maxOn_eq_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MinMaxOn/Variant4eca2b086936cb2ef8f270254f5278499f6780f81d6540969371c3af3cef6a34.lean/declarations/maxon-eq-left--ca0faf3cd2785d5fda531ea8.md) | 165 | `result-track:ca0faf3cd2785d5fda531ea8ba83dcf10f2d170e4f5d00cb438d4bc825ae2403` |
| 23 | `theorem` | [maxOn_eq_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MinMaxOn/Variant4eca2b086936cb2ef8f270254f5278499f6780f81d6540969371c3af3cef6a34.lean/declarations/maxon-eq-right--3d69d4afc19def42d442f592.md) | 170 | `result-track:3d69d4afc19def42d442f592d9b9188a5cfd2aef34b781e2c0fe82d7c53bdb26` |
| 24 | `theorem` | [maxOn_eq_right_of_lt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MinMaxOn/Variant4eca2b086936cb2ef8f270254f5278499f6780f81d6540969371c3af3cef6a34.lean/declarations/maxon-eq-right-of-lt--fba2995fe5ce37c1db8c375e.md) | 175 | `result-track:fba2995fe5ce37c1db8c375ede031cbe16512f49002a8ab124b40e36f5c80d8f` |
| 25 | `theorem` | [left_le_apply_maxOn](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MinMaxOn/Variant4eca2b086936cb2ef8f270254f5278499f6780f81d6540969371c3af3cef6a34.lean/declarations/left-le-apply-maxon--7945f06de1e33e5cc5ba66ea.md) | 183 | `result-track:7945f06de1e33e5cc5ba66ea68f0610ddf3ce41e879b8a904c9e8e5f80df44ac` |
| 26 | `theorem` | [right_le_apply_maxOn](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MinMaxOn/Variant4eca2b086936cb2ef8f270254f5278499f6780f81d6540969371c3af3cef6a34.lean/declarations/right-le-apply-maxon--0df2189b74290fe140de2ba0.md) | 189 | `result-track:0df2189b74290fe140de2ba0895ad7ce68ebf26150ca641797fc36bea1bc58de` |
| 27 | `theorem` | [apply_maxOn_le_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MinMaxOn/Variant4eca2b086936cb2ef8f270254f5278499f6780f81d6540969371c3af3cef6a34.lean/declarations/apply-maxon-le-iff--f2c6bc521c8ff4436dd370b4.md) | 195 | `result-track:f2c6bc521c8ff4436dd370b4d472b45c7318a169ca9ac9d8b6b25df0fab64e10` |
| 28 | `theorem` | [maxOn_assoc](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MinMaxOn/Variant4eca2b086936cb2ef8f270254f5278499f6780f81d6540969371c3af3cef6a34.lean/declarations/maxon-assoc--e9fb9b6a4910e3ebf0bb571b.md) | 202 | `result-track:e9fb9b6a4910e3ebf0bb571bf782d0d60054c5e1dab314b9088531e389d32207` |
| 29 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MinMaxOn/Variant4eca2b086936cb2ef8f270254f5278499f6780f81d6540969371c3af3cef6a34.lean/declarations/instance--d6575e6235e6bb720519e9a2.md) | 207 | `declaration-track:d6575e6235e6bb720519e9a2502b347a825c45d68c5d80a7ecdcdde2e94144a9` |
| 30 | `theorem` | [max_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MinMaxOn/Variant4eca2b086936cb2ef8f270254f5278499f6780f81d6540969371c3af3cef6a34.lean/declarations/max-apply--859aae1ea87527bb05f5a540.md) | 212 | `result-track:859aae1ea87527bb05f5a54054f8a1fb95d8d0c020a5258957121e49651d9077` |
| 31 | `theorem` | [apply_maxOn](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MinMaxOn/Variant4eca2b086936cb2ef8f270254f5278499f6780f81d6540969371c3af3cef6a34.lean/declarations/apply-maxon--26ab13d40296d815fabdcc69.md) | 218 | `result-track:26ab13d40296d815fabdcc6902d7c35197f475fc11e86e1efcbd5be874d8b840` |
| 32 | `theorem` | [maxOn_eq_if](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MinMaxOn/Variant4eca2b086936cb2ef8f270254f5278499f6780f81d6540969371c3af3cef6a34.lean/declarations/maxon-eq-if--c641ae38fe0d370e4d8fee09.md) | 222 | `result-track:c641ae38fe0d370e4d8fee091c899a9dd780438571c83aea14e4da02312fbf76` |
| 33 | `theorem` | [maxOn_eq_max](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MinMaxOn/Variant4eca2b086936cb2ef8f270254f5278499f6780f81d6540969371c3af3cef6a34.lean/declarations/maxon-eq-max--bdf8a20d53a57400ae14bf0f.md) | 226 | `result-track:bdf8a20d53a57400ae14bf0fe9695f864c0446f8658872415166739ed97af445` |
| 34 | `theorem` | [max_apply_eq_max](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MinMaxOn/Variant4eca2b086936cb2ef8f270254f5278499f6780f81d6540969371c3af3cef6a34.lean/declarations/max-apply-eq-max--4103cea542db090ce07ebddc.md) | 231 | `result-track:4103cea542db090ce07ebddc08607c5730c1e6c826f0eedaa3ae03b56a6eae78` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
