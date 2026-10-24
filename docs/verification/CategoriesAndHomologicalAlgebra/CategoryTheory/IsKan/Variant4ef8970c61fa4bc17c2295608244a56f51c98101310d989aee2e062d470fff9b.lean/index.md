# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.IsKan.Variant4ef8970c61fa4bc17c2295608244a56f51c98101310d989aee2e062d470fff9b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d7ae896ad16bc060c35ed4efb5b63072f3386b5f",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/IsKan/Variant4ef8970c61fa4bc17c2295608244a56f51c98101310d989aee2e062d470fff9b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsKan/Variant4ef8970c61fa4bc17c2295608244a56f51c98101310d989aee2e062d470fff9b.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsKan/Variant4ef8970c61fa4bc17c2295608244a56f51c98101310d989aee2e062d470fff9b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d7ae896ad16bc060c35ed4efb5b63072f3386b5f`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/IsKan/Variant4ef8970c61fa4bc17c2295608244a56f51c98101310d989aee2e062d470fff9b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/IsKan/Variant4ef8970c61fa4bc17c2295608244a56f51c98101310d989aee2e062d470fff9b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Bicategory.Extension` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [IsKan](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsKan/Variant4ef8970c61fa4bc17c2295608244a56f51c98101310d989aee2e062d470fff9b.lean/declarations/iskan--359bd5551ab803d3848bf643.md) | 60 | `declaration-track:359bd5551ab803d3848bf643511c8897879c5c356f84f3f0a1e4d24a13201b7b` |
| 2 | `abbrev` | [IsAbsKan](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsKan/Variant4ef8970c61fa4bc17c2295608244a56f51c98101310d989aee2e062d470fff9b.lean/declarations/isabskan--591736c718482171827a36c6.md) | 63 | `declaration-track:591736c718482171827a36c67c5e23d6f5ec26ccaf46d444e3a9afed6a034359` |
| 3 | `abbrev` | [mk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsKan/Variant4ef8970c61fa4bc17c2295608244a56f51c98101310d989aee2e062d470fff9b.lean/declarations/mk--03dd3d2f8f0cde7884acb77d.md) | 72 | `declaration-track:03dd3d2f8f0cde7884acb77d53417955bfda711ab7f7d80afac2faea013972a0` |
| 4 | `abbrev` | [desc](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsKan/Variant4ef8970c61fa4bc17c2295608244a56f51c98101310d989aee2e062d470fff9b.lean/declarations/desc--5df13b53c4d081365c7fcdb8.md) | 77 | `declaration-track:5df13b53c4d081365c7fcdb802a0e2f98f86e5f84ea133b5b7188ba90b7d0450` |
| 5 | `theorem` | [fac](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsKan/Variant4ef8970c61fa4bc17c2295608244a56f51c98101310d989aee2e062d470fff9b.lean/declarations/fac--23c091b4c46d8c666bf6d193.md) | 81 | `result-track:23c091b4c46d8c666bf6d1938f78e19031d0ef81e8208159c86b32be88f907ce` |
| 6 | `theorem` | [hom_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsKan/Variant4ef8970c61fa4bc17c2295608244a56f51c98101310d989aee2e062d470fff9b.lean/declarations/hom-ext--e93f00ad17dfbd43328e1de3.md) | 87 | `result-track:e93f00ad17dfbd43328e1de32bf805b690b8027bba21e1d38b608c05daf06139` |
| 7 | `def` | [uniqueUpToIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsKan/Variant4ef8970c61fa4bc17c2295608244a56f51c98101310d989aee2e062d470fff9b.lean/declarations/uniqueuptoiso--c3fb1f8328eac8591b2abbdd.md) | 92 | `declaration-track:c3fb1f8328eac8591b2abbddb0b08d536cdb6cb554f475d9727853d9cdba3d7a` |
| 8 | `theorem` | [uniqueUpToIso_hom_right](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsKan/Variant4ef8970c61fa4bc17c2295608244a56f51c98101310d989aee2e062d470fff9b.lean/declarations/uniqueuptoiso-hom-right--9696cdbfb06b5db7b9f06712.md) | 96 | `result-track:9696cdbfb06b5db7b9f067120ecc19ca1235817194df201b8f4073fae300690d` |
| 9 | `theorem` | [uniqueUpToIso_inv_right](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsKan/Variant4ef8970c61fa4bc17c2295608244a56f51c98101310d989aee2e062d470fff9b.lean/declarations/uniqueuptoiso-inv-right--964da3fa7496c356aa434544.md) | 100 | `result-track:964da3fa7496c356aa434544d82a884d93e0a3d19adc8b72c8750349a0c8c663` |
| 10 | `def` | [ofIsoKan](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsKan/Variant4ef8970c61fa4bc17c2295608244a56f51c98101310d989aee2e062d470fff9b.lean/declarations/ofisokan--02b1687dbab7dbfdf1f55a1e.md) | 105 | `declaration-track:02b1687dbab7dbfdf1f55a1e7178c27e342ea1ba5bcd93b392be86adab870e3a` |
| 11 | `def` | [ofCompId](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsKan/Variant4ef8970c61fa4bc17c2295608244a56f51c98101310d989aee2e062d470fff9b.lean/declarations/ofcompid--8dac525e316f5ac818f068f8.md) | 110 | `declaration-track:8dac525e316f5ac818f068f8bb4ca9980833cd59d788de57ee342fc3b258a141` |
| 12 | `def` | [whiskerOfCommute](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsKan/Variant4ef8970c61fa4bc17c2295608244a56f51c98101310d989aee2e062d470fff9b.lean/declarations/whiskerofcommute--ba1df6d93f0fd38b9c8ecd4b.md) | 118 | `declaration-track:ba1df6d93f0fd38b9c8ecd4b1ac757342c503259d26e05ca2dec197cbe30cb60` |
| 13 | `abbrev` | [desc](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsKan/Variant4ef8970c61fa4bc17c2295608244a56f51c98101310d989aee2e062d470fff9b.lean/declarations/desc--b2555cf20e8793ab50666db1.md) | 130 | `declaration-track:b2555cf20e8793ab50666db13fce31c63e28b03148996bde94d1807cb74972fd` |
| 14 | `def` | [isKan](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsKan/Variant4ef8970c61fa4bc17c2295608244a56f51c98101310d989aee2e062d470fff9b.lean/declarations/iskan--0e7d2481b9237ea5326eba2e.md) | 135 | `declaration-track:0e7d2481b9237ea5326eba2eae265b554d3951f58e38f8110a9c0f35211543b8` |
| 15 | `def` | [ofIsoAbsKan](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsKan/Variant4ef8970c61fa4bc17c2295608244a56f51c98101310d989aee2e062d470fff9b.lean/declarations/ofisoabskan--f8f077456af7eaf8c0844c28.md) | 140 | `declaration-track:f8f077456af7eaf8c0844c28f6344a9133c6cef259c71a3d3cc1de584e52e4d7` |
| 16 | `abbrev` | [IsKan](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsKan/Variant4ef8970c61fa4bc17c2295608244a56f51c98101310d989aee2e062d470fff9b.lean/declarations/iskan--2b78ca65a98e2208f312fd96.md) | 152 | `declaration-track:2b78ca65a98e2208f312fd96943e7b58331f9c4e538ab76492210dee80b05195` |
| 17 | `abbrev` | [IsAbsKan](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsKan/Variant4ef8970c61fa4bc17c2295608244a56f51c98101310d989aee2e062d470fff9b.lean/declarations/isabskan--2d2a871655da31816277c492.md) | 155 | `declaration-track:2d2a871655da31816277c492bad262fc22a68198f97716e9dc8d88aeb2ff00f5` |
| 18 | `abbrev` | [mk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsKan/Variant4ef8970c61fa4bc17c2295608244a56f51c98101310d989aee2e062d470fff9b.lean/declarations/mk--4f69e636fc21a5b804d169f9.md) | 164 | `declaration-track:4f69e636fc21a5b804d169f9f892c4a8b8119a9209a81bde0dcaf24b66e870dc` |
| 19 | `abbrev` | [desc](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsKan/Variant4ef8970c61fa4bc17c2295608244a56f51c98101310d989aee2e062d470fff9b.lean/declarations/desc--297ef75171fc73546775c051.md) | 169 | `declaration-track:297ef75171fc73546775c051b89a035f1eb8bd0776532b4079b7e8386d5fe10f` |
| 20 | `theorem` | [fac](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsKan/Variant4ef8970c61fa4bc17c2295608244a56f51c98101310d989aee2e062d470fff9b.lean/declarations/fac--fafb43dc1b23ed97c49d5395.md) | 173 | `result-track:fafb43dc1b23ed97c49d53957851c898a064b898ff0b19b57853bc11d642924c` |
| 21 | `theorem` | [hom_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsKan/Variant4ef8970c61fa4bc17c2295608244a56f51c98101310d989aee2e062d470fff9b.lean/declarations/hom-ext--436ee2d39594eb1a8df9f71c.md) | 179 | `result-track:436ee2d39594eb1a8df9f71c8dc4a89f073667c3e574083d6a21a886e0ba2c6f` |
| 22 | `def` | [uniqueUpToIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsKan/Variant4ef8970c61fa4bc17c2295608244a56f51c98101310d989aee2e062d470fff9b.lean/declarations/uniqueuptoiso--82a357cdf04d972117c387a6.md) | 184 | `declaration-track:82a357cdf04d972117c387a615d5d5e10b24b85e88d9456223b554120c84c822` |
| 23 | `theorem` | [uniqueUpToIso_hom_right](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsKan/Variant4ef8970c61fa4bc17c2295608244a56f51c98101310d989aee2e062d470fff9b.lean/declarations/uniqueuptoiso-hom-right--62fcca4854a8b602a5400dcb.md) | 188 | `result-track:62fcca4854a8b602a5400dcb5bd23a1b3eda5f51770603adf9d363d715b29c4d` |
| 24 | `theorem` | [uniqueUpToIso_inv_right](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsKan/Variant4ef8970c61fa4bc17c2295608244a56f51c98101310d989aee2e062d470fff9b.lean/declarations/uniqueuptoiso-inv-right--459aefbfe96c45b04d53d688.md) | 192 | `result-track:459aefbfe96c45b04d53d6884d6cc55dad848d8eaac873735f58cd7f9bdef905` |
| 25 | `def` | [ofIsoKan](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsKan/Variant4ef8970c61fa4bc17c2295608244a56f51c98101310d989aee2e062d470fff9b.lean/declarations/ofisokan--37788002ab8b97bfee4959f0.md) | 196 | `declaration-track:37788002ab8b97bfee4959f02b23fbd000c46ad8d9bb17f6aa7f3c1fea2b5fcc` |
| 26 | `def` | [ofIdComp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsKan/Variant4ef8970c61fa4bc17c2295608244a56f51c98101310d989aee2e062d470fff9b.lean/declarations/ofidcomp--47b288832610007f799a5dd6.md) | 201 | `declaration-track:47b288832610007f799a5dd6ae1865c82bd227f17553514c22d50e0f70f723ca` |
| 27 | `def` | [whiskerOfCommute](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsKan/Variant4ef8970c61fa4bc17c2295608244a56f51c98101310d989aee2e062d470fff9b.lean/declarations/whiskerofcommute--1060b2f48d092e8a43d22395.md) | 209 | `declaration-track:1060b2f48d092e8a43d22395b46551b1466f3aa7513539f2724571deec0323f1` |
| 28 | `abbrev` | [desc](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsKan/Variant4ef8970c61fa4bc17c2295608244a56f51c98101310d989aee2e062d470fff9b.lean/declarations/desc--2be6f7ba43219e4569ed750e.md) | 221 | `declaration-track:2be6f7ba43219e4569ed750e40b4603ebe3616584566a1cbc33d7979cb50a86c` |
| 29 | `def` | [isKan](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsKan/Variant4ef8970c61fa4bc17c2295608244a56f51c98101310d989aee2e062d470fff9b.lean/declarations/iskan--45d0d50618d0ec64d2d87646.md) | 226 | `declaration-track:45d0d50618d0ec64d2d87646f038b474635cc00a0c18836d7b4efda517d3f04c` |
| 30 | `def` | [ofIsoAbsKan](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsKan/Variant4ef8970c61fa4bc17c2295608244a56f51c98101310d989aee2e062d470fff9b.lean/declarations/ofisoabskan--6b418c7123246799766437a9.md) | 230 | `declaration-track:6b418c7123246799766437a973270c3a769a479e09bf03cd8d87075708eda924` |
| 31 | `abbrev` | [IsKan](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsKan/Variant4ef8970c61fa4bc17c2295608244a56f51c98101310d989aee2e062d470fff9b.lean/declarations/iskan--085ff2c3b4dda1ec35469abc.md) | 242 | `declaration-track:085ff2c3b4dda1ec35469abcb4eb3644debc48d41bad377ec43aae9e700c6242` |
| 32 | `abbrev` | [IsKan](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsKan/Variant4ef8970c61fa4bc17c2295608244a56f51c98101310d989aee2e062d470fff9b.lean/declarations/iskan--6dd3b74f4cfd1cb31228483f.md) | 251 | `declaration-track:6dd3b74f4cfd1cb31228483ff361ea9b885d0af671b2eb61b83f07bdecb60969` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
